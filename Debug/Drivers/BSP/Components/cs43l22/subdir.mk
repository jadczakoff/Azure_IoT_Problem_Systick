################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/Components/cs43l22/cs43l22.c 

OBJS += \
./Drivers/BSP/Components/cs43l22/cs43l22.o 

C_DEPS += \
./Drivers/BSP/Components/cs43l22/cs43l22.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/cs43l22/%.o: ../Drivers/BSP/Components/cs43l22/%.c Drivers/BSP/Components/cs43l22/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4S5xx -DTX_INCLUDE_USER_DEFINE_FILE -DNX_INCLUDE_USER_DEFINE_FILE -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" @"Drivers/BSP/Components/cs43l22/cs43l22.c_includes.args"

clean: clean-Drivers-2f-BSP-2f-Components-2f-cs43l22

clean-Drivers-2f-BSP-2f-Components-2f-cs43l22:
	-$(RM) ./Drivers/BSP/Components/cs43l22/cs43l22.d ./Drivers/BSP/Components/cs43l22/cs43l22.o

.PHONY: clean-Drivers-2f-BSP-2f-Components-2f-cs43l22

