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
NoConn ~ 7950 2700
NoConn ~ 8050 2700
NoConn ~ 7350 3100
NoConn ~ 7350 3200
NoConn ~ 8350 3100
NoConn ~ 8350 3200
$Comp
L power:GND #PWR0104
U 1 1 5DBEE32D
P 7900 4850
F 0 "#PWR0104" H 7900 4600 50  0001 C CNN
F 1 "GND" H 7905 4677 50  0000 C CNN
F 2 "" H 7900 4850 50  0001 C CNN
F 3 "" H 7900 4850 50  0001 C CNN
	1    7900 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4700 7850 4750
Wire Wire Line
	7950 4750 7950 4700
$Comp
L power:VCC #PWR0105
U 1 1 5DBF6341
P 7750 2600
F 0 "#PWR0105" H 7750 2450 50  0001 C CNN
F 1 "VCC" H 7767 2773 50  0000 C CNN
F 2 "" H 7750 2600 50  0001 C CNN
F 3 "" H 7750 2600 50  0001 C CNN
	1    7750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4750 7900 4750
Wire Wire Line
	7900 4750 7900 4850
Connection ~ 7900 4750
Wire Wire Line
	7900 4750 7950 4750
Wire Wire Line
	6150 2200 7150 2200
Wire Wire Line
	7250 2100 6150 2100
Wire Wire Line
	7750 2600 7750 2700
$Comp
L power:VCC #PWR0107
U 1 1 5DD4315F
P 1850 6900
F 0 "#PWR0107" H 1850 6750 50  0001 C CNN
F 1 "VCC" H 1867 7073 50  0000 C CNN
F 2 "" H 1850 6900 50  0001 C CNN
F 3 "" H 1850 6900 50  0001 C CNN
	1    1850 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5DD43353
P 1850 7400
F 0 "#PWR0108" H 1850 7150 50  0001 C CNN
F 1 "GND" H 1855 7227 50  0000 C CNN
F 2 "" H 1850 7400 50  0001 C CNN
F 3 "" H 1850 7400 50  0001 C CNN
	1    1850 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5DD4402C
P 1850 7150
F 0 "C1" H 1965 7196 50  0000 L CNN
F 1 "100nF" H 1965 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1888 7000 50  0001 C CNN
F 3 "~" H 1850 7150 50  0001 C CNN
	1    1850 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6900 1850 7000
Wire Wire Line
	1850 7300 1850 7400
Wire Wire Line
	6250 2000 6150 2000
Wire Wire Line
	4650 2000 4750 2000
Text Label 2100 4100 0    50   ~ 0
AddressBus1
$Comp
L power:GND #PWR0102
U 1 1 5DBEBC67
P 2550 4800
F 0 "#PWR0102" H 2550 4550 50  0001 C CNN
F 1 "GND" H 2555 4627 50  0000 C CNN
F 2 "" H 2550 4800 50  0001 C CNN
F 3 "" H 2550 4800 50  0001 C CNN
	1    2550 4800
	-1   0    0    -1  
$EndComp
Text Label 2100 4200 0    50   ~ 0
AddressBus0
Connection ~ 3250 3300
Wire Wire Line
	3250 3400 3250 3300
Wire Wire Line
	3150 3400 3250 3400
Text Label 3200 3500 0    50   ~ 0
~PO
Text Label 3200 3600 0    50   ~ 0
~PI
Connection ~ 3250 3200
Wire Wire Line
	3250 3300 3250 3200
Wire Wire Line
	3150 3300 3250 3300
Wire Wire Line
	3250 2900 3500 2900
Wire Wire Line
	3250 3100 3250 3000
Connection ~ 3250 3100
Wire Wire Line
	3150 3100 3250 3100
Wire Wire Line
	3250 3000 3250 2900
Connection ~ 3250 3000
Wire Wire Line
	3150 3000 3250 3000
Wire Wire Line
	3250 2900 3250 2800
