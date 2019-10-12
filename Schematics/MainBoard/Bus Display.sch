EESchema Schematic File Version 4
LIBS:MainBoard-cache
LIBS:RAMCard-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 19 22
Title "Bus Display"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0193
U 1 1 5D7E5A44
P 5550 3250
F 0 "#PWR0193" H 5550 3000 50  0001 C CNN
F 1 "GND" H 5555 3077 50  0000 C CNN
F 2 "" H 5550 3250 50  0001 C CNN
F 3 "" H 5550 3250 50  0001 C CNN
	1    5550 3250
	1    0    0    -1  
$EndComp
Text GLabel 3700 2200 0    50   Input ~ 0
DataBus[0..7]
Entry Wire Line
	5150 2300 5050 2200
Entry Wire Line
	5250 2300 5150 2200
Entry Wire Line
	5350 2300 5250 2200
Entry Wire Line
	5050 2300 4950 2200
Entry Wire Line
	4950 2300 4850 2200
Entry Wire Line
	4850 2300 4750 2200
Text Label 4850 2650 1    50   ~ 0
DataBus7
Text Label 4950 2650 1    50   ~ 0
DataBus6
Text Label 5050 2650 1    50   ~ 0
DataBus5
Text Label 5150 2650 1    50   ~ 0
DataBus4
Text Label 5250 2650 1    50   ~ 0
DataBus3
Text Label 5350 2650 1    50   ~ 0
DataBus2
Text Notes 4300 3250 0    50   ~ 0
Data Bus Pull-down Resistors
Wire Wire Line
	5550 3150 5550 3250
Wire Wire Line
	6850 2450 6850 2650
$Comp
L power:GND #PWR0195
U 1 1 5D8AA8B4
P 6850 2450
F 0 "#PWR0195" H 6850 2200 50  0001 C CNN
F 1 "GND" H 6855 2277 50  0000 C CNN
F 2 "" H 6850 2450 50  0001 C CNN
F 3 "" H 6850 2450 50  0001 C CNN
	1    6850 2450
	-1   0    0    1   
$EndComp
Entry Wire Line
	6150 2300 6050 2200
Wire Wire Line
	6150 2300 6150 2650
Text Label 6150 2650 1    50   ~ 0
DataBus6
Wire Wire Line
	6350 2300 6350 2650
Text Label 6350 2650 1    50   ~ 0
DataBus4
$Comp
L Connector:Conn_01x09_Female J?
U 1 1 5D870367
P 6450 2850
AR Path="/5D29E36D/5D870367" Ref="J?"  Part="1" 
AR Path="/5D2C12A5/5D870367" Ref="J12"  Part="1" 
F 0 "J12" V 6600 2800 50  0000 C CNN
F 1 "Data Bus LED Connector" V 6700 2800 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 6450 2850 50  0001 C CNN
F 3 "~" H 6450 2850 50  0001 C CNN
	1    6450 2850
	0    1    1    0   
$EndComp
Text Label 6750 2650 1    50   ~ 0
DataBus0
Text Label 6650 2650 1    50   ~ 0
DataBus1
Text Label 6550 2650 1    50   ~ 0
DataBus2
Text Label 6450 2650 1    50   ~ 0
DataBus3
Text Label 6250 2650 1    50   ~ 0
DataBus5
Text Label 6050 2650 1    50   ~ 0
DataBus7
Wire Wire Line
	6050 2300 6050 2650
Wire Wire Line
	6250 2300 6250 2650
Wire Wire Line
	6450 2300 6450 2650
Wire Wire Line
	6550 2300 6550 2650
Wire Wire Line
	6650 2300 6650 2650
Wire Wire Line
	6750 2300 6750 2650
Entry Wire Line
	6050 2300 5950 2200
Entry Wire Line
	6250 2300 6150 2200
Entry Wire Line
	6750 2300 6650 2200
Entry Wire Line
	6650 2300 6550 2200
Entry Wire Line
	6550 2300 6450 2200
Entry Wire Line
	6450 2300 6350 2200
Entry Wire Line
	6350 2300 6250 2200
Text Label 5550 2650 1    50   ~ 0
DataBus0
Text Label 5450 2650 1    50   ~ 0
DataBus1
Entry Wire Line
	5550 2300 5450 2200
Entry Wire Line
	5450 2300 5350 2200
$Comp
L Device:R_Network08 RN1
U 1 1 5D8F8D59
P 5150 2950
F 0 "RN1" H 4670 2904 50  0000 R CNN
F 1 "1kΩ" H 4670 2995 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP9" V 5625 2950 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 5150 2950 50  0001 C CNN
	1    5150 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 2300 5550 2750
Wire Wire Line
	5450 2750 5450 2300
Wire Wire Line
	5350 2300 5350 2750
Wire Wire Line
	5250 2750 5250 2300
Wire Wire Line
	5150 2300 5150 2750
Wire Wire Line
	5050 2750 5050 2300
Wire Wire Line
	4950 2300 4950 2750
Wire Wire Line
	4850 2750 4850 2300
Wire Bus Line
	3700 2200 6650 2200
$EndSCHEMATC
