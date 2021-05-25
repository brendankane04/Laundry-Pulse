EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3.3V #PWR01
U 1 1 60AA13FB
P 5350 1750
F 0 "#PWR01" H 5350 1600 50  0001 C CNN
F 1 "+3.3V" H 5365 1923 50  0000 C CNN
F 2 "" H 5350 1750 50  0001 C CNN
F 3 "" H 5350 1750 50  0001 C CNN
	1    5350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1750 5350 2350
Wire Wire Line
	5350 2350 5450 2350
$Comp
L power:GND #PWR02
U 1 1 60AA2E2C
P 5350 5450
F 0 "#PWR02" H 5350 5200 50  0001 C CNN
F 1 "GND" H 5355 5277 50  0000 C CNN
F 2 "" H 5350 5450 50  0001 C CNN
F 3 "" H 5350 5450 50  0001 C CNN
	1    5350 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5350 5350 5450
$Comp
L Device:Crystal Y1
U 1 1 60AA3965
P 6250 3350
F 0 "Y1" V 6204 3481 50  0000 L CNN
F 1 "Crystal" V 6295 3481 50  0000 L CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 6250 3350 50  0001 C CNN
F 3 "~" H 6250 3350 50  0001 C CNN
	1    6250 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 3350 6050 3350
Wire Wire Line
	6050 3350 6050 3500
Wire Wire Line
	6050 3500 6250 3500
Wire Wire Line
	6250 3200 6100 3200
Wire Wire Line
	6100 3200 6100 3250
Wire Wire Line
	6100 3250 5950 3250
$Comp
L Device:C C2
U 1 1 60AA5AC3
P 6550 3500
F 0 "C2" V 6298 3500 50  0000 C CNN
F 1 "22pF" V 6389 3500 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6588 3350 50  0001 C CNN
F 3 "~" H 6550 3500 50  0001 C CNN
	1    6550 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 60AA6531
P 6550 3200
F 0 "C1" V 6298 3200 50  0000 C CNN
F 1 "22pF" V 6389 3200 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6588 3050 50  0001 C CNN
F 3 "~" H 6550 3200 50  0001 C CNN
	1    6550 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 3200 6250 3200
Connection ~ 6250 3200
Wire Wire Line
	6250 3500 6400 3500
Connection ~ 6250 3500
$Comp
L power:GND #PWR04
U 1 1 60AA7382
P 6700 3350
F 0 "#PWR04" H 6700 3100 50  0001 C CNN
F 1 "GND" V 6705 3222 50  0000 R CNN
F 2 "" H 6700 3350 50  0001 C CNN
F 3 "" H 6700 3350 50  0001 C CNN
	1    6700 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 3350 6700 3350
Wire Wire Line
	6700 3350 6700 3200
Connection ~ 6700 3350
Wire Wire Line
	6700 3500 6700 3350
Connection ~ 5350 2350
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U1
U 1 1 60AA03AC
P 5350 3850
F 0 "U1" H 4706 3896 50  0000 R CNN
F 1 "ATmega328P-PU" H 4706 3805 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5350 3850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5350 3850 50  0001 C CNN
	1    5350 3850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60AAAB86
P 6950 4450
F 0 "SW1" V 6904 4598 50  0000 L CNN
F 1 "SW_Push" V 6995 4598 50  0000 L CNN
F 2 "Laundry_Pulse_Lib:Connector_Button" H 6950 4650 50  0001 C CNN
F 3 "~" H 6950 4650 50  0001 C CNN
	1    6950 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 4150 6950 4250
$Comp
L power:GND #PWR06
U 1 1 60AAC3ED
P 6950 4650
F 0 "#PWR06" H 6950 4400 50  0001 C CNN
F 1 "GND" H 6955 4477 50  0000 C CNN
F 2 "" H 6950 4650 50  0001 C CNN
F 3 "" H 6950 4650 50  0001 C CNN
	1    6950 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4350 6200 4350
Wire Wire Line
	6200 4450 5950 4450
Text Label 6100 4350 0    50   ~ 0
RX
Text Label 6100 4450 0    50   ~ 0
TX
Wire Wire Line
	6200 4550 5950 4550