Connection ~ 3250 2900
Wire Wire Line
	3150 2900 3250 2900
Wire Wire Line
	3250 2800 3250 2700
Connection ~ 3250 2800
Wire Wire Line
	3150 2800 3250 2800
Wire Wire Line
	3250 2700 3250 2600
Connection ~ 3250 2700
Wire Wire Line
	3150 2700 3250 2700
Wire Wire Line
	3250 2600 3250 2500
Connection ~ 3250 2600
Wire Wire Line
	3150 2600 3250 2600
Wire Wire Line
	3250 2500 3150 2500
Wire Wire Line
	3250 3200 3250 3100
Wire Wire Line
	3150 3200 3250 3200
Text Label 3200 3700 0    50   ~ 0
DataBus7
Text Label 3200 3800 0    50   ~ 0
DataBus6
Text Label 3200 3900 0    50   ~ 0
DataBus5
Text Label 3200 4000 0    50   ~ 0
DataBus4
Text Label 3200 4100 0    50   ~ 0
DataBus3
Text Label 3200 4200 0    50   ~ 0
DataBus2
Text Label 3200 4300 0    50   ~ 0
DataBus1
Text Label 3200 4400 0    50   ~ 0
DataBus0
$Comp
L Connector_Generic:Conn_02x20_Top_Bottom J1
U 1 1 5DA1F396
P 2850 3500
F 0 "J1" H 2900 4617 50  0000 C CNN
F 1 "Conn" H 2900 4526 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 2850 3500 50  0001 C CNN
F 3 "~" H 2850 3500 50  0001 C CNN
	1    2850 3500
	1    0    0    1   
$EndComp
Wire Wire Line
	3150 3700 4750 3700
Wire Wire Line
	3150 3800 4750 3800
Wire Wire Line
	3150 3900 4750 3900
Wire Wire Line
	3150 4000 4750 4000
Wire Wire Line
	3150 4100 4750 4100
Wire Wire Line
	3150 4200 4750 4200
Wire Wire Line
	3150 4300 4750 4300
Wire Wire Line
	3150 4400 4750 4400
Wire Wire Line
	2000 4100 2650 4100
Wire Wire Line
	2000 4200 2650 4200
Wire Wire Line
	3150 3600 3600 3600
Wire Wire Line
	3600 3600 3600 2100
Wire Wire Line
	3600 2100 4750 2100
Wire Wire Line
	4750 2200 3700 2200
Wire Wire Line
	3700 2200 3700 3500
Wire Wire Line
	3700 3500 3150 3500
$Comp
L power:GND #PWR0109
U 1 1 5DDA697E
P 5450 4800
F 0 "#PWR0109" H 5450 4550 50  0001 C CNN
F 1 "GND" H 5455 4627 50  0000 C CNN
F 2 "" H 5450 4800 50  0001 C CNN
F 3 "" H 5450 4800 50  0001 C CNN
	1    5450 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 4700 5450 4800
$Comp
L power:VCC #PWR0110
U 1 1 5DDA92B0
P 5450 1600
F 0 "#PWR0110" H 5450 1450 50  0001 C CNN
F 1 "VCC" H 5467 1773 50  0000 C CNN
F 2 "" H 5450 1600 50  0001 C CNN
F 3 "" H 5450 1600 50  0001 C CNN
	1    5450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1600 5450 1700
$Comp
L power:GND #PWR0111
U 1 1 5DDAC4BA
P 3500 3000
F 0 "#PWR0111" H 3500 2750 50  0001 C CNN
F 1 "GND" H 3505 2827 50  0000 C CNN
F 2 "" H 3500 3000 50  0001 C CNN
F 3 "" H 3500 3000 50  0001 C CNN
	1    3500 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 2900 3500 3000
$Comp
L power:VCC #PWR0101
U 1 1 5DBEB658
P 1950 4800
F 0 "#PWR0101" H 1950 4650 50  0001 C CNN
F 1 "VCC" H 1967 4973 50  0000 C CNN
F 2 "" H 1950 4800 50  0001 C CNN
F 3 "" H 1950 4800 50  0001 C CNN
	1    1950 4800
	1    0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DDB6840
