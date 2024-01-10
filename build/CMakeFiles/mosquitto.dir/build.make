# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspaces/tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/tests/build

# Utility rule file for mosquitto.

# Include any custom commands dependencies for this target.
include CMakeFiles/mosquitto.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mosquitto.dir/progress.make

CMakeFiles/mosquitto: CMakeFiles/mosquitto-complete

CMakeFiles/mosquitto-complete: mosquitto-prefix/src/mosquitto-stamp/mosquitto-install
CMakeFiles/mosquitto-complete: mosquitto-prefix/src/mosquitto-stamp/mosquitto-mkdir
CMakeFiles/mosquitto-complete: mosquitto-prefix/src/mosquitto-stamp/mosquitto-download
CMakeFiles/mosquitto-complete: mosquitto-prefix/src/mosquitto-stamp/mosquitto-update
CMakeFiles/mosquitto-complete: mosquitto-prefix/src/mosquitto-stamp/mosquitto-patch
CMakeFiles/mosquitto-complete: mosquitto-prefix/src/mosquitto-stamp/mosquitto-configure
CMakeFiles/mosquitto-complete: mosquitto-prefix/src/mosquitto-stamp/mosquitto-build
CMakeFiles/mosquitto-complete: mosquitto-prefix/src/mosquitto-stamp/mosquitto-install
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/workspaces/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'mosquitto'"
	/usr/bin/cmake -E make_directory /workspaces/tests/build/CMakeFiles
	/usr/bin/cmake -E touch /workspaces/tests/build/CMakeFiles/mosquitto-complete
	/usr/bin/cmake -E touch /workspaces/tests/build/mosquitto-prefix/src/mosquitto-stamp/mosquitto-done

mosquitto-prefix/src/mosquitto-stamp/mosquitto-build: mosquitto-prefix/src/mosquitto-stamp/mosquitto-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/workspaces/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'mosquitto'"
	cd /workspaces/tests/build/mosquitto-prefix/src/mosquitto-build && $(MAKE)
	cd /workspaces/tests/build/mosquitto-prefix/src/mosquitto-build && /usr/bin/cmake -E touch /workspaces/tests/build/mosquitto-prefix/src/mosquitto-stamp/mosquitto-build

mosquitto-prefix/src/mosquitto-stamp/mosquitto-configure: mosquitto-prefix/tmp/mosquitto-cfgcmd.txt
mosquitto-prefix/src/mosquitto-stamp/mosquitto-configure: mosquitto-prefix/src/mosquitto-stamp/mosquitto-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/workspaces/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'mosquitto'"
	cd /workspaces/tests/build/mosquitto-prefix/src/mosquitto-build && /usr/bin/cmake -DCMAKE_INSTALL_PREFIX=/usr/local "-GUnix Makefiles" -S /workspaces/tests/build/mosquitto-prefix/src/mosquitto -B /workspaces/tests/build/mosquitto-prefix/src/mosquitto-build
	cd /workspaces/tests/build/mosquitto-prefix/src/mosquitto-build && /usr/bin/cmake -E touch /workspaces/tests/build/mosquitto-prefix/src/mosquitto-stamp/mosquitto-configure

mosquitto-prefix/src/mosquitto-stamp/mosquitto-download: mosquitto-prefix/src/mosquitto-stamp/mosquitto-gitinfo.txt
mosquitto-prefix/src/mosquitto-stamp/mosquitto-download: mosquitto-prefix/src/mosquitto-stamp/mosquitto-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/workspaces/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'mosquitto'"
	cd /workspaces/tests/build/mosquitto-prefix/src && /usr/bin/cmake -P /workspaces/tests/build/mosquitto-prefix/tmp/mosquitto-gitclone.cmake
	cd /workspaces/tests/build/mosquitto-prefix/src && /usr/bin/cmake -E touch /workspaces/tests/build/mosquitto-prefix/src/mosquitto-stamp/mosquitto-download

mosquitto-prefix/src/mosquitto-stamp/mosquitto-install: mosquitto-prefix/src/mosquitto-stamp/mosquitto-build
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/workspaces/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing install step for 'mosquitto'"
	cd /workspaces/tests/build/mosquitto-prefix/src/mosquitto-build && $(MAKE) install
	cd /workspaces/tests/build/mosquitto-prefix/src/mosquitto-build && /usr/bin/cmake -E touch /workspaces/tests/build/mosquitto-prefix/src/mosquitto-stamp/mosquitto-install

mosquitto-prefix/src/mosquitto-stamp/mosquitto-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/workspaces/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'mosquitto'"
	/usr/bin/cmake -Dcfgdir= -P /workspaces/tests/build/mosquitto-prefix/tmp/mosquitto-mkdirs.cmake
	/usr/bin/cmake -E touch /workspaces/tests/build/mosquitto-prefix/src/mosquitto-stamp/mosquitto-mkdir

mosquitto-prefix/src/mosquitto-stamp/mosquitto-patch: mosquitto-prefix/src/mosquitto-stamp/mosquitto-patch-info.txt
mosquitto-prefix/src/mosquitto-stamp/mosquitto-patch: mosquitto-prefix/src/mosquitto-stamp/mosquitto-update
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/workspaces/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'mosquitto'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /workspaces/tests/build/mosquitto-prefix/src/mosquitto-stamp/mosquitto-patch

mosquitto-prefix/src/mosquitto-stamp/mosquitto-update: mosquitto-prefix/tmp/mosquitto-gitupdate.cmake
mosquitto-prefix/src/mosquitto-stamp/mosquitto-update: mosquitto-prefix/src/mosquitto-stamp/mosquitto-update-info.txt
mosquitto-prefix/src/mosquitto-stamp/mosquitto-update: mosquitto-prefix/src/mosquitto-stamp/mosquitto-download
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/workspaces/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing update step for 'mosquitto'"
	cd /workspaces/tests/build/mosquitto-prefix/src/mosquitto && /usr/bin/cmake -Dcan_fetch=YES -P /workspaces/tests/build/mosquitto-prefix/tmp/mosquitto-gitupdate.cmake

mosquitto: CMakeFiles/mosquitto
mosquitto: CMakeFiles/mosquitto-complete
mosquitto: mosquitto-prefix/src/mosquitto-stamp/mosquitto-build
mosquitto: mosquitto-prefix/src/mosquitto-stamp/mosquitto-configure
mosquitto: mosquitto-prefix/src/mosquitto-stamp/mosquitto-download
mosquitto: mosquitto-prefix/src/mosquitto-stamp/mosquitto-install
mosquitto: mosquitto-prefix/src/mosquitto-stamp/mosquitto-mkdir
mosquitto: mosquitto-prefix/src/mosquitto-stamp/mosquitto-patch
mosquitto: mosquitto-prefix/src/mosquitto-stamp/mosquitto-update
mosquitto: CMakeFiles/mosquitto.dir/build.make
.PHONY : mosquitto

# Rule to build all files generated by this target.
CMakeFiles/mosquitto.dir/build: mosquitto
.PHONY : CMakeFiles/mosquitto.dir/build

CMakeFiles/mosquitto.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mosquitto.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mosquitto.dir/clean

CMakeFiles/mosquitto.dir/depend:
	cd /workspaces/tests/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/tests /workspaces/tests /workspaces/tests/build /workspaces/tests/build /workspaces/tests/build/CMakeFiles/mosquitto.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/mosquitto.dir/depend

