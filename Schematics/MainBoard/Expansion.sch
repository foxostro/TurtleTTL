EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 20 20
Title "Expansion"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "TurtleTTL provides several connectors for expansion cards."
$EndDescr
Text GLabel 1600 700  0    50   Input ~ 0
DeviceSelect[0..7]
Text GLabel 1600 1150 0    50   Input ~ 0
DataBus[0..7]
Text GLabel 1600 1300 0    50   Input ~ 0
AddressBus[0..15]
Entry Wire Line
	3150 1950 3250 2050
Entry Wire Line
	3150 2050 3250 2150
Entry Wire Line
	3150 2150 3250 2250
Entry Wire Line
	3150 2250 3250 2350
Entry Wire Line
	3150 2350 3250 2450
Entry Wire Line
	3150 2450 3250 2550
Entry Wire Line
	3150 2550 3250 2650
Entry Wire Line
	3150 2650 3250 2750
Entry Wire Line
	3150 2750 3250 2850
Entry Wire Line
	3150 2850 3250 2950
Entry Wire Line
	3150 2950 3250 3050
Entry Wire Line
	3150 3050 3250 3150
Entry Wire Line
	3150 3150 3250 3250
Entry Wire Line
	3150 3250 3250 3350
Entry Wire Line
	3150 3350 3250 3450
Entry Wire Line
	3150 3450 3250 3550
Entry Wire Line
	4950 1950 4850 2050
Entry Wire Line
	4950 2050 4850 2150
Entry Wire Line
	4950 2150 4850 2250
Entry Wire Line
	4950 2250 4850 2350
Entry Wire Line
	4950 2350 4850 2450
Entry Wire Line
	4950 2450 4850 2550
Entry Wire Line
	4950 2550 4850 2650
Entry Wire Line
	4950 2650 4850 2750
Wire Wire Line
	4350 2050 4850 2050
Wire Wire Line
	4850 2150 4350 2150
Wire Wire Line
	4350 2250 4850 2250
Wire Wire Line
	4850 2350 4350 2350
Wire Wire Line
	4350 2450 4850 2450
Wire Wire Line
	4850 2550 4350 2550
Wire Wire Line
	4350 2650 4850 2650
Wire Wire Line
	4850 2750 4350 2750
$Comp
L Connector_Generic:Conn_02x20_Top_Bottom J17
U 1 1 5DA1F396
P 4050 2950
F 0 "J17" H 4100 4067 50  0000 C CNN
F 1 "Conn_02x20_Top_Bottom" H 4100 3976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 4050 2950 50  0001 C CNN
F 3 "~" H 4050 2950 50  0001 C CNN
	1    4050 2950
	1    0    0    -1  
$EndComp
Text Label 3250 2050 0    50   ~ 0
AddressBus0
Text Label 3250 2150 0    50   ~ 0
AddressBus1
Text Label 3250 2250 0    50   ~ 0
AddressBus2
Text Label 3250 2350 0    50   ~ 0
AddressBus3
Text Label 3250 2450 0    50   ~ 0
AddressBus4
Text Label 3250 2550 0    50   ~ 0
AddressBus5
Text Label 3250 2650 0    50   ~ 0
AddressBus5
Text Label 3250 2750 0    50   ~ 0
AddressBus7
Text Label 3250 2850 0    50   ~ 0
AddressBus8
Text Label 3250 2950 0    50   ~ 0
AddressBus9
Text Label 3250 3050 0    50   ~ 0
AddressBus10
Text Label 3250 3150 0    50   ~ 0
AddressBus11
Text Label 3250 3250 0    50   ~ 0
AddressBus12
Text Label 3250 3350 0    50   ~ 0
AddressBus13
Text Label 3250 3450 0    50   ~ 0
AddressBus14
Text Label 3250 3550 0    50   ~ 0
AddressBus15
Wire Wire Line
	3250 2050 3850 2050
Wire Wire Line
	3250 2150 3850 2150
Wire Wire Line
	3250 2250 3850 2250
Wire Wire Line
	3250 2350 3850 2350
Wire Wire Line
	3250 2450 3850 2450
Wire Wire Line
	3250 2550 3850 2550
Wire Wire Line
	3250 2650 3850 2650
Wire Wire Line
	3250 2750 3850 2750
Wire Wire Line
	3250 2850 3850 2850
Wire Wire Line
	3250 2950 3850 2950
Wire Wire Line
	3250 3050 3850 3050
Wire Wire Line
	3250 3150 3850 3150
Wire Wire Line
	3250 3250 3850 3250
Wire Wire Line
	3250 3350 3850 3350
Wire Wire Line
	3250 3450 3850 3450
Wire Wire Line
	3250 3550 3850 3550
$Comp
L power:GND #PWR0200
U 1 1 5DA4431A
P 3750 3950
F 0 "#PWR0200" H 3750 3700 50  0001 C CNN
F 1 "GND" V 3755 3822 50  0000 R CNN
F 2 "" H 3750 3950 50  0001 C CNN
F 3 "" H 3750 3950 50  0001 C CNN
	1    3750 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0201
U 1 1 5DA44DE0
P 4450 3950
F 0 "#PWR0201" H 4450 3700 50  0001 C CNN
F 1 "GND" V 4455 3822 50  0000 R CNN
F 2 "" H 4450 3950 50  0001 C CNN
F 3 "" H 4450 3950 50  0001 C CNN
	1    4450 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 3950 3750 3950
Wire Wire Line
	4450 3950 4350 3950
Wire Wire Line
	4450 3850 4350 3850
$Comp
L power:VCC #PWR0202
U 1 1 5DA48820
P 4450 3850
F 0 "#PWR0202" H 4450 3700 50  0001 C CNN
F 1 "VCC" V 4467 3978 50  0000 L CNN
F 2 "" H 4450 3850 50  0001 C CNN
F 3 "" H 4450 3850 50  0001 C CNN
	1    4450 3850
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0203
U 1 1 5DA48E8B
P 3750 3850
F 0 "#PWR0203" H 3750 3700 50  0001 C CNN
F 1 "VCC" V 3767 3977 50  0000 L CNN
F 2 "" H 3750 3850 50  0001 C CNN
F 3 "" H 3750 3850 50  0001 C CNN
	1    3750 3850
	0    -1   1    0   
$EndComp
Wire Wire Line
	3850 3850 3750 3850
