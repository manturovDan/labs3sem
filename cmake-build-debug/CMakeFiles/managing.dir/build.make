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
CMAKE_COMMAND = /home/danila/source/bins/clion-2019.2.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/danila/source/bins/clion-2019.2.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/danila/source/robots

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/danila/source/robots/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/managing.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/managing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/managing.dir/flags.make

CMakeFiles/managing.dir/robots/Managing.cpp.o: CMakeFiles/managing.dir/flags.make
CMakeFiles/managing.dir/robots/Managing.cpp.o: ../robots/Managing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/danila/source/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/managing.dir/robots/Managing.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/managing.dir/robots/Managing.cpp.o -c /home/danila/source/robots/robots/Managing.cpp

CMakeFiles/managing.dir/robots/Managing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/managing.dir/robots/Managing.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/danila/source/robots/robots/Managing.cpp > CMakeFiles/managing.dir/robots/Managing.cpp.i

CMakeFiles/managing.dir/robots/Managing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/managing.dir/robots/Managing.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/danila/source/robots/robots/Managing.cpp -o CMakeFiles/managing.dir/robots/Managing.cpp.s

# Object files for target managing
managing_OBJECTS = \
"CMakeFiles/managing.dir/robots/Managing.cpp.o"

# External object files for target managing
managing_EXTERNAL_OBJECTS =

libmanaging.a: CMakeFiles/managing.dir/robots/Managing.cpp.o
libmanaging.a: CMakeFiles/managing.dir/build.make
libmanaging.a: CMakeFiles/managing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/danila/source/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libmanaging.a"
	$(CMAKE_COMMAND) -P CMakeFiles/managing.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/managing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/managing.dir/build: libmanaging.a

.PHONY : CMakeFiles/managing.dir/build

CMakeFiles/managing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/managing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/managing.dir/clean

CMakeFiles/managing.dir/depend:
	cd /home/danila/source/robots/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/danila/source/robots /home/danila/source/robots /home/danila/source/robots/cmake-build-debug /home/danila/source/robots/cmake-build-debug /home/danila/source/robots/cmake-build-debug/CMakeFiles/managing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/managing.dir/depend

