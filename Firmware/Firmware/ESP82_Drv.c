/*
 * ESP82_Drv.c
 *
 * Created: 5/13/2021 2:54:08 PM
 *  Author: brend
 */ 

#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#include <stdio.h>
#include <stdlib.h>
#include <avr/io.h>
#include <util/delay.h>
#include <string.h>
#include "ESP82_Drv.h"
#include "Error.h"

char *network_name;
char *password;

//Init for the ESP8266 interface
void ESP01_init(char *_network_name, char *_password)
{
	//Copy over the login information
	network_name = malloc(strlen(_network_name) + 1);
	strcpy(network_name, _network_name);
	password = malloc(strlen(_password) + 1);
	strcpy(password, _password);

	//Configure the pins connected to reset & chip_en for output
	DDRD |= _BV(3) | _BV(4);
	//Set the RESET pin to high to reset it later
	PORTD |= _BV(4);
}

//halt the device's operation until an "OK" is received on the UART bus.
//"OK" is the ESP8266's acknowledgment message of a successful command.
void ESP01_Loop_Until_OK()
{
	char esp_resp[64];
	int res;
	do 
	{
		//Read in a word from the ESP
		scanf("%s", esp_resp);	

		//If the word is or contains "OK", return 0
		res = (int) strstr(esp_resp, "OK");
	} while (!res);
}

//Turn the ESP8266 on & reset it to avoid conflicts
void ESP01_Set_EN(char status)
{
	if(status)
	{//Activate the device
		PORTD |= _BV(3);

		//Reset the device
		PORTD &= ~_BV(4);
		_delay_ms(1000);
		PORTD |= _BV(4);
		_delay_ms(1000);
	}
	else
	{//Deactivate the device
		PORTD &= ~_BV(3);
	}

	//Delay while the device is setting up for buffering
	_delay_ms(2000);
}

//Send a command to the ESP01 & move on when it's OK'd the operation
void ESP01_Send_CMD(char *cmd)
{
	puts(cmd);
	ESP01_Loop_Until_OK();
}

//Send a command with 'num' number of arguments
void ESP01_Send_CMD_Args(char *cmd, char **args, int num)
{
	char cmd_w_args[128] = "";

	//Input a variable number of arguments
	switch(num)
	{
		case 1:
			sprintf(cmd_w_args, cmd, args[0]);	
			break;
		case 2:
			sprintf(cmd_w_args, cmd, args[0], args[1]);	
			break;
		case 3:
			sprintf(cmd_w_args, cmd, args[0], args[1], args[2]);	
			break;
		case 4:
			sprintf(cmd_w_args, cmd, args[0], args[1], args[2], args[3]);	
			break;
		default:
			terminal_error();
			break;
	}

	//Send the altered command to the ESP
	ESP01_Send_CMD(cmd_w_args);
}

//Complete a basic sequence of commands to send a TCP message through the ESP8266 to a specified server.
//TODO:: Make the size of the data sent variable
void ESP01_Send_Data(char *mssg)
{
	//Initialize the args array for the login data
	char *args[2];
	args[0] = network_name;
	args[1] = password;
	
	ESP01_Set_EN(1);
	ESP01_Send_CMD(AT_CLIENT_MODE);
	ESP01_Send_CMD_Args(AT_JOIN_NETWORK, args, 2);
	ESP01_Send_CMD(AT_START_TCP);
	ESP01_Send_CMD(AT_INIT_SEND);
	ESP01_Send_CMD(mssg);
	ESP01_Send_CMD(AT_END_SEND);
	ESP01_Send_CMD(AT_QUIT_NETWORK);
	ESP01_Set_EN(0);
}
