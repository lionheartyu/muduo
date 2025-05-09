#include "TcpConnection.h"
#include "logger.h"
#include "Socket.h"
#include "Channel.h"
#include "EventLoop.h"
#include <functional>
#include <errno.h>
#include "EventLoop.h"
#include <sys/types.h>
#include <sys/socket.h>
#include <strings.h>
#include <netinet/tcp.h>

static EventLoop *checkloopnotnull(EventLoop *loop)
{
    if (loop == nullptr)
    {
        LOG_FATAL("%s:%s:%d TcpConnectionloop is null\n", __FILE__, __FUNCTION__, __LINE__);
    }
    return loop;
}

TcpConnection::TcpConnection(EventLoop *loop,
                             const std::string &nameAge,
                             int sockfd,
                             const InetAddress &localAddr,
                             const InetAddress &peerAddr)
    : loop_(checkloopnotnull(loop)),
      name_(nameAge),
      state_(kConnection),
      reading_(true),
      socket_(new Socket(sockfd)),
      channel_(new Channel(loop, sockfd)),
      localAddr_(localAddr),
      peerAddr_(peerAddr),
      highWaterMark_(64 * 1024 * 1024) // 64MB

{
    // 下面给channel设置相应的回调函数,poller给channel通知感兴趣的事件发生了,channel会回调相应的操作函数
    channel_->setReadcallback(std::bind(&TcpConnection::handleRead, this, std::placeholders::_1));
    channel_->setWritecallback(std::bind(&TcpConnection::handleWrite, this));
    channel_->setClosecallback(std::bind(&TcpConnection::handleClose, this));
    channel_->setErrorcallback(std::bind(&TcpConnection::handleError, this));

    LOG_INFO("TcpConnection::ctor[%s] at fd =%d\n", name_.c_str(), sockfd);
    socket_->setKeppAlive(true);
}

TcpConnection::~TcpConnection()
{
    LOG_INFO("TcpConnection::dtor[%s] at fd = %d satte =%d\n", name_.c_str(), channel_->fd(), (int)state_);
}

void TcpConnection::send(const std::string &buf)
{
    if (state_ == kConnected)
    {
        if (loop_->isInLoopThread())
        {
            // 在自己的线程里直接用
            sendInLoop(buf.c_str(), buf.size());
        }
        else
        {
            // 等到自己的线程里再用
            loop_->runInLoop(std::bind(&TcpConnection::sendInLoop, this, buf.c_str(), buf.size()));
        }
    }
}

// 发送数据  应用发送快  而内核发送数据慢 需要把待发送数写入缓冲区 而且设置水位回调
void TcpConnection::sendInLoop(const void *message, size_t len)
{
    ssize_t nwrote = 0;
    size_t remaining = len;
    bool faultError = false;

    // 之前调用过该connection 的 shutdown 不能再发送了
    if (state_ == kDisconnected)
    {
        LOG_ERROR("disconnected , givp up writing ");
        return;
    }

    // 表示channel_第一次开始写数据,而且缓冲区没有待发送数据
    if (!channel_->isWriting() && outputBuffer_.readableBytes() == 0)
    {
        nwrote = ::write(channel_->fd(), message, len);
        if (nwrote >= 0)
        {
            remaining = len - nwrote;
            if (remaining == 0 && writeCompleteCallback_)
            {
                // 既然在这里一次性数据全部发送完了 就不用在给channel设置epollout事件了
                loop_->queueLoop(
                    std::bind(writeCompleteCallback_, shared_from_this()));
            }
        }
        else // nwrote <0 出错
        {
            nwrote = 0;
            if (errno != EWOULDBLOCK)
            {
                LOG_ERROR("Tcpconnection::sendInLoop");
                if (errno == EPIPE || errno == ECONNRESET) // SIGIPE RESET
                {
                    faultError = true;
                }
            }
        }
    }
    // 说明当前这一次write 并没有把全部数据发送出去,剩余的数据需要保存到缓冲区当中,然后给channel
    // 注册epollout事件,poller发现tcp的发送缓冲区有空间,会通知相应的sock - channel , wirtcallback_=>回调handleWrite
    // 也就是调用TcpConnection::handWrite方法,把发送缓冲区的数据全部发送完成
    if (!faultError && remaining > 0)
    {
        // 目前发送缓冲区剩余待发送数据的长度
        size_t oldlen = outputBuffer_.readableBytes();
        if (oldlen + remaining >= highWaterMark_ && oldlen < highWaterMark_ && highWaterMarkCallback_)
        {
            loop_->queueLoop(std::bind(highWaterMarkCallback_, shared_from_this(), oldlen + remaining));
        }
        //(char*)message + nwrote 是获取从 message 指针起始位置偏移 nwrote 个字节后的内存地址
        // 然后就指到了 没有发送完的数据的内存的起始地址
        outputBuffer_.append((char *)message + nwrote, remaining); // 把数据存入缓冲区中
        if (!channel_->isWriting())
        {
            channel_->enableWriting(); // 这里一定要注册channel的写事件,否则poller不会给channel通知epollout
        }
    }
}