Text Label 3250 3650 0    50   ~ 0
RegisterClock
Text Label 3250 3750 0    50   ~ 0
FixedRateClock
Text GLabel 1600 1450 0    50   Input ~ 0
RegisterClock
Text GLabel 1600 1600 0    50   Input ~ 0
FixedRateClock
Wire Bus Line
	3150 1300 1600 1300
Wire Wire Line
	1600 1450 3050 1450
Wire Wire Line
	3050 3650 3850 3650
Wire Wire Line
	2950 1600 1600 1600
Wire Wire Line
	2950 3750 3850 3750
Text Label 4400 2050 0    50   ~ 0
DataBus0
Text Label 4400 2150 0    50   ~ 0
DataBus1
Text Label 4400 2250 0    50   ~ 0
DataBus2
Text Label 4400 2350 0    50   ~ 0
DataBus3
Text Label 4400 2450 0    50   ~ 0
DataBus4
Text Label 4400 2550 0    50   ~ 0
DataBus5
Text Label 4400 2650 0    50   ~ 0
DataBus6
Text Label 4400 2750 0    50   ~ 0
DataBus7
Text GLabel 1600 850  0    50   Input ~ 0
~MI
Text GLabel 1600 1000 0    50   Input ~ 0
~MO
Text Label 4400 2950 0    50   ~ 0
~MI
Wire Wire Line
	5150 2950 4350 2950
Text Label 4400 3050 0    50   ~ 0
~MO
Entry Wire Line
	4950 2850 5050 2750
Text Label 4400 2850 0    50   ~ 0
DeviceSelect2
Wire Wire Line
	4350 3150 4500 3150
Wire Wire Line
	4500 3750 4500 3450
Wire Wire Line
	4500 3750 4350 3750
$Comp
L power:GND #PWR0204
U 1 1 5DA654F3
P 4600 3450
F 0 "#PWR0204" H 4600 3200 50  0001 C CNN
F 1 "GND" V 4605 3322 50  0000 R CNN
F 2 "" H 4600 3450 50  0001 C CNN
F 3 "" H 4600 3450 50  0001 C CNN
	1    4600 3450
	0    -1   -1   0   
$EndComp
Connection ~ 4500 3450
Wire Wire Line
	4500 3450 4500 3150
Wire Wire Line
	4600 3450 4500 3450
Entry Wire Line
	5550 1950 5650 2050
Entry Wire Line
	5550 2050 5650 2150
Entry Wire Line
	5550 2150 5650 2250
Entry Wire Line
	5550 2250 5650 2350
Entry Wire Line
	5550 2350 5650 2450
Entry Wire Line
	5550 2450 5650 2550
Entry Wire Line
	5550 2550 5650 2650
Entry Wire Line
	5550 2650 5650 2750
Entry Wire Line
	5550 2750 5650 2850
Entry Wire Line
	5550 2850 5650 2950
Entry Wire Line
	5550 2950 5650 3050
Entry Wire Line
	5550 3050 5650 3150
Entry Wire Line
	5550 3150 5650 3250
Entry Wire Line
	5550 3250 5650 3350
Entry Wire Line
	5550 3350 5650 3450
Entry Wire Line
	5550 3450 5650 3550
$Comp
L Connector_Generic:Conn_02x20_Top_Bottom J19
U 1 1 5DA82EAB
P 6450 2950
F 0 "J19" H 6500 4067 50  0000 C CNN
F 1 "Conn_02x20_Top_Bottom" H 6500 3976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 6450 2950 50  0001 C CNN
F 3 "~" H 6450 2950 50  0001 C CNN
	1    6450 2950
	1    0    0    -1  
$EndComp
Text Label 5650 2050 0    50   ~ 0
AddressBus0
Text Label 5650 2150 0    50   ~ 0
AddressBus1
Text Label 5650 2250 0    50   ~ 0
AddressBus2
Text Label 5650 2350 0    50   ~ 0
AddressBus3
Text Label 5650 2450 0    50   ~ 0
AddressBus4
Text Label 5650 2550 0    50   ~ 0
AddressBus5
Text Label 5650 2650 0    50   ~ 0
AddressBus5
Text Label 5650 2750 0    50   ~ 0
AddressBus7
Text Label 5650 2850 0    50   ~ 0
AddressBus8
Text Label 5650 2950 0    50   ~ 0
AddressBus9
Text Label 5650 3050 0    50   ~ 0
AddressBus10
Text Label 5650 3150 0    50   ~ 0
AddressBus11
Text Label 5650 3250 0    50   ~ 0
AddressBus12
Text Label 5650 3350 0    50   ~ 0
AddressBus13
Text Label 5650 3450 0    50   ~ 0
AddressBus14
Text Label 5650 3550 0    50   ~ 0
AddressBus15
Wire Wire Line
	5650 2050 6250 2050
Wire Wire Line
	5650 2150 6250 2150
Wire Wire Line
	5650 2250 6250 2250
Wire Wire Line
	5650 2350 6250 2350
Wire Wire Line
	5650 2450 6250 2450
Wire Wire Line
	5650 2550 6250 2550
Wire Wire Line
	5650 2650 6250 2650
Wire Wire Line
	5650 2750 6250 2750
Wire Wire Line
	5650 2850 6250 2850
Wire Wire Line
	5650 2950 6250 2950
Wire Wire Line
	5650 3050 6250 3050
Wire Wire Line
	5650 3150 6250 3150
Wire Wire Line
	5650 3250 6250 3250
Wire Wire Line
	5650 3350 6250 3350
Wire Wire Line
	5650 3450 6250 3450
Wire Wire Line
	5650 3550 6250 3550
$Comp
L power:GND #PWR0205
U 1 1 5DA82ED1
P 6150 3950
F 0 "#PWR0205" H 6150 3700 50  0001 C CNN
F 1 "GND" V 6155 3822 50  0000 R CNN
F 2 "" H 6150 3950 50  0001 C CNN
F 3 "" H 6150 3950 50  0001 C CNN
	1    6150 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0206
U 1 1 5DA82ED7
P 6850 3950
F 0 "#PWR0206" H 6850 3700 50  0001 C CNN
F 1 "GND" V 6855 3822 50  0000 R CNN
F 2 "" H 6850 3950 50  0001 C CNN
F 3 "" H 6850 3950 50  0001 C CNN
	1    6850 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 3950 6150 3950
Wire Wire Line
	6850 3950 6750 3950
Wire Wire Line
	6850 3850 6750 3850
