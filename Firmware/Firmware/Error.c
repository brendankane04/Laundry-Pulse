/*
 * Error.c
 *
 * Created: 5/13/2021 5:33:50 PM
 *  Author: brend
 */ 

#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#include <avr/io.h>
#include <util/delay.h>
#include "Error.h"

//Init function for the blinking functionality 
void blink_init()
{
	//Set the necessary outputs on the DDRD port & set them up as high since the LED is active-low
	DDRD = RED | BLUE | GREEN;
	PORTD |= RED | BLUE | GREEN;
}

//Blink any color LED for a brief moment
void blink(int color)
{
	PORTD &= ~color;
	_delay_ms(100);
	PORTD |= color;
	_delay_ms(100);
}

//Indicate to user that there's an error which ended the program with a blinking red light
void terminal_error()
{
	//initalize blinking again, just in case
	blink_init();
	while(1)
	{
		blink(RED);		
	}
}
