EESchema Schematic File Version 4
LIBS:ArduinoSerialCard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Arduino Serial Card"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Expansion card for TurtleTTL which provides a USB serial interface."
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5D7E59B1
P 8400 2700
F 0 "A1" H 7800 3800 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 7850 3700 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 8550 1750 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 8400 1700 50  0001 C CNN
	1    8400 2700
	1    0    0    -1  
$EndComp
NoConn ~ 8500 1700
NoConn ~ 8600 1700
NoConn ~ 8900 2500
NoConn ~ 7900 2100
NoConn ~ 7900 2200
NoConn ~ 8900 2800
NoConn ~ 8900 2900
NoConn ~ 8900 3000
NoConn ~ 8900 3100
NoConn ~ 8900 3200
NoConn ~ 8900 3300
NoConn ~ 8900 3400
NoConn ~ 8900 2100
NoConn ~ 8900 2200
Entry Wire Line
	7200 2500 7100 2600
Entry Wire Line
	7200 2600 7100 2700
Entry Wire Line
	7200 2700 7100 2800
Entry Wire Line
	7200 2800 7100 2900
Entry Wire Line
	7200 2900 7100 3000
Entry Wire Line
	7200 3000 7100 3100
Entry Wire Line
	7200 3100 7100 3200
Entry Wire Line
	7200 3200 7100 3300
Wire Wire Line
	7200 2500 7900 2500
Wire Wire Line
	7900 2600 7200 2600
Wire Wire Line
	7200 2700 7900 2700
Wire Wire Line
	7900 2800 7200 2800
Wire Wire Line
	7200 2900 7900 2900
Wire Wire Line
	7900 3000 7200 3000
Wire Wire Line
	7200 3100 7900 3100
Wire Wire Line
	7900 3200 7200 3200
Text Label 7250 2500 0    50   ~ 0
DataBus7
Text Label 7250 2600 0    50   ~ 0
DataBus6
Text Label 7250 2700 0    50   ~ 0
DataBus5
Text Label 7250 2800 0    50   ~ 0
DataBus4
Text Label 7250 2900 0    50   ~ 0
DataBus3
Text Label 7250 3000 0    50   ~ 0
DataBus2
Text Label 7250 3100 0    50   ~ 0
DataBus1
Text Label 7250 3200 0    50   ~ 0
DataBus0
Entry Wire Line
	4850 1950 4950 2050
Entry Wire Line
	4850 2050 4950 2150
Entry Wire Line
	4850 2150 4950 2250
Entry Wire Line
	4850 2250 4950 2350
Entry Wire Line
	4850 2350 4950 2450
Entry Wire Line
	4850 2450 4950 2550
Entry Wire Line
	4850 2550 4950 2650
Entry Wire Line
	4850 2650 4950 2750
Wire Wire Line
	4350 1950 4850 1950
Wire Wire Line
	4850 2050 4350 2050
Wire Wire Line
	4350 2150 4850 2150
Wire Wire Line
	4850 2250 4350 2250
Wire Wire Line
	4350 2350 4850 2350
Wire Wire Line
	4850 2450 4350 2450
Wire Wire Line
	4350 2550 4850 2550
Wire Wire Line
	4850 2650 4350 2650
Text Label 4400 1950 0    50   ~ 0
DataBus0
Text Label 4400 2050 0    50   ~ 0
DataBus1
Text Label 4400 2150 0    50   ~ 0
DataBus2
Text Label 4400 2250 0    50   ~ 0
DataBus3
Text Label 4400 2350 0    50   ~ 0
DataBus4
Text Label 4400 2450 0    50   ~ 0
DataBus5
Text Label 4400 2550 0    50   ~ 0
DataBus6
Text Label 4400 2650 0    50   ~ 0
DataBus7
Wire Wire Line
	4350 3150 4450 3150
Wire Wire Line
	4450 3150 4450 3250
Wire Wire Line
	4450 3850 4350 3850
Wire Wire Line
	4350 3750 4450 3750
Connection ~ 4450 3750
Wire Wire Line
	4450 3750 4450 3850
Wire Wire Line
	4350 3650 4450 3650
Connection ~ 4450 3650
Wire Wire Line
	4450 3650 4450 3750
Wire Wire Line
	4350 3550 4450 3550
Connection ~ 4450 3550
Wire Wire Line
	4450 3550 4450 3650
Wire Wire Line
	4350 3450 4450 3450
Connection ~ 4450 3450
Wire Wire Line
	4450 3450 4450 3550
Wire Wire Line
	4350 3350 4450 3350
Connection ~ 4450 3350
Wire Wire Line
	4450 3350 4450 3450
Wire Wire Line
	4350 3250 4450 3250
Connection ~ 4450 3250
Wire Wire Line
	4450 3250 4450 3350
Wire Wire Line
	4450 3450 4700 3450
Wire Wire Line
	4700 3450 4700 3550
Wire Wire Line
	4350 3050 4450 3050
Wire Wire Line
	4450 3050 4450 3150
Connection ~ 4450 3150
Text Label 4400 2750 0    50   ~ 0
~PI
Text Label 4400 2850 0    50   ~ 0
~PO
Wire Wire Line
	4350 2950 4450 2950