$Comp
L power:VCC #PWR0207
U 1 1 5DA82EE0
P 6850 3850
F 0 "#PWR0207" H 6850 3700 50  0001 C CNN
F 1 "VCC" V 6867 3978 50  0000 L CNN
F 2 "" H 6850 3850 50  0001 C CNN
F 3 "" H 6850 3850 50  0001 C CNN
	1    6850 3850
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0208
U 1 1 5DA82EE6
P 6150 3850
F 0 "#PWR0208" H 6150 3700 50  0001 C CNN
F 1 "VCC" V 6167 3977 50  0000 L CNN
F 2 "" H 6150 3850 50  0001 C CNN
F 3 "" H 6150 3850 50  0001 C CNN
	1    6150 3850
	0    -1   1    0   
$EndComp
Wire Wire Line
	6250 3850 6150 3850
Text Label 5650 3650 0    50   ~ 0
RegisterClock
Text Label 5650 3750 0    50   ~ 0
FixedRateClock
Wire Wire Line
	5450 3650 6250 3650
Wire Wire Line
	6750 3150 6900 3150
Wire Wire Line
	6900 3750 6900 3450
Wire Wire Line
	6900 3750 6750 3750
$Comp
L power:GND #PWR0209
U 1 1 5DA82F0F
P 7000 3450
F 0 "#PWR0209" H 7000 3200 50  0001 C CNN
F 1 "GND" V 7005 3322 50  0000 R CNN
F 2 "" H 7000 3450 50  0001 C CNN
F 3 "" H 7000 3450 50  0001 C CNN
	1    7000 3450
	0    -1   -1   0   
$EndComp
Connection ~ 6900 3450
Wire Wire Line
	6900 3450 6900 3150
Wire Wire Line
	7000 3450 6900 3450
Connection ~ 3050 1450
Wire Wire Line
	2950 1600 5350 1600
Connection ~ 2950 1600
Connection ~ 3150 1300
Entry Wire Line
	8000 1950 8100 2050
Entry Wire Line
	8000 2050 8100 2150
Entry Wire Line
	8000 2150 8100 2250
Entry Wire Line
	8000 2250 8100 2350
Entry Wire Line
	8000 2350 8100 2450
Entry Wire Line
	8000 2450 8100 2550
Entry Wire Line
	8000 2550 8100 2650
Entry Wire Line
	8000 2650 8100 2750
Entry Wire Line
	8000 2750 8100 2850
Entry Wire Line
	8000 2850 8100 2950
Entry Wire Line
	8000 2950 8100 3050
Entry Wire Line
	8000 3050 8100 3150
Entry Wire Line
	8000 3150 8100 3250
Entry Wire Line
	8000 3250 8100 3350
Entry Wire Line
	8000 3350 8100 3450
Entry Wire Line
	8000 3450 8100 3550
$Comp
L Connector_Generic:Conn_02x20_Top_Bottom J21
U 1 1 5DAB9FDC
P 8900 2950
F 0 "J21" H 8950 4067 50  0000 C CNN
F 1 "Conn_02x20_Top_Bottom" H 8950 3976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 8900 2950 50  0001 C CNN
F 3 "~" H 8900 2950 50  0001 C CNN
	1    8900 2950
	1    0    0    -1  
$EndComp
Text Label 8100 2050 0    50   ~ 0
AddressBus0
Text Label 8100 2150 0    50   ~ 0
AddressBus1
Text Label 8100 2250 0    50   ~ 0
AddressBus2
Text Label 8100 2350 0    50   ~ 0
AddressBus3
Text Label 8100 2450 0    50   ~ 0
AddressBus4
Text Label 8100 2550 0    50   ~ 0
AddressBus5
Text Label 8100 2650 0    50   ~ 0
AddressBus5
Text Label 8100 2750 0    50   ~ 0
AddressBus7
Text Label 8100 2850 0    50   ~ 0
AddressBus8
Text Label 8100 2950 0    50   ~ 0
AddressBus9
Text Label 8100 3050 0    50   ~ 0
AddressBus10
Text Label 8100 3150 0    50   ~ 0
AddressBus11
Text Label 8100 3250 0    50   ~ 0
AddressBus12
Text Label 8100 3350 0    50   ~ 0
AddressBus13
Text Label 8100 3450 0    50   ~ 0
AddressBus14
Text Label 8100 3550 0    50   ~ 0
AddressBus15
Wire Wire Line
	8100 2050 8700 2050
Wire Wire Line
	8100 2150 8700 2150
Wire Wire Line
	8100 2250 8700 2250
Wire Wire Line
	8100 2350 8700 2350
Wire Wire Line
	8100 2450 8700 2450
Wire Wire Line
	8100 2550 8700 2550
Wire Wire Line
	8100 2650 8700 2650
Wire Wire Line
	8100 2750 8700 2750
Wire Wire Line
	8100 2850 8700 2850
Wire Wire Line
	8100 2950 8700 2950
Wire Wire Line
	8100 3050 8700 3050
Wire Wire Line
	8100 3150 8700 3150
Wire Wire Line
	8100 3250 8700 3250
Wire Wire Line
	8100 3350 8700 3350
Wire Wire Line
	8100 3450 8700 3450
Wire Wire Line
	8100 3550 8700 3550
$Comp
L power:GND #PWR0210
U 1 1 5DABA002
P 8600 3950
F 0 "#PWR0210" H 8600 3700 50  0001 C CNN
F 1 "GND" V 8605 3822 50  0000 R CNN
F 2 "" H 8600 3950 50  0001 C CNN
F 3 "" H 8600 3950 50  0001 C CNN
	1    8600 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0211
U 1 1 5DABA008
P 9300 3950
F 0 "#PWR0211" H 9300 3700 50  0001 C CNN
F 1 "GND" V 9305 3822 50  0000 R CNN
F 2 "" H 9300 3950 50  0001 C CNN
F 3 "" H 9300 3950 50  0001 C CNN
	1    9300 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 3950 8600 3950
Wire Wire Line
	9300 3950 9200 3950
Wire Wire Line
	9300 3850 9200 3850