P 1650 4800
F 0 "#FLG0101" H 1650 4875 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 4973 50  0000 C CNN
F 2 "" H 1650 4800 50  0001 C CNN
F 3 "~" H 1650 4800 50  0001 C CNN
	1    1650 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 4800 1650 4700
Wire Wire Line
	1650 4700 1800 4700
Wire Wire Line
	1950 4700 1950 4800
Wire Wire Line
	1800 4300 1800 4700
Connection ~ 1800 4700
Wire Wire Line
	1800 4700 1950 4700
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5DDBE497
P 2250 4800
F 0 "#FLG0102" H 2250 4875 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 4973 50  0000 C CNN
F 2 "" H 2250 4800 50  0001 C CNN
F 3 "~" H 2250 4800 50  0001 C CNN
	1    2250 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 4300 2650 4300
Wire Wire Line
	2550 4800 2550 4700
Wire Wire Line
	2550 4700 2400 4700
Wire Wire Line
	2250 4700 2250 4800
Wire Wire Line
	2400 4400 2400 4700
Wire Wire Line
	2400 4400 2650 4400
Connection ~ 2400 4700
Wire Wire Line
	2400 4700 2250 4700
$Comp
L power:GND #PWR0103
U 1 1 5DDDA1E1
P 6250 2000
F 0 "#PWR0103" H 6250 1750 50  0001 C CNN
F 1 "GND" V 6255 1827 50  0000 C CNN
F 2 "" H 6250 2000 50  0001 C CNN
F 3 "" H 6250 2000 50  0001 C CNN
	1    6250 2000
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DDDA8EC
P 4650 2000
F 0 "#PWR0106" H 4650 1750 50  0001 C CNN
F 1 "GND" V 4655 1827 50  0000 C CNN
F 2 "" H 4650 2000 50  0001 C CNN
F 3 "" H 4650 2000 50  0001 C CNN
	1    4650 2000
	0    1    1    0   
$EndComp
$Comp
L Memory_RAM:IDT7134 U1
U 1 1 5DCE774F
P 5450 3100
F 0 "U1" H 5450 3150 50  0000 C CNN
F 1 "IDT7134" H 5450 3050 50  0000 C CNN
F 2 "Package_DIP:DIP-48_W15.24mm" H 5450 3050 50  0001 C CNN
F 3 "" H 5450 3050 50  0001 C CNN
	1    5450 3100
	1    0    0    -1  
$EndComp
Text Label 2100 4000 0    50   ~ 0
AddressBus2
Wire Wire Line
	2000 4000 2650 4000
Text Label 2100 3900 0    50   ~ 0
AddressBus3
Wire Wire Line
	2000 3900 2650 3900
Text Label 2100 3800 0    50   ~ 0
AddressBus4
Wire Wire Line
	2000 3800 2650 3800
Text Label 2100 3700 0    50   ~ 0
AddressBus5
Wire Wire Line
	2000 3700 2650 3700
Text Label 2100 3600 0    50   ~ 0
AddressBus6
Wire Wire Line
	2000 3600 2650 3600
Text Label 2100 3500 0    50   ~ 0
AddressBus7
Wire Wire Line
	2000 3500 2650 3500
Text Label 2100 3400 0    50   ~ 0
AddressBus8
Wire Wire Line
	2000 3400 2650 3400
Text Label 2100 3300 0    50   ~ 0
AddressBus9
Wire Wire Line
	2000 3300 2650 3300
NoConn ~ 2650 3000
NoConn ~ 2650 2900
NoConn ~ 2650 2800
NoConn ~ 2650 2700
NoConn ~ 2650 2600
NoConn ~ 2650 2500
Entry Wire Line
	2000 3400 1900 3300
Entry Wire Line
	2000 3500 1900 3400
