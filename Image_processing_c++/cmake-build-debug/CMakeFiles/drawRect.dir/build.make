# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = "/Users/praveen/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.7142.39/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/praveen/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.7142.39/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/praveen/CLionProjects/ImageProcessing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/praveen/CLionProjects/ImageProcessing/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/drawRect.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/drawRect.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/drawRect.dir/flags.make

CMakeFiles/drawRect.dir/drawRect.cpp.o: CMakeFiles/drawRect.dir/flags.make
CMakeFiles/drawRect.dir/drawRect.cpp.o: ../drawRect.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/praveen/CLionProjects/ImageProcessing/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/drawRect.dir/drawRect.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drawRect.dir/drawRect.cpp.o -c /Users/praveen/CLionProjects/ImageProcessing/drawRect.cpp

CMakeFiles/drawRect.dir/drawRect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drawRect.dir/drawRect.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/praveen/CLionProjects/ImageProcessing/drawRect.cpp > CMakeFiles/drawRect.dir/drawRect.cpp.i

CMakeFiles/drawRect.dir/drawRect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drawRect.dir/drawRect.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/praveen/CLionProjects/ImageProcessing/drawRect.cpp -o CMakeFiles/drawRect.dir/drawRect.cpp.s

# Object files for target drawRect
drawRect_OBJECTS = \
"CMakeFiles/drawRect.dir/drawRect.cpp.o"

# External object files for target drawRect
drawRect_EXTERNAL_OBJECTS =

drawRect: CMakeFiles/drawRect.dir/drawRect.cpp.o
drawRect: CMakeFiles/drawRect.dir/build.make
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_gapi.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_stitching.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_aruco.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_bgsegm.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_bioinspired.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_ccalib.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_dnn_objdetect.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_dnn_superres.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_dpm.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_face.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_freetype.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_fuzzy.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_hfs.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_img_hash.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_line_descriptor.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_quality.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_reg.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_rgbd.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_saliency.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_sfm.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_stereo.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_structured_light.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_superres.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_surface_matching.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_tracking.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_videostab.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_xfeatures2d.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_xobjdetect.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_xphoto.4.1.2.dylib
drawRect: /usr/local/lib/libboost_date_time.dylib
drawRect: /usr/local/lib/libboost_filesystem.dylib
drawRect: /usr/local/lib/libboost_iostreams.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_highgui.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_shape.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_datasets.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_plot.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_text.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_dnn.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_ml.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_phase_unwrapping.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_optflow.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_ximgproc.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_video.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_videoio.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_imgcodecs.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_objdetect.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_calib3d.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_features2d.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_flann.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_photo.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_imgproc.4.1.2.dylib
drawRect: /usr/local/Cellar/opencv/4.1.2/lib/libopencv_core.4.1.2.dylib
drawRect: CMakeFiles/drawRect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/praveen/CLionProjects/ImageProcessing/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable drawRect"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drawRect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/drawRect.dir/build: drawRect

.PHONY : CMakeFiles/drawRect.dir/build

CMakeFiles/drawRect.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/drawRect.dir/cmake_clean.cmake
.PHONY : CMakeFiles/drawRect.dir/clean

CMakeFiles/drawRect.dir/depend:
	cd /Users/praveen/CLionProjects/ImageProcessing/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/praveen/CLionProjects/ImageProcessing /Users/praveen/CLionProjects/ImageProcessing /Users/praveen/CLionProjects/ImageProcessing/cmake-build-debug /Users/praveen/CLionProjects/ImageProcessing/cmake-build-debug /Users/praveen/CLionProjects/ImageProcessing/cmake-build-debug/CMakeFiles/drawRect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/drawRect.dir/depend