$Comp
L power:VCC #PWR0212
U 1 1 5DABA011
P 9300 3850
F 0 "#PWR0212" H 9300 3700 50  0001 C CNN
F 1 "VCC" V 9317 3978 50  0000 L CNN
F 2 "" H 9300 3850 50  0001 C CNN
F 3 "" H 9300 3850 50  0001 C CNN
	1    9300 3850
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0213
U 1 1 5DABA017
P 8600 3850
F 0 "#PWR0213" H 8600 3700 50  0001 C CNN
F 1 "VCC" V 8617 3977 50  0000 L CNN
F 2 "" H 8600 3850 50  0001 C CNN
F 3 "" H 8600 3850 50  0001 C CNN
	1    8600 3850
	0    -1   1    0   
$EndComp
Wire Wire Line
	8700 3850 8600 3850
Text Label 8100 3650 0    50   ~ 0
RegisterClock
Text Label 8100 3750 0    50   ~ 0
FixedRateClock
Wire Wire Line
	7900 1450 7900 3650
Wire Wire Line
	7900 3650 8700 3650
Wire Wire Line
	9200 3150 9350 3150
Wire Wire Line
	9350 3750 9350 3450
Wire Wire Line
	9350 3750 9200 3750
$Comp
L power:GND #PWR0214
U 1 1 5DABA03C
P 9450 3450
F 0 "#PWR0214" H 9450 3200 50  0001 C CNN
F 1 "GND" V 9455 3322 50  0000 R CNN
F 2 "" H 9450 3450 50  0001 C CNN
F 3 "" H 9450 3450 50  0001 C CNN
	1    9450 3450
	0    -1   -1   0   
$EndComp
Connection ~ 9350 3450
Wire Wire Line
	9350 3450 9350 3150
Wire Wire Line
	9450 3450 9350 3450
Wire Wire Line
	3050 1450 5450 1450
Connection ~ 5450 1450
Wire Wire Line
	5450 1450 7900 1450
Wire Wire Line
	5350 1600 7800 1600
Connection ~ 5350 1600
Wire Bus Line
	3150 1300 5550 1300
Connection ~ 5550 1300
Wire Bus Line
	5550 1300 8000 1300
Wire Bus Line
	1600 700  5050 700 
Wire Bus Line
	1600 1150 4950 1150
Connection ~ 4950 1150
Connection ~ 5150 850 
Entry Wire Line
	3150 4200 3250 4300
Entry Wire Line
	3150 4300 3250 4400
Entry Wire Line
	3150 4400 3250 4500
Entry Wire Line
	3150 4500 3250 4600
Entry Wire Line
	3150 4600 3250 4700
Entry Wire Line
	3150 4700 3250 4800
Entry Wire Line
	3150 4800 3250 4900
Entry Wire Line
	3150 4900 3250 5000
Entry Wire Line
	3150 5000 3250 5100
Entry Wire Line
	3150 5100 3250 5200
Entry Wire Line
	3150 5200 3250 5300
Entry Wire Line
	3150 5300 3250 5400
Entry Wire Line
	3150 5400 3250 5500
Entry Wire Line
	3150 5500 3250 5600
Entry Wire Line
	3150 5600 3250 5700
Entry Wire Line
	3150 5700 3250 5800
$Comp
L Connector_Generic:Conn_02x20_Top_Bottom J18
U 1 1 5DBAADDF
P 4050 5200
F 0 "J18" H 4100 6317 50  0000 C CNN
F 1 "Conn_02x20_Top_Bottom" H 4100 6226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 4050 5200 50  0001 C CNN
F 3 "~" H 4050 5200 50  0001 C CNN
	1    4050 5200
	1    0    0    -1  
$EndComp
Text Label 3250 4300 0    50   ~ 0
AddressBus0
Text Label 3250 4400 0    50   ~ 0
AddressBus1
Text Label 3250 4500 0    50   ~ 0
AddressBus2
Text Label 3250 4600 0    50   ~ 0
AddressBus3
Text Label 3250 4700 0    50   ~ 0
AddressBus4
Text Label 3250 4800 0    50   ~ 0
AddressBus5
Text Label 3250 4900 0    50   ~ 0
AddressBus5
Text Label 3250 5000 0    50   ~ 0
AddressBus7
Text Label 3250 5100 0    50   ~ 0
AddressBus8
Text Label 3250 5200 0    50   ~ 0
AddressBus9
Text Label 3250 5300 0    50   ~ 0
AddressBus10
Text Label 3250 5400 0    50   ~ 0
AddressBus11
Text Label 3250 5500 0    50   ~ 0
AddressBus12
Text Label 3250 5600 0    50   ~ 0
AddressBus13
Text Label 3250 5700 0    50   ~ 0
AddressBus14
Text Label 3250 5800 0    50   ~ 0
AddressBus15
Wire Wire Line
	3250 4300 3850 4300
Wire Wire Line
	3250 4400 3850 4400
Wire Wire Line
	3250 4500 3850 4500
Wire Wire Line
	3250 4600 3850 4600
Wire Wire Line
	3250 4700 3850 4700
Wire Wire Line
	3250 4800 3850 4800
Wire Wire Line
	3250 4900 3850 4900
Wire Wire Line
	3250 5000 3850 5000
Wire Wire Line
	3250 5100 3850 5100
Wire Wire Line
	3250 5200 3850 5200
Wire Wire Line
	3250 5300 3850 5300
Wire Wire Line
	3250 5400 3850 5400
Wire Wire Line
	3250 5500 3850 5500
Wire Wire Line
	3250 5600 3850 5600
Wire Wire Line
	3250 5700 3850 5700
Wire Wire Line
	3250 5800 3850 5800
$Comp
L power:GND #PWR0215
U 1 1 5DBAAE05
P 3750 6200
F 0 "#PWR0215" H 3750 5950 50  0001 C CNN
F 1 "GND" V 3755 6072 50  0000 R CNN
F 2 "" H 3750 6200 50  0001 C CNN
F 3 "" H 3750 6200 50  0001 C CNN
	1    3750 6200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0216
U 1 1 5DBAAE0B
P 4450 6200
F 0 "#PWR0216" H 4450 5950 50  0001 C CNN
F 1 "GND" V 4455 6072 50  0000 R CNN
F 2 "" H 4450 6200 50  0001 C CNN
F 3 "" H 4450 6200 50  0001 C CNN
	1    4450 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 6200 3750 6200
Wire Wire Line
	4450 6200 4350 6200
Wire Wire Line
	4450 6100 4350 6100
