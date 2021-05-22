#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include "uart.h"
#include "ESP82_Drv.h"
#include "int.h"
#include "Error.h"

//Login information for your local network goes here
#define NETWORK_NAME "LDS"
#define NETWORK_PASSWORD "goterps_3141"

int main(void) 
{
	//call the init functions
    uart_init();
	blink_init();
	ESP01_init(NETWORK_NAME, NETWORK_PASSWORD);
	int_init();

	//Set up uart signals to be set up through default stdio functions
    stdout = &uart_output;
    stdin  = &uart_input;

	//Indicate end of set up by blinking light
	blink(BLUE | GREEN);

	//Enter idle mode to conserve power
	set_sleep_mode(0x0); //Set sleep mode to 'idle'
	while(1) sleep_mode();

    return 0;
}