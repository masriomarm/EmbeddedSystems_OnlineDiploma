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

set(PRJ_CPU "cortex-m3")
set(PRJ_DEBUG "-g -gdwarf")
set(PRJ_WARNING "-Wall -Werror")
set(PRJ_OPTIMIZE " -O0 ")

set(CMAKE_C_FLAGS "-mcpu=${PRJ_CPU} ${PRJ_DEBUG} ${PRJ_WARNING}
${PRJ_OPTIMIZE}")
set(CMAKE_EXE_LINKER_FLAGS "-Xlinker -Map=\"${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/MapFile.map\"")
