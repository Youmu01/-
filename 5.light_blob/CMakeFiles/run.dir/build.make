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
CMAKE_SOURCE_DIR = /home/youmu/Computer_Vision_Questions/5.light_blob

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/youmu/Computer_Vision_Questions/5.light_blob

# Include any dependencies generated for this target.
include CMakeFiles/run.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/run.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/run.dir/flags.make

CMakeFiles/run.dir/main.cpp.o: CMakeFiles/run.dir/flags.make
CMakeFiles/run.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/youmu/Computer_Vision_Questions/5.light_blob/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/run.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/run.dir/main.cpp.o -c /home/youmu/Computer_Vision_Questions/5.light_blob/main.cpp

CMakeFiles/run.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/run.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/youmu/Computer_Vision_Questions/5.light_blob/main.cpp > CMakeFiles/run.dir/main.cpp.i

CMakeFiles/run.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/run.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/youmu/Computer_Vision_Questions/5.light_blob/main.cpp -o CMakeFiles/run.dir/main.cpp.s

# Object files for target run
run_OBJECTS = \
"CMakeFiles/run.dir/main.cpp.o"

# External object files for target run
run_EXTERNAL_OBJECTS =

run: CMakeFiles/run.dir/main.cpp.o
run: CMakeFiles/run.dir/build.make
run: /usr/local/lib/libopencv_highgui.so.4.6.0
run: /usr/local/lib/libopencv_ml.so.4.6.0
run: /usr/local/lib/libopencv_objdetect.so.4.6.0
run: /usr/local/lib/libopencv_photo.so.4.6.0
run: /usr/local/lib/libopencv_stitching.so.4.6.0
run: /usr/local/lib/libopencv_video.so.4.6.0
run: /usr/local/lib/libopencv_videoio.so.4.6.0
run: /usr/local/lib/libopencv_imgcodecs.so.4.6.0
run: /usr/local/lib/libopencv_calib3d.so.4.6.0
run: /usr/local/lib/libopencv_dnn.so.4.6.0
run: /usr/local/lib/libopencv_features2d.so.4.6.0
run: /usr/local/lib/libopencv_flann.so.4.6.0
run: /usr/local/lib/libopencv_imgproc.so.4.6.0
run: /usr/local/lib/libopencv_core.so.4.6.0
run: CMakeFiles/run.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/youmu/Computer_Vision_Questions/5.light_blob/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable run"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/run.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/run.dir/build: run

.PHONY : CMakeFiles/run.dir/build

CMakeFiles/run.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/run.dir/cmake_clean.cmake
.PHONY : CMakeFiles/run.dir/clean

CMakeFiles/run.dir/depend:
	cd /home/youmu/Computer_Vision_Questions/5.light_blob && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/youmu/Computer_Vision_Questions/5.light_blob /home/youmu/Computer_Vision_Questions/5.light_blob /home/youmu/Computer_Vision_Questions/5.light_blob /home/youmu/Computer_Vision_Questions/5.light_blob /home/youmu/Computer_Vision_Questions/5.light_blob/CMakeFiles/run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/run.dir/depend