$Comp
L power:VCC #PWR0217
U 1 1 5DBAAE14
P 4450 6100
F 0 "#PWR0217" H 4450 5950 50  0001 C CNN
F 1 "VCC" V 4467 6228 50  0000 L CNN
F 2 "" H 4450 6100 50  0001 C CNN
F 3 "" H 4450 6100 50  0001 C CNN
	1    4450 6100
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0218
U 1 1 5DBAAE1A
P 3750 6100
F 0 "#PWR0218" H 3750 5950 50  0001 C CNN
F 1 "VCC" V 3767 6227 50  0000 L CNN
F 2 "" H 3750 6100 50  0001 C CNN
F 3 "" H 3750 6100 50  0001 C CNN
	1    3750 6100
	0    -1   1    0   
$EndComp
Wire Wire Line
	3850 6100 3750 6100
Text Label 3250 5900 0    50   ~ 0
RegisterClock
Text Label 3250 6000 0    50   ~ 0
FixedRateClock
Wire Wire Line
	3050 5900 3850 5900
Wire Wire Line
	2950 6000 3850 6000
Wire Wire Line
	4350 5400 4500 5400
Wire Wire Line
	4500 6000 4500 5700
Wire Wire Line
	4500 6000 4350 6000
$Comp
L power:GND #PWR0219
U 1 1 5DBAAE3F
P 4600 5700
F 0 "#PWR0219" H 4600 5450 50  0001 C CNN
F 1 "GND" V 4605 5572 50  0000 R CNN
F 2 "" H 4600 5700 50  0001 C CNN
F 3 "" H 4600 5700 50  0001 C CNN
	1    4600 5700
	0    -1   -1   0   
$EndComp
Connection ~ 4500 5700
Wire Wire Line
	4500 5700 4500 5400
Wire Wire Line
	4600 5700 4500 5700
Entry Wire Line
	5550 4200 5650 4300
Entry Wire Line
	5550 4300 5650 4400
Entry Wire Line
	5550 4400 5650 4500
Entry Wire Line
	5550 4500 5650 4600
Entry Wire Line
	5550 4600 5650 4700
Entry Wire Line
	5550 4700 5650 4800
Entry Wire Line
	5550 4800 5650 4900
Entry Wire Line
	5550 4900 5650 5000
Entry Wire Line
	5550 5000 5650 5100
Entry Wire Line
	5550 5100 5650 5200
Entry Wire Line
	5550 5200 5650 5300
Entry Wire Line
	5550 5300 5650 5400
Entry Wire Line
	5550 5400 5650 5500
Entry Wire Line
	5550 5500 5650 5600
Entry Wire Line
	5550 5600 5650 5700
Entry Wire Line
	5550 5700 5650 5800
$Comp
L Connector_Generic:Conn_02x20_Top_Bottom J20
U 1 1 5DBAAE68
P 6450 5200
F 0 "J20" H 6500 6317 50  0000 C CNN
F 1 "Conn_02x20_Top_Bottom" H 6500 6226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 6450 5200 50  0001 C CNN
F 3 "~" H 6450 5200 50  0001 C CNN
	1    6450 5200
	1    0    0    -1  
$EndComp
Text Label 5650 4300 0    50   ~ 0
AddressBus0
Text Label 5650 4400 0    50   ~ 0
AddressBus1
Text Label 5650 4500 0    50   ~ 0
AddressBus2
Text Label 5650 4600 0    50   ~ 0
AddressBus3
Text Label 5650 4700 0    50   ~ 0
AddressBus4
Text Label 5650 4800 0    50   ~ 0
AddressBus5
Text Label 5650 4900 0    50   ~ 0
AddressBus5
Text Label 5650 5000 0    50   ~ 0
AddressBus7
Text Label 5650 5100 0    50   ~ 0
AddressBus8
Text Label 5650 5200 0    50   ~ 0
AddressBus9
Text Label 5650 5300 0    50   ~ 0
AddressBus10
Text Label 5650 5400 0    50   ~ 0
AddressBus11
Text Label 5650 5500 0    50   ~ 0
AddressBus12
Text Label 5650 5600 0    50   ~ 0
AddressBus13
Text Label 5650 5700 0    50   ~ 0
AddressBus14
Text Label 5650 5800 0    50   ~ 0
AddressBus15
Wire Wire Line
	5650 4300 6250 4300
Wire Wire Line
	5650 4400 6250 4400
Wire Wire Line
	5650 4500 6250 4500
Wire Wire Line
	5650 4600 6250 4600
Wire Wire Line
	5650 4700 6250 4700
Wire Wire Line
	5650 4800 6250 4800
Wire Wire Line
	5650 4900 6250 4900
Wire Wire Line
	5650 5000 6250 5000
Wire Wire Line
	5650 5100 6250 5100
Wire Wire Line
	5650 5200 6250 5200
Wire Wire Line
	5650 5300 6250 5300
Wire Wire Line
	5650 5400 6250 5400
Wire Wire Line
	5650 5500 6250 5500
Wire Wire Line
	5650 5600 6250 5600
Wire Wire Line
	5650 5700 6250 5700
Wire Wire Line
	5650 5800 6250 5800
$Comp
L power:GND #PWR0220
U 1 1 5DBAAE8E
P 6150 6200
F 0 "#PWR0220" H 6150 5950 50  0001 C CNN
F 1 "GND" V 6155 6072 50  0000 R CNN
F 2 "" H 6150 6200 50  0001 C CNN
F 3 "" H 6150 6200 50  0001 C CNN
	1    6150 6200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0221
U 1 1 5DBAAE94
P 6850 6200
F 0 "#PWR0221" H 6850 5950 50  0001 C CNN
F 1 "GND" V 6855 6072 50  0000 R CNN
F 2 "" H 6850 6200 50  0001 C CNN
F 3 "" H 6850 6200 50  0001 C CNN
	1    6850 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 6200 6150 6200
Wire Wire Line
	6850 6200 6750 6200
Wire Wire Line
	6850 6100 6750 6100
$Comp
L power:VCC #PWR0222
U 1 1 5DBAAE9D
P 6850 6100
F 0 "#PWR0222" H 6850 5950 50  0001 C CNN
F 1 "VCC" V 6867 6228 50  0000 L CNN
F 2 "" H 6850 6100 50  0001 C CNN
F 3 "" H 6850 6100 50  0001 C CNN
	1    6850 6100
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0223
U 1 1 5DBAAEA3
P 6150 6100
F 0 "#PWR0223" H 6150 5950 50  0001 C CNN
F 1 "VCC" V 6167 6227 50  0000 L CNN
F 2 "" H 6150 6100 50  0001 C CNN
F 3 "" H 6150 6100 50  0001 C CNN
	1    6150 6100
	0    -1   1    0   
