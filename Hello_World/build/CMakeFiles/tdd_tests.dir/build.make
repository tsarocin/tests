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
CMAKE_SOURCE_DIR = /workspaces/tests/Hello_World/adder

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/tests/Hello_World/build

# Include any dependencies generated for this target.
include CMakeFiles/tdd_tests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tdd_tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tdd_tests.dir/flags.make

CMakeFiles/tdd_tests.dir/test/test_functions.cpp.o: CMakeFiles/tdd_tests.dir/flags.make
CMakeFiles/tdd_tests.dir/test/test_functions.cpp.o: /workspaces/tests/Hello_World/adder/test/test_functions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/tests/Hello_World/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tdd_tests.dir/test/test_functions.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tdd_tests.dir/test/test_functions.cpp.o -c /workspaces/tests/Hello_World/adder/test/test_functions.cpp

CMakeFiles/tdd_tests.dir/test/test_functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tdd_tests.dir/test/test_functions.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/tests/Hello_World/adder/test/test_functions.cpp > CMakeFiles/tdd_tests.dir/test/test_functions.cpp.i

CMakeFiles/tdd_tests.dir/test/test_functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tdd_tests.dir/test/test_functions.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/tests/Hello_World/adder/test/test_functions.cpp -o CMakeFiles/tdd_tests.dir/test/test_functions.cpp.s

# Object files for target tdd_tests
tdd_tests_OBJECTS = \
"CMakeFiles/tdd_tests.dir/test/test_functions.cpp.o"

# External object files for target tdd_tests
tdd_tests_EXTERNAL_OBJECTS =

tdd_tests: CMakeFiles/tdd_tests.dir/test/test_functions.cpp.o
tdd_tests: CMakeFiles/tdd_tests.dir/build.make
tdd_tests: libtdd_functions_lib.a
tdd_tests: /usr/lib/x86_64-linux-gnu/libgtest_main.a
tdd_tests: /usr/lib/x86_64-linux-gnu/libgtest.a
tdd_tests: CMakeFiles/tdd_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/tests/Hello_World/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tdd_tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tdd_tests.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -D TEST_TARGET=tdd_tests -D TEST_EXECUTABLE=/workspaces/tests/Hello_World/build/tdd_tests -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/workspaces/tests/Hello_World/build -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=tdd_tests_TESTS -D CTEST_FILE=/workspaces/tests/Hello_World/build/tdd_tests[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -P /usr/share/cmake-3.16/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
CMakeFiles/tdd_tests.dir/build: tdd_tests

.PHONY : CMakeFiles/tdd_tests.dir/build

CMakeFiles/tdd_tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tdd_tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tdd_tests.dir/clean

CMakeFiles/tdd_tests.dir/depend:
	cd /workspaces/tests/Hello_World/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/tests/Hello_World/adder /workspaces/tests/Hello_World/adder /workspaces/tests/Hello_World/build /workspaces/tests/Hello_World/build /workspaces/tests/Hello_World/build/CMakeFiles/tdd_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tdd_tests.dir/depend

