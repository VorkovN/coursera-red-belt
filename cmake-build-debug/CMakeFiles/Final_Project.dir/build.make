# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /snap/clion/126/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/126/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vorkov/Workspace/C++/Coursera/Red/Final_Project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Final_Project.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Final_Project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Final_Project.dir/flags.make

CMakeFiles/Final_Project.dir/main.cpp.o: CMakeFiles/Final_Project.dir/flags.make
CMakeFiles/Final_Project.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vorkov/Workspace/C++/Coursera/Red/Final_Project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Final_Project.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Final_Project.dir/main.cpp.o -c /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/main.cpp

CMakeFiles/Final_Project.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Final_Project.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/main.cpp > CMakeFiles/Final_Project.dir/main.cpp.i

CMakeFiles/Final_Project.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Final_Project.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/main.cpp -o CMakeFiles/Final_Project.dir/main.cpp.s

CMakeFiles/Final_Project.dir/parse.cpp.o: CMakeFiles/Final_Project.dir/flags.make
CMakeFiles/Final_Project.dir/parse.cpp.o: ../parse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vorkov/Workspace/C++/Coursera/Red/Final_Project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Final_Project.dir/parse.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Final_Project.dir/parse.cpp.o -c /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/parse.cpp

CMakeFiles/Final_Project.dir/parse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Final_Project.dir/parse.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/parse.cpp > CMakeFiles/Final_Project.dir/parse.cpp.i

CMakeFiles/Final_Project.dir/parse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Final_Project.dir/parse.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/parse.cpp -o CMakeFiles/Final_Project.dir/parse.cpp.s

CMakeFiles/Final_Project.dir/search_server.cpp.o: CMakeFiles/Final_Project.dir/flags.make
CMakeFiles/Final_Project.dir/search_server.cpp.o: ../search_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vorkov/Workspace/C++/Coursera/Red/Final_Project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Final_Project.dir/search_server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Final_Project.dir/search_server.cpp.o -c /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/search_server.cpp

CMakeFiles/Final_Project.dir/search_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Final_Project.dir/search_server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/search_server.cpp > CMakeFiles/Final_Project.dir/search_server.cpp.i

CMakeFiles/Final_Project.dir/search_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Final_Project.dir/search_server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/search_server.cpp -o CMakeFiles/Final_Project.dir/search_server.cpp.s

# Object files for target Final_Project
Final_Project_OBJECTS = \
"CMakeFiles/Final_Project.dir/main.cpp.o" \
"CMakeFiles/Final_Project.dir/parse.cpp.o" \
"CMakeFiles/Final_Project.dir/search_server.cpp.o"

# External object files for target Final_Project
Final_Project_EXTERNAL_OBJECTS =

Final_Project: CMakeFiles/Final_Project.dir/main.cpp.o
Final_Project: CMakeFiles/Final_Project.dir/parse.cpp.o
Final_Project: CMakeFiles/Final_Project.dir/search_server.cpp.o
Final_Project: CMakeFiles/Final_Project.dir/build.make
Final_Project: CMakeFiles/Final_Project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vorkov/Workspace/C++/Coursera/Red/Final_Project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Final_Project"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Final_Project.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Final_Project.dir/build: Final_Project

.PHONY : CMakeFiles/Final_Project.dir/build

CMakeFiles/Final_Project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Final_Project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Final_Project.dir/clean

CMakeFiles/Final_Project.dir/depend:
	cd /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vorkov/Workspace/C++/Coursera/Red/Final_Project /home/vorkov/Workspace/C++/Coursera/Red/Final_Project /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/cmake-build-debug /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/cmake-build-debug /home/vorkov/Workspace/C++/Coursera/Red/Final_Project/cmake-build-debug/CMakeFiles/Final_Project.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Final_Project.dir/depend

