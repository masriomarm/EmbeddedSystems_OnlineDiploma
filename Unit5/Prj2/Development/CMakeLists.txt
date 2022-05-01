cmake_minimum_required(VERSION 3.16)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/debug)
message(" output should be at: ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")
project(studen-Management)
set(SRC_FILES
              Src/main.c
              Src/prj2_util.c
              Src/prj2_functions.c)
add_executable(${CMAKE_PROJECT_NAME} ${SRC_FILES})
target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC Src/inc/)
add_custom_target( asmInstructions ALL
  DEPENDS ${PROJECT_NAME}
    COMMAND cd ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} && objdump -D ${PROJECT_NAME} >> Instructions.asm)
add_custom_target( myclean
COMMAND cd ${CMAKE_SOURCE_DIR}/build/ && rm -r *
COMMAND rm -r ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
