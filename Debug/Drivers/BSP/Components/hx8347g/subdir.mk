################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/Components/hx8347g/hx8347g.c 

OBJS += \
./Drivers/BSP/Components/hx8347g/hx8347g.o 

C_DEPS += \
./Drivers/BSP/Components/hx8347g/hx8347g.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/hx8347g/%.o: ../Drivers/BSP/Components/hx8347g/%.c Drivers/BSP/Components/hx8347g/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4S5xx -DTX_INCLUDE_USER_DEFINE_FILE -DNX_INCLUDE_USER_DEFINE_FILE -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" @"Drivers/BSP/Components/hx8347g/hx8347g.c_includes.args"

clean: clean-Drivers-2f-BSP-2f-Components-2f-hx8347g

clean-Drivers-2f-BSP-2f-Components-2f-hx8347g:
	-$(RM) ./Drivers/BSP/Components/hx8347g/hx8347g.d ./Drivers/BSP/Components/hx8347g/hx8347g.o

.PHONY: clean-Drivers-2f-BSP-2f-Components-2f-hx8347g

