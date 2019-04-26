cmake_minimum_required(VERSION 3.13)
project(ffmpeg_read)
set(CMAKE_CXX_STANDARD 14)
#set(CMAKE_C_FLAGS "-std=c99")
set(OpenCV_DIR /home/rui/libs/opencv-3.4/opencv-3.4/build)
include(cmake/Dependencies.cmake)
include(cmake/Modules/FindFFmpeg.cmake)

add_library(videocapture STATIC VideoCapture.hpp VideoCapture.cpp)
target_link_libraries(videocapture ${LINKER_LIBS})
#set(CMAKE_FIND_LIBRARY_SUFFIXES ".a")
#link_directories(
 #       /usr/local/lib
#)
add_executable(ffmpeg_read main.cpp)
target_include_directories(ffmpeg_read  PRIVATE  ${INCLUDE_DIR})
target_link_libraries(ffmpeg_read PRIVATE ${LINKER_LIBS} videocapture)

