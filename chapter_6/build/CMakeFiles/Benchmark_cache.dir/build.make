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
CMAKE_SOURCE_DIR = /home/silahian/projects/book_cpp_high_performance_financial_systems/chapter_6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/silahian/projects/book_cpp_high_performance_financial_systems/chapter_6/build

# Include any dependencies generated for this target.
include CMakeFiles/Benchmark_cache.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Benchmark_cache.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Benchmark_cache.dir/flags.make

CMakeFiles/Benchmark_cache.dir/main.cpp.o: CMakeFiles/Benchmark_cache.dir/flags.make
CMakeFiles/Benchmark_cache.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/silahian/projects/book_cpp_high_performance_financial_systems/chapter_6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Benchmark_cache.dir/main.cpp.o"
	/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Benchmark_cache.dir/main.cpp.o -c /home/silahian/projects/book_cpp_high_performance_financial_systems/chapter_6/main.cpp

CMakeFiles/Benchmark_cache.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Benchmark_cache.dir/main.cpp.i"
	/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/silahian/projects/book_cpp_high_performance_financial_systems/chapter_6/main.cpp > CMakeFiles/Benchmark_cache.dir/main.cpp.i

CMakeFiles/Benchmark_cache.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Benchmark_cache.dir/main.cpp.s"
	/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/silahian/projects/book_cpp_high_performance_financial_systems/chapter_6/main.cpp -o CMakeFiles/Benchmark_cache.dir/main.cpp.s

# Object files for target Benchmark_cache
Benchmark_cache_OBJECTS = \
"CMakeFiles/Benchmark_cache.dir/main.cpp.o"

# External object files for target Benchmark_cache
Benchmark_cache_EXTERNAL_OBJECTS =

Benchmark_cache: CMakeFiles/Benchmark_cache.dir/main.cpp.o
Benchmark_cache: CMakeFiles/Benchmark_cache.dir/build.make
Benchmark_cache: /usr/local/lib/libbenchmark.a
Benchmark_cache: CMakeFiles/Benchmark_cache.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/silahian/projects/book_cpp_high_performance_financial_systems/chapter_6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Benchmark_cache"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Benchmark_cache.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Benchmark_cache.dir/build: Benchmark_cache

.PHONY : CMakeFiles/Benchmark_cache.dir/build

CMakeFiles/Benchmark_cache.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Benchmark_cache.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Benchmark_cache.dir/clean

CMakeFiles/Benchmark_cache.dir/depend:
	cd /home/silahian/projects/book_cpp_high_performance_financial_systems/chapter_6/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/silahian/projects/book_cpp_high_performance_financial_systems/chapter_6 /home/silahian/projects/book_cpp_high_performance_financial_systems/chapter_6 /home/silahian/projects/book_cpp_high_performance_financial_systems/chapter_6/build /home/silahian/projects/book_cpp_high_performance_financial_systems/chapter_6/build /home/silahian/projects/book_cpp_high_performance_financial_systems/chapter_6/build/CMakeFiles/Benchmark_cache.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Benchmark_cache.dir/depend

