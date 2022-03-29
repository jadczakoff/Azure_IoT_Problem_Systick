################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/shared/lib/jsmn/jsmn.c 

OBJS += \
./Drivers/shared/lib/jsmn/jsmn.o 

C_DEPS += \
./Drivers/shared/lib/jsmn/jsmn.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/shared/lib/jsmn/%.o: ../Drivers/shared/lib/jsmn/%.c Drivers/shared/lib/jsmn/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4S5xx -DTX_INCLUDE_USER_DEFINE_FILE -DNX_INCLUDE_USER_DEFINE_FILE -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" @"Drivers/shared/lib/jsmn/jsmn.c_includes.args"

clean: clean-Drivers-2f-shared-2f-lib-2f-jsmn

clean-Drivers-2f-shared-2f-lib-2f-jsmn:
	-$(RM) ./Drivers/shared/lib/jsmn/jsmn.d ./Drivers/shared/lib/jsmn/jsmn.o

.PHONY: clean-Drivers-2f-shared-2f-lib-2f-jsmn

