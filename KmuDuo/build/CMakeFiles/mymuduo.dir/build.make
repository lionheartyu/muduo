# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lion/share/linuxc/muduo/mymuduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lion/share/linuxc/muduo/mymuduo/build

# Include any dependencies generated for this target.
include CMakeFiles/mymuduo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mymuduo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mymuduo.dir/flags.make

CMakeFiles/mymuduo.dir/Acceptor.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Acceptor.o: ../Acceptor.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mymuduo.dir/Acceptor.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Acceptor.o -c /home/lion/share/linuxc/muduo/mymuduo/Acceptor.cc

CMakeFiles/mymuduo.dir/Acceptor.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Acceptor.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/Acceptor.cc > CMakeFiles/mymuduo.dir/Acceptor.i

CMakeFiles/mymuduo.dir/Acceptor.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Acceptor.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/Acceptor.cc -o CMakeFiles/mymuduo.dir/Acceptor.s

CMakeFiles/mymuduo.dir/Buffer.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Buffer.o: ../Buffer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/mymuduo.dir/Buffer.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Buffer.o -c /home/lion/share/linuxc/muduo/mymuduo/Buffer.cc

CMakeFiles/mymuduo.dir/Buffer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Buffer.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/Buffer.cc > CMakeFiles/mymuduo.dir/Buffer.i

CMakeFiles/mymuduo.dir/Buffer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Buffer.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/Buffer.cc -o CMakeFiles/mymuduo.dir/Buffer.s

CMakeFiles/mymuduo.dir/Channel.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Channel.o: ../Channel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/mymuduo.dir/Channel.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Channel.o -c /home/lion/share/linuxc/muduo/mymuduo/Channel.cc

CMakeFiles/mymuduo.dir/Channel.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Channel.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/Channel.cc > CMakeFiles/mymuduo.dir/Channel.i

CMakeFiles/mymuduo.dir/Channel.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Channel.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/Channel.cc -o CMakeFiles/mymuduo.dir/Channel.s

CMakeFiles/mymuduo.dir/CurrentThread.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/CurrentThread.o: ../CurrentThread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/mymuduo.dir/CurrentThread.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/CurrentThread.o -c /home/lion/share/linuxc/muduo/mymuduo/CurrentThread.cc

CMakeFiles/mymuduo.dir/CurrentThread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/CurrentThread.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/CurrentThread.cc > CMakeFiles/mymuduo.dir/CurrentThread.i

CMakeFiles/mymuduo.dir/CurrentThread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/CurrentThread.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/CurrentThread.cc -o CMakeFiles/mymuduo.dir/CurrentThread.s

CMakeFiles/mymuduo.dir/DefaultPlooer.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/DefaultPlooer.o: ../DefaultPlooer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/mymuduo.dir/DefaultPlooer.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/DefaultPlooer.o -c /home/lion/share/linuxc/muduo/mymuduo/DefaultPlooer.cc

CMakeFiles/mymuduo.dir/DefaultPlooer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/DefaultPlooer.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/DefaultPlooer.cc > CMakeFiles/mymuduo.dir/DefaultPlooer.i

CMakeFiles/mymuduo.dir/DefaultPlooer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/DefaultPlooer.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/DefaultPlooer.cc -o CMakeFiles/mymuduo.dir/DefaultPlooer.s

CMakeFiles/mymuduo.dir/EPollPoller.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/EPollPoller.o: ../EPollPoller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/mymuduo.dir/EPollPoller.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/EPollPoller.o -c /home/lion/share/linuxc/muduo/mymuduo/EPollPoller.cc

CMakeFiles/mymuduo.dir/EPollPoller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/EPollPoller.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/EPollPoller.cc > CMakeFiles/mymuduo.dir/EPollPoller.i

CMakeFiles/mymuduo.dir/EPollPoller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/EPollPoller.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/EPollPoller.cc -o CMakeFiles/mymuduo.dir/EPollPoller.s

CMakeFiles/mymuduo.dir/EventLoop.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/EventLoop.o: ../EventLoop.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/mymuduo.dir/EventLoop.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/EventLoop.o -c /home/lion/share/linuxc/muduo/mymuduo/EventLoop.cc

CMakeFiles/mymuduo.dir/EventLoop.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/EventLoop.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/EventLoop.cc > CMakeFiles/mymuduo.dir/EventLoop.i

