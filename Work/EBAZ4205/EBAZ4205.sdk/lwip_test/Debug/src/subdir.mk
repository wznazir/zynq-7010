################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/echo.c \
../src/iic_phyreset.c \
../src/led_button.c \
../src/main.c \
../src/sd.c 

OBJS += \
./src/echo.o \
./src/iic_phyreset.o \
./src/led_button.o \
./src/main.o \
./src/sd.o 

C_DEPS += \
./src/echo.d \
./src/iic_phyreset.d \
./src/led_button.d \
./src/main.d \
./src/sd.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../lwip_test_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


