################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/netxduo/addons/pop3/nxd_pop3_client.c 

OBJS += \
./Middlewares/ST/netxduo/addons/pop3/nxd_pop3_client.o 

C_DEPS += \
./Middlewares/ST/netxduo/addons/pop3/nxd_pop3_client.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/netxduo/addons/pop3/%.o: ../Middlewares/ST/netxduo/addons/pop3/%.c Middlewares/ST/netxduo/addons/pop3/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4S5xx -DTX_INCLUDE_USER_DEFINE_FILE -DNX_INCLUDE_USER_DEFINE_FILE -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" @"Middlewares/ST/netxduo/addons/pop3/nxd_pop3_client.c_includes.args"

clean: clean-Middlewares-2f-ST-2f-netxduo-2f-addons-2f-pop3

clean-Middlewares-2f-ST-2f-netxduo-2f-addons-2f-pop3:
	-$(RM) ./Middlewares/ST/netxduo/addons/pop3/nxd_pop3_client.d ./Middlewares/ST/netxduo/addons/pop3/nxd_pop3_client.o

.PHONY: clean-Middlewares-2f-ST-2f-netxduo-2f-addons-2f-pop3

