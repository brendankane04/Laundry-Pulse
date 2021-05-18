# Laundry-Pulse
Laundry Pulse is a simple & convenient button which when pressed will tell your roommates to move their things in a *pulse*!

Practically, this repository is composed of the code &amp; Schematics for a button which, when pressed, notifies all users that someone needs to remove their laundry from the machine.

## Files

### Firmware

This file system is a project which can be conveniently opened in Atmel Studio 7 with the following important source files:

-**Error.c:** Error Messages & blinking \
-**ESP82_Drv.c:** Driver for the ESP-01 board which houses the ESP8266 chip. Allows communication between the main device & the external peripheral \
-**int.c:** Code for initializing & using an interrupt triggered on the button press \
-**main.c:** main file
-**uart.c:** Initializes the UART peripheral & directs STDIO I/O toward UART

### Backend

This python script needs to be run on loop in a local server on the network

-**server.py:** Runs a local TCP server on the same network as the "Laundry Pulse" device

### Schematics

To be uploaded later...

