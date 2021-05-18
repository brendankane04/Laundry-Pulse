#include <avr/io.h>
#include <string.h>
#include <stdio.h>

#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#ifndef BAUD
#define BAUD 115200
#endif
#include <util/setbaud.h>

//Init for UART
void uart_init(void) 
{
	//Set the baud rate's high & low registers
	UBRR0H = UBRRH_VALUE;
	UBRR0L = UBRRL_VALUE;
	
	//Run this code if device is in 2x baud mode
	#if USE_2X
	UCSR0A |= _BV(U2X0);
	#else
	UCSR0A &= ~(_BV(U2X0));
	#endif

	UCSR0C = _BV(UCSZ01) | _BV(UCSZ00); /* 8-bit data */
	UCSR0B = _BV(RXEN0) | _BV(TXEN0);   /* Enable RX and TX */
}

//Send a character to the UART bus
void uart_putchar(char c, FILE *stream) 
{
	if (c == '\n') {
		uart_putchar('\r', stream);
	}
	//Halt operation until the character has been sent
	loop_until_bit_is_set(UCSR0A, UDRE0);
	UDR0 = c;
}

//Receive a character from the UART bus
char uart_getchar(FILE *stream) 
{
	//Halt operation until the buffer is free
	loop_until_bit_is_set(UCSR0A, RXC0);
	return UDR0;
}
