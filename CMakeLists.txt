# Required as the first line
cmake_minimum_required(VERSION 3.5)

# Define the crrent project
project(main VERSION 0.1)

# Tell Abseil which C++ standard to use
set(CMAKE_CXX_STANDARD 11)

# Process abseil with CMake
add_subdirectory(googletest-release-1.10.0)
add_subdirectory(abseil-cpp)

# Define the target executable and its dependency on Abseil
add_executable(main src/main.cc)
add_executable(main_test src/main_test.cc)
target_link_libraries(main absl::strings)
target_link_libraries(main_test gtest gtest_main)