Text Label 6050 4550 0    50   ~ 0
INT0
Wire Wire Line
	6200 4650 5950 4650
Wire Wire Line
	6200 4750 5950 4750
Text Label 5950 4650 0    50   ~ 0
CH_PD
Text Label 6000 4750 0    50   ~ 0
REST
$Comp
L Device:C C3
U 1 1 60A9F6AC
P 6650 4450
F 0 "C3" H 6765 4496 50  0000 L CNN
F 1 "0.1uF" H 6765 4405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 6688 4300 50  0001 C CNN
F 3 "~" H 6650 4450 50  0001 C CNN
	1    6650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4600 6950 4600
Wire Wire Line
	6650 4300 6650 4150
Connection ~ 6650 4150
Wire Wire Line
	6650 4150 6950 4150
$Comp
L Device:R R1
U 1 1 60AA0C9C
P 6650 4000
F 0 "R1" H 6720 4046 50  0000 L CNN
F 1 "10k" H 6720 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 6580 4000 50  0001 C CNN
F 3 "~" H 6650 4000 50  0001 C CNN
	1    6650 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 60AA13D6
P 6650 3850
F 0 "#PWR03" H 6650 3700 50  0001 C CNN
F 1 "+3.3V" H 6665 4023 50  0000 C CNN
F 2 "" H 6650 3850 50  0001 C CNN
F 3 "" H 6650 3850 50  0001 C CNN
	1    6650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4150 6650 4150
Wire Wire Line
	9500 3950 9650 3950
Text Label 9550 3950 0    50   ~ 0
RX
Text Label 8500 4250 0    50   ~ 0
TX
Wire Wire Line
	9650 4050 9500 4050
Wire Wire Line
	9650 4150 9500 4150
Text Label 9500 4050 0    50   ~ 0
CH_PD
Text Label 9500 4150 0    50   ~ 0
REST
$Comp
L power:+3.3V #PWR011
U 1 1 60AACF0E
P 9800 3850
F 0 "#PWR011" H 9800 3700 50  0001 C CNN
F 1 "+3.3V" H 9815 4023 50  0000 C CNN
F 2 "" H 9800 3850 50  0001 C CNN
F 3 "" H 9800 3850 50  0001 C CNN
	1    9800 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 60AAD722
P 8450 3850
F 0 "#PWR07" H 8450 3700 50  0001 C CNN
F 1 "+3.3V" H 8465 4023 50  0000 C CNN
F 2 "" H 8450 3850 50  0001 C CNN
F 3 "" H 8450 3850 50  0001 C CNN
	1    8450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3850 8450 4050
Connection ~ 8450 4050
Wire Wire Line
	8450 4050 8450 4150
Wire Wire Line
	9800 3850 9800 4250
Wire Wire Line
	9800 4250 9500 4250
$Comp
L power:GND #PWR08
U 1 1 60AAF3E3
P 8700 3850
F 0 "#PWR08" H 8700 3600 50  0001 C CNN
F 1 "GND" H 8705 3677 50  0000 C CNN
F 2 "" H 8700 3850 50  0001 C CNN
F 3 "" H 8700 3850 50  0001 C CNN
	1    8700 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 3850 8700 3950
Text Label 8350 5200 0    50   ~ 0
INT0
$Comp
L Device:R R2
U 1 1 60AB4956
P 8850 5050
F 0 "R2" H 8920 5096 50  0000 L CNN
F 1 "10k" H 8920 5005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 8780 5050 50  0001 C CNN
F 3 "~" H 8850 5050 50  0001 C CNN
	1    8850 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60AB4E9C
P 8850 5350
F 0 "C4" H 8965 5396 50  0000 L CNN
F 1 "0.1uF" H 8965 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 8888 5200 50  0001 C CNN
F 3 "~" H 8850 5350 50  0001 C CNN
	1    8850 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 5200 8850 5200
Connection ~ 8850 5200
$Comp
L Switch:SW_Push SW2
U 1 1 60AB5BA6
P 9250 5400
F 0 "SW2" V 9204 5548 50  0000 L CNN
F 1 "SW_Push" V 9295 5548 50  0000 L CNN
F 2 "Laundry_Pulse_Lib:Connector_Button" H 9250 5600 50  0001 C CNN
F 3 "~" H 9250 5600 50  0001 C CNN
	1    9250 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 5200 9250 5200
