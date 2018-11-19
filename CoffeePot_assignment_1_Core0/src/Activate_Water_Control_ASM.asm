/* Activate_Water_Control_ASM.asm */

#include "../include/Sim_CoffeePot_Simulator_Structures2018.h" //TODO check this

#define CNTRL_REG_VAL_R1 R1

.section L1_data;
.char[23] _name_R0 = {'A','c','t','i','v','a','t','e','_','W','a','t','e','r','_','C','o','n','t','r','o','l', 0};

//TODO check name magle
.extern __Z28ShowFunctionStubInformationP16COFFEEPOT_DEVICE;

.extern __Z28FastForward_OneSimulationTICP16COFFEEPOT_DEVICE;

.section program;
.global _Activate_Water_Control_ASM;

//void Activate_Water_Control ( COFFEEPOT_DEVICE* pCoffeePot ){

_Activate_Water_Control_ASM:
  LINK 16;

// turn on WATER POWER bit in ctrl reg without changing others
// unsigned short int oldCrtl = pCoffeePot->controlRegister;

  P0 = R0;
  CNTRL_REG_VAL_R1  = W[P0](Z);
  
// pCoffeePot->controlRegister |= WATER_POWER_ENABLE_BIT;

  CNTRL_REG_VAL_R1  |= WATER_POWER_ENABLE_BIT;  //TODO check this
	 
// FastForward_OneSimulationTIC(pCoffeePot);
//R0 contains the coffeepot already

  CALL __Z28FastForward_OneSimulationTICP16COFFEEPOT_DEVICE

//	ShowFunctionStubInformation("Activate_Water_Control");
  //  R0 = _name_R0;
  //  CALL _ShowFunctionStubInformation;	//TODO THIS ISN'T NAME MANGLED

  UNLINK;

_Activate_Water_Control_ASM.END:
	RTS;
