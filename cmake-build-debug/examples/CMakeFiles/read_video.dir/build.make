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
include examples/CMakeFiles/read_video.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/read_video.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/read_video.dir/flags.make

examples/CMakeFiles/read_video.dir/read_video.cpp.o: examples/CMakeFiles/read_video.dir/flags.make
examples/CMakeFiles/read_video.dir/read_video.cpp.o: ../examples/read_video.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/read_video.dir/read_video.cpp.o"
	cd /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/read_video.dir/read_video.cpp.o -c /home/rui/files/CLionProjects/ffmpeg_exmaple/examples/read_video.cpp

examples/CMakeFiles/read_video.dir/read_video.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/read_video.dir/read_video.cpp.i"
	cd /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rui/files/CLionProjects/ffmpeg_exmaple/examples/read_video.cpp > CMakeFiles/read_video.dir/read_video.cpp.i

examples/CMakeFiles/read_video.dir/read_video.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/read_video.dir/read_video.cpp.s"
	cd /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rui/files/CLionProjects/ffmpeg_exmaple/examples/read_video.cpp -o CMakeFiles/read_video.dir/read_video.cpp.s

# Object files for target read_video
read_video_OBJECTS = \
"CMakeFiles/read_video.dir/read_video.cpp.o"

# External object files for target read_video
read_video_EXTERNAL_OBJECTS =

examples/read_video: examples/CMakeFiles/read_video.dir/read_video.cpp.o
examples/read_video: examples/CMakeFiles/read_video.dir/build.make
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_regex.so
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
examples/read_video: /usr/local/lib/libavcodec.a
examples/read_video: /usr/local/lib/libavformat.a
examples/read_video: /usr/local/lib/libavutil.a
examples/read_video: /usr/local/lib/libavdevice.a
examples/read_video: /usr/local/lib/libavcodec.a
examples/read_video: src/libffmpeg.a
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_regex.so
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
examples/read_video: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
examples/read_video: /home/rui/libs/opencv-3.4/opencv-3.4/build/lib/libopencv_highgui.so.3.4.6
examples/read_video: /home/rui/libs/opencv-3.4/opencv-3.4/build/lib/libopencv_videoio.so.3.4.6
examples/read_video: /home/rui/libs/opencv-3.4/opencv-3.4/build/lib/libopencv_imgcodecs.so.3.4.6
examples/read_video: /home/rui/libs/opencv-3.4/opencv-3.4/build/lib/libopencv_imgproc.so.3.4.6
examples/read_video: /home/rui/libs/opencv-3.4/opencv-3.4/build/lib/libopencv_core.so.3.4.6
examples/read_video: /home/rui/libs/opencv-3.4/opencv-3.4/build/lib/libopencv_cudev.so.3.4.6
examples/read_video: /usr/local/lib/libavcodec.a
examples/read_video: /usr/local/lib/libavformat.a
examples/read_video: /usr/local/lib/libavutil.a
examples/read_video: /usr/local/lib/libavdevice.a
examples/read_video: /usr/local/lib/libavcodec.a
examples/read_video: /usr/local/lib/libavformat.a
examples/read_video: /usr/local/lib/libavutil.a
examples/read_video: /usr/local/lib/libavdevice.a
examples/read_video: examples/CMakeFiles/read_video.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable read_video"
	cd /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/read_video.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/read_video.dir/build: examples/read_video

.PHONY : examples/CMakeFiles/read_video.dir/build

examples/CMakeFiles/read_video.dir/clean:
	cd /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug/examples && $(CMAKE_COMMAND) -P CMakeFiles/read_video.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/read_video.dir/clean

examples/CMakeFiles/read_video.dir/depend:
	cd /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rui/files/CLionProjects/ffmpeg_exmaple /home/rui/files/CLionProjects/ffmpeg_exmaple/examples /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug/examples /home/rui/files/CLionProjects/ffmpeg_exmaple/cmake-build-debug/examples/CMakeFiles/read_video.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/read_video.dir/depend
