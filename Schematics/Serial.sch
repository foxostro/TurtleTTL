EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 24
Title "Serial I/O"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "An Arduino Nano serves as a serial interface module."
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5D7E59B1
P 6150 4000
F 0 "A1" H 5550 5100 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5600 5000 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6300 3050 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 6150 3000 50  0001 C CNN
	1    6150 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0122
U 1 1 5D7E6F02
P 6050 3000
F 0 "#PWR0122" H 6050 2850 50  0001 C CNN
F 1 "VCC" H 6067 3173 50  0000 C CNN
F 2 "" H 6050 3000 50  0001 C CNN
F 3 "" H 6050 3000 50  0001 C CNN
	1    6050 3000
	1    0    0    -1  
$EndComp
NoConn ~ 6250 3000
NoConn ~ 6350 3000
$Comp
L power:GND #PWR0123
U 1 1 5D7E7F51
P 6200 5100
F 0 "#PWR0123" H 6200 4850 50  0001 C CNN
F 1 "GND" H 6205 4927 50  0000 C CNN
F 2 "" H 6200 5100 50  0001 C CNN
F 3 "" H 6200 5100 50  0001 C CNN
	1    6200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5000 6150 5050
Wire Wire Line
	6150 5050 6200 5050
Wire Wire Line
	6250 5050 6250 5000
Wire Wire Line
	6200 5050 6200 5100
Connection ~ 6200 5050
Wire Wire Line
	6200 5050 6250 5050
NoConn ~ 6650 3800
NoConn ~ 5650 3400
NoConn ~ 5650 3500
NoConn ~ 6650 4100
NoConn ~ 6650 4200
NoConn ~ 6650 4300
NoConn ~ 6650 4400
NoConn ~ 6650 4500
NoConn ~ 6650 4600
NoConn ~ 6650 4700
Text GLabel 4050 2400 0    50   Input ~ 0
RegisterClock
Wire Wire Line
	6650 4000 6750 4000
Wire Wire Line
	6750 4000 6750 2400
NoConn ~ 6650 3400
NoConn ~ 6650 3500
Text GLabel 4050 2750 0    50   Input ~ 0
~MI
Text GLabel 4050 4800 0    50   Input ~ 0
AddressBus
Wire Bus Line
	4050 4800 4850 4800
Entry Wire Line
	4850 4800 4950 4700
Wire Wire Line
	4950 4700 5650 4700
Text Label 5000 4700 0    50   ~ 0
AddressBus00
Text GLabel 4050 4600 0    50   BiDi ~ 0
DataBus
Wire Wire Line
	5650 3600 4350 3600
Wire Wire Line
	4350 3600 4350 2550
Text GLabel 4050 2550 0    50   Input ~ 0
~MO
Wire Wire Line
	4350 2550 4050 2550
Wire Wire Line
	4050 2750 4250 2750
Wire Wire Line
	4250 2750 4250 3700
Wire Wire Line
	4250 3700 5650 3700
Entry Wire Line
	4950 3800 4850 3900
Entry Wire Line
	4950 3900 4850 4000
Entry Wire Line
	4950 4000 4850 4100
Entry Wire Line
	4950 4100 4850 4200
Entry Wire Line
	4950 4200 4850 4300
Entry Wire Line
	4950 4300 4850 4400
Entry Wire Line
	4950 4400 4850 4500
Entry Wire Line
	4950 4500 4850 4600
Wire Bus Line
	4050 4600 4850 4600
Wire Wire Line
	4950 3800 5650 3800
Wire Wire Line
	5650 3900 4950 3900
Wire Wire Line
	4950 4000 5650 4000
Wire Wire Line
	5650 4100 4950 4100
Wire Wire Line
	4950 4200 5650 4200
Wire Wire Line
	5650 4300 4950 4300
Wire Wire Line
	4950 4400 5650 4400
Wire Wire Line
	5650 4500 4950 4500
Text Label 5000 3800 0    50   ~ 0
DataBus0
Text Label 5000 3900 0    50   ~ 0
DataBus1
Text Label 5000 4000 0    50   ~ 0
DataBus2
Text Label 5000 4100 0    50   ~ 0
DataBus3
Text Label 5000 4200 0    50   ~ 0
DataBus4
Text Label 5000 4300 0    50   ~ 0
DataBus5
Text Label 5000 4400 0    50   ~ 0
DataBus6
Text Label 5000 4500 0    50   ~ 0
DataBus7
Wire Wire Line
	4050 2400 6750 2400
Wire Bus Line
	4850 3900 4850 4600
$EndSCHEMATC
