# define the minimum cmake version
cmake_minimum_required(VERSION 3.16.3)
project(program VERSION 1.0 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)
add_compile_options(-Wall -Wextra -Werror -pedantic -O0)
add_library(student_struct src/student.c)
add_executable(cmake_exec student.cpp)
target_include_directories(student_struct PUBLIC include)
add_executable(student_struct_hw7_exec src/main.c)
#target_include_directories(program  PRIVATE)

# enable the testing
enable_testing()
# check if we have gtest
find_package(GTest REQUIRED)
# include the gtest CMake stuff
include(GoogleTest)
# create a test executable
add_executable(tests test/test_functions.cpp)
# link the gtest libraries
target_link_libraries(tests PRIVATE GTest::GTest GTest::Main)
# link the library we want to test
target_link_libraries(tests PRIVATE tdd_functions_lib)
# add the include directories
target_include_directories(tests PUBLIC include)
# discover and add tests to the test list
gtest_discover_tests(tests)