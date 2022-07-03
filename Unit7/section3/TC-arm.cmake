set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_C_COMPILER      arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER    arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER    arm-none-eabi-as)
set(CMAKE_OBJCOPY         arm-none-eabi-objcopy)
set(CMAKE_OBJDUMP         arm-none-eabi-objdump)
set(CMAKE_NM              arm-none-eabi-nm)


set(CMAKE_FIND_ROOT_PATH /usr/lib/gcc/arm-none-eabi/9.2.1/)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(PRJ_CPU "-mcpu=cortex-m3")
set(PRJ_DEBUG "-g -gdwarf")
set(PRJ_WARNING "-Wall -Werror")
set(PRJ_FPU "-mfloat-abi=soft")
set(PRJ_ISA "-mthumb")
set(PRJ_SPECS_STRING "-specs=nano.specs")
set(PRJ_OPTIMIZE "-O0")
set(PRJ_linker_script ${CMAKE_SOURCE_DIR}/src/STM32F103C6TX_FLASH.ld)

set(CMAKE_C_FLAGS "${PRJ_CPU} \
${PRJ_DEBUG} \
${PRJ_WARNING} \
${PRJ_FPU} \
${PRJ_ISA} \
${PRJ_SPECS_STRING} \
${PRJ_OPTIMIZE} ")
set(CMAKE_EXE_LINKER_FLAGS "-Wl,-Map=\"${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/MapFile.map\" \
-Wl,-T\"${PRJ_linker_script}\" \
-Wl,--gc-sections ")
