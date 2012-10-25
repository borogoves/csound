# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /jpff/Sourceforge/csound/csound6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /jpff/Sourceforge/csound/csound6

# Include any dependencies generated for this target.
include tests/c/CMakeFiles/csoundTypeSystemTest.dir/depend.make

# Include the progress variables for this target.
include tests/c/CMakeFiles/csoundTypeSystemTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/c/CMakeFiles/csoundTypeSystemTest.dir/flags.make

tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o: tests/c/CMakeFiles/csoundTypeSystemTest.dir/flags.make
tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o: tests/c/csound_type_system_test.c
	$(CMAKE_COMMAND) -E cmake_progress_report /jpff/Sourceforge/csound/csound6/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o"
	cd /jpff/Sourceforge/csound/csound6/tests/c && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o   -c /jpff/Sourceforge/csound/csound6/tests/c/csound_type_system_test.c

tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.i"
	cd /jpff/Sourceforge/csound/csound6/tests/c && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /jpff/Sourceforge/csound/csound6/tests/c/csound_type_system_test.c > CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.i

tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.s"
	cd /jpff/Sourceforge/csound/csound6/tests/c && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /jpff/Sourceforge/csound/csound6/tests/c/csound_type_system_test.c -o CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.s

tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o.requires:
.PHONY : tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o.requires

tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o.provides: tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o.requires
	$(MAKE) -f tests/c/CMakeFiles/csoundTypeSystemTest.dir/build.make tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o.provides.build
.PHONY : tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o.provides

tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o.provides.build: tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o

# Object files for target csoundTypeSystemTest
csoundTypeSystemTest_OBJECTS = \
"CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o"

# External object files for target csoundTypeSystemTest
csoundTypeSystemTest_EXTERNAL_OBJECTS =

tests/c/csoundTypeSystemTest: tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o
tests/c/csoundTypeSystemTest: libcsound64.so.6.0
tests/c/csoundTypeSystemTest: tests/c/CMakeFiles/csoundTypeSystemTest.dir/build.make
tests/c/csoundTypeSystemTest: tests/c/CMakeFiles/csoundTypeSystemTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable csoundTypeSystemTest"
	cd /jpff/Sourceforge/csound/csound6/tests/c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/csoundTypeSystemTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/c/CMakeFiles/csoundTypeSystemTest.dir/build: tests/c/csoundTypeSystemTest
.PHONY : tests/c/CMakeFiles/csoundTypeSystemTest.dir/build

tests/c/CMakeFiles/csoundTypeSystemTest.dir/requires: tests/c/CMakeFiles/csoundTypeSystemTest.dir/csound_type_system_test.c.o.requires
.PHONY : tests/c/CMakeFiles/csoundTypeSystemTest.dir/requires

tests/c/CMakeFiles/csoundTypeSystemTest.dir/clean:
	cd /jpff/Sourceforge/csound/csound6/tests/c && $(CMAKE_COMMAND) -P CMakeFiles/csoundTypeSystemTest.dir/cmake_clean.cmake
.PHONY : tests/c/CMakeFiles/csoundTypeSystemTest.dir/clean

tests/c/CMakeFiles/csoundTypeSystemTest.dir/depend:
	cd /jpff/Sourceforge/csound/csound6 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /jpff/Sourceforge/csound/csound6 /jpff/Sourceforge/csound/csound6/tests/c /jpff/Sourceforge/csound/csound6 /jpff/Sourceforge/csound/csound6/tests/c /jpff/Sourceforge/csound/csound6/tests/c/CMakeFiles/csoundTypeSystemTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/c/CMakeFiles/csoundTypeSystemTest.dir/depend

