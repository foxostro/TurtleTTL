EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 4 20
Title "Power-on Reset"
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
P 3350 3050
F 0 "SW?" V 3450 3250 50  0000 L CNN
F 1 "SW_SPST" V 3350 3150 50  0000 L CNN
F 2 "" H 3350 3050 50  0001 C CNN
F 3 "~" H 3350 3050 50  0001 C CNN
	1    3350 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D2107AB
P 4200 3750
F 0 "R?" H 4268 3796 50  0000 L CNN
F 1 "220Ω" H 4268 3705 50  0000 L CNN
F 2 "" V 4240 3740 50  0001 C CNN
F 3 "~" H 4200 3750 50  0001 C CNN
	1    4200 3750
	1    0    0    -1  
$EndComp
Text GLabel 5000 3000 2    50   Output ~ 0
~RST
$Comp
L power:GND #PWR?
U 1 1 5D211A40
P 4200 4000
F 0 "#PWR?" H 4200 3750 50  0001 C CNN
F 1 "GND" H 4205 3827 50  0000 C CNN
F 2 "" H 4200 4000 50  0001 C CNN
F 3 "" H 4200 4000 50  0001 C CNN
	1    4200 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D2125BE
P 4200 2400
F 0 "#PWR?" H 4200 2250 50  0001 C CNN
F 1 "VCC" H 4217 2573 50  0000 C CNN
F 2 "" H 4200 2400 50  0001 C CNN
F 3 "" H 4200 2400 50  0001 C CNN
	1    4200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3400 4200 3500
Wire Wire Line
	4200 2400 4200 2500
Wire Wire Line
	4200 3900 4200 4000
Wire Wire Line
	4200 3500 3350 3500
Wire Wire Line
	3350 3500 3350 3250
Connection ~ 4200 3500
Wire Wire Line
	4200 3500 4200 3600
Wire Wire Line
	4200 2500 3350 2500
Wire Wire Line
	3350 2500 3350 2850
Connection ~ 4200 2500
Wire Wire Line
	4200 2500 4200 2600
Wire Wire Line
	5000 3000 4600 3000
$EndSCHEMATC
