/*
 * int.c
 *
 * Created: 5/15/2021 8:38:09 PM
 *  Author: brend
 */ 

#include <avr/interrupt.h>
#include <stdlib.h>
#include <string.h>
#include "Error.h"
#include "ESP82_Drv.h"

//This interrupt activates when the button is pressed
ISR(INT0_vect)
{
	//Send the message when the button is pressed
	ESP01_Send_Data("$LAUNDRY\n");

	//Blink once to confirm completion of transmission
	blink(RED | BLUE);
}

//Activate the necessary flags for the interrupt to activate
void int_init()
{
	sei();
	EICRA |= 0x00;
	EIMSK |= 0x01;
}
