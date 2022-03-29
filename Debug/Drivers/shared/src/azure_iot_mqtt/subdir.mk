################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/shared/src/azure_iot_mqtt/azure_iot_dps_mqtt.c \
../Drivers/shared/src/azure_iot_mqtt/azure_iot_mqtt.c \
../Drivers/shared/src/azure_iot_mqtt/hmac_sha256.c \
../Drivers/shared/src/azure_iot_mqtt/json_utils.c \
../Drivers/shared/src/azure_iot_mqtt/sas_token.c \
../Drivers/shared/src/azure_iot_mqtt/sha256.c 

OBJS += \
./Drivers/shared/src/azure_iot_mqtt/azure_iot_dps_mqtt.o \
./Drivers/shared/src/azure_iot_mqtt/azure_iot_mqtt.o \
./Drivers/shared/src/azure_iot_mqtt/hmac_sha256.o \
./Drivers/shared/src/azure_iot_mqtt/json_utils.o \
./Drivers/shared/src/azure_iot_mqtt/sas_token.o \
./Drivers/shared/src/azure_iot_mqtt/sha256.o 

C_DEPS += \
./Drivers/shared/src/azure_iot_mqtt/azure_iot_dps_mqtt.d \
./Drivers/shared/src/azure_iot_mqtt/azure_iot_mqtt.d \
./Drivers/shared/src/azure_iot_mqtt/hmac_sha256.d \
./Drivers/shared/src/azure_iot_mqtt/json_utils.d \
./Drivers/shared/src/azure_iot_mqtt/sas_token.d \
./Drivers/shared/src/azure_iot_mqtt/sha256.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/shared/src/azure_iot_mqtt/%.o: ../Drivers/shared/src/azure_iot_mqtt/%.c Drivers/shared/src/azure_iot_mqtt/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4S5xx -DTX_INCLUDE_USER_DEFINE_FILE -DNX_INCLUDE_USER_DEFINE_FILE -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" @"Drivers/shared/src/azure_iot_mqtt/azure_iot_dps_mqtt.c_includes.args"

clean: clean-Drivers-2f-shared-2f-src-2f-azure_iot_mqtt

clean-Drivers-2f-shared-2f-src-2f-azure_iot_mqtt:
	-$(RM) ./Drivers/shared/src/azure_iot_mqtt/azure_iot_dps_mqtt.d ./Drivers/shared/src/azure_iot_mqtt/azure_iot_dps_mqtt.o ./Drivers/shared/src/azure_iot_mqtt/azure_iot_mqtt.d ./Drivers/shared/src/azure_iot_mqtt/azure_iot_mqtt.o ./Drivers/shared/src/azure_iot_mqtt/hmac_sha256.d ./Drivers/shared/src/azure_iot_mqtt/hmac_sha256.o ./Drivers/shared/src/azure_iot_mqtt/json_utils.d ./Drivers/shared/src/azure_iot_mqtt/json_utils.o ./Drivers/shared/src/azure_iot_mqtt/sas_token.d ./Drivers/shared/src/azure_iot_mqtt/sas_token.o ./Drivers/shared/src/azure_iot_mqtt/sha256.d ./Drivers/shared/src/azure_iot_mqtt/sha256.o

.PHONY: clean-Drivers-2f-shared-2f-src-2f-azure_iot_mqtt

