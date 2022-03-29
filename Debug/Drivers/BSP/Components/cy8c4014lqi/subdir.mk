################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/Components/cy8c4014lqi/cy8c4014lqi.c 

OBJS += \
./Drivers/BSP/Components/cy8c4014lqi/cy8c4014lqi.o 

C_DEPS += \
./Drivers/BSP/Components/cy8c4014lqi/cy8c4014lqi.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/cy8c4014lqi/%.o: ../Drivers/BSP/Components/cy8c4014lqi/%.c Drivers/BSP/Components/cy8c4014lqi/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4S5xx -DTX_INCLUDE_USER_DEFINE_FILE -DNX_INCLUDE_USER_DEFINE_FILE -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" @"Drivers/BSP/Components/cy8c4014lqi/cy8c4014lqi.c_includes.args"

clean: clean-Drivers-2f-BSP-2f-Components-2f-cy8c4014lqi

clean-Drivers-2f-BSP-2f-Components-2f-cy8c4014lqi:
	-$(RM) ./Drivers/BSP/Components/cy8c4014lqi/cy8c4014lqi.d ./Drivers/BSP/Components/cy8c4014lqi/cy8c4014lqi.o

.PHONY: clean-Drivers-2f-BSP-2f-Components-2f-cy8c4014lqi

