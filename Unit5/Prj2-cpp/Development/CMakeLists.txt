cmake_minimum_required(VERSION 3.16)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/debug)
message(" output should be at: ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")
#set(CMAKE_CXX_COMPILER "C:/MinGW/bin/g++.exe")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libstdc++ -static-libgcc")
set(PRJ_NAME student-management)
project(${PRJ_NAME})
set(SRC_FILES
              src/main.cpp
              src/student.cpp
              src/myFunctions.cpp)
add_executable(${PRJ_NAME} ${SRC_FILES})
target_include_directories(${PRJ_NAME} PUBLIC inc/)