Entry Wire Line
	2000 3600 1900 3500
Entry Wire Line
	2000 3700 1900 3600
Entry Wire Line
	2000 3800 1900 3700
Entry Wire Line
	2000 3900 1900 3800
Entry Wire Line
	2000 4000 1900 3900
Entry Wire Line
	2000 4100 1900 4000
Entry Wire Line
	2000 4200 1900 4100
Text Label 4200 3300 0    50   ~ 0
AddressBus9
Wire Wire Line
	4100 3300 4750 3300
Text Label 4200 3200 0    50   ~ 0
AddressBus8
Wire Wire Line
	4100 3200 4750 3200
Text Label 4200 3100 0    50   ~ 0
AddressBus7
Wire Wire Line
	4100 3100 4750 3100
Text Label 4200 3000 0    50   ~ 0
AddressBus6
Wire Wire Line
	4100 3000 4750 3000
Text Label 4200 2900 0    50   ~ 0
AddressBus5
Wire Wire Line
	4100 2900 4750 2900
Text Label 4200 2800 0    50   ~ 0
AddressBus4
Wire Wire Line
	4100 2800 4750 2800
Text Label 4200 2700 0    50   ~ 0
AddressBus3
Wire Wire Line
	4100 2700 4750 2700
Text Label 4200 2600 0    50   ~ 0
AddressBus2
Wire Wire Line
	4100 2600 4750 2600
Text Label 4200 2500 0    50   ~ 0
AddressBus1
Wire Wire Line
	4100 2500 4750 2500
Text Label 4200 2400 0    50   ~ 0
AddressBus0
Wire Wire Line
	4100 2400 4750 2400
Entry Wire Line
	4100 2400 4000 2300
Entry Wire Line
	4100 2500 4000 2400
Entry Wire Line
	4100 2600 4000 2500
Entry Wire Line
	4100 2700 4000 2600
Entry Wire Line
	4100 2800 4000 2700
Entry Wire Line
	4100 2900 4000 2800
Entry Wire Line
	4100 3000 4000 2900
Entry Wire Line
	4100 3100 4000 3000
Entry Wire Line
	4100 3200 4000 3100
Entry Wire Line
	4100 3300 4000 3200
Wire Bus Line
	4000 1850 1900 1850
Wire Wire Line
	7150 2200 7150 3400
Wire Wire Line
	7150 3400 7350 3400
Wire Wire Line
	7350 3300 7250 3300
Wire Wire Line
	7250 3300 7250 2100
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5D7E59B1
P 7850 3700
F 0 "A1" V 7800 3700 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" V 7900 3700 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 8000 2750 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 7850 2700 50  0001 C CNN
	1    7850 3700
	1    0    0    -1  
$EndComp
Entry Wire Line
	6550 3700 6650 3800
Wire Wire Line
	6550 3700 6150 3700
Text Label 6450 3700 2    50   ~ 0
Data7
Entry Wire Line
	6550 3800 6650 3900
Wire Wire Line
	6550 3800 6150 3800
Text Label 6450 3800 2    50   ~ 0
Data6
Entry Wire Line
	6550 3900 6650 4000
Wire Wire Line
	6550 3900 6150 3900
Text Label 6450 3900 2    50   ~ 0
Data5
Entry Wire Line
	6550 4000 6650 4100
Wire Wire Line
	6550 4000 6150 4000
Text Label 6450 4000 2    50   ~ 0
Data4
Entry Wire Line
	6550 4100 6650 4200
Wire Wire Line
	6550 4100 6150 4100
Text Label 6450 4100 2    50   ~ 0
Data3
Entry Wire Line
	6550 4200 6650 4300
Wire Wire Line
	6550 4200 6150 4200
Text Label 6450 4200 2    50   ~ 0
Data2
Entry Wire Line
	6550 4300 6650 4400
Wire Wire Line
	6550 4300 6150 4300
