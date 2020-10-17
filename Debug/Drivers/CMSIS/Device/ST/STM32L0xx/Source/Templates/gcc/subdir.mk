################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l011xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l021xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l031xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l041xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l051xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l052xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l053xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l061xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l062xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l063xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l071xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l072xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l073xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l081xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l082xx.s \
../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l083xx.s 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l011xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l021xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l031xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l041xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l051xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l052xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l053xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l061xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l062xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l063xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l071xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l072xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l073xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l081xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l082xx.o \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l083xx.o 

S_DEPS += \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l011xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l021xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l031xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l041xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l051xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l052xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l053xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l061xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l062xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l063xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l071xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l072xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l073xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l081xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l082xx.d \
./Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l083xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l011xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l011xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l011xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l021xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l021xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l021xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l031xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l031xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l031xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l041xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l041xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l041xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l051xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l051xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l051xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l052xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l052xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l052xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l053xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l053xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l053xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l061xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l061xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l061xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l062xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l062xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l062xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l063xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l063xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l063xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l071xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l071xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l071xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l072xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l072xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l072xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l073xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l073xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l073xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l081xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l081xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l081xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l082xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l082xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l082xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l083xx.o: ../Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l083xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l083xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

