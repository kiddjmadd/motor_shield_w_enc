################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/X-NUCLEO-IHMxx/x_nucleo_ihm01a1_stm32f4xx.c \
../Drivers/BSP/X-NUCLEO-IHMxx/x_nucleo_ihmxx.c 

OBJS += \
./Drivers/BSP/X-NUCLEO-IHMxx/x_nucleo_ihm01a1_stm32f4xx.o \
./Drivers/BSP/X-NUCLEO-IHMxx/x_nucleo_ihmxx.o 

C_DEPS += \
./Drivers/BSP/X-NUCLEO-IHMxx/x_nucleo_ihm01a1_stm32f4xx.d \
./Drivers/BSP/X-NUCLEO-IHMxx/x_nucleo_ihmxx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/X-NUCLEO-IHMxx/x_nucleo_ihm01a1_stm32f4xx.o: ../Drivers/BSP/X-NUCLEO-IHMxx/x_nucleo_ihm01a1_stm32f4xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/X-NUCLEO-IHMxx/x_nucleo_ihm01a1_stm32f4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/X-NUCLEO-IHMxx/x_nucleo_ihmxx.o: ../Drivers/BSP/X-NUCLEO-IHMxx/x_nucleo_ihmxx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/X-NUCLEO-IHMxx/x_nucleo_ihmxx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

