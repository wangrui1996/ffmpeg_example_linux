# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /home/rui/softs/clion-2018.3.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/rui/softs/clion-2018.3.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rui/files/CLionProjects/ffmpeg_exmaple

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ffmpeg_read.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ffmpeg_read.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ffmpeg_read.dir/flags.make

CMakeFiles/ffmpeg_read.dir/main.cpp.o: CMakeFiles/ffmpeg_read.dir/flags.make
CMakeFiles/ffmpeg_read.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ffmpeg_read.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ffmpeg_read.dir/main.cpp.o -c /home/rui/files/CLionProjects/ffmpeg_exmaple/main.cpp

CMakeFiles/ffmpeg_read.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ffmpeg_read.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rui/files/CLionProjects/ffmpeg_exmaple/main.cpp > CMakeFiles/ffmpeg_read.dir/main.cpp.i

CMakeFiles/ffmpeg_read.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ffmpeg_read.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rui/files/CLionProjects/ffmpeg_exmaple/main.cpp -o CMakeFiles/ffmpeg_read.dir/main.cpp.s

# Object files for target ffmpeg_read
ffmpeg_read_OBJECTS = \
"CMakeFiles/ffmpeg_read.dir/main.cpp.o"

# External object files for target ffmpeg_read
ffmpeg_read_EXTERNAL_OBJECTS =

ffmpeg_read: CMakeFiles/ffmpeg_read.dir/main.cpp.o
ffmpeg_read: CMakeFiles/ffmpeg_read.dir/build.make
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_system.so
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_thread.so
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_regex.so
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
ffmpeg_read: /usr/local/lib/libavcodec.a
ffmpeg_read: /usr/local/lib/libavformat.a
ffmpeg_read: /usr/local/lib/libavutil.a
ffmpeg_read: /usr/local/lib/libavdevice.a
ffmpeg_read: /usr/local/lib/libavcodec.a
ffmpeg_read: libvideocapture.a
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_system.so
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_thread.so
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_regex.so
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
ffmpeg_read: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
ffmpeg_read: /home/rui/libs/opencv-3.4/opencv-3.4/build/lib/libopencv_highgui.so.3.4.6
ffmpeg_read: /home/rui/libs/opencv-3.4/opencv-3.4/build/lib/libopencv_videoio.so.3.4.6
ffmpeg_read: /home/rui/libs/opencv-3.4/opencv-3.4/build/lib/libopencv_imgcodecs.so.3.4.6
ffmpeg_read: /home/rui/libs/opencv-3.4/opencv-3.4/build/lib/libopencv_imgproc.so.3.4.6
ffmpeg_read: /home/rui/libs/opencv-3.4/opencv-3.4/build/lib/libopencv_core.so.3.4.6
ffmpeg_read: /home/rui/libs/opencv-3.4/opencv-3.4/build/lib/libopencv_cudev.so.3.4.6
ffmpeg_read: /usr/local/lib/libavcodec.a
ffmpeg_read: /usr/local/lib/libavformat.a
ffmpeg_read: /usr/local/lib/libavutil.a
ffmpeg_read: /usr/local/lib/libavdevice.a
ffmpeg_read: /usr/local/lib/libavcodec.a
ffmpeg_read: /usr/local/lib/libavformat.a
ffmpeg_read: /usr/local/lib/libavutil.a
ffmpeg_read: /usr/local/lib/libavdevice.a
ffmpeg_read: CMakeFiles/ffmpeg_read.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ffmpeg_read"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ffmpeg_read.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ffmpeg_read.dir/build: ffmpeg_read

.PHONY : CMakeFiles/ffmpeg_read.dir/build

CMakeFiles/ffmpeg_read.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ffmpeg_read.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ffmpeg_read.dir/clean

CMakeFiles/ffmpeg_read.dir/depend:
	cd /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rui/files/CLionProjects/ffmpeg_exmaple /home/rui/files/CLionProjects/ffmpeg_exmaple /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug/CMakeFiles/ffmpeg_read.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ffmpeg_read.dir/depend
