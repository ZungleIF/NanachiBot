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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zungleif/sleepy-discord/examples/hello/build/asio-download

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zungleif/sleepy-discord/examples/hello/build/asio-download

# Utility rule file for asio-download.

# Include the progress variables for this target.
include CMakeFiles/asio-download.dir/progress.make

CMakeFiles/asio-download: CMakeFiles/asio-download-complete


CMakeFiles/asio-download-complete: asio-download-prefix/src/asio-download-stamp/asio-download-install
CMakeFiles/asio-download-complete: asio-download-prefix/src/asio-download-stamp/asio-download-mkdir
CMakeFiles/asio-download-complete: asio-download-prefix/src/asio-download-stamp/asio-download-download
CMakeFiles/asio-download-complete: asio-download-prefix/src/asio-download-stamp/asio-download-patch
CMakeFiles/asio-download-complete: asio-download-prefix/src/asio-download-stamp/asio-download-configure
CMakeFiles/asio-download-complete: asio-download-prefix/src/asio-download-stamp/asio-download-build
CMakeFiles/asio-download-complete: asio-download-prefix/src/asio-download-stamp/asio-download-install
CMakeFiles/asio-download-complete: asio-download-prefix/src/asio-download-stamp/asio-download-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/zungleif/sleepy-discord/examples/hello/build/asio-download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'asio-download'"
	/usr/local/bin/cmake -E make_directory /home/zungleif/sleepy-discord/examples/hello/build/asio-download/CMakeFiles
	/usr/local/bin/cmake -E touch /home/zungleif/sleepy-discord/examples/hello/build/asio-download/CMakeFiles/asio-download-complete
	/usr/local/bin/cmake -E touch /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix/src/asio-download-stamp/asio-download-done

asio-download-prefix/src/asio-download-stamp/asio-download-install: asio-download-prefix/src/asio-download-stamp/asio-download-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/zungleif/sleepy-discord/examples/hello/build/asio-download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'asio-download'"
	cd /home/zungleif/sleepy-discord/examples/hello/build/asio-build && /usr/local/bin/cmake -E echo_append
	cd /home/zungleif/sleepy-discord/examples/hello/build/asio-build && /usr/local/bin/cmake -E touch /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix/src/asio-download-stamp/asio-download-install

asio-download-prefix/src/asio-download-stamp/asio-download-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/zungleif/sleepy-discord/examples/hello/build/asio-download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'asio-download'"
	/usr/local/bin/cmake -E make_directory /home/zungleif/sleepy-discord/deps/asio
	/usr/local/bin/cmake -E make_directory /home/zungleif/sleepy-discord/examples/hello/build/asio-build
	/usr/local/bin/cmake -E make_directory /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix
	/usr/local/bin/cmake -E make_directory /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix/tmp
	/usr/local/bin/cmake -E make_directory /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix/src/asio-download-stamp
	/usr/local/bin/cmake -E make_directory /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix/src
	/usr/local/bin/cmake -E make_directory /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix/src/asio-download-stamp
	/usr/local/bin/cmake -E touch /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix/src/asio-download-stamp/asio-download-mkdir

asio-download-prefix/src/asio-download-stamp/asio-download-download: asio-download-prefix/src/asio-download-stamp/asio-download-gitinfo.txt
asio-download-prefix/src/asio-download-stamp/asio-download-download: asio-download-prefix/src/asio-download-stamp/asio-download-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/zungleif/sleepy-discord/examples/hello/build/asio-download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'asio-download'"
	cd /home/zungleif/sleepy-discord/deps && /usr/local/bin/cmake -P /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix/tmp/asio-download-gitclone.cmake
	cd /home/zungleif/sleepy-discord/deps && /usr/local/bin/cmake -E touch /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix/src/asio-download-stamp/asio-download-download

asio-download-prefix/src/asio-download-stamp/asio-download-patch: asio-download-prefix/src/asio-download-stamp/asio-download-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/zungleif/sleepy-discord/examples/hello/build/asio-download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No patch step for 'asio-download'"
	/usr/local/bin/cmake -E echo_append
	/usr/local/bin/cmake -E touch /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix/src/asio-download-stamp/asio-download-patch

