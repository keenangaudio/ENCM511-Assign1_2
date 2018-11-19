/* Demonstrate_Water_Control_ASM.asm */
/*

void fillCoffeePotToWaterLevel (COFFEEPOT_DEVICE* pCoffeePot, int wLevel){
	//TODO fix this
	ShowFunctionStubInformation("fillCoffeePotToWaterLevel");
	//  Activate water, fill to level (blocking)
		int currentWaterLevel = CurrentWaterLevel_CPP(pCoffeePot);
		int neededWater =  wLevel - currentWaterLevel;

		//if (CurrentTemperature_CPP(pCoffeePot) >= 79) neededWater+=10;

		if (neededWater > 255) neededWater = 255;
		else if (neededWater < 0) neededWater = 0;

		pCoffeePot->waterInFlowRegister  = neededWater;
	if (CurrentWaterLevel_CPP(pCoffeePot) < wLevel) {
		if(CurrentWaterLevel_CPP(pCoffeePot) > wLevel*4/5)
			pCoffeePot->waterInFlowRegister = 1;
		FastForward_OneSimulationTIC(pCoffeePot);
	}

	pCoffeePot->waterInFlowRegister = 0;
}

*/
