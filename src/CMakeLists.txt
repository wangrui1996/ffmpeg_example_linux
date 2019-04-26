# Collect source files
file(GLOB_RECURSE srcs ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp)


add_library(ffmpeg STATIC ${srcs})
target_link_libraries(ffmpeg ${LINKER_LIBS})