Wire Wire Line
	4450 2950 4450 3050
Connection ~ 4450 3050
Wire Wire Line
	4350 2850 5350 2850
Wire Wire Line
	5350 2300 7900 2300
Wire Wire Line
	5450 2400 7900 2400
Wire Bus Line
	4950 3300 7100 3300
NoConn ~ 3850 3050
NoConn ~ 3850 2950
NoConn ~ 3850 2850
NoConn ~ 3850 2750
NoConn ~ 3850 2650
NoConn ~ 3850 2550
NoConn ~ 3850 2450
NoConn ~ 3850 2350
NoConn ~ 3850 2250
NoConn ~ 3850 3150
NoConn ~ 3850 3250
NoConn ~ 3850 3350
NoConn ~ 3850 3450
NoConn ~ 3850 3550
NoConn ~ 3850 3650
NoConn ~ 3850 3850
Wire Wire Line
	3500 1950 3500 2050
$Comp
L power:GND #PWR0102
U 1 1 5DBEBC67
P 3500 1550
F 0 "#PWR0102" H 3500 1300 50  0001 C CNN
F 1 "GND" H 3505 1377 50  0000 C CNN
F 2 "" H 3500 1550 50  0001 C CNN
F 3 "" H 3500 1550 50  0001 C CNN
	1    3500 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DBEC799
P 4700 3550
F 0 "#PWR0103" H 4700 3300 50  0001 C CNN
F 1 "GND" H 4705 3377 50  0000 C CNN
F 2 "" H 4700 3550 50  0001 C CNN
F 3 "" H 4700 3550 50  0001 C CNN
	1    4700 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DBEE32D
P 8450 3900
F 0 "#PWR0104" H 8450 3650 50  0001 C CNN
F 1 "GND" H 8455 3727 50  0000 C CNN
F 2 "" H 8450 3900 50  0001 C CNN
F 3 "" H 8450 3900 50  0001 C CNN
	1    8450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3700 8400 3750
Wire Wire Line
	8500 3750 8500 3700
$Comp
L power:VCC #PWR0105
U 1 1 5DBF6341
P 8300 1600
F 0 "#PWR0105" H 8300 1450 50  0001 C CNN
F 1 "VCC" H 8317 1773 50  0000 C CNN
F 2 "" H 8300 1600 50  0001 C CNN
F 3 "" H 8300 1600 50  0001 C CNN
	1    8300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1950 3750 1950
Wire Wire Line
	8300 1600 8300 1700
Wire Wire Line
	8400 3750 8450 3750
Connection ~ 8450 3750
Wire Wire Line
	8450 3750 8500 3750
Text Label 7250 3300 0    50   ~ 0
AddressBus0
Text Label 3250 2150 0    50   ~ 0
AddressBus0
NoConn ~ 3850 3750
NoConn ~ 8900 2700
Wire Wire Line
	3150 4250 3150 2150
Wire Wire Line
	7200 3300 7900 3300
Wire Wire Line
	7200 3300 7200 4250
Wire Wire Line
	3150 4250 7200 4250
NoConn ~ 7900 3400
Wire Wire Line
	5450 2750 5450 2400
Wire Wire Line
	5350 2300 5350 2850
Wire Wire Line
	8450 3750 8450 3900
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5DBFFCF0
P 3200 1950
F 0 "#FLG0102" H 3200 2025 50  0001 C CNN
F 1 "PWR_FLAG" H 3200 2123 50  0000 C CNN
F 2 "" H 3200 1950 50  0001 C CNN
F 3 "~" H 3200 1950 50  0001 C CNN
	1    3200 1950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 5DBEB658
P 3500 1950
F 0 "#PWR0101" H 3500 1800 50  0001 C CNN
F 1 "VCC" H 3517 2123 50  0000 C CNN
F 2 "" H 3500 1950 50  0001 C CNN
F 3 "" H 3500 1950 50  0001 C CNN
	1    3500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2050 3200 2050
Wire Wire Line
	3200 2050 3200 1950
Connection ~ 3500 2050
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DCE3DA4
P 3200 1550
F 0 "#FLG0101" H 3200 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 3200 1723 50  0000 C CNN
F 2 "" H 3200 1550 50  0001 C CNN
F 3 "~" H 3200 1550 50  0001 C CNN
	1    3200 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1550 3200 1650
Wire Wire Line
	3200 1650 3500 1650
Wire Wire Line
	3500 1650 3500 1550
Wire Wire Line
	3500 1650 3750 1650
Wire Wire Line
	3750 1650 3750 1950
Connection ~ 3500 1650
Wire Wire Line
	3850 2050 3500 2050
Wire Wire Line
	3150 2150 3850 2150
$Comp
L Connector_Generic:Conn_02x20_Top_Bottom J1
U 1 1 5DA1F396
P 4050 2850
F 0 "J1" H 4100 3967 50  0000 C CNN
F 1 "Conn" H 4100 3876 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 4050 2850 50  0001 C CNN
F 3 "~" H 4050 2850 50  0001 C CNN
	1    4050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2750 5450 2750
Wire Bus Line
	7100 2600 7100 3300
Wire Bus Line
	4950 2050 4950 3300
$EndSCHEMATC
