################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../src/Activate_LED_Control_ASM.asm \
../src/Demonstrate_LEDControl_ASM.asm 

CPP_SRCS += \
../src/CoffeePot_assignment_1.cpp \
../src/My_CoffeePot_Functions.cpp 

SRC_OBJS += \
./src/Activate_LED_Control_ASM.doj \
./src/CoffeePot_assignment_1.doj \
./src/Demonstrate_LEDControl_ASM.doj \
./src/My_CoffeePot_Functions.doj 

ASM_DEPS += \
./src/Activate_LED_Control_ASM.d \
./src/Demonstrate_LEDControl_ASM.d 

CPP_DEPS += \
./src/CoffeePot_assignment_1.d \
./src/My_CoffeePot_Functions.d 


# Each subdirectory must supply rules for building sources it contributes
src/Activate_LED_Control_ASM.doj: ../src/Activate_LED_Control_ASM.asm
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin Assembler'
	easmblkfn -file-attr ProjectName="CoffeePot_assignment_1_Core0" -proc ADSP-BF609 -si-revision any -g -DCORE0 -D_DEBUG -DADI_MCAPI @includes-32222ed20b7e1eeb4ac0277099ebd22c.txt -gnu-style-dependencies -MM -Mo "src/Activate_LED_Control_ASM.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/CoffeePot_assignment_1.doj: ../src/CoffeePot_assignment_1.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn -c -file-attr ProjectName="CoffeePot_assignment_1_Core0" -proc ADSP-BF609 -flags-compiler --no_wrap_diagnostics -si-revision any -g -DCORE0 -D_DEBUG -DADI_MCAPI @includes-835cd2e7782a87ce7e2a7f7fdc7db35a.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/CoffeePot_assignment_1.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Demonstrate_LEDControl_ASM.doj: ../src/Demonstrate_LEDControl_ASM.asm
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin Assembler'
	easmblkfn -file-attr ProjectName="CoffeePot_assignment_1_Core0" -proc ADSP-BF609 -si-revision any -g -DCORE0 -D_DEBUG -DADI_MCAPI @includes-32222ed20b7e1eeb4ac0277099ebd22c.txt -gnu-style-dependencies -MM -Mo "src/Demonstrate_LEDControl_ASM.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/My_CoffeePot_Functions.doj: ../src/My_CoffeePot_Functions.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn -c -file-attr ProjectName="CoffeePot_assignment_1_Core0" -proc ADSP-BF609 -flags-compiler --no_wrap_diagnostics -si-revision any -g -DCORE0 -D_DEBUG -DADI_MCAPI @includes-835cd2e7782a87ce7e2a7f7fdc7db35a.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/My_CoffeePot_Functions.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