CMakeFiles/mymuduo.dir/EventLoop.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/EventLoop.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/EventLoop.cc -o CMakeFiles/mymuduo.dir/EventLoop.s

CMakeFiles/mymuduo.dir/EventLoopThread.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/EventLoopThread.o: ../EventLoopThread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/mymuduo.dir/EventLoopThread.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/EventLoopThread.o -c /home/lion/share/linuxc/muduo/mymuduo/EventLoopThread.cc

CMakeFiles/mymuduo.dir/EventLoopThread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/EventLoopThread.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/EventLoopThread.cc > CMakeFiles/mymuduo.dir/EventLoopThread.i

CMakeFiles/mymuduo.dir/EventLoopThread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/EventLoopThread.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/EventLoopThread.cc -o CMakeFiles/mymuduo.dir/EventLoopThread.s

CMakeFiles/mymuduo.dir/EventLoopThreadPool.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/EventLoopThreadPool.o: ../EventLoopThreadPool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/mymuduo.dir/EventLoopThreadPool.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/EventLoopThreadPool.o -c /home/lion/share/linuxc/muduo/mymuduo/EventLoopThreadPool.cc

CMakeFiles/mymuduo.dir/EventLoopThreadPool.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/EventLoopThreadPool.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/EventLoopThreadPool.cc > CMakeFiles/mymuduo.dir/EventLoopThreadPool.i

CMakeFiles/mymuduo.dir/EventLoopThreadPool.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/EventLoopThreadPool.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/EventLoopThreadPool.cc -o CMakeFiles/mymuduo.dir/EventLoopThreadPool.s

CMakeFiles/mymuduo.dir/Poller.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Poller.o: ../Poller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/mymuduo.dir/Poller.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Poller.o -c /home/lion/share/linuxc/muduo/mymuduo/Poller.cc

CMakeFiles/mymuduo.dir/Poller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Poller.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/Poller.cc > CMakeFiles/mymuduo.dir/Poller.i

CMakeFiles/mymuduo.dir/Poller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Poller.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/Poller.cc -o CMakeFiles/mymuduo.dir/Poller.s

CMakeFiles/mymuduo.dir/Socket.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Socket.o: ../Socket.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/mymuduo.dir/Socket.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Socket.o -c /home/lion/share/linuxc/muduo/mymuduo/Socket.cc

CMakeFiles/mymuduo.dir/Socket.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Socket.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/Socket.cc > CMakeFiles/mymuduo.dir/Socket.i

CMakeFiles/mymuduo.dir/Socket.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Socket.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/Socket.cc -o CMakeFiles/mymuduo.dir/Socket.s

CMakeFiles/mymuduo.dir/TcpConnection.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/TcpConnection.o: ../TcpConnection.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/mymuduo.dir/TcpConnection.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/TcpConnection.o -c /home/lion/share/linuxc/muduo/mymuduo/TcpConnection.cc

CMakeFiles/mymuduo.dir/TcpConnection.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/TcpConnection.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/TcpConnection.cc > CMakeFiles/mymuduo.dir/TcpConnection.i

CMakeFiles/mymuduo.dir/TcpConnection.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/TcpConnection.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/TcpConnection.cc -o CMakeFiles/mymuduo.dir/TcpConnection.s

CMakeFiles/mymuduo.dir/TcpServer.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/TcpServer.o: ../TcpServer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/mymuduo.dir/TcpServer.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/TcpServer.o -c /home/lion/share/linuxc/muduo/mymuduo/TcpServer.cc

CMakeFiles/mymuduo.dir/TcpServer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/TcpServer.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/TcpServer.cc > CMakeFiles/mymuduo.dir/TcpServer.i

CMakeFiles/mymuduo.dir/TcpServer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/TcpServer.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/TcpServer.cc -o CMakeFiles/mymuduo.dir/TcpServer.s

CMakeFiles/mymuduo.dir/Thread.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Thread.o: ../Thread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/mymuduo.dir/Thread.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Thread.o -c /home/lion/share/linuxc/muduo/mymuduo/Thread.cc

CMakeFiles/mymuduo.dir/Thread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Thread.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/Thread.cc > CMakeFiles/mymuduo.dir/Thread.i

