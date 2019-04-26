set(CMAKE_CXX_FLAGS "-D__STDC_CONSTANT_MACROS")

find_path(AVCODEC_INCLUDE_DIR libavcodec/avcodec.h)
find_library(AVCODEC_LIBRARY avcodec)
include_directories(SYSTEM ${AVCODEC_INCLUDE_DIR})
list(APPEND LINKER_LIBS ${AVCODEC_LIBRARY})

find_path(AVFORMAT_INCLUDE_DIR libavformat/avformat.h)
find_library(AVFORMAT_LIBRARY avformat)
include_directories(SYSTEM ${AVFORMAT_INCLUDE_DIR})
list(APPEND LINKER_LIBS ${AVFORMAT_LIBRARY})


find_path(AVUTIL_INCLUDE_DIR libavutil/avutil.h)
find_library(AVUTIL_LIBRARY avutil)
include_directories(SYSTEM  ${AVUTIL_INCLUDE_DIR})
list(APPEND LINKER_LIBS ${AVUTIL_LIBRARY})


find_path(AVDEVICE_INCLUDE_DIR libavdevice/avdevice.h)
find_library(AVDEVICE_LIBRARY avdevice)
include_directories(SYSTEM ${AVDEVICE_INCLUDE_DIR})
list(APPEND LINKER_LIBS ${AVDEVICE_LIBRARY})


INCLUDE(FindPkgConfig)
PKG_SEARCH_MODULE(SDL2 REQUIRED sdl2)

list(APPEND LINKER_LIBS   ${AVCODEC_LIBRARY} ${SDL2_LIBRARIES} pthread  swresample m swscale postproc z lzma  rt)

