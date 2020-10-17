################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f301x8.s \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302x8.s \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302xc.s \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302xe.s \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303x8.s \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303xc.s \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303xe.s \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f318xx.s \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f328xx.s \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f334x8.s \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f358xx.s \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f373xc.s \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f378xx.s \
../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f398xx.s 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f301x8.o \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302x8.o \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302xc.o \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302xe.o \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303x8.o \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303xc.o \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303xe.o \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f318xx.o \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f328xx.o \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f334x8.o \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f358xx.o \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f373xc.o \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f378xx.o \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f398xx.o 

S_DEPS += \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f301x8.d \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302x8.d \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302xc.d \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302xe.d \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303x8.d \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303xc.d \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303xe.d \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f318xx.d \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f328xx.d \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f334x8.d \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f358xx.d \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f373xc.d \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f378xx.d \
./Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f398xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f301x8.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f301x8.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f301x8.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302x8.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302x8.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302x8.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302xc.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302xc.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302xc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302xe.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302xe.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f302xe.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303x8.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303x8.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303x8.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303xc.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303xc.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303xc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303xe.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303xe.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f303xe.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f318xx.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f318xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f318xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f328xx.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f328xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f328xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f334x8.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f334x8.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f334x8.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f358xx.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f358xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f358xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f373xc.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f373xc.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f373xc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f378xx.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f378xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f378xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f398xx.o: ../Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f398xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/iar/startup_stm32f398xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