CMakeFiles/mymuduo.dir/Thread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Thread.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/Thread.cc -o CMakeFiles/mymuduo.dir/Thread.s

CMakeFiles/mymuduo.dir/Timestamp.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Timestamp.o: ../Timestamp.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/mymuduo.dir/Timestamp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Timestamp.o -c /home/lion/share/linuxc/muduo/mymuduo/Timestamp.cc

CMakeFiles/mymuduo.dir/Timestamp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Timestamp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/Timestamp.cc > CMakeFiles/mymuduo.dir/Timestamp.i

CMakeFiles/mymuduo.dir/Timestamp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Timestamp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/Timestamp.cc -o CMakeFiles/mymuduo.dir/Timestamp.s

CMakeFiles/mymuduo.dir/inetAddress.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/inetAddress.o: ../inetAddress.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/mymuduo.dir/inetAddress.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/inetAddress.o -c /home/lion/share/linuxc/muduo/mymuduo/inetAddress.cc

CMakeFiles/mymuduo.dir/inetAddress.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/inetAddress.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/inetAddress.cc > CMakeFiles/mymuduo.dir/inetAddress.i

CMakeFiles/mymuduo.dir/inetAddress.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/inetAddress.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/inetAddress.cc -o CMakeFiles/mymuduo.dir/inetAddress.s

CMakeFiles/mymuduo.dir/logger.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/logger.o: ../logger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/mymuduo.dir/logger.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/logger.o -c /home/lion/share/linuxc/muduo/mymuduo/logger.cc

CMakeFiles/mymuduo.dir/logger.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/logger.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lion/share/linuxc/muduo/mymuduo/logger.cc > CMakeFiles/mymuduo.dir/logger.i

CMakeFiles/mymuduo.dir/logger.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/logger.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lion/share/linuxc/muduo/mymuduo/logger.cc -o CMakeFiles/mymuduo.dir/logger.s

# Object files for target mymuduo
mymuduo_OBJECTS = \
"CMakeFiles/mymuduo.dir/Acceptor.o" \
"CMakeFiles/mymuduo.dir/Buffer.o" \
"CMakeFiles/mymuduo.dir/Channel.o" \
"CMakeFiles/mymuduo.dir/CurrentThread.o" \
"CMakeFiles/mymuduo.dir/DefaultPlooer.o" \
"CMakeFiles/mymuduo.dir/EPollPoller.o" \
"CMakeFiles/mymuduo.dir/EventLoop.o" \
"CMakeFiles/mymuduo.dir/EventLoopThread.o" \
"CMakeFiles/mymuduo.dir/EventLoopThreadPool.o" \
"CMakeFiles/mymuduo.dir/Poller.o" \
"CMakeFiles/mymuduo.dir/Socket.o" \
"CMakeFiles/mymuduo.dir/TcpConnection.o" \
"CMakeFiles/mymuduo.dir/TcpServer.o" \
"CMakeFiles/mymuduo.dir/Thread.o" \
"CMakeFiles/mymuduo.dir/Timestamp.o" \
"CMakeFiles/mymuduo.dir/inetAddress.o" \
"CMakeFiles/mymuduo.dir/logger.o"

# External object files for target mymuduo
mymuduo_EXTERNAL_OBJECTS =

../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Acceptor.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Buffer.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Channel.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/CurrentThread.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/DefaultPlooer.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/EPollPoller.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/EventLoop.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/EventLoopThread.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/EventLoopThreadPool.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Poller.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Socket.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/TcpConnection.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/TcpServer.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Thread.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Timestamp.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/inetAddress.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/logger.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/build.make
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Linking CXX shared library ../lib/libmymuduo.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mymuduo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mymuduo.dir/build: ../lib/libmymuduo.so

.PHONY : CMakeFiles/mymuduo.dir/build

CMakeFiles/mymuduo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mymuduo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mymuduo.dir/clean

CMakeFiles/mymuduo.dir/depend:
	cd /home/lion/share/linuxc/muduo/mymuduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lion/share/linuxc/muduo/mymuduo /home/lion/share/linuxc/muduo/mymuduo /home/lion/share/linuxc/muduo/mymuduo/build /home/lion/share/linuxc/muduo/mymuduo/build /home/lion/share/linuxc/muduo/mymuduo/build/CMakeFiles/mymuduo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mymuduo.dir/depend

