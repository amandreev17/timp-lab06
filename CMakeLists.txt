cmake_minimum_required(VERSION 3.4)
project(solver)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(PRINT_VERSION_MAJOR 0)
set(PRINT_VERSION_MINOR 1)
set(PRINT_VERSION_PATCH 0)
set(PRINT_VERSION_TWEAK 0)
set(PRINT_VERSION\${PRINT_VERSION_MAJOR}.${PRINT_VERSION_MINOR}.${PRINT_VERSION_PATCH}.${PRINT_VERSION_TWEAK})
set(PRINT_VERSION_STRING "v${PRINT_VERSION}")

include_directories(formatter_lib/ formatter_ex_lib/ solver_lib/)

add_library(formatter STATIC formatter_lib/formatter.h formatter_lib/formatter.cpp)
add_library(formatter_ex STATIC formatter_ex_lib/formatter_ex.h formatter_ex_lib/formatter_ex.cpp)

target_link_libraries(formatter_ex formatter)

add_library(solver STATIC solver_lib/solver.h solver_lib/solver.cpp)
add_executable(equation solver_application/equation.cpp)
target_link_libraries(equation formatter_ex solver)

include(CPackConfig.cmake)
