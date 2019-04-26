cmake_minimum_required(VERSION 3.13)
project(ffmpeg_examples C CXX)
set(CMAKE_CXX_STANDARD 14)
#set(CMAKE_C_FLAGS "-std=c99")
set(OpenCV_DIR /home/rui/libs/opencv-3.4/opencv-3.4/build)
include(cmake/Dependencies.cmake)
include(cmake/Modules/FindFFmpeg.cmake)

# ---[ Includes
set(FFmpeg_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include)
include_directories(${FFmpeg_INCLUDE_DIR})

add_subdirectory(src)
add_subdirectory(examples)