$EndComp
Wire Wire Line
	6250 6100 6150 6100
Text Label 5650 5900 0    50   ~ 0
RegisterClock
Text Label 5650 6000 0    50   ~ 0
FixedRateClock
Wire Wire Line
	5450 5900 6250 5900
Wire Wire Line
	5350 6000 6250 6000
Wire Wire Line
	6750 5400 6900 5400
Wire Wire Line
	6900 6000 6900 5700
Wire Wire Line
	6900 6000 6750 6000
$Comp
L power:GND #PWR0224
U 1 1 5DBAAEC5
P 7000 5700
F 0 "#PWR0224" H 7000 5450 50  0001 C CNN
F 1 "GND" V 7005 5572 50  0000 R CNN
F 2 "" H 7000 5700 50  0001 C CNN
F 3 "" H 7000 5700 50  0001 C CNN
	1    7000 5700
	0    -1   -1   0   
$EndComp
Connection ~ 6900 5700
Wire Wire Line
	6900 5700 6900 5400
Wire Wire Line
	7000 5700 6900 5700
Entry Wire Line
	8000 4200 8100 4300
Entry Wire Line
	8000 4300 8100 4400
Entry Wire Line
	8000 4400 8100 4500
Entry Wire Line
	8000 4500 8100 4600
Entry Wire Line
	8000 4600 8100 4700
Entry Wire Line
	8000 4700 8100 4800
Entry Wire Line
	8000 4800 8100 4900
Entry Wire Line
	8000 4900 8100 5000
Entry Wire Line
	8000 5000 8100 5100
Entry Wire Line
	8000 5100 8100 5200
Entry Wire Line
	8000 5200 8100 5300
Entry Wire Line
	8000 5300 8100 5400
Entry Wire Line
	8000 5400 8100 5500
Entry Wire Line
	8000 5500 8100 5600
Entry Wire Line
	8000 5600 8100 5700
Entry Wire Line
	8000 5700 8100 5800
$Comp
L Connector_Generic:Conn_02x20_Top_Bottom J22
U 1 1 5DBAAEF2
P 8900 5200
F 0 "J22" H 8950 6317 50  0000 C CNN
F 1 "Conn_02x20_Top_Bottom" H 8950 6226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 8900 5200 50  0001 C CNN
F 3 "~" H 8900 5200 50  0001 C CNN
	1    8900 5200
	1    0    0    -1  
$EndComp
Text Label 8100 4300 0    50   ~ 0
AddressBus0
Text Label 8100 4400 0    50   ~ 0
AddressBus1
Text Label 8100 4500 0    50   ~ 0
AddressBus2
Text Label 8100 4600 0    50   ~ 0
AddressBus3
Text Label 8100 4700 0    50   ~ 0
AddressBus4
Text Label 8100 4800 0    50   ~ 0
AddressBus5
Text Label 8100 4900 0    50   ~ 0
AddressBus5
Text Label 8100 5000 0    50   ~ 0
AddressBus7
Text Label 8100 5100 0    50   ~ 0
AddressBus8
Text Label 8100 5200 0    50   ~ 0
AddressBus9
Text Label 8100 5300 0    50   ~ 0
AddressBus10
Text Label 8100 5400 0    50   ~ 0
AddressBus11
Text Label 8100 5500 0    50   ~ 0
AddressBus12
Text Label 8100 5600 0    50   ~ 0
AddressBus13
Text Label 8100 5700 0    50   ~ 0
AddressBus14
Text Label 8100 5800 0    50   ~ 0
AddressBus15
Wire Wire Line
	8100 4300 8700 4300
Wire Wire Line
	8100 4400 8700 4400
Wire Wire Line
	8100 4500 8700 4500
Wire Wire Line
	8100 4600 8700 4600
Wire Wire Line
	8100 4700 8700 4700
Wire Wire Line
	8100 4800 8700 4800
Wire Wire Line
	8100 4900 8700 4900
Wire Wire Line
	8100 5000 8700 5000
Wire Wire Line
	8100 5100 8700 5100
Wire Wire Line
	8100 5200 8700 5200
Wire Wire Line
	8100 5300 8700 5300
Wire Wire Line
	8100 5400 8700 5400
Wire Wire Line
	8100 5500 8700 5500
Wire Wire Line
	8100 5600 8700 5600
Wire Wire Line
	8100 5700 8700 5700
Wire Wire Line
	8100 5800 8700 5800
$Comp
L power:GND #PWR0225
U 1 1 5DBAAF18
P 8600 6200
F 0 "#PWR0225" H 8600 5950 50  0001 C CNN
F 1 "GND" V 8605 6072 50  0000 R CNN
F 2 "" H 8600 6200 50  0001 C CNN
F 3 "" H 8600 6200 50  0001 C CNN
	1    8600 6200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0226
U 1 1 5DBAAF1E
P 9300 6200
F 0 "#PWR0226" H 9300 5950 50  0001 C CNN
F 1 "GND" V 9305 6072 50  0000 R CNN
F 2 "" H 9300 6200 50  0001 C CNN
F 3 "" H 9300 6200 50  0001 C CNN
	1    9300 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 6200 8600 6200
Wire Wire Line
	9300 6200 9200 6200
Wire Wire Line
	9300 6100 9200 6100
$Comp
L power:VCC #PWR0227
U 1 1 5DBAAF27
P 9300 6100
F 0 "#PWR0227" H 9300 5950 50  0001 C CNN
F 1 "VCC" V 9317 6228 50  0000 L CNN
F 2 "" H 9300 6100 50  0001 C CNN
F 3 "" H 9300 6100 50  0001 C CNN
	1    9300 6100
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0228
U 1 1 5DBAAF2D
P 8600 6100
F 0 "#PWR0228" H 8600 5950 50  0001 C CNN
F 1 "VCC" V 8617 6227 50  0000 L CNN
F 2 "" H 8600 6100 50  0001 C CNN
F 3 "" H 8600 6100 50  0001 C CNN
	1    8600 6100
	0    -1   1    0   
$EndComp
Wire Wire Line
	8700 6100 8600 6100
Text Label 8100 5900 0    50   ~ 0
RegisterClock
Text Label 8100 6000 0    50   ~ 0
FixedRateClock
Wire Wire Line
	7900 5900 8700 5900
