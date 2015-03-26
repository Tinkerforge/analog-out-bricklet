EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:tinkerforge
LIBS:valves
LIBS:analog-out-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Analog Out Bricklet"
Date "20 Feb 2015"
Rev "2.0"
Comp "Tinkerforge GmbH"
Comment1 "Licensed under CERN OHL v.1.1"
Comment2 "Copyright (©) 2015, B.Nordmeyer <bastian@tinkerforge.com>"
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 2000 3550
NoConn ~ 2000 3650
NoConn ~ 2000 3750
Wire Wire Line
	6550 3550 6550 3700
Connection ~ 3100 5750
Wire Wire Line
	3300 5750 3100 5750
Wire Wire Line
	3100 5250 3350 5250
Wire Wire Line
	1950 5350 2350 5350
Wire Wire Line
	2000 2850 2000 2750
Wire Wire Line
	6900 4650 6900 4800
Wire Wire Line
	6900 4800 7100 4800
Wire Wire Line
	2250 3100 2250 2950
Wire Wire Line
	2250 2950 2000 2950
Wire Wire Line
	3150 4400 3150 4300
Wire Wire Line
	3150 4600 3600 4600
Wire Wire Line
	2000 3250 2350 3250
Connection ~ 2250 4700
Wire Wire Line
	2250 4500 2350 4500
Wire Wire Line
	2150 4600 2350 4600
Wire Wire Line
	2000 3350 2150 3350
Wire Wire Line
	1550 4000 1550 3900
Wire Wire Line
	2250 4700 2350 4700
Wire Wire Line
	2250 4800 2250 4400
Wire Wire Line
	2250 4400 2350 4400
Connection ~ 2250 4500
Wire Wire Line
	2000 3150 2350 3150
Wire Wire Line
	3150 4700 3600 4700
Wire Wire Line
	3600 4450 3600 4300
Wire Wire Line
	3150 4300 3200 4300
Connection ~ 3150 4300
Wire Wire Line
	2000 3050 2100 3050
Wire Wire Line
	2100 3050 2100 2750
Wire Wire Line
	2150 3350 2150 5450
Wire Wire Line
	2150 5450 2350 5450
Connection ~ 2150 4600
Wire Wire Line
	2350 5250 1950 5250
Wire Wire Line
	3200 5350 3200 5150
Wire Wire Line
	3100 5850 3100 5450
Wire Wire Line
	3300 5350 3100 5350
Connection ~ 3200 5350
Wire Wire Line
	6000 3550 6000 3500
Connection ~ 6000 3550
$Comp
L R R9
U 1 1 4F0165B9
P 6300 3550
F 0 "R9" V 6380 3550 50  0000 C CNN
F 1 "16k" V 6300 3550 50  0000 C CNN
F 2 "0603" H 6300 3550 60  0001 C CNN
F 3 "" H 6300 3550 60  0001 C CNN
	1    6300 3550
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 4F01648B
P 6000 3250
F 0 "R8" V 6080 3250 50  0000 C CNN
F 1 "68k" V 6000 3250 50  0000 C CNN
F 2 "0603" H 6000 3250 60  0001 C CNN
F 3 "" H 6000 3250 60  0001 C CNN
	1    6000 3250
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4F00A1CB
P 3300 5550
F 0 "C2" H 3150 5450 50  0000 L CNN
F 1 "100nF" H 3000 5650 50  0000 L CNN
F 2 "0603" H 3300 5550 60  0001 C CNN
F 3 "" H 3300 5550 60  0001 C CNN
	1    3300 5550
	-1   0    0    1   
$EndComp
Text GLabel 1950 5250 0    60   Input ~ 0
SDA
Text GLabel 1950 5350 0    60   Input ~ 0
SCL
$Comp
L MCP4725 U2
U 1 1 4F00A189
P 2750 5350
F 0 "U2" H 2600 5600 60  0000 C CNN
F 1 "MCP4725A0" H 2750 5150 60  0000 C CNN
F 2 "SOT23-6" H 2750 5350 60  0001 C CNN
F 3 "" H 2750 5350 60  0001 C CNN
	1    2750 5350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 4F0090DA
