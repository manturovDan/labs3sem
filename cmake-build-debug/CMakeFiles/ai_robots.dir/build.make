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
include CMakeFiles/ai_robots.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ai_robots.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ai_robots.dir/flags.make

CMakeFiles/ai_robots.dir/robots/Ai_Deep.cpp.o: CMakeFiles/ai_robots.dir/flags.make
CMakeFiles/ai_robots.dir/robots/Ai_Deep.cpp.o: ../robots/Ai_Deep.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/danila/source/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ai_robots.dir/robots/Ai_Deep.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ai_robots.dir/robots/Ai_Deep.cpp.o -c /home/danila/source/robots/robots/Ai_Deep.cpp

CMakeFiles/ai_robots.dir/robots/Ai_Deep.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_robots.dir/robots/Ai_Deep.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/danila/source/robots/robots/Ai_Deep.cpp > CMakeFiles/ai_robots.dir/robots/Ai_Deep.cpp.i

CMakeFiles/ai_robots.dir/robots/Ai_Deep.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_robots.dir/robots/Ai_Deep.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/danila/source/robots/robots/Ai_Deep.cpp -o CMakeFiles/ai_robots.dir/robots/Ai_Deep.cpp.s

CMakeFiles/ai_robots.dir/tests/test1.cpp.o: CMakeFiles/ai_robots.dir/flags.make
CMakeFiles/ai_robots.dir/tests/test1.cpp.o: ../tests/test1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/danila/source/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ai_robots.dir/tests/test1.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ai_robots.dir/tests/test1.cpp.o -c /home/danila/source/robots/tests/test1.cpp

CMakeFiles/ai_robots.dir/tests/test1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_robots.dir/tests/test1.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/danila/source/robots/tests/test1.cpp > CMakeFiles/ai_robots.dir/tests/test1.cpp.i

CMakeFiles/ai_robots.dir/tests/test1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_robots.dir/tests/test1.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/danila/source/robots/tests/test1.cpp -o CMakeFiles/ai_robots.dir/tests/test1.cpp.s

CMakeFiles/ai_robots.dir/robots/Energy_Consumer.cpp.o: CMakeFiles/ai_robots.dir/flags.make
CMakeFiles/ai_robots.dir/robots/Energy_Consumer.cpp.o: ../robots/Energy_Consumer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/danila/source/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ai_robots.dir/robots/Energy_Consumer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ai_robots.dir/robots/Energy_Consumer.cpp.o -c /home/danila/source/robots/robots/Energy_Consumer.cpp

CMakeFiles/ai_robots.dir/robots/Energy_Consumer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_robots.dir/robots/Energy_Consumer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/danila/source/robots/robots/Energy_Consumer.cpp > CMakeFiles/ai_robots.dir/robots/Energy_Consumer.cpp.i

CMakeFiles/ai_robots.dir/robots/Energy_Consumer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_robots.dir/robots/Energy_Consumer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/danila/source/robots/robots/Energy_Consumer.cpp -o CMakeFiles/ai_robots.dir/robots/Energy_Consumer.cpp.s

# Object files for target ai_robots
ai_robots_OBJECTS = \
"CMakeFiles/ai_robots.dir/robots/Ai_Deep.cpp.o" \
"CMakeFiles/ai_robots.dir/tests/test1.cpp.o" \
"CMakeFiles/ai_robots.dir/robots/Energy_Consumer.cpp.o"

# External object files for target ai_robots
ai_robots_EXTERNAL_OBJECTS =

libai_robots.a: CMakeFiles/ai_robots.dir/robots/Ai_Deep.cpp.o
libai_robots.a: CMakeFiles/ai_robots.dir/tests/test1.cpp.o
libai_robots.a: CMakeFiles/ai_robots.dir/robots/Energy_Consumer.cpp.o
libai_robots.a: CMakeFiles/ai_robots.dir/build.make
libai_robots.a: CMakeFiles/ai_robots.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/danila/source/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libai_robots.a"
	$(CMAKE_COMMAND) -P CMakeFiles/ai_robots.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ai_robots.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ai_robots.dir/build: libai_robots.a

.PHONY : CMakeFiles/ai_robots.dir/build

CMakeFiles/ai_robots.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ai_robots.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ai_robots.dir/clean

CMakeFiles/ai_robots.dir/depend:
	cd /home/danila/source/robots/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/danila/source/robots /home/danila/source/robots /home/danila/source/robots/cmake-build-debug /home/danila/source/robots/cmake-build-debug /home/danila/source/robots/cmake-build-debug/CMakeFiles/ai_robots.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ai_robots.dir/depend

