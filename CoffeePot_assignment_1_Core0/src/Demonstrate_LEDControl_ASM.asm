/*	
 *	
 *	Demonstrate_LEDControl_ASM.asm
 *
 *
 */
 //.extern  __Z28FastForward_OneSimulationTICP16COFFEEPOT_DEVICE;
 
 .section program;

 .global _Demonstrate_LEDControl_ASM;
 
_Demonstrate_LEDControl_ASM:
 	//LINK 16;
 #define inArg_R0 R0
 #define control_Register_Location R0
 #define CNTRL_VALUE R1
 #define LED_VALUE R2
 #define RET_VALUE R3
 #define LED_OFFSET 12
 #define LED_MASK 0x0fff
 	
 	//control_Register_Location = inArg_R0 + value_offset;
  	P0 = R0;
 	CNTRL_VALUE = W[P0](Z);
 	
 	LED_VALUE = CNTRL_VALUE >> LED_OFFSET;
 	//in case leds arent what im expecting
 	R3 = 1;
 	CC = LED_VALUE == R3;
 	if CC JUMP label_2;
 label_1:
 	RET_VALUE = 1;
 	JUMP end_switch;
 label_2:
	RET_VALUE = 2;
	//JUMP end_switch;
	
 end_switch:
 //now LED_VALUE (R2) is free
 	//shift ret value to correct position in control reg
 	RET_VALUE = RET_VALUE << LED_OFFSET;
 	
 	//set LEDs to 0
 	R2 = LED_MASK;
 	CNTRL_VALUE = CNTRL_VALUE & R2;
 	
 	RET_VALUE = RET_VALUE | CNTRL_VALUE;

 	[P0] = RET_VALUE;
 	
 	//fast forward simulation
 	//CALL __Z28FastForward_OneSimulationTICP16COFFEEPOT_DEVICE;
 	
 	//UNLINK;
 _Demonstrate_LEDControl_ASM.END:
 RTS;