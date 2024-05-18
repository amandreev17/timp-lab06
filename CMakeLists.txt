cmake_minimum_required(VERSION 3.4)
project(solver)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(formatter_lib/ formatter_ex_lib/ solver_lib/)

add_library(formatter STATIC formatter_lib/formatter.h formatter_lib/formatter.cpp)
add_library(formatter_ex STATIC formatter_ex_lib/formatter_ex.h formatter_ex_lib/formatter_ex.cpp)

target_link_libraries(formatter_ex formatter)

add_library(solver STATIC solver_lib/solver.h solver_lib/solver.cpp)
add_executable(equation solver_application/equation.cpp)
target_link_libraries(equation formatter_ex solver)

include(CPackConfig.cmake)