asio-download-prefix/src/asio-download-stamp/asio-download-configure: asio-download-prefix/tmp/asio-download-cfgcmd.txt
asio-download-prefix/src/asio-download-stamp/asio-download-configure: asio-download-prefix/src/asio-download-stamp/asio-download-skip-update
asio-download-prefix/src/asio-download-stamp/asio-download-configure: asio-download-prefix/src/asio-download-stamp/asio-download-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/zungleif/sleepy-discord/examples/hello/build/asio-download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No configure step for 'asio-download'"
	cd /home/zungleif/sleepy-discord/examples/hello/build/asio-build && /usr/local/bin/cmake -E echo_append
	cd /home/zungleif/sleepy-discord/examples/hello/build/asio-build && /usr/local/bin/cmake -E touch /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix/src/asio-download-stamp/asio-download-configure

asio-download-prefix/src/asio-download-stamp/asio-download-build: asio-download-prefix/src/asio-download-stamp/asio-download-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/zungleif/sleepy-discord/examples/hello/build/asio-download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No build step for 'asio-download'"
	cd /home/zungleif/sleepy-discord/examples/hello/build/asio-build && /usr/local/bin/cmake -E echo_append
	cd /home/zungleif/sleepy-discord/examples/hello/build/asio-build && /usr/local/bin/cmake -E touch /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix/src/asio-download-stamp/asio-download-build

asio-download-prefix/src/asio-download-stamp/asio-download-test: asio-download-prefix/src/asio-download-stamp/asio-download-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/zungleif/sleepy-discord/examples/hello/build/asio-download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'asio-download'"
	cd /home/zungleif/sleepy-discord/examples/hello/build/asio-build && /usr/local/bin/cmake -E echo_append
	cd /home/zungleif/sleepy-discord/examples/hello/build/asio-build && /usr/local/bin/cmake -E touch /home/zungleif/sleepy-discord/examples/hello/build/asio-download/asio-download-prefix/src/asio-download-stamp/asio-download-test

asio-download-prefix/src/asio-download-stamp/asio-download-skip-update: asio-download-prefix/src/asio-download-stamp/asio-download-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/zungleif/sleepy-discord/examples/hello/build/asio-download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Skipping update step for 'asio-download'"
	cd /home/zungleif/sleepy-discord/deps/asio && /usr/local/bin/cmake -E echo_append

asio-download: CMakeFiles/asio-download
asio-download: CMakeFiles/asio-download-complete
asio-download: asio-download-prefix/src/asio-download-stamp/asio-download-install
asio-download: asio-download-prefix/src/asio-download-stamp/asio-download-mkdir
asio-download: asio-download-prefix/src/asio-download-stamp/asio-download-download
asio-download: asio-download-prefix/src/asio-download-stamp/asio-download-patch
asio-download: asio-download-prefix/src/asio-download-stamp/asio-download-configure
asio-download: asio-download-prefix/src/asio-download-stamp/asio-download-build
asio-download: asio-download-prefix/src/asio-download-stamp/asio-download-test
asio-download: asio-download-prefix/src/asio-download-stamp/asio-download-skip-update
asio-download: CMakeFiles/asio-download.dir/build.make

.PHONY : asio-download

# Rule to build all files generated by this target.
CMakeFiles/asio-download.dir/build: asio-download

.PHONY : CMakeFiles/asio-download.dir/build

CMakeFiles/asio-download.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/asio-download.dir/cmake_clean.cmake
.PHONY : CMakeFiles/asio-download.dir/clean

CMakeFiles/asio-download.dir/depend:
	cd /home/zungleif/sleepy-discord/examples/hello/build/asio-download && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zungleif/sleepy-discord/examples/hello/build/asio-download /home/zungleif/sleepy-discord/examples/hello/build/asio-download /home/zungleif/sleepy-discord/examples/hello/build/asio-download /home/zungleif/sleepy-discord/examples/hello/build/asio-download /home/zungleif/sleepy-discord/examples/hello/build/asio-download/CMakeFiles/asio-download.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/asio-download.dir/depend