// 连接建立
void TcpConnection::connectionEstablished()
{
    setState(kConnected);
    channel_->tie(shared_from_this());
    channel_->enableReading(); // 向poller注册channel 的 EPOLLIN事件

    // 新连接建立 执行回调
    connectionCallback_(shared_from_this());
}

// 关闭连接
void TcpConnection::shutdown()
{
    if(state_==kConnected)
    {
        setState(kDisconnecting);

        loop_->runInLoop(std::bind(&TcpConnection::shutdownInLoop,this));
    }
}

void TcpConnection::shutdownInLoop()
{
    if(!channel_->isWriting()) //说明outputBuffer中的数据已经全部发送完成
    {
        socket_->shutdownWrite();
    }
}

// 连接销毁
void TcpConnection::connectionDestroyed()
{
    if (state_ == kConnected)
    {
        setState(kDisconnected);
        channel_->disableAll(); // 把channel中所有感兴趣的事件,从poller中del掉
    }
    channel_->remove(); // 把channel从poller中删除掉
}

void TcpConnection::handleRead(Timestamp receiveTime)
{
    int saveErrno = 0;
    ssize_t n = inputBuffer_.readFd(channel_->fd(), &saveErrno);
    if (n > 0)
    {
        // 已建立连接的用户,有可读事件发生了,调用用户传入的回调操作onMessage
        messageCallback_(shared_from_this(), &inputBuffer_, receiveTime);
    }
    else if (n == 0)
    {
        handleClose();
    }
    else
    {
        errno = saveErrno;
        LOG_ERROR("TcpConnection::handle");
        handleError();
    }
}

void TcpConnection::handleWrite()
{
    if (channel_->isWriting())
    {
        int saveErrno = 0;
        ssize_t n = outputBuffer_.writeFd(channel_->fd(), &saveErrno);
        if (n > 0)
        {
            outputBuffer_.retrieve(n);
            if (outputBuffer_.readableBytes() == 0)
            {
                // 唤醒loop_对应的thread线程,执行回调
                loop_->queueLoop(
                    std::bind(writeCompleteCallback_, shared_from_this()));
            }
            if (state_ == kDisconnecting)
            {
                shutdownInLoop();
            }
        }
        else
        {
            LOG_ERROR("TcpConnection::handleWrite");
        }
    }
    else
    {
        LOG_ERROR("TcpConnection fd = %d is down,no more writing\n", channel_->fd());
    }
}

//poller => channel::closeCallback => TcpConnection::handleClose    
void TcpConnection::handleClose()
{
    LOG_INFO("fd=%d state=%d,\n", channel_->fd(), (int)state_);
    setState(kDisconnected);
    channel_->disableAll();

    TcpConnectionPtr connPtr(shared_from_this());
    connectionCallback_(connPtr); // 执行连接关闭的回调
    closeCallback_(connPtr);      // 关闭连接的回调 
}
void TcpConnection::handleError()
{
    int optval;
    socklen_t optlen = sizeof optval;
    int err = 0;
    if (::getsockopt(channel_->fd(), SOL_SOCKET, SO_ERROR, &optval, &optlen) < 0)
    {
        err = errno;
    }
    else
    {
        err = optval;
    }
    LOG_ERROR("TcpConnection::handleClose name:%s  -SO_ERROR:%d\n", name_.c_str(), err);
}
