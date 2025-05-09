#include "EventLoop.h"
#include "logger.h"
#include "Poller.h"
#include "Channel.h"
#include <sys/eventfd.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <memory>

// 防止一个线程创建多个EventLoop  thread_local
__thread EventLoop *t_loopInThisThread = nullptr;

// 定义默认的Poller IO复用接口的超时时间
const int kPollTimeMs = 10000;

// 创建wakeupfd 用来notify唤醒subReactor 处理 新来的channel
int createEventfd()
{
    int evtfd = ::eventfd(0, EFD_NONBLOCK | EFD_CLOEXEC);
    if (evtfd < 0)
    {
        LOG_FATAL("event error:%d\n", errno);
    }
    return evtfd;
}

EventLoop::EventLoop()
    : looping_(false),
      quit_(false),
      callingPendingFunctors_(false),
      threadId_(CurrentThread::tid()),
      poller_(Poller::newDefaultPoller(this)),
      wakeupFd_(createEventfd()),
      wakeupChannel_(new Channel(this, wakeupFd_))

{
    LOG_DEBUG("eventloop created %p in thread %d ", this, threadId_);
    if (t_loopInThisThread) // 不为空
    {
        LOG_FATAL("Another EventLoop %p exists in this thread%d\n", t_loopInThisThread, threadId_);
    }
    else
    {
        t_loopInThisThread = this;
    }

    // 设置wakeupfd的事件类型以及发生事件后的回调操作
    wakeupChannel_->setReadcallback(std::bind(&EventLoop::handleRead, this));
    // 每一个eventloop都将监听wakeupchannel的EPOLLIN读事件了
    wakeupChannel_->enableReading();
}
EventLoop::~EventLoop()
{
    wakeupChannel_->disableAll();
    wakeupChannel_->remove();
    ::close(wakeupFd_);
    t_loopInThisThread = nullptr;
}

// 开启事件循环
void EventLoop::loop()
{
    looping_ = true;
    quit_ = false;

    LOG_INFO("eventloop %p start looping\n", this);

    while (!quit_)
    {
        activeChannels_.clear();
        // 监听两类fd 一种是client的fd 一种wakeupfd
        pollReturnTime_ = poller_->poll(kPollTimeMs, &activeChannels_);
        for (Channel *channel : activeChannels_)
        {
            // Poller监听哪些channel发生事件了 然后上报给EventLoop 通知channel处理相应的事件
            channel->handleEvent(pollReturnTime_);
        }
        // 执行当前eventloop事件循环 需要处理的回调操作
        /*
         IO线程 mainloop accept fd《=channel subloop
         mainloop 事先注册一个回调cb (需要subloop来执行)  wakeup subloop后,执行下面的方法,执行之前mainloop注册的cb操作
        */
        doPendingFunctors();
    }
    LOG_INFO("EventLoop%p stop looping \n", this);
    looping_ = false;
}

// 退出事件循环  1.loop在自己的线程中调用quit
void EventLoop::quit()
{
    quit_ = true;
    // 如果是在其他线程中,调用的quit 在一个subloop(worker)中，调用mainloop(IO)的quit
    /*           mainloop
     *
     *================================ 生产者-消费者线程安全队列
     *
     *   subloop1   subloop2  subloop3
     *
     */
    if (!isInLoopThread())
    {
        wakeup();
    }
}

// 在当前loop中执行cb
void EventLoop::runInLoop(Functor cb)
{
    if (isInLoopThread()) // 在当前loop线程中,执行cb
    {
        cb();
    }
    else // 在非当前loop线程中执行cb ， 就需要唤醒loop所在线程 执行 cb
    {
        queueLoop(cb);
    }
}

// 把cb放入队列中，唤醒loop所在的线程，执行cb
void EventLoop::queueLoop(Functor cb)
{
    {
        std::unique_lock<std::mutex> lock(mutex_);
        pendingFunctors_.emplace_back(cb);
    }
    //||callingPendingFunctors_ 当前loop正在执行回调 但是loop又有了新的回调
    if (!isInLoopThread() || callingPendingFunctors_)
    {
        wakeup(); // 唤醒loop所在线程
    }
}

void EventLoop::handleRead()
{
    uint64_t one = 1;
    ssize_t n = read(wakeupFd_, &one, sizeof(one));
    if (n != sizeof one)
    {
        LOG_ERROR("EventLoop::handleRead() reads %ld bytes instead of 8", n);
    }
}

// 用来唤醒loop所在的线程的  向wakeupfd_写一个数据  wakeupchannel就发生读事件,当前loop线程就会被唤醒
void EventLoop::wakeup()
{
    uint64_t one = 1;
    ssize_t n = write(wakeupFd_, &one, sizeof(one));
    if (n != sizeof one)
    {
        LOG_ERROR("EventLoop::wakeup() write%ld bytes instead of \n", n);
    }
}

// EventLoop的方法=> Poller的方法
void EventLoop::updateChannel(Channel *chanenl)
{
    poller_->updateChannel(chanenl);
}
void EventLoop::removeChannel(Channel *channel)
{
    poller_->removeChannel(channel);
}
bool EventLoop::hasChannel(Channel *channel)
{
    return poller_->hasChannel(channel);
}

// 执行回调
void EventLoop::doPendingFunctors()
{
    std::vector<Functor> functors;
    callingPendingFunctors_ = true;
    {
        std::unique_lock<std::mutex> lock(mutex_);
        functors.swap(pendingFunctors_);
    }

    for (const Functor &functor : functors)
    {
        functor();//执行当前loop需要执行的回调操作
    }
    callingPendingFunctors_=false;

}