Wire Wire Line
	8850 5500 8850 5600
Wire Wire Line
	8850 5600 9250 5600
$Comp
L power:GND #PWR010
U 1 1 60AB7942
P 9250 5600
F 0 "#PWR010" H 9250 5350 50  0001 C CNN
F 1 "GND" H 9255 5427 50  0000 C CNN
F 2 "" H 9250 5600 50  0001 C CNN
F 3 "" H 9250 5600 50  0001 C CNN
	1    9250 5600
	1    0    0    -1  
$EndComp
Connection ~ 9250 5600
$Comp
L power:+3.3V #PWR09
U 1 1 60AB7E7D
P 8850 4900
F 0 "#PWR09" H 8850 4750 50  0001 C CNN
F 1 "+3.3V" H 8865 5073 50  0000 C CNN
F 2 "" H 8850 4900 50  0001 C CNN
F 3 "" H 8850 4900 50  0001 C CNN
	1    8850 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 60AC588C
P 6900 5200
F 0 "#PWR05" H 6900 5050 50  0001 C CNN
F 1 "+3.3V" H 6915 5373 50  0000 C CNN
F 2 "" H 6900 5200 50  0001 C CNN
F 3 "" H 6900 5200 50  0001 C CNN
	1    6900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5200 6900 5250
Wire Wire Line
	6900 5250 6800 5250
$Comp
L Laundry_Pulse_Lib:ESP-01 U2
U 1 1 60AC9720
P 8850 3900
F 0 "U2" H 9125 4075 50  0000 C CNN
F 1 "ESP-01" H 9125 3984 50  0000 C CNN
F 2 "Laundry_Pulse_Lib:ESP01_Footprint" H 9050 4000 50  0001 C CNN
F 3 "" H 9050 4000 50  0001 C CNN
	1    8850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3950 8750 3950
Wire Wire Line
	8450 4050 8750 4050
Wire Wire Line
	8450 4150 8750 4150
Wire Wire Line
	8500 4250 8750 4250
$Comp
L Device:LED_BGAR D1
U 1 1 60AC1420
P 6600 5250
F 0 "D1" H 6600 5747 50  0000 C CNN
F 1 "LED_BGAR" H 6600 5656 50  0000 C CNN
F 2 "Laundry_Pulse_Lib:Connector_LED" H 6600 5200 50  0001 C CNN
F 3 "~" H 6600 5200 50  0001 C CNN
	1    6600 5250
	1    0    0    1   
$EndComp
Wire Wire Line
	6400 5050 6250 5050
Wire Wire Line
	6250 5050 6250 4850
Wire Wire Line
	6250 4850 5950 4850
Wire Wire Line
	5950 4950 6200 4950
Wire Wire Line
	6200 4950 6200 5250
Wire Wire Line
	6200 5250 6400 5250
Wire Wire Line
	5950 5050 6150 5050
Wire Wire Line
	6150 5050 6150 5450
Wire Wire Line
	6150 5450 6400 5450
$Comp
L Device:R R3
U 1 1 60AD8C98
P 2300 5250
F 0 "R3" H 2370 5296 50  0000 L CNN
F 1 "390" H 2370 5205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 2230 5250 50  0001 C CNN
F 3 "~" H 2300 5250 50  0001 C CNN
	1    2300 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60AD98EE
P 2750 4900
F 0 "R4" H 2820 4946 50  0000 L CNN
F 1 "240" H 2820 4855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 2680 4900 50  0001 C CNN
F 3 "~" H 2750 4900 50  0001 C CNN
	1    2750 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5100 2300 4750
Wire Wire Line
	2750 4450 2750 4750
Wire Wire Line
	2750 5100 2300 5100
Connection ~ 2300 5100
Wire Wire Line
	2750 5050 2750 5100
$Comp
L Device:CP C5
U 1 1 60AE2FBC
P 1550 4800
F 0 "C5" H 1668 4846 50  0000 L CNN
F 1 "0.1uF" H 1668 4755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1588 4650 50  0001 C CNN
F 3 "~" H 1550 4800 50  0001 C CNN
	1    1550 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 60AE3B32
