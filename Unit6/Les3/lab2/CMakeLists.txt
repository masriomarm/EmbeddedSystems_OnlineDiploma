cmake_minimum_required(VERSION 3.16)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/debug)
message(" output should be at: ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")

if(NATIVE)
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libstdc++ -static-libgcc")
set(PRJ_NAME student-management)
project(${PRJ_NAME})
set(SRC_FILES
              src/main.cpp
              src/student.cpp
              src/myFunctions.cpp)
add_executable(${PRJ_NAME} ${SRC_FILES})
target_include_directories(${PRJ_NAME} PUBLIC inc/)
endif()

#ARM TARGET
if(ARM)
set(CMAKE_HOST_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_CROSSCOMPILING true)

set(PRJ_NAME unit6_les3_lab1)
project(${PRJ_NAME} C ASM)
set(SRC_FILES
              src/main.c)
set(ASM_FILES
              src/startup.s)
set(LinkerScript
              src/linkerscript.ld)

set(TOOL_PREFIX arm-none-eabi-)
set(CMAKE_C_COMPILER /usr/bin/arm-none-eabi-gcc)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${CPU} ${DEBUG_FLAG} -Wall ")
message("compiler flag: ${CMAKE_C_FLAGS}")
set(CMAKE_ASM_COMPILER /usr/bin/arm-none-eabi-as)
set(CMAKE_EXE_LINKER_FLAGS "-Xlinker -Map=\"${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/MapFile.map\" -T \"${CMAKE_SOURCE_DIR}/${LinkerScript}\"")

set(C_STANDARD 99)
set(C_STANDARD_REQUIRED true)
message("compiler is set to : ${CMAKE_C_COMPILER}")
#message("Cpp compiler is set to : ${CMAKE_CXX_COMPILER}")

add_executable(${PRJ_NAME} ${SRC_FILES} ${ASM_FILES})
set_target_properties(${PRJ_NAME} PROPERTIES OUTPUT_NAME "${PRJ_NAME}.elf")
target_include_directories(${PRJ_NAME} PUBLIC inc/)

add_custom_target( asmInstructions ALL
    DEPENDS ${PRJ_NAME}
    COMMAND cd ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} && ${TOOL_PREFIX}objdump -D "${PROJECT_NAME}.elf" >> Instructions_${PROJECT_NAME}.asm)
add_custom_target( HeadersDetails ALL
    DEPENDS ${PRJ_NAME}
    COMMAND cd ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} && ${TOOL_PREFIX}objdump -x "${PROJECT_NAME}.elf" >> HeadersDetails_${PROJECT_NAME})
add_custom_target( SymbolTable ALL
    DEPENDS ${PRJ_NAME}
    COMMAND cd ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} && ${TOOL_PREFIX}nm "${PROJECT_NAME}.elf" >> SymbolTable_${PROJECT_NAME})
add_custom_target( Bin_Hex ALL
    DEPENDS ${PRJ_NAME}
    COMMAND cd ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} && ${TOOL_PREFIX}objcopy "${PROJECT_NAME}.elf" -O binary "${PROJECT_NAME}.bin"
    COMMAND cd ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} && ${TOOL_PREFIX}objcopy "${PROJECT_NAME}.elf" -O ihex "${PROJECT_NAME}.hex")
#add_custom_command(TARGET ${PRJ_NAME} POST_BUILD COMMAND cd ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} && ${TOOL_PREFIX}objcopy "${PROJECT_NAME}.elf" -O ihex "${PROJECT_NAME}.hex")
endif()