Text Label 6450 4300 2    50   ~ 0
Data1
Entry Wire Line
	6550 4400 6650 4500
Wire Wire Line
	6550 4400 6150 4400
Text Label 6450 4400 2    50   ~ 0
Data0
Entry Wire Line
	8850 4500 8750 4400
Wire Wire Line
	8750 4400 8350 4400
Text Label 8650 4400 2    50   ~ 0
Data0
Entry Wire Line
	8850 4400 8750 4300
Wire Wire Line
	8750 4300 8350 4300
Text Label 8650 4300 2    50   ~ 0
Data1
Entry Wire Line
	8850 4300 8750 4200
Wire Wire Line
	8750 4200 8350 4200
Text Label 8650 4200 2    50   ~ 0
Data2
Entry Wire Line
	8850 4200 8750 4100
Wire Wire Line
	8750 4100 8350 4100
Text Label 8650 4100 2    50   ~ 0
Data3
Entry Wire Line
	8850 4100 8750 4000
Wire Wire Line
	8750 4000 8350 4000
Text Label 8650 4000 2    50   ~ 0
Data4
Entry Wire Line
	8850 4000 8750 3900
Wire Wire Line
	8750 3900 8350 3900
Text Label 8650 3900 2    50   ~ 0
Data5
Entry Wire Line
	8850 3900 8750 3800
Wire Wire Line
	8750 3800 8350 3800
Text Label 8650 3800 2    50   ~ 0
Data6
Entry Wire Line
	8850 3800 8750 3700
Wire Wire Line
	8750 3700 8350 3700
Text Label 8650 3700 2    50   ~ 0
Data7
Wire Bus Line
	6650 5150 8850 5150
$Comp
L power:GND #PWR0112
U 1 1 5DEE37DA
P 8450 3500
F 0 "#PWR0112" H 8450 3250 50  0001 C CNN
F 1 "GND" H 8455 3327 50  0000 C CNN
F 2 "" H 8450 3500 50  0001 C CNN
F 3 "" H 8450 3500 50  0001 C CNN
	1    8450 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8450 3500 8350 3500
Entry Wire Line
	6550 2400 6650 2500
Wire Wire Line
	6550 2400 6150 2400
Text Label 6450 2400 2    50   ~ 0
Addr0
Entry Wire Line
	6550 2500 6650 2600
Wire Wire Line
	6550 2500 6150 2500
Text Label 6450 2500 2    50   ~ 0
Addr1
Entry Wire Line
	6550 2600 6650 2700
Wire Wire Line
	6550 2600 6150 2600
Text Label 6450 2600 2    50   ~ 0
Addr2
Entry Wire Line
	6550 2700 6650 2800
Wire Wire Line
	6550 2700 6150 2700
Text Label 6450 2700 2    50   ~ 0
Addr3
Entry Wire Line
	6550 2800 6650 2900
Wire Wire Line
	6550 2800 6150 2800
Text Label 6450 2800 2    50   ~ 0
Addr4
Entry Wire Line
	6550 2900 6650 3000
Wire Wire Line
	6550 2900 6150 2900
Text Label 6450 2900 2    50   ~ 0
Addr5
Entry Wire Line
	6550 3000 6650 3100
Wire Wire Line
	6550 3000 6150 3000
Text Label 6450 3000 2    50   ~ 0
Addr6
Entry Wire Line
	6550 3100 6650 3200
Wire Wire Line
	6550 3100 6150 3100
Text Label 6450 3100 2    50   ~ 0
Addr7
Entry Wire Line
	6550 3200 6650 3300
Wire Wire Line
	6550 3200 6150 3200
Text Label 6450 3200 2    50   ~ 0
Addr8
Entry Wire Line
	6550 3300 6650 3400
Wire Wire Line
	6550 3300 6150 3300
Text Label 6450 3300 2    50   ~ 0
Addr9
Entry Wire Line
	6950 4200 6850 4100
Wire Wire Line
	6950 4200 7350 4200
