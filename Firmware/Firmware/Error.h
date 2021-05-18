/*
 * IncFile1.h
 *
 * Created: 5/13/2021 5:34:02 PM
 *  Author: brend
 */ 

#ifndef ERROR_H
#define ERROR_H 1

#define GREEN (0x01 << 5)
#define BLUE (0x01 << 6)
#define RED (0x01 << 7)

void blink_init();
void blink(int);
void terminal_error();

#endif 