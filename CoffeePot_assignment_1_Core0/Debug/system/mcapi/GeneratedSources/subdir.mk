################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../system/mcapi/GeneratedSources/mcapi_config.c 

SRC_OBJS += \
./system/mcapi/GeneratedSources/mcapi_config.doj 

C_DEPS += \
./system/mcapi/GeneratedSources/mcapi_config.d 


# Each subdirectory must supply rules for building sources it contributes
system/mcapi/GeneratedSources/mcapi_config.doj: ../system/mcapi/GeneratedSources/mcapi_config.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn -c -file-attr ProjectName="CoffeePot_assignment_1_Core0" -proc ADSP-BF609 -flags-compiler --no_wrap_diagnostics -si-revision any -g -DCORE0 -D_DEBUG -DADI_MCAPI @includes-835cd2e7782a87ce7e2a7f7fdc7db35a.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "system/mcapi/GeneratedSources/mcapi_config.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


