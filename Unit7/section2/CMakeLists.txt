cmake_minimum_required(VERSION 3.16)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/debug)
message(" output should be at: ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")

set(PRJ_NAME avr-section2)
project(${PRJ_NAME})
set(SRC_FILES
              src/main.c
              src/lcd.c
              src/keypad.c)
add_executable(${PRJ_NAME} ${SRC_FILES})
target_include_directories(${PRJ_NAME} PUBLIC src/inc/)

set_target_properties(${PRJ_NAME} PROPERTIES OUTPUT_NAME "${PRJ_NAME}.elf")
add_custom_target( Bin_Hex ALL
    DEPENDS ${PRJ_NAME}
    COMMAND cd ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} && ${CMAKE_OBJCOPY} "${PRJ_NAME}.elf" -O binary "${PRJ_NAME}.bin"
    COMMAND cd ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} && ${CMAKE_OBJCOPY} "${PRJ_NAME}.elf" -O ihex "${PRJ_NAME}.hex")
add_custom_target( asmInstructions_HeadersDetails ALL
    DEPENDS ${PRJ_NAME}
    COMMAND cd ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} && ${CMAKE_OBJDUMP} -D "${PROJECT_NAME}.elf" >> Instructions_${PROJECT_NAME}.asm
    COMMAND cd ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} && ${CMAKE_OBJDUMP} -x "${PROJECT_NAME}.elf" >> HeadersDetails_${PROJECT_NAME})
add_custom_target( SymbolTable ALL
    DEPENDS ${PRJ_NAME}
    COMMAND cd ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} && ${CMAKE_NM} "${PROJECT_NAME}.elf" >> SymbolTable_${PROJECT_NAME})
