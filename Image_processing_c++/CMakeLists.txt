# cmake needs this line
cmake_minimum_required(VERSION 3.13)
# Enable C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
if(NOT CMAKE_BUILD_TYPE AND NOT (MSVC_IDE OR XCODE))
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Build type, one of: Release, Debug" FORCE)
endif()
# Set target name, change with your favorite name
project(nc-rd-facemask CXX)
message( STATUS "Build type: ${CMAKE_BUILD_TYPE}" )
message( STATUS "Configuration types: ${CMAKE_CONFIGURATION_TYPES}" )
# Detect 64 or 32 bit
if (CMAKE_SIZEOF_VOID_P EQUAL 8)
    # 64-bit project
    SET(64_BIT_OS TRUE)
    message( STATUS "A 64-bit OS detected" )
else()
    SET(64_BIT_OS FALSE)
    message( STATUS "A 32-bit OS detected" )
endif()
# Find OpenCV, you may need to set OpenCV_DIR variable
# to the absolute path to the directory containing OpenCVConfig.cmake file
# via the command line or GUI
if(WIN32)
    set(OpenCV_DIR "D:/_Program Files/opencv/build/x64/vc15/lib")
endif()
if(APPLE)
    set(OpenCV_DIR "/usr/local/Cellar/opencv/4.1.2/lib/cmake/opencv4")
#    list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}"/Users/praveen/CLionProjects/untitled/FindBoost.cmake")
endif()
find_package(OpenCV REQUIRED)
find_package(Boost 1.71.0 REQUIRED COMPONENTS date_time filesystem iostreams)

#...
#target_link_libraries(mytarget ${Boost_FILESYSTEM_LIBRARY} ${Boost_SYSTEM_LIBRARY})
# If the package has been found, several variables will
# be set, you can find the full list with descriptions
# in the OpenCVConfig.cmake file.
# Print some message showing some of them
message(STATUS "OpenCV library status:")
message(STATUS "    config: ${OpenCV_DIR}")
message(STATUS "    version: ${OpenCV_VERSION}")
message(STATUS "    libraries: ${OpenCV_LIBS}")
message(STATUS "    include path: ${OpenCV_INCLUDE_DIRS}")

message(STATUS "---------------------")
message(STATUS "Boost_FOUND: ${Boost_FOUND}")
message(STATUS "Boost_INCLUDE_DIRS: ${Boost_INCLUDE_DIRS}")
message(STATUS "Boost_LIBRARY_DIRS: ${Boost_LIBRARY_DIRS}")
message(STATUS "Boost_LIBRARIES: ${Boost_LIBRARIES}")
message(STATUS "---------------------")


file(GLOB srcs *.cpp *.c)
file(GLOB hdrs *.hpp *.h)
include_directories("${CMAKE_CURRENT_LIST_DIR}")
# Since there are a lot of examples I'm going to use a macro to simplify this
# CMakeLists.txt file.  However, usually you will create only one executable in
# your cmake projects and use the syntax shown above.
macro(add_example name)
    add_executable(${name} ${name}.cpp)
    target_link_libraries(${name} ${OpenCV_LIBS} )
#    add_executable(${name} ${name}.cpp)
    target_link_libraries(${name} Boost::date_time Boost::filesystem  Boost::iostreams)
endmacro()
# if an example requires GUI, call this macro to check DLIB_NO_GUI_SUPPORT to include or exclude
macro(add_gui_example name)
    if (DLIB_NO_GUI_SUPPORT)
        message("No GUI support, so we won't build the ${name} example.")
    else()
        add_example(${name})
    endif()
endmacro()
#add_example(test)


add_example(main_source)
add_example(detectAngle)
add_example(imageProcessing)
add_example(rotate90)
add_example(processFiles)
add_example(drawRect)
