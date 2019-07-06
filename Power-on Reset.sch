EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 18
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
L Power_Supervisor:MCP100-450D U?
U 1 1 5D20BFD7
P 4300 3000
F 0 "U?" H 4071 3046 50  0000 R CNN
F 1 "MCP100-450D" H 4071 2955 50  0000 R CNN
F 2 "" H 3900 3150 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/11187f.pdf" H 4000 3250 50  0001 C CNN
	1    4300 3000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5D20E324
P 5000 3200
F 0 "SW?" V 4954 3298 50  0000 L CNN
F 1 "SW_SPST" V 5045 3298 50  0000 L CNN
F 2 "" H 5000 3200 50  0001 C CNN
F 3 "~" H 5000 3200 50  0001 C CNN
	1    5000 3200
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5D20F412
P 5750 3250
F 0 "C?" H 5865 3296 50  0000 L CNN
F 1 "1µF" H 5865 3205 50  0000 L CNN
F 2 "" H 5788 3100 50  0001 C CNN
F 3 "~" H 5750 3250 50  0001 C CNN
	1    5750 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D2107AB
P 5750 2750
F 0 "R?" H 5818 2796 50  0000 L CNN
F 1 "1MΩ" H 5818 2705 50  0000 L CNN
F 2 "" V 5790 2740 50  0001 C CNN
F 3 "~" H 5750 2750 50  0001 C CNN
	1    5750 2750
	1    0    0    -1  
$EndComp
Text GLabel 6300 3000 2    50   Output ~ 0
~RST
Wire Wire Line
	4600 3000 5000 3000
Connection ~ 5000 3000
Wire Wire Line
	5000 3000 5750 3000
Wire Wire Line
	5750 3100 5750 3000
Connection ~ 5750 3000
Wire Wire Line
	5750 3000 6300 3000
Wire Wire Line
	5750 3000 5750 2900
$Comp
L power:GND #PWR?
U 1 1 5D211A40
P 5000 3650
F 0 "#PWR?" H 5000 3400 50  0001 C CNN
F 1 "GND" H 5005 3477 50  0000 C CNN
F 2 "" H 5000 3650 50  0001 C CNN
F 3 "" H 5000 3650 50  0001 C CNN
	1    5000 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3400 4200 3500
Wire Wire Line
	4200 3500 5000 3500
Wire Wire Line
	5750 3500 5750 3400
Wire Wire Line
	5000 3400 5000 3500
Connection ~ 5000 3500
Wire Wire Line
	5000 3500 5750 3500
Wire Wire Line
	5000 3500 5000 3650
$Comp
L power:VCC #PWR?
U 1 1 5D2125BE
P 5750 2350
F 0 "#PWR?" H 5750 2200 50  0001 C CNN
F 1 "VCC" H 5767 2523 50  0000 C CNN
F 2 "" H 5750 2350 50  0001 C CNN
F 3 "" H 5750 2350 50  0001 C CNN
	1    5750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2350 5750 2500
Wire Wire Line
	4200 2600 4200 2500
Wire Wire Line
	4200 2500 5750 2500
Connection ~ 5750 2500
Wire Wire Line
	5750 2500 5750 2600
$EndSCHEMATC
