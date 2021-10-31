################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
FirstCubePrj.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
FirstCubePrj.list \

OBJCOPY_HEX += \
FirstCubePrj.hex \

OBJCOPY_BIN += \
FirstCubePrj.bin \


# All Target
all: FirstCubePrj.elf secondary-outputs

# Tool invocations
FirstCubePrj.elf: $(OBJS) $(USER_OBJS) E:\Currently\ working\ on\Learn\ in\ depth\ -\ Embedded\ systems\VSCode\Unit3\STM32cube\STM32F103C6TX_FLASH.ld
	arm-none-eabi-gcc -o "FirstCubePrj.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"E:\Currently working on\Learn in depth - Embedded systems\VSCode\Unit3\STM32cube\STM32F103C6TX_FLASH.ld" --specs=nosys.specs -Wl,-Map="FirstCubePrj.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

FirstCubePrj.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "FirstCubePrj.list"
	@echo 'Finished building: $@'
	@echo ' '

FirstCubePrj.hex: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "FirstCubePrj.hex"
	@echo 'Finished building: $@'
	@echo ' '

FirstCubePrj.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "FirstCubePrj.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