P 2000 2750
F 0 "#PWR01" H 2000 2840 20  0001 C CNN
F 1 "+5V" H 2000 2840 30  0000 C CNN
F 2 "" H 2000 2750 60  0001 C CNN
F 3 "" H 2000 2750 60  0001 C CNN
	1    2000 2750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 4F0090CC
P 6900 4650
F 0 "#PWR02" H 6900 4750 30  0001 C CNN
F 1 "VCC" H 6900 4750 30  0000 C CNN
F 2 "" H 6900 4650 60  0001 C CNN
F 3 "" H 6900 4650 60  0001 C CNN
	1    6900 4650
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P2
U 1 1 4F0090C2
P 7450 4700
F 0 "P2" V 7400 4700 40  0000 C CNN
F 1 "AKL_5_2" V 7500 4700 40  0000 C CNN
F 2 "AKL_5_2" H 7450 4700 60  0001 C CNN
F 3 "" H 7450 4700 60  0001 C CNN
	1    7450 4700
	1    0    0    1   
$EndComp
$Comp
L CON-SENSOR P1
U 1 1 4C5FCF27
P 1550 3300
F 0 "P1" H 1300 3850 60  0000 C CNN
F 1 "CON-SENSOR" V 1700 3300 60  0000 C CNN
F 2 "CON-SENSOR" H 1550 3300 60  0001 C CNN
F 3 "" H 1550 3300 60  0001 C CNN
	1    1550 3300
	-1   0    0    -1  
