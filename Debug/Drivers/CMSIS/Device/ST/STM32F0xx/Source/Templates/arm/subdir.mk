################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x6.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x8.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030xc.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f031x6.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f038xx.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f042x6.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f048xx.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f051x8.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f058xx.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070x6.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070xb.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f071xb.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f072xb.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f078xx.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f091xc.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f098xx.s 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x6.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x8.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030xc.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f031x6.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f038xx.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f042x6.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f048xx.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f051x8.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f058xx.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070x6.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070xb.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f071xb.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f072xb.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f078xx.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f091xc.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f098xx.o 

S_DEPS += \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x6.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x8.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030xc.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f031x6.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f038xx.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f042x6.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f048xx.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f051x8.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f058xx.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070x6.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070xb.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f071xb.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f072xb.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f078xx.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f091xc.d \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f098xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x6.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x6.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x6.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x8.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x8.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x8.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030xc.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030xc.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030xc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f031x6.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f031x6.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f031x6.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f038xx.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f038xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f038xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f042x6.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f042x6.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f042x6.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f048xx.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f048xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f048xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f051x8.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f051x8.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f051x8.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f058xx.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f058xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f058xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070x6.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070x6.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070x6.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070xb.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070xb.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070xb.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f071xb.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f071xb.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f071xb.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f072xb.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f072xb.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f072xb.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f078xx.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f078xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f078xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f091xc.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f091xc.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f091xc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f098xx.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f098xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f098xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

