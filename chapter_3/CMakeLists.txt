cmake_minimum_required(VERSION 3.10)
project(LimitOrderBook)

# Enable C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)


# Find the Google Benchmark package
find_package(benchmark REQUIRED)

add_executable(LimitOrderBook main.cpp exploring_hash_table.hpp)

# Link Google Benchmark to your target
target_link_libraries(LimitOrderBook benchmark::benchmark)