$EndComp
Text Notes 550  7700 0    40   ~ 0
Copyright Tinkerforge GmbH 2015.\nThis documentation describes Open Hardware and is licensed under the\nCERN OHL v. 1.1.\nYou may redistribute and modify this documentation under the terms of the\nCERN OHL v.1.1. (http://ohwr.org/cernohl). This documentation is distributed\nWITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF\nMERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A\nPARTICULAR PURPOSE. Please see the CERN OHL v.1.1 for applicable\nconditions\n
$Comp
L GND #PWR03
U 1 1 4CE29748
P 3600 4450
F 0 "#PWR03" H 3600 4450 30  0001 C CNN
F 1 "GND" H 3600 4380 30  0001 C CNN
F 2 "" H 3600 4450 60  0001 C CNN
F 3 "" H 3600 4450 60  0001 C CNN
	1    3600 4450
	1    0    0    -1  
$EndComp
NoConn ~ 3150 4500
$Comp
L DRILL U4
U 1 1 4C6050A5
P 10650 6150
F 0 "U4" H 10700 6200 60  0001 C CNN
F 1 "DRILL" H 10650 6150 60  0000 C CNN
F 2 "DRILL_NP" H 10650 6150 60  0001 C CNN
F 3 "" H 10650 6150 60  0001 C CNN
	1    10650 6150
	1    0    0    -1  
$EndComp
$Comp
L DRILL U5
U 1 1 4C6050A2
P 10650 6350
F 0 "U5" H 10700 6400 60  0001 C CNN
F 1 "DRILL" H 10650 6350 60  0000 C CNN
F 2 "DRILL_NP" H 10650 6350 60  0001 C CNN
F 3 "" H 10650 6350 60  0001 C CNN
	1    10650 6350
	1    0    0    -1  
$EndComp
$Comp
L DRILL U7
U 1 1 4C60509F
P 11000 6350
F 0 "U7" H 11050 6400 60  0001 C CNN
F 1 "DRILL" H 11000 6350 60  0000 C CNN
F 2 "DRILL_NP" H 11000 6350 60  0001 C CNN
F 3 "" H 11000 6350 60  0001 C CNN
	1    11000 6350
	1    0    0    -1  
$EndComp
$Comp
L DRILL U6
U 1 1 4C605099
P 11000 6150
F 0 "U6" H 11050 6200 60  0001 C CNN
F 1 "DRILL" H 11000 6150 60  0000 C CNN
F 2 "DRILL_NP" H 11000 6150 60  0001 C CNN
F 3 "" H 11000 6150 60  0001 C CNN
	1    11000 6150
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 4C604EF8
P 7450 5250
F 0 "P3" V 7400 5250 40  0000 C CNN
F 1 "AKL_5_2" V 7500 5250 40  0000 C CNN
F 2 "AKL_5_2" H 7450 5250 60  0001 C CNN
F 3 "" H 7450 5250 60  0001 C CNN
	1    7450 5250
	1    0    0    1   
$EndComp
$Comp
L C C3
U 1 1 4C5FD6ED
P 3400 4300
F 0 "C3" V 3500 4300 50  0000 L CNN
F 1 "100nF" V 3250 4300 50  0000 L CNN
F 2 "0603" H 3400 4300 60  0001 C CNN
F 3 "" H 3400 4300 60  0001 C CNN
	1    3400 4300
	0    -1   -1   0   
$EndComp
Text GLabel 3600 4700 2    60   Input ~ 0
SDA
Text GLabel 3600 4600 2    60   Input ~ 0
SCL
Text GLabel 2350 3250 2    60   Output ~ 0
SDA
Text GLabel 2350 3150 2    60   Output ~ 0
SCL
$Comp
L VCC #PWR04
U 1 1 4C5FD35E
P 2950 950
F 0 "#PWR04" H 2950 1050 30  0001 C CNN
F 1 "VCC" H 2950 1050 30  0000 C CNN
F 2 "" H 2950 950 60  0001 C CNN
F 3 "" H 2950 950 60  0001 C CNN
	1    2950 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 4C5FD34E
P 2250 4800
F 0 "#PWR05" H 2250 4800 30  0001 C CNN
F 1 "GND" H 2250 4730 30  0001 C CNN
F 2 "" H 2250 4800 60  0001 C CNN
F 3 "" H 2250 4800 60  0001 C CNN
	1    2250 4800
	1    0    0    -1  
$EndComp
$Comp
L CAT24C U1
U 1 1 4C5FD337
P 2750 4800
F 0 "U1" H 2600 5300 60  0000 C CNN
F 1 "M24C64" H 2750 4800 60  0000 C CNN
F 2 "SOIC8" H 2750 4800 60  0001 C CNN
F 3 "" H 2750 4800 60  0001 C CNN
	1    2750 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 4C5FCF5E
P 2250 3100
F 0 "#PWR06" H 2250 3100 30  0001 C CNN
F 1 "GND" H 2250 3030 30  0001 C CNN
F 2 "" H 2250 3100 60  0001 C CNN
F 3 "" H 2250 3100 60  0001 C CNN
	1    2250 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 4C5FCF4F
P 1550 4000
F 0 "#PWR07" H 1550 4000 30  0001 C CNN
F 1 "GND" H 1550 3930 30  0001 C CNN
F 2 "" H 1550 4000 60  0001 C CNN
F 3 "" H 1550 4000 60  0001 C CNN
	1    1550 4000
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR08
U 1 1 54E7A48D
P 2100 2750
F 0 "#PWR08" H 2100 2850 40  0001 C CNN
F 1 "3V3" H 2100 2875 40  0000 C CNN
F 2 "" H 2100 2750 60  0000 C CNN
F 3 "" H 2100 2750 60  0000 C CNN
	1    2100 2750
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR09
U 1 1 54E7A543
P 3150 4300
F 0 "#PWR09" H 3150 4400 40  0001 C CNN
F 1 "3V3" H 3150 4425 40  0000 C CNN
F 2 "" H 3150 4300 60  0000 C CNN
F 3 "" H 3150 4300 60  0000 C CNN
	1    3150 4300
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR010
U 1 1 54E7A632
P 3200 5150
F 0 "#PWR010" H 3200 5250 40  0001 C CNN
F 1 "3V3" H 3200 5275 40  0000 C CNN
F 2 "" H 3200 5150 60  0000 C CNN
F 3 "" H 3200 5150 60  0000 C CNN
	1    3200 5150
	1    0    0    -1  
$EndComp
$Comp
L TL082 U3
U 1 1 54E7A707
P 5650 5150
F 0 "U3" H 5600 5350 60  0000 L CNN
F 1 "TLV272IS" H 5600 4900 60  0000 L CNN
F 2 "SOIC8" H 5650 5150 60  0001 C CNN
F 3 "" H 5650 5150 60  0000 C CNN
	1    5650 5150
	1    0    0    1   
$EndComp
$Comp
L TL082 U3
U 2 1 54E7A820
P 5100 3450
F 0 "U3" H 5050 3650 60  0000 L CNN
F 1 "TLV272IS" H 5050 3200 60  0000 L CNN
F 2 "SOIC8" H 5100 3450 60  0001 C CNN
F 3 "" H 5100 3450 60  0000 C CNN
	2    5100 3450
	-1   0    0    1   
$EndComp
$Comp
L TL082 U3
U 3 1 54E7A894
P 3050 1550
F 0 "U3" H 3000 1750 60  0000 L CNN
F 1 "TLV272IS" H 3000 1300 60  0000 L CNN
F 2 "SOIC8" H 3050 1550 60  0001 C CNN
F 3 "" H 3050 1550 60  0000 C CNN
	3    3050 1550
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 54E7ACBB
P 4700 5250
F 0 "R5" V 4780 5250 50  0000 C CNN
F 1 "3k3" V 4700 5250 50  0000 C CNN
F 2 "0603" H 4700 5250 60  0001 C CNN
F 3 "" H 4700 5250 60  0001 C CNN
	1    4700 5250
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 54E7AF2A
P 5150 5550
F 0 "R6" V 5230 5550 50  0000 C CNN
F 1 "16k" V 5150 5550 50  0000 C CNN
F 2 "0603" H 5150 5550 60  0001 C CNN
F 3 "" H 5150 5550 60  0001 C CNN
	1    5150 5550
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 54E7AF6C
P 4700 5050
F 0 "R4" V 4600 5050 50  0000 C CNN
F 1 "3k3" V 4700 5050 50  0000 C CNN
F 2 "0603" H 4700 5050 60  0001 C CNN
F 3 "" H 4700 5050 60  0001 C CNN
	1    4700 5050
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 54E7B01C
P 5600 4700
F 0 "R7" V 5500 4700 50  0000 C CNN
F 1 "16k" V 5600 4700 50  0000 C CNN
F 2 "0603" H 5600 4700 60  0001 C CNN
F 3 "" H 5600 4700 60  0001 C CNN
	1    5600 4700
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 54E7B10C
P 3600 5250
F 0 "R1" V 3500 5250 50  0000 C CNN
F 1 "68.1" V 3600 5250 50  0000 C CNN
F 2 "0603" H 3600 5250 60  0001 C CNN
F 3 "" H 3600 5250 60  0001 C CNN
	1    3600 5250
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 54E7B1B1
P 3850 5550
F 0 "C4" H 3900 5650 50  0000 L CNN
F 1 "180pF" H 3900 5450 50  0000 L CNN
F 2 "0603" H 3850 5550 60  0001 C CNN
F 3 "" H 3850 5550 60  0001 C CNN
	1    3850 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5850 3850 5750
Wire Wire Line
	3850 5350 3850 5250
Wire Wire Line
	3850 5250 4450 5250
Wire Wire Line
	4950 5250 5150 5250
Wire Wire Line
	5150 5250 5150 5300
Wire Wire Line
	5150 5850 5150 5800
Wire Wire Line
	4450 5050 4350 5050
Wire Wire Line
	4350 5050 4350 5100
Wire Wire Line
	4950 5050 5150 5050
Wire Wire Line
	5150 5050 5150 4700
Wire Wire Line
	5150 4700 5350 4700
Wire Wire Line
	5850 4700 6150 4700
Wire Wire Line
	6150 4700 6150 5150
$Comp
L AGND #PWR011
U 1 1 54E7C240
P 2950 2150
F 0 "#PWR011" H 2950 2150 40  0001 C CNN
F 1 "AGND" H 2950 2080 50  0000 C CNN
F 2 "" H 2950 2150 60  0000 C CNN
F 3 "" H 2950 2150 60  0000 C CNN
	1    2950 2150
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR012
U 1 1 54E7C359
P 3500 1100
F 0 "#PWR012" H 3500 1100 40  0001 C CNN
F 1 "AGND" H 3500 1030 50  0000 C CNN
F 2 "" H 3500 1100 60  0000 C CNN
F 3 "" H 3500 1100 60  0000 C CNN
	1    3500 1100
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR013
U 1 1 54E7C3BE
P 6550 3700
F 0 "#PWR013" H 6550 3700 40  0001 C CNN
F 1 "AGND" H 6550 3630 50  0000 C CNN
F 2 "" H 6550 3700 60  0000 C CNN
F 3 "" H 6550 3700 60  0000 C CNN
	1    6550 3700
	1    0    0    -1  
$EndComp
Connection ~ 5150 5250
Connection ~ 5150 5050
Connection ~ 3850 5250
Connection ~ 6150 5150
$Comp
L +5V #PWR014
U 1 1 54E7D77D
P 7100 4500
F 0 "#PWR014" H 7100 4590 20  0001 C CNN
F 1 "+5V" H 7100 4590 30  0000 C CNN
F 2 "" H 7100 4500 60  0001 C CNN
F 3 "" H 7100 4500 60  0001 C CNN
	1    7100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4600 7100 4500
$Comp
L R R2
U 1 1 54E7DAB5
P 4250 3450
F 0 "R2" V 4150 3450 50  0000 C CNN
F 1 "68.1" V 4250 3450 50  0000 C CNN
F 2 "0603" H 4250 3450 60  0001 C CNN
F 3 "" H 4250 3450 60  0001 C CNN
	1    4250 3450
	0    1    1    0   
$EndComp
$Comp
L C C5
U 1 1 54E7DBD4
P 4000 3700
F 0 "C5" H 4050 3800 50  0000 L CNN
F 1 "180pF" H 4050 3600 50  0000 L CNN
F 2 "0603" H 4000 3700 60  0001 C CNN
F 3 "" H 4000 3700 60  0001 C CNN
	1    4000 3700
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR015
U 1 1 54E7DE04
P 7100 5950
F 0 "#PWR015" H 7100 5950 40  0001 C CNN
F 1 "AGND" H 7100 5880 50  0000 C CNN
F 2 "" H 7100 5950 60  0000 C CNN
F 3 "" H 7100 5950 60  0000 C CNN
	1    7100 5950
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR016
U 1 1 54E7DEC6
P 5150 5850
F 0 "#PWR016" H 5150 5850 40  0001 C CNN
F 1 "AGND" H 5150 5780 50  0000 C CNN
F 2 "" H 5150 5850 60  0000 C CNN
F 3 "" H 5150 5850 60  0000 C CNN
	1    5150 5850
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR017
U 1 1 54E7DF0D
P 3850 5850
F 0 "#PWR017" H 3850 5850 40  0001 C CNN
F 1 "AGND" H 3850 5780 50  0000 C CNN
F 2 "" H 3850 5850 60  0000 C CNN
F 3 "" H 3850 5850 60  0000 C CNN
	1    3850 5850
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR018
U 1 1 54E7DF2C
P 3100 5850
F 0 "#PWR018" H 3100 5850 40  0001 C CNN
F 1 "AGND" H 3100 5780 50  0000 C CNN
F 2 "" H 3100 5850 60  0000 C CNN
F 3 "" H 3100 5850 60  0000 C CNN
	1    3100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5950 7100 5350
$Comp
L AGND #PWR019
U 1 1 54E7E2AA
P 4350 5100
F 0 "#PWR019" H 4350 5100 40  0001 C CNN
F 1 "AGND" H 4350 5030 50  0000 C CNN
F 2 "" H 4350 5100 60  0000 C CNN
F 3 "" H 4350 5100 60  0000 C CNN
	1    4350 5100
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR020
U 1 1 54E7E2F1
P 4450 1700
F 0 "#PWR020" H 4450 1700 40  0001 C CNN
F 1 "AGND" H 4450 1630 50  0000 C CNN
F 2 "" H 4450 1700 60  0000 C CNN
F 3 "" H 4450 1700 60  0000 C CNN
	1    4450 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 54E7E360
P 4950 1700
F 0 "#PWR021" H 4950 1700 30  0001 C CNN
F 1 "GND" H 4950 1630 30  0001 C CNN
F 2 "" H 4950 1700 60  0001 C CNN
F 3 "" H 4950 1700 60  0001 C CNN
	1    4950 1700
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 54E7E433
P 4700 1550
F 0 "R3" V 4600 1550 50  0000 C CNN
F 1 "0" V 4700 1550 50  0000 C CNN
F 2 "0603" H 4700 1550 60  0001 C CNN
F 3 "" H 4700 1550 60  0001 C CNN
	1    4700 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 1700 4950 1550
Wire Wire Line
	4450 1700 4450 1550
$Comp
L C C1
U 1 1 54E7E6D1
P 3200 1000
F 0 "C1" V 3350 1000 50  0000 L CNN
F 1 "100nF" V 3050 900 50  0000 L CNN
F 2 "0603" H 3200 1000 60  0001 C CNN
F 3 "" H 3200 1000 60  0001 C CNN
	1    3200 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 1100 2950 950 
Wire Wire Line
	3000 1000 2950 1000
Connection ~ 2950 1000
Wire Wire Line
	3400 1000 3500 1000
Wire Wire Line
	3500 1000 3500 1100
Wire Wire Line
	2950 2000 2950 2150
Wire Wire Line
	6050 3550 5600 3550
Wire Wire Line
	5600 3350 5600 3150
Wire Wire Line
	5600 3150 4600 3150
Wire Wire Line
	4600 3150 4600 3450
$Comp
L AGND #PWR022
U 1 1 54E803B2
P 4000 3950
F 0 "#PWR022" H 4000 3950 40  0001 C CNN
F 1 "AGND" H 4000 3880 50  0000 C CNN
F 2 "" H 4000 3950 60  0000 C CNN
F 3 "" H 4000 3950 60  0000 C CNN
	1    4000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3950 4000 3900
Wire Wire Line
	4000 3450 4000 3500
Wire Wire Line
	4600 3450 4500 3450
Wire Wire Line
	4000 3450 2000 3450
Connection ~ 4600 3450
Connection ~ 4000 3450
Wire Wire Line
	6150 5150 7100 5150
Wire Wire Line
	6000 3000 6000 2950
$Comp
L VCC #PWR023
U 1 1 4C5FCFB4
P 6000 2950
F 0 "#PWR023" H 6000 3050 30  0001 C CNN
F 1 "VCC" H 6000 3050 30  0000 C CNN
F 2 "" H 6000 2950 60  0001 C CNN
F 3 "" H 6000 2950 60  0001 C CNN
	1    6000 2950
	1    0    0    -1  
$EndComp
Text Notes 6950 6450 0    60   ~ 0
max. Input Voltage: 16V\nAmplifier theoretical max voltage: 16k/3k3*3.3V = 16.0V
Text Notes 6200 3350 0    60   ~ 0
max. 16.5V
Text Notes 5400 3900 0    60   ~ 0
TODO Z-Diode 3V3!
$EndSCHEMATC
