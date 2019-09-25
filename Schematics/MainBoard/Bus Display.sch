EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 22 22
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
$Comp
L power:GND #PWR?
U 1 1 5DCD04AD
P 6700 5050
AR Path="/5D2C07CD/5DCD04AD" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DCD04AD" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DCD04AD" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5DCD04AD" Ref="#PWR0194"  Part="1" 
F 0 "#PWR0194" H 6700 4800 50  0001 C CNN
F 1 "GND" H 6705 4877 50  0000 C CNN
F 2 "" H 6700 5050 50  0001 C CNN
F 3 "" H 6700 5050 50  0001 C CNN
	1    6700 5050
	-1   0    0    1   
$EndComp
Entry Wire Line
	5100 4550 5000 4450
Entry Wire Line
	5300 4550 5200 4450
Entry Wire Line
	5400 4550 5300 4450
Entry Wire Line
	5500 4550 5400 4450
Entry Wire Line
	5600 4550 5500 4450
Entry Wire Line
	5700 4550 5600 4450
Entry Wire Line
	5800 4550 5700 4450
Entry Wire Line
	5900 4550 5800 4450
Entry Wire Line
	6000 4550 5900 4450
Entry Wire Line
	6100 4550 6000 4450
Entry Wire Line
	6200 4550 6100 4450
Entry Wire Line
	6300 4550 6200 4450
Entry Wire Line
	6400 4550 6300 4450
Entry Wire Line
	6500 4550 6400 4450
Entry Wire Line
	6600 4550 6500 4450
Text GLabel 4700 4450 0    50   Input ~ 0
AddressBus[0..15]
Text Label 5100 5100 1    50   ~ 0
AddressBus15
Text Label 5300 5100 1    50   ~ 0
AddressBus13
Text Label 5400 5100 1    50   ~ 0
AddressBus12
Text Label 5500 5100 1    50   ~ 0
AddressBus11
Text Label 5600 5100 1    50   ~ 0
AddressBus10
Text Label 5700 5100 1    50   ~ 0
AddressBus9
Text Label 5800 5100 1    50   ~ 0
AddressBus8
Text Label 5900 5100 1    50   ~ 0
AddressBus7
Text Label 6000 5100 1    50   ~ 0
AddressBus6
Text Label 6100 5100 1    50   ~ 0
AddressBus5
Text Label 6200 5100 1    50   ~ 0
AddressBus4
Text Label 6300 5100 1    50   ~ 0
AddressBus3
Text Label 6400 5100 1    50   ~ 0
AddressBus2
Text Label 6500 5100 1    50   ~ 0
AddressBus1
Text Label 6600 5100 1    50   ~ 0
AddressBus0
Wire Wire Line
	5100 4550 5100 5150
Wire Wire Line
	5300 4550 5300 5150
Wire Wire Line
	5400 4550 5400 5150
Wire Wire Line
	5500 4550 5500 5150
Wire Wire Line
	5600 4550 5600 5150
Wire Wire Line
	5700 4550 5700 5150
Wire Wire Line
	5800 4550 5800 5150
Wire Wire Line
	5900 4550 5900 5150
Wire Wire Line
	6000 4550 6000 5150
Wire Wire Line
	6100 4550 6100 5150
Wire Wire Line
	6200 4550 6200 5150
Wire Wire Line
	6300 4550 6300 5150
Wire Wire Line
	6400 4550 6400 5150
Wire Wire Line
	6500 4550 6500 5150
Wire Wire Line
	6600 4550 6600 5150
Wire Wire Line
	6700 5150 6700 5050
Wire Wire Line
	5550 3150 5550 3250
Wire Wire Line
	5200 4550 5200 5150
Text Label 5200 5100 1    50   ~ 0
AddressBus14
Entry Wire Line
	5200 4550 5100 4450
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
$Comp
L Connector:Conn_01x17_Female J11
U 1 1 5D8D33D7
P 5900 5350
F 0 "J11" V 5973 5330 50  0000 C CNN
F 1 "Address Bus LED Connector" V 6064 5330 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x17_P2.54mm_Vertical" H 5900 5350 50  0001 C CNN
F 3 "~" H 5900 5350 50  0001 C CNN
	1    5900 5350
	0    1    1    0   
$EndComp
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
	4700 4450 6500 4450
Wire Bus Line
	3700 2200 6650 2200
$EndSCHEMATC
