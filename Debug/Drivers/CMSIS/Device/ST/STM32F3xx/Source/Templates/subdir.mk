################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/system_stm32f3xx.c 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/system_stm32f3xx.o 

C_DEPS += \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/system_stm32f3xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/system_stm32f3xx.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/system_stm32f3xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/system_stm32f3xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

