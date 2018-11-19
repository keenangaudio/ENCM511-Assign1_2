/* Fill_Water_To_Level_ASM.asm */

#include "../include/Sim_CoffeePot_Simulator_Structures2018.h" //TODO check this

#define COFF_POT_R0               R0
#define W_LEVEL_R1                R1
#define CURRENT_WATER_R2          R2
#define NEEDED_WATER_R3           R3

.section L1_data;
.char[15] _name = {'F','i','l','l',' ','W','a','t','e','r',' ','A','S','M' 0};

//TODO check name magle (very wrong)
.extern __Z28ShowFunctionStubInformationP16COFFEEPOT_DEVICE;

.extern __Z28FastForward_OneSimulationTICP16COFFEEPOT_DEVICE;

.section program;
.global _Fill_Water_To_Level_ASM;

//void fillCoffeePotToWaterLevel (COFFEEPOT_DEVICE* pCoffeePot, int wLevel){

_Fill_Water_To_Level_ASM:
  LINK 32;
  
// TODO Activate water, fill to level
// int currentWaterLevel = CurrentWaterLevel_CPP(pCoffeePot); //save the args
// int neededWater = ( wLevel - currentWaterLevel );


//  TODO if (neededWater > 255) neededWater = 255;
//  else if (neededWater < 0) neededWater = 0;

  
//  if !(currentWaterLevel < wLevel) neededWater = 0;
  CC = CURRENT_WATER_R3 >= W_LEVEL_R1;  //TODO this might m=not be the right operator

//  TODO make sure R0 is back after calling the current water
//	pCoffeePot->waterInFlowRegister = neededWater;
  P0 = R0 + 7;
  [P0] = NEEDED_WATER_R3;

  UNLINK;

_Fill_Water_To_Level_ASM.END:
  RTS;
