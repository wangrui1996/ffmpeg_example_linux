# ---[ Boost
find_package(Boost 1.46 REQUIRED COMPONENTS system thread filesystem regex)
include_directories(SYSTEM ${Boost_INCLUDE_DIR})
list(APPEND LINKER_LIBS ${Boost_LIBRARIES})

# ---[ OpenCV
find_package(OpenCV QUIET COMPONENTS core highgui imgproc imgcodecs videoio)
if(NOT OpenCV_FOUND) # if not OpenCV 3.x, then imgcodecs are not found
    find_package(OpenCV REQUIRED COMPONENTS core highgui imgproc)
endif()
include_directories(SYSTEM ${OpenCV_INCLUDE_DIRS})
list(APPEND LINKER_LIBS ${OpenCV_LIBS})
message(STATUS "OpenCV found (${OpenCV_CONFIG_PATH})")