Wire Wire Line
	7800 6000 8700 6000
Wire Wire Line
	9200 5400 9350 5400
Wire Wire Line
	9350 6000 9350 5700
Wire Wire Line
	9350 6000 9200 6000
$Comp
L power:GND #PWR0229
U 1 1 5DBAAF4F
P 9450 5700
F 0 "#PWR0229" H 9450 5450 50  0001 C CNN
F 1 "GND" V 9455 5572 50  0000 R CNN
F 2 "" H 9450 5700 50  0001 C CNN
F 3 "" H 9450 5700 50  0001 C CNN
	1    9450 5700
	0    -1   -1   0   
$EndComp
Connection ~ 9350 5700
Wire Wire Line
	9350 5700 9350 5400
Wire Wire Line
	9450 5700 9350 5700
Wire Wire Line
	2950 1600 2950 3750
Connection ~ 2950 3750
Wire Wire Line
	2950 3750 2950 6000
Wire Wire Line
	3050 1450 3050 3650
Connection ~ 3050 3650
Wire Wire Line
	3050 3650 3050 5900
Wire Wire Line
	4950 2850 4350 2850
Connection ~ 5050 700 
Wire Wire Line
	1600 1000 5250 1000
Wire Wire Line
	5150 850  10000 850 
Wire Bus Line
	4950 1150 9800 1150
Wire Wire Line
	1600 850  5150 850 
Wire Wire Line
	4350 3050 5250 3050
Connection ~ 5250 1000
Wire Wire Line
	5450 1450 5450 3650
Connection ~ 5450 3650
Wire Wire Line
	5350 1600 5350 3750
Wire Wire Line
	5450 3650 5450 5900
Wire Wire Line
	5350 3750 6250 3750
Connection ~ 5350 3750
Wire Wire Line
	5350 3750 5350 6000
Wire Wire Line
	7900 3650 7900 5900
Connection ~ 7900 3650
Wire Wire Line
	8700 3750 7800 3750
Wire Wire Line
	7800 1600 7800 3750
Connection ~ 7800 3750
Wire Wire Line
	7800 3750 7800 6000
Wire Wire Line
	5250 1000 10100 1000
Wire Bus Line
	5050 700  7450 700 
Entry Wire Line
	7350 1950 7250 2050
Entry Wire Line
	7350 2050 7250 2150
Entry Wire Line
	7350 2150 7250 2250
Entry Wire Line
	7350 2250 7250 2350
Entry Wire Line
	7350 2350 7250 2450
Entry Wire Line
	7350 2450 7250 2550
Entry Wire Line
	7350 2550 7250 2650
Entry Wire Line
	7350 2650 7250 2750
Wire Wire Line
	6750 2050 7250 2050
Wire Wire Line
	7250 2150 6750 2150
Wire Wire Line
	6750 2250 7250 2250
Wire Wire Line
	7250 2350 6750 2350
Wire Wire Line
	6750 2450 7250 2450
Wire Wire Line
	7250 2550 6750 2550
Wire Wire Line
	6750 2650 7250 2650
Wire Wire Line
	7250 2750 6750 2750
Text Label 6800 2050 0    50   ~ 0
DataBus0
Text Label 6800 2150 0    50   ~ 0
DataBus1
Text Label 6800 2250 0    50   ~ 0
DataBus2
Text Label 6800 2350 0    50   ~ 0
DataBus3
Text Label 6800 2450 0    50   ~ 0
DataBus4
Text Label 6800 2550 0    50   ~ 0
DataBus5
Text Label 6800 2650 0    50   ~ 0
DataBus6
Text Label 6800 2750 0    50   ~ 0
DataBus7
Text Label 6800 2950 0    50   ~ 0
~MI
Wire Wire Line
	7550 2950 6750 2950
Text Label 6800 3050 0    50   ~ 0
~MO
Entry Wire Line
	7350 2850 7450 2750
Text Label 6800 2850 0    50   ~ 0
DeviceSelect3
Wire Wire Line
	7350 2850 6750 2850
Wire Wire Line
	6750 3050 7650 3050
Entry Wire Line
	9800 1950 9700 2050
Entry Wire Line
	9800 2050 9700 2150
Entry Wire Line
	9800 2150 9700 2250
Entry Wire Line
	9800 2250 9700 2350
Entry Wire Line
	9800 2350 9700 2450
Entry Wire Line
	9800 2450 9700 2550
Entry Wire Line
	9800 2550 9700 2650
Entry Wire Line
	9800 2650 9700 2750
Wire Wire Line
	9200 2050 9700 2050
Wire Wire Line
	9700 2150 9200 2150
Wire Wire Line
	9200 2250 9700 2250
Wire Wire Line
	9700 2350 9200 2350
Wire Wire Line
	9200 2450 9700 2450
Wire Wire Line
	9700 2550 9200 2550
Wire Wire Line
	9200 2650 9700 2650
Wire Wire Line
	9700 2750 9200 2750
Text Label 9250 2050 0    50   ~ 0
DataBus0
Text Label 9250 2150 0    50   ~ 0
DataBus1
Text Label 9250 2250 0    50   ~ 0
DataBus2
Text Label 9250 2350 0    50   ~ 0
DataBus3
Text Label 9250 2450 0    50   ~ 0
DataBus4
Text Label 9250 2550 0    50   ~ 0
DataBus5
Text Label 9250 2650 0    50   ~ 0
DataBus6
Text Label 9250 2750 0    50   ~ 0
DataBus7
Text Label 9250 2950 0    50   ~ 0
~MI
Wire Wire Line
	10000 2950 9200 2950
Text Label 9250 3050 0    50   ~ 0
~MO
Entry Wire Line
	9800 2850 9900 2750
Text Label 9250 2850 0    50   ~ 0
DeviceSelect4
Wire Wire Line
	9800 2850 9200 2850
Wire Wire Line
	9200 3050 10100 3050
Connection ~ 7450 700 
Wire Bus Line
	7450 700  9900 700 
Entry Wire Line
	4950 4200 4850 4300
Entry Wire Line
	4950 4300 4850 4400
Entry Wire Line
	4950 4400 4850 4500
Entry Wire Line
	4950 4500 4850 4600
Entry Wire Line
	4950 4600 4850 4700
Entry Wire Line
	4950 4700 4850 4800
Entry Wire Line
	4950 4800 4850 4900
Entry Wire Line
	4950 4900 4850 5000
