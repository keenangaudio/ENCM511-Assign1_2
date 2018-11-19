/* Activate_Water_Control_ASM.asm */
/*

void Activate_Water_Control ( COFFEEPOT_DEVICE* pCoffeePot ){
	ShowFunctionStubInformation("Activate_Water_Control");

	// turn on WATER POWER bit in ctrl reg without changing others
	//unsigned short int oldCrtl = pCoffeePot->controlRegister;
	pCoffeePot->controlRegister |= WATER_POWER_ENABLE_BIT;

	CloseChannel_CauseSimulationTIC(pCoffeePot);
	 FastForward_OneSimulationTIC(pCoffeePot);
}

*/

