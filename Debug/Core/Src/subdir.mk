################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Src/tx_initialize_low_level.s 

C_SRCS += \
../Core/Src/adc.c \
../Core/Src/app_threadx.c \
../Core/Src/board_init.c \
../Core/Src/console.c \
../Core/Src/dfsdm.c \
../Core/Src/es_wifi.c \
../Core/Src/es_wifi_io.c \
../Core/Src/gpio.c \
../Core/Src/i2c.c \
../Core/Src/main.c \
../Core/Src/nx_client.c \
../Core/Src/octospi.c \
../Core/Src/rng.c \
../Core/Src/spi.c \
../Core/Src/stm32l4xx_hal_msp.c \
../Core/Src/stm32l4xx_hal_timebase_tim.c \
../Core/Src/stm32l4xx_it.c \
../Core/Src/stm_networking.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32l4xx.c \
../Core/Src/usart.c \
../Core/Src/usb_otg.c \
../Core/Src/wifi.c 

OBJS += \
./Core/Src/adc.o \
./Core/Src/app_threadx.o \
./Core/Src/board_init.o \
./Core/Src/console.o \
./Core/Src/dfsdm.o \
./Core/Src/es_wifi.o \
./Core/Src/es_wifi_io.o \
./Core/Src/gpio.o \
./Core/Src/i2c.o \
./Core/Src/main.o \
./Core/Src/nx_client.o \
./Core/Src/octospi.o \
./Core/Src/rng.o \
./Core/Src/spi.o \
./Core/Src/stm32l4xx_hal_msp.o \
./Core/Src/stm32l4xx_hal_timebase_tim.o \
./Core/Src/stm32l4xx_it.o \
./Core/Src/stm_networking.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32l4xx.o \
./Core/Src/tx_initialize_low_level.o \
./Core/Src/usart.o \
./Core/Src/usb_otg.o \
./Core/Src/wifi.o 

S_DEPS += \
./Core/Src/tx_initialize_low_level.d 

C_DEPS += \
./Core/Src/adc.d \
./Core/Src/app_threadx.d \
./Core/Src/board_init.d \
./Core/Src/console.d \
./Core/Src/dfsdm.d \
./Core/Src/es_wifi.d \
./Core/Src/es_wifi_io.d \
./Core/Src/gpio.d \
./Core/Src/i2c.d \
./Core/Src/main.d \
./Core/Src/nx_client.d \
./Core/Src/octospi.d \
./Core/Src/rng.d \
./Core/Src/spi.d \
./Core/Src/stm32l4xx_hal_msp.d \
./Core/Src/stm32l4xx_hal_timebase_tim.d \
./Core/Src/stm32l4xx_it.d \
./Core/Src/stm_networking.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32l4xx.d \
./Core/Src/usart.d \
./Core/Src/usb_otg.d \
./Core/Src/wifi.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4S5xx -DTX_INCLUDE_USER_DEFINE_FILE -DNX_INCLUDE_USER_DEFINE_FILE -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" @"Core/Src/adc.c_includes.args"
Core/Src/%.o: ../Core/Src/%.s Core/Src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/adc.d ./Core/Src/adc.o ./Core/Src/app_threadx.d ./Core/Src/app_threadx.o ./Core/Src/board_init.d ./Core/Src/board_init.o ./Core/Src/console.d ./Core/Src/console.o ./Core/Src/dfsdm.d ./Core/Src/dfsdm.o ./Core/Src/es_wifi.d ./Core/Src/es_wifi.o ./Core/Src/es_wifi_io.d ./Core/Src/es_wifi_io.o ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/i2c.d ./Core/Src/i2c.o ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/nx_client.d ./Core/Src/nx_client.o ./Core/Src/octospi.d ./Core/Src/octospi.o ./Core/Src/rng.d ./Core/Src/rng.o ./Core/Src/spi.d ./Core/Src/spi.o ./Core/Src/stm32l4xx_hal_msp.d ./Core/Src/stm32l4xx_hal_msp.o ./Core/Src/stm32l4xx_hal_timebase_tim.d ./Core/Src/stm32l4xx_hal_timebase_tim.o ./Core/Src/stm32l4xx_it.d ./Core/Src/stm32l4xx_it.o ./Core/Src/stm_networking.d ./Core/Src/stm_networking.o ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/system_stm32l4xx.d ./Core/Src/system_stm32l4xx.o ./Core/Src/tx_initialize_low_level.d ./Core/Src/tx_initialize_low_level.o ./Core/Src/usart.d ./Core/Src/usart.o ./Core/Src/usb_otg.d ./Core/Src/usb_otg.o ./Core/Src/wifi.d ./Core/Src/wifi.o

.PHONY: clean-Core-2f-Src