Wire Wire Line
	4350 4300 4850 4300
Wire Wire Line
	4850 4400 4350 4400
Wire Wire Line
	4350 4500 4850 4500
Wire Wire Line
	4850 4600 4350 4600
Wire Wire Line
	4350 4700 4850 4700
Wire Wire Line
	4850 4800 4350 4800
Wire Wire Line
	4350 4900 4850 4900
Wire Wire Line
	4850 5000 4350 5000
Text Label 4400 4300 0    50   ~ 0
DataBus0
Text Label 4400 4400 0    50   ~ 0
DataBus1
Text Label 4400 4500 0    50   ~ 0
DataBus2
Text Label 4400 4600 0    50   ~ 0
DataBus3
Text Label 4400 4700 0    50   ~ 0
DataBus4
Text Label 4400 4800 0    50   ~ 0
DataBus5
Text Label 4400 4900 0    50   ~ 0
DataBus6
Text Label 4400 5000 0    50   ~ 0
DataBus7
Text Label 4400 5200 0    50   ~ 0
~MI
Wire Wire Line
	5150 5200 4350 5200
Text Label 4400 5300 0    50   ~ 0
~MO
Entry Wire Line
	4950 5100 5050 5000
Text Label 4400 5100 0    50   ~ 0
DeviceSelect5
Wire Wire Line
	4950 5100 4350 5100
Wire Wire Line
	4350 5300 5250 5300
Entry Wire Line
	7350 4200 7250 4300
Entry Wire Line
	7350 4300 7250 4400
Entry Wire Line
	7350 4400 7250 4500
Entry Wire Line
	7350 4500 7250 4600
Entry Wire Line
	7350 4600 7250 4700
Entry Wire Line
	7350 4700 7250 4800
Entry Wire Line
	7350 4800 7250 4900
Entry Wire Line
	7350 4900 7250 5000
Wire Wire Line
	6750 4300 7250 4300
Wire Wire Line
	7250 4400 6750 4400
Wire Wire Line
	6750 4500 7250 4500
Wire Wire Line
	7250 4600 6750 4600
Wire Wire Line
	6750 4700 7250 4700
Wire Wire Line
	7250 4800 6750 4800
Wire Wire Line
	6750 4900 7250 4900
Wire Wire Line
	7250 5000 6750 5000
Text Label 6800 4300 0    50   ~ 0
DataBus0
Text Label 6800 4400 0    50   ~ 0
DataBus1
Text Label 6800 4500 0    50   ~ 0
DataBus2
Text Label 6800 4600 0    50   ~ 0
DataBus3
Text Label 6800 4700 0    50   ~ 0
DataBus4
Text Label 6800 4800 0    50   ~ 0
DataBus5
Text Label 6800 4900 0    50   ~ 0
DataBus6
Text Label 6800 5000 0    50   ~ 0
DataBus7
Text Label 6800 5200 0    50   ~ 0
~MI
Wire Wire Line
	7550 5200 6750 5200
Text Label 6800 5300 0    50   ~ 0
~MO
Entry Wire Line
	7350 5100 7450 5000
Text Label 6800 5100 0    50   ~ 0
DeviceSelect6
Wire Wire Line
	7350 5100 6750 5100
Wire Wire Line
	6750 5300 7650 5300
Entry Wire Line
	9800 4200 9700 4300
Entry Wire Line
	9800 4300 9700 4400
Entry Wire Line
	9800 4400 9700 4500
Entry Wire Line
	9800 4500 9700 4600
Entry Wire Line
	9800 4600 9700 4700
Entry Wire Line
	9800 4700 9700 4800
Entry Wire Line
	9800 4800 9700 4900
Entry Wire Line
	9800 4900 9700 5000
Wire Wire Line
	9200 4300 9700 4300
Wire Wire Line
	9700 4400 9200 4400
Wire Wire Line
	9200 4500 9700 4500
Wire Wire Line
	9700 4600 9200 4600
Wire Wire Line
	9200 4700 9700 4700
Wire Wire Line
	9700 4800 9200 4800
Wire Wire Line
	9200 4900 9700 4900
Wire Wire Line
	9700 5000 9200 5000
Text Label 9250 4300 0    50   ~ 0
DataBus0
Text Label 9250 4400 0    50   ~ 0
DataBus1
Text Label 9250 4500 0    50   ~ 0
DataBus2
Text Label 9250 4600 0    50   ~ 0
DataBus3
Text Label 9250 4700 0    50   ~ 0
DataBus4
Text Label 9250 4800 0    50   ~ 0
DataBus5
Text Label 9250 4900 0    50   ~ 0
DataBus6
Text Label 9250 5000 0    50   ~ 0
DataBus7
Text Label 9250 5200 0    50   ~ 0
~MI
Wire Wire Line
	10000 5200 9200 5200
Text Label 9250 5300 0    50   ~ 0
~MO
Entry Wire Line
	9800 5100 9900 5000
Text Label 9250 5100 0    50   ~ 0
DeviceSelect7
Wire Wire Line
	9800 5100 9200 5100
Wire Wire Line
	9200 5300 10100 5300
Wire Bus Line
	9900 700  9900 5000
Wire Bus Line
	7450 700  7450 5000
Wire Bus Line
	5050 700  5050 5000
Wire Wire Line
	5150 850  5150 2950
Connection ~ 5150 2950
Wire Wire Line
	5150 2950 5150 5200
Wire Wire Line
	5250 1000 5250 3050
Connection ~ 5250 3050
Wire Wire Line
	5250 3050 5250 5300
Wire Wire Line
	7550 850  7550 2950
Connection ~ 7550 2950
Wire Wire Line
	7550 2950 7550 5200
Wire Wire Line
	7650 1000 7650 3050
Connection ~ 7650 3050
Wire Wire Line
	7650 3050 7650 5300
Wire Wire Line
	10000 850  10000 2950
Connection ~ 10000 2950
Wire Wire Line
	10000 2950 10000 5200
Wire Wire Line
	10100 1000 10100 3050
Wire Bus Line
	4950 1150 4950 4900
Wire Bus Line
	7350 1150 7350 4900
Wire Bus Line
	9800 1150 9800 4900
Wire Bus Line
	8000 1300 8000 5700
Wire Bus Line
	5550 1300 5550 5700
Wire Bus Line
	3150 1300 3150 5700
Connection ~ 10100 3050
Wire Wire Line
	10100 3050 10100 5300
$EndSCHEMATC
