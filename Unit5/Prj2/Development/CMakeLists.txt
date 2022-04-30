cmake_minimum_required(VERSION 3.16)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/debug)
message(" output should be at: ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")
project(Studen-Management)
set(SRC_FILES
              Src/main.c
              Src/prj2_util.c
              Src/prj2_functions.c)
add_executable(student-management ${SRC_FILES})
target_include_directories(student-management PUBLIC Src/inc/)