Text Label 7050 4200 0    50   ~ 0
Addr7
Entry Wire Line
	6950 4100 6850 4000
Wire Wire Line
	6950 4100 7350 4100
Text Label 7050 4100 0    50   ~ 0
Addr6
Entry Wire Line
	6950 4000 6850 3900
Wire Wire Line
	6950 4000 7350 4000
Text Label 7050 4000 0    50   ~ 0
Addr5
Entry Wire Line
	6950 3900 6850 3800
Wire Wire Line
	6950 3900 7350 3900
Text Label 7050 3900 0    50   ~ 0
Addr4
Entry Wire Line
	6950 3800 6850 3700
Wire Wire Line
	6950 3800 7350 3800
Text Label 7050 3800 0    50   ~ 0
Addr3
Entry Wire Line
	6950 3700 6850 3600
Wire Wire Line
	6950 3700 7350 3700
Text Label 7050 3700 0    50   ~ 0
Addr2
Entry Wire Line
	6950 3600 6850 3500
Wire Wire Line
	6950 3600 7350 3600
Text Label 7050 3600 0    50   ~ 0
Addr1
Entry Wire Line
	6950 3500 6850 3400
Wire Wire Line
	6950 3500 7350 3500
Text Label 7050 3500 0    50   ~ 0
Addr0
Entry Wire Line
	6950 4400 6850 4300
Wire Wire Line
	6950 4400 7350 4400
Text Label 7050 4400 0    50   ~ 0
Addr9
Entry Wire Line
	6950 4300 6850 4200
Wire Wire Line
	6950 4300 7350 4300
Text Label 7050 4300 0    50   ~ 0
Addr8
Wire Bus Line
	6650 3400 6850 3400
NoConn ~ 2650 3100
NoConn ~ 2650 3200
Wire Wire Line
	4650 3400 4750 3400
$Comp
L power:GND #PWR0113
U 1 1 5DF852B9
P 4650 3400
F 0 "#PWR0113" H 4650 3150 50  0001 C CNN
F 1 "GND" V 4655 3227 50  0000 C CNN
F 2 "" H 4650 3400 50  0001 C CNN
F 3 "" H 4650 3400 50  0001 C CNN
	1    4650 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 3500 4750 3500
$Comp
L power:GND #PWR0114
U 1 1 5DF8A8ED
P 4650 3500
F 0 "#PWR0114" H 4650 3250 50  0001 C CNN
F 1 "GND" V 4655 3327 50  0000 C CNN
F 2 "" H 4650 3500 50  0001 C CNN
F 3 "" H 4650 3500 50  0001 C CNN
	1    4650 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3400 6150 3400
$Comp
L power:GND #PWR?
U 1 1 5DF9B220
P 6250 3400
F 0 "#PWR?" H 6250 3150 50  0001 C CNN
F 1 "GND" V 6255 3227 50  0000 C CNN
F 2 "" H 6250 3400 50  0001 C CNN
F 3 "" H 6250 3400 50  0001 C CNN
	1    6250 3400
	0    -1   1    0   
$EndComp
Wire Wire Line
	6250 3500 6150 3500
$Comp
L power:GND #PWR?
U 1 1 5DF9B227
P 6250 3500
F 0 "#PWR?" H 6250 3250 50  0001 C CNN
F 1 "GND" V 6255 3327 50  0000 C CNN
F 2 "" H 6250 3500 50  0001 C CNN
F 3 "" H 6250 3500 50  0001 C CNN
	1    6250 3500
	0    -1   1    0   
$EndComp
Wire Bus Line
	6850 3400 6850 4300
Wire Bus Line
	6650 2500 6650 3400
Wire Bus Line
	8850 3800 8850 5150
Wire Bus Line
	6650 3800 6650 5150
Wire Bus Line
	4000 1850 4000 3200
Wire Bus Line
	1900 1850 1900 4100
Entry Wire Line
	1900 3200 2000 3300
$EndSCHEMATC