P 3200 4800
F 0 "C6" H 3318 4846 50  0000 L CNN
F 1 "0.1uF" H 3318 4755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3238 4650 50  0001 C CNN
F 3 "~" H 3200 4800 50  0001 C CNN
	1    3200 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4650 1550 4450
Wire Wire Line
	2750 4450 3200 4450
Wire Wire Line
	3200 4450 3200 4650
Connection ~ 2750 4450
Wire Wire Line
	3200 4950 3200 5400
Wire Wire Line
	3200 5400 2300 5400
Wire Wire Line
	1550 5400 1550 4950
Connection ~ 2300 5400
Wire Wire Line
	2300 5400 1550 5400
$Comp
L power:+3.3V #PWR012
U 1 1 60AE7D8D
P 3200 4450
F 0 "#PWR012" H 3200 4300 50  0001 C CNN
F 1 "+3.3V" H 3215 4623 50  0000 C CNN
F 2 "" H 3200 4450 50  0001 C CNN
F 3 "" H 3200 4450 50  0001 C CNN
	1    3200 4450
	1    0    0    -1  
$EndComp
Connection ~ 3200 4450
$Comp
L power:GND #PWR013
U 1 1 60AE82A3
P 3200 5400
F 0 "#PWR013" H 3200 5150 50  0001 C CNN
F 1 "GND" H 3205 5227 50  0000 C CNN
F 2 "" H 3200 5400 50  0001 C CNN
F 3 "" H 3200 5400 50  0001 C CNN
	1    3200 5400
	1    0    0    -1  
$EndComp
Connection ~ 3200 5400
$Comp
L Device:Battery_Cell BT1
U 1 1 60AE8D8B
P 900 4900
F 0 "BT1" H 1018 4996 50  0000 L CNN
F 1 "Battery_Cell" H 1018 4905 50  0000 L CNN
F 2 "Laundry_Pulse_Lib:Connector_Battery" V 900 4960 50  0001 C CNN
F 3 "~" V 900 4960 50  0001 C CNN
	1    900  4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4700 900  4450
Wire Wire Line
	900  4450 1550 4450
Connection ~ 1550 4450
Wire Wire Line
	900  5000 900  5400
Wire Wire Line
	900  5400 1550 5400
Connection ~ 1550 5400
$Comp
L Laundry_Pulse_Lib:LM317 U3
U 1 1 60B071EA
P 2050 4250
F 0 "U3" H 2300 4365 50  0000 C CNN
F 1 "LM317" H 2300 4274 50  0000 C CNN
F 2 "Laundry_Pulse_Lib:LM317_Custom" H 2050 4250 50  0001 C CNN
F 3 "" H 2050 4250 50  0001 C CNN
	1    2050 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4450 2750 4450
Wire Wire Line
	1550 4450 1950 4450
Wire Notes Line
	3650 4050 3650 5700
Wire Notes Line
	3650 5700 700  5700
Wire Notes Line
	700  5700 700  4050
Wire Notes Line
	700  4050 3650 4050
Text Notes 700  4050 0    50   ~ 0
Voltage Regulator
Wire Notes Line
	8250 3500 8250 4450
Wire Notes Line
	8250 4450 10100 4450
Wire Notes Line
	10100 4450 10100 3500
Wire Notes Line
	10100 3500 8250 3500
Wire Notes Line
	8200 4650 8200 5900
Wire Notes Line
	8200 5900 9900 5900
Wire Notes Line
	9900 5900 9900 4650
Wire Notes Line
	9900 4650 8200 4650
Text Notes 8200 4650 0    50   ~ 0
Interrupt Button
Text Notes 8250 3500 0    50   ~ 0
ESP-01 Connector
Wire Notes Line
	4000 1500 4000 6000
Wire Notes Line
	4000 6000 7500 6000
Wire Notes Line
	7500 6000 7500 1500
Wire Notes Line
	7500 1500 4000 1500
Text Notes 4000 1500 0    50   ~ 0
Main Microcontroller
$EndSCHEMATC
