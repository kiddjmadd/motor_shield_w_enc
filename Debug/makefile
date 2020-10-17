################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Drivers/BSP/X-NUCLEO-IHMxx/subdir.mk
-include Drivers/BSP/STM32F4xx-Nucleo/subdir.mk
-include Drivers/BSP/Components/l6474/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
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
motor_shield_w_enc.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
motor_shield_w_enc.list \

OBJCOPY_BIN += \
motor_shield_w_enc.bin \


# All Target
all: motor_shield_w_enc.elf secondary-outputs

# Tool invocations
motor_shield_w_enc.elf: $(OBJS) $(USER_OBJS) /home/madsenj/Documents/Code/STM32/CubeIDE/motor_shield_w_enc/STM32F401RETX_FLASH.ld
	arm-none-eabi-gcc -o "motor_shield_w_enc.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"/home/madsenj/Documents/Code/STM32/CubeIDE/motor_shield_w_enc/STM32F401RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="motor_shield_w_enc.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

motor_shield_w_enc.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "motor_shield_w_enc.list"
	@echo 'Finished building: $@'
	@echo ' '

motor_shield_w_enc.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "motor_shield_w_enc.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
