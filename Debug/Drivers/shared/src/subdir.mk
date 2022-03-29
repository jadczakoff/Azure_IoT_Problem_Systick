################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/shared/src/azure_iot_cert.c \
../Drivers/shared/src/azure_iot_ciphersuites.c \
../Drivers/shared/src/azure_iot_connect.c \
../Drivers/shared/src/azure_iot_nx_client.c \
../Drivers/shared/src/networking.c \
../Drivers/shared/src/sntp_client.c 

OBJS += \
./Drivers/shared/src/azure_iot_cert.o \
./Drivers/shared/src/azure_iot_ciphersuites.o \
./Drivers/shared/src/azure_iot_connect.o \
./Drivers/shared/src/azure_iot_nx_client.o \
./Drivers/shared/src/networking.o \
./Drivers/shared/src/sntp_client.o 

C_DEPS += \
./Drivers/shared/src/azure_iot_cert.d \
./Drivers/shared/src/azure_iot_ciphersuites.d \
./Drivers/shared/src/azure_iot_connect.d \
./Drivers/shared/src/azure_iot_nx_client.d \
./Drivers/shared/src/networking.d \
./Drivers/shared/src/sntp_client.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/shared/src/%.o: ../Drivers/shared/src/%.c Drivers/shared/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4S5xx -DTX_INCLUDE_USER_DEFINE_FILE -DNX_INCLUDE_USER_DEFINE_FILE -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" @"Drivers/shared/src/azure_iot_cert.c_includes.args"

clean: clean-Drivers-2f-shared-2f-src

clean-Drivers-2f-shared-2f-src:
	-$(RM) ./Drivers/shared/src/azure_iot_cert.d ./Drivers/shared/src/azure_iot_cert.o ./Drivers/shared/src/azure_iot_ciphersuites.d ./Drivers/shared/src/azure_iot_ciphersuites.o ./Drivers/shared/src/azure_iot_connect.d ./Drivers/shared/src/azure_iot_connect.o ./Drivers/shared/src/azure_iot_nx_client.d ./Drivers/shared/src/azure_iot_nx_client.o ./Drivers/shared/src/networking.d ./Drivers/shared/src/networking.o ./Drivers/shared/src/sntp_client.d ./Drivers/shared/src/sntp_client.o

.PHONY: clean-Drivers-2f-shared-2f-src

