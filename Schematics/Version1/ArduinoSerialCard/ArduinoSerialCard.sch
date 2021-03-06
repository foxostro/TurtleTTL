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
P 7300 1900
F 0 "A1" H 6700 3000 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 6750 2900 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 7450 950 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 7300 900 50  0001 C CNN
	1    7300 1900
	1    0    0    -1  
$EndComp
NoConn ~ 7400 900 
NoConn ~ 7500 900 
NoConn ~ 7800 1700
NoConn ~ 6800 1300
NoConn ~ 6800 1400
NoConn ~ 7800 1300
NoConn ~ 7800 1400
Text Label 3400 1200 0    50   ~ 0
DataBus0
Text Label 3400 1300 0    50   ~ 0
DataBus1
Text Label 3400 1400 0    50   ~ 0
DataBus2
Text Label 3400 1500 0    50   ~ 0
DataBus3
Text Label 3400 1600 0    50   ~ 0
DataBus4
Text Label 3400 1700 0    50   ~ 0
DataBus5
Text Label 3400 1800 0    50   ~ 0
DataBus6
Text Label 3400 1900 0    50   ~ 0
DataBus7
Wire Wire Line
	3350 2400 3450 2400
Wire Wire Line
	3450 2400 3450 2500
Wire Wire Line
	3450 3100 3350 3100
Wire Wire Line
	3350 3000 3450 3000
Connection ~ 3450 3000
Wire Wire Line
	3450 3000 3450 3100
Wire Wire Line
	3350 2900 3450 2900
Connection ~ 3450 2900
Wire Wire Line
	3450 2900 3450 3000
Wire Wire Line
	3350 2800 3450 2800
Connection ~ 3450 2800
Wire Wire Line
	3450 2800 3450 2900
Wire Wire Line
	3350 2700 3450 2700
Connection ~ 3450 2700
Wire Wire Line
	3450 2700 3450 2800
Wire Wire Line
	3350 2600 3450 2600
Connection ~ 3450 2600
Wire Wire Line
	3450 2600 3450 2700
Wire Wire Line
	3350 2500 3450 2500
Connection ~ 3450 2500
Wire Wire Line
	3450 2500 3450 2600
Wire Wire Line
	3450 2700 3700 2700
Wire Wire Line
	3700 2700 3700 2800
Wire Wire Line
	3350 2300 3450 2300
Wire Wire Line
	3450 2300 3450 2400
Connection ~ 3450 2400
Text Label 3400 2000 0    50   ~ 0
~PI
Text Label 3400 2100 0    50   ~ 0
~PO
Wire Wire Line
	3350 2200 3450 2200
Wire Wire Line
	3450 2200 3450 2300
Connection ~ 3450 2300
NoConn ~ 2850 2300
NoConn ~ 2850 2200
NoConn ~ 2850 2100
NoConn ~ 2850 2000
NoConn ~ 2850 1900
NoConn ~ 2850 1800
NoConn ~ 2850 1700
NoConn ~ 2850 1600
NoConn ~ 2850 1500
NoConn ~ 2850 2400
NoConn ~ 2850 2500
NoConn ~ 2850 2600
NoConn ~ 2850 2700
NoConn ~ 2850 2800
NoConn ~ 2850 2900
NoConn ~ 2850 3100
Wire Wire Line
	2500 1200 2500 1300
$Comp
L power:GND #PWR0102
U 1 1 5DBEBC67
P 2500 800
F 0 "#PWR0102" H 2500 550 50  0001 C CNN
F 1 "GND" H 2505 627 50  0000 C CNN
F 2 "" H 2500 800 50  0001 C CNN
F 3 "" H 2500 800 50  0001 C CNN
	1    2500 800 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DBEC799
P 3700 2800
F 0 "#PWR0103" H 3700 2550 50  0001 C CNN
F 1 "GND" H 3705 2627 50  0000 C CNN
F 2 "" H 3700 2800 50  0001 C CNN
F 3 "" H 3700 2800 50  0001 C CNN
	1    3700 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DBEE32D
P 7350 3100
F 0 "#PWR0104" H 7350 2850 50  0001 C CNN
F 1 "GND" H 7355 2927 50  0000 C CNN
F 2 "" H 7350 3100 50  0001 C CNN
F 3 "" H 7350 3100 50  0001 C CNN
	1    7350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2900 7300 2950
Wire Wire Line
	7400 2950 7400 2900
Wire Wire Line
	2850 1200 2750 1200
Wire Wire Line
	7300 2950 7350 2950
Connection ~ 7350 2950
Wire Wire Line
	7350 2950 7400 2950
Text Label 2250 1400 0    50   ~ 0
AddressBus0
Wire Wire Line
	7350 2950 7350 3100
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5DBFFCF0
P 2200 1200
F 0 "#FLG0102" H 2200 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 1373 50  0000 C CNN
F 2 "" H 2200 1200 50  0001 C CNN
F 3 "~" H 2200 1200 50  0001 C CNN
	1    2200 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 5DBEB658
P 2500 1200
F 0 "#PWR0101" H 2500 1050 50  0001 C CNN
F 1 "VCC" H 2517 1373 50  0000 C CNN
F 2 "" H 2500 1200 50  0001 C CNN
F 3 "" H 2500 1200 50  0001 C CNN
	1    2500 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1300 2200 1300
Wire Wire Line
	2200 1300 2200 1200
Connection ~ 2500 1300
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DCE3DA4
P 2200 800
F 0 "#FLG0101" H 2200 875 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 973 50  0000 C CNN
F 2 "" H 2200 800 50  0001 C CNN
F 3 "~" H 2200 800 50  0001 C CNN
	1    2200 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 800  2200 900 
Wire Wire Line
	2200 900  2500 900 
Wire Wire Line
	2500 900  2500 800 
Wire Wire Line
	2500 900  2750 900 
Wire Wire Line
	2750 900  2750 1200
Connection ~ 2500 900 
Wire Wire Line
	2850 1300 2500 1300
Wire Wire Line
	2050 1400 2850 1400
$Comp
L Connector_Generic:Conn_02x20_Top_Bottom J1
U 1 1 5DA1F396
P 3050 2100
F 0 "J1" H 3100 3217 50  0000 C CNN
F 1 "Conn" H 3100 3126 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 3050 2100 50  0001 C CNN
F 3 "~" H 3050 2100 50  0001 C CNN
	1    3050 2100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS138 U1
U 1 1 5DE426BA
P 3300 4900
F 0 "U1" H 3000 5500 50  0000 C CNN
F 1 "74F138" H 3000 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3300 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 3300 4900 50  0001 C CNN
	1    3300 4900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 U2
U 1 1 5DE42D04
P 5200 1700
F 0 "U2" H 4950 2500 50  0000 C CNN
F 1 "74F377" H 4950 2400 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 5200 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 5200 1700 50  0001 C CNN
	1    5200 1700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 U3
U 1 1 5DE43B22
P 5200 4100
F 0 "U3" H 4950 4900 50  0000 C CNN
F 1 "74F377" H 4950 4800 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 5200 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 5200 4100 50  0001 C CNN
	1    5200 4100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U4
U 1 1 5DE4519C
P 5200 6450
F 0 "U4" H 4950 7250 50  0000 C CNN
F 1 "74F574" H 4950 7150 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 5200 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 5200 6450 50  0001 C CNN
	1    5200 6450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5DE46840
P 9300 5850
F 0 "C1" H 9415 5896 50  0000 L CNN
F 1 "100nF" H 9415 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9338 5700 50  0001 C CNN
F 3 "~" H 9300 5850 50  0001 C CNN
	1    9300 5850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 5DE46EF7
P 9500 5500
F 0 "#PWR0106" H 9500 5350 50  0001 C CNN
F 1 "VCC" H 9517 5673 50  0000 C CNN
F 2 "" H 9500 5500 50  0001 C CNN
F 3 "" H 9500 5500 50  0001 C CNN
	1    9500 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5DE4760A
P 9500 6200
F 0 "#PWR0107" H 9500 5950 50  0001 C CNN
F 1 "GND" H 9505 6027 50  0000 C CNN
F 2 "" H 9500 6200 50  0001 C CNN
F 3 "" H 9500 6200 50  0001 C CNN
	1    9500 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DE47B4F
P 9750 5850
F 0 "C2" H 9865 5896 50  0000 L CNN
F 1 "100nF" H 9865 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9788 5700 50  0001 C CNN
F 3 "~" H 9750 5850 50  0001 C CNN
	1    9750 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5DE485AA
P 10200 5850
F 0 "C3" H 10315 5896 50  0000 L CNN
F 1 "100nF" H 10315 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10238 5700 50  0001 C CNN
F 3 "~" H 10200 5850 50  0001 C CNN
	1    10200 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5DE48B67
P 10650 5850
F 0 "C4" H 10765 5896 50  0000 L CNN
F 1 "100nF" H 10765 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10688 5700 50  0001 C CNN
F 3 "~" H 10650 5850 50  0001 C CNN
	1    10650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5500 9500 5600
Wire Wire Line
	9300 6000 9300 6100
Wire Wire Line
	9300 5600 9500 5600
Wire Wire Line
	10650 5600 10650 5700
Wire Wire Line
	9300 5600 9300 5700
Wire Wire Line
	10650 6000 10650 6100
Wire Wire Line
	10650 6100 10200 6100
Wire Wire Line
	9500 6100 9500 6200
Wire Wire Line
	9750 6000 9750 6100
Connection ~ 9750 6100
Wire Wire Line
	9750 6100 9500 6100
Wire Wire Line
	10200 6000 10200 6100
Connection ~ 10200 6100
Wire Wire Line
	10200 6100 9750 6100
Wire Wire Line
	10200 5700 10200 5600
Connection ~ 10200 5600
Wire Wire Line
	10200 5600 10650 5600
Wire Wire Line
	9750 5700 9750 5600
Connection ~ 9750 5600
Wire Wire Line
	9750 5600 10200 5600
Connection ~ 9500 5600
Wire Wire Line
	9500 5600 9750 5600
Connection ~ 9500 6100
Wire Wire Line
	9500 6100 9300 6100
$Comp
L power:VCC #PWR0108
U 1 1 5DE7052E
P 3300 4200
F 0 "#PWR0108" H 3300 4050 50  0001 C CNN
F 1 "VCC" H 3317 4373 50  0000 C CNN
F 2 "" H 3300 4200 50  0001 C CNN
F 3 "" H 3300 4200 50  0001 C CNN
	1    3300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4200 3300 4300
$Comp
L power:GND #PWR0109
U 1 1 5DE724DE
P 3300 5750
F 0 "#PWR0109" H 3300 5500 50  0001 C CNN
F 1 "GND" H 3305 5577 50  0000 C CNN
F 2 "" H 3300 5750 50  0001 C CNN
F 3 "" H 3300 5750 50  0001 C CNN
	1    3300 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5600 3300 5750
$Comp
L power:VCC #PWR0110
U 1 1 5DE74560
P 5200 800
F 0 "#PWR0110" H 5200 650 50  0001 C CNN
F 1 "VCC" H 5217 973 50  0000 C CNN
F 2 "" H 5200 800 50  0001 C CNN
F 3 "" H 5200 800 50  0001 C CNN
	1    5200 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 800  5200 900 
$Comp
L power:VCC #PWR0111
U 1 1 5DE79204
P 5200 3200
F 0 "#PWR0111" H 5200 3050 50  0001 C CNN
F 1 "VCC" H 5217 3373 50  0000 C CNN
F 2 "" H 5200 3200 50  0001 C CNN
F 3 "" H 5200 3200 50  0001 C CNN
	1    5200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3200 5200 3300
$Comp
L power:VCC #PWR0112
U 1 1 5DE7B3CE
P 5200 5550
F 0 "#PWR0112" H 5200 5400 50  0001 C CNN
F 1 "VCC" H 5217 5723 50  0000 C CNN
F 2 "" H 5200 5550 50  0001 C CNN
F 3 "" H 5200 5550 50  0001 C CNN
	1    5200 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5550 5200 5650
$Comp
L power:GND #PWR0113
U 1 1 5DE7F40D
P 5200 2650
F 0 "#PWR0113" H 5200 2400 50  0001 C CNN
F 1 "GND" H 5205 2477 50  0000 C CNN
F 2 "" H 5200 2650 50  0001 C CNN
F 3 "" H 5200 2650 50  0001 C CNN
	1    5200 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2500 5200 2650
$Comp
L power:GND #PWR0114
U 1 1 5DE83585
P 5200 5050
F 0 "#PWR0114" H 5200 4800 50  0001 C CNN
F 1 "GND" H 5205 4877 50  0000 C CNN
F 2 "" H 5200 5050 50  0001 C CNN
F 3 "" H 5200 5050 50  0001 C CNN
	1    5200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4900 5200 5050
$Comp
L power:GND #PWR0115
U 1 1 5DE87AC9
P 5200 7350
F 0 "#PWR0115" H 5200 7100 50  0001 C CNN
F 1 "GND" H 5205 7177 50  0000 C CNN
F 2 "" H 5200 7350 50  0001 C CNN
F 3 "" H 5200 7350 50  0001 C CNN
	1    5200 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 7250 5200 7350
Wire Wire Line
	2050 4600 2800 4600
$Comp
L power:GND #PWR0116
U 1 1 5DEA1165
P 2700 4700
F 0 "#PWR0116" H 2700 4450 50  0001 C CNN
F 1 "GND" V 2705 4572 50  0000 R CNN
F 2 "" H 2700 4700 50  0001 C CNN
F 3 "" H 2700 4700 50  0001 C CNN
	1    2700 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 4700 2800 4700
$Comp
L power:GND #PWR0117
U 1 1 5DEA41F0
P 2700 4800
F 0 "#PWR0117" H 2700 4550 50  0001 C CNN
F 1 "GND" V 2705 4672 50  0000 R CNN
F 2 "" H 2700 4800 50  0001 C CNN
F 3 "" H 2700 4800 50  0001 C CNN
	1    2700 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 4800 2800 4800
$Comp
L power:VCC #PWR0118
U 1 1 5DEA69CD
P 2700 5100
F 0 "#PWR0118" H 2700 4950 50  0001 C CNN
F 1 "VCC" V 2718 5227 50  0000 L CNN
F 2 "" H 2700 5100 50  0001 C CNN
F 3 "" H 2700 5100 50  0001 C CNN
	1    2700 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 5100 2800 5100
Wire Wire Line
	2800 5200 2700 5200
Wire Wire Line
	2700 5200 2700 5250
Wire Wire Line
	2700 5300 2800 5300
Wire Wire Line
	3800 2000 3800 3450
Wire Wire Line
	3800 3450 2250 3450
Wire Wire Line
	2250 5250 2700 5250
Wire Wire Line
	3350 2000 3800 2000
Connection ~ 2700 5250
Wire Wire Line
	2700 5250 2700 5300
Wire Wire Line
	3800 4600 4700 4600
Wire Wire Line
	2050 1400 2050 4600
Wire Wire Line
	3350 1200 4600 1200
Wire Wire Line
	3350 1400 4500 1400
Wire Wire Line
	3350 1500 4450 1500
Wire Wire Line
	3350 1600 4400 1600
Wire Wire Line
	3350 1700 4350 1700
Wire Wire Line
	3350 1800 4300 1800
Wire Wire Line
	3350 1900 4250 1900
NoConn ~ 5700 3700
NoConn ~ 5700 3800
NoConn ~ 5700 3900
NoConn ~ 5700 4000
NoConn ~ 5700 4100
NoConn ~ 5700 4200
NoConn ~ 5700 4300
Wire Wire Line
	3800 4700 4000 4700
Wire Wire Line
	4000 4700 4000 2200
Wire Wire Line
	4000 2200 4700 2200
NoConn ~ 3800 4800
NoConn ~ 3800 4900
NoConn ~ 3800 5000
NoConn ~ 3800 5100
NoConn ~ 3800 5200
NoConn ~ 3800 5300
Wire Wire Line
	3350 2100 3900 2100
Wire Wire Line
	5700 1200 6600 1200
Wire Wire Line
	6600 1200 6600 1600
Wire Wire Line
	6600 1600 6800 1600
Wire Wire Line
	6800 1700 6550 1700
Wire Wire Line
	6550 1700 6550 1300
Wire Wire Line
	6550 1300 5700 1300
Wire Wire Line
	5700 1400 6500 1400
Wire Wire Line
	6500 1400 6500 1800
Wire Wire Line
	6500 1800 6800 1800
Wire Wire Line
	6800 1900 6450 1900
Wire Wire Line
	6450 1900 6450 1500
Wire Wire Line
	6450 1500 5700 1500
Wire Wire Line
	5700 1600 6400 1600
Wire Wire Line
	6400 1600 6400 2000
Wire Wire Line
	6400 2000 6800 2000
Wire Wire Line
	6800 2100 6350 2100
Wire Wire Line
	6350 2100 6350 1700
Wire Wire Line
	6350 1700 5700 1700
Wire Wire Line
	5700 1800 6300 1800
Wire Wire Line
	6300 1800 6300 2200
Wire Wire Line
	6300 2200 6800 2200
Wire Wire Line
	6800 2300 6250 2300
Wire Wire Line
	6250 2300 6250 1900
Wire Wire Line
	6250 1900 5700 1900
Wire Wire Line
	6800 1500 6650 1500
Wire Wire Line
	6650 1500 6650 1100
Wire Wire Line
	6650 1100 5800 1100
Wire Wire Line
	5800 1100 5800 3600
Wire Wire Line
	5800 3600 5700 3600
Wire Wire Line
	4700 5950 4600 5950
Wire Wire Line
	4600 5950 4600 3600
Connection ~ 4600 1200
Wire Wire Line
	4600 1200 4700 1200
Wire Wire Line
	4700 6050 4550 6050
Wire Wire Line
	4550 6050 4550 3700
Connection ~ 4550 1300
Wire Wire Line
	4550 1300 4700 1300
Wire Wire Line
	4500 6150 4700 6150
Wire Wire Line
	4700 6250 4450 6250
Wire Wire Line
	4450 6250 4450 3900
Connection ~ 4450 1500
Wire Wire Line
	4450 1500 4700 1500
Wire Wire Line
	3350 1300 4550 1300
Wire Wire Line
	4500 1400 4500 3800
Connection ~ 4500 1400
Wire Wire Line
	4500 1400 4700 1400
Wire Wire Line
	4700 6350 4400 6350
Wire Wire Line
	4400 6350 4400 4000
Connection ~ 4400 1600
Wire Wire Line
	4400 1600 4700 1600
Wire Wire Line
	4350 1700 4350 4100
Wire Wire Line
	4350 6450 4700 6450
Connection ~ 4350 1700
Wire Wire Line
	4350 1700 4700 1700
Wire Wire Line
	4700 6550 4300 6550
Wire Wire Line
	4300 6550 4300 4200
Connection ~ 4300 1800
Wire Wire Line
	4300 1800 4700 1800
Wire Wire Line
	4250 1900 4250 4300
Wire Wire Line
	4250 6650 4700 6650
Connection ~ 4250 1900
Wire Wire Line
	4250 1900 4700 1900
Wire Wire Line
	4700 3600 4600 3600
Connection ~ 4600 3600
Wire Wire Line
	4600 3600 4600 1200
Wire Wire Line
	4700 3700 4550 3700
Connection ~ 4550 3700
Wire Wire Line
	4550 3700 4550 1300
Wire Wire Line
	4700 3800 4500 3800
Connection ~ 4500 3800
Wire Wire Line
	4500 3800 4500 6150
Wire Wire Line
	4700 3900 4450 3900
Connection ~ 4450 3900
Wire Wire Line
	4450 3900 4450 1500
Wire Wire Line
	4700 4000 4400 4000
Connection ~ 4400 4000
Wire Wire Line
	4400 4000 4400 1600
Wire Wire Line
	4700 4100 4350 4100
Connection ~ 4350 4100
Wire Wire Line
	4350 4100 4350 6450
Wire Wire Line
	4700 4200 4300 4200
Connection ~ 4300 4200
Wire Wire Line
	4300 4200 4300 1800
Wire Wire Line
	4700 4300 4250 4300
Connection ~ 4250 4300
Wire Wire Line
	4250 4300 4250 6650
Wire Wire Line
	5700 6950 5800 6950
Wire Wire Line
	5800 6950 5800 7600
Wire Wire Line
	5800 7600 3900 7600
Wire Wire Line
	3900 2100 3900 7600
Wire Wire Line
	6800 2400 6250 2400
Wire Wire Line
	6250 2400 6250 5950
Wire Wire Line
	6250 5950 5700 5950
Wire Wire Line
	6800 2500 6300 2500
Wire Wire Line
	6300 2500 6300 6050
Wire Wire Line
	6300 6050 5700 6050
Wire Wire Line
	5700 6150 6350 6150
Wire Wire Line
	6350 6150 6350 2600
Wire Wire Line
	6350 2600 6800 2600
Wire Wire Line
	7800 1900 7950 1900
Wire Wire Line
	7950 1900 7950 3450
Wire Wire Line
	7950 3450 6400 3450
Wire Wire Line
	6400 3450 6400 6250
Wire Wire Line
	6400 6250 5700 6250
Wire Wire Line
	5700 6350 6450 6350
Wire Wire Line
	6450 6350 6450 3500
Wire Wire Line
	6450 3500 8000 3500
Wire Wire Line
	8000 3500 8000 2000
Wire Wire Line
	8000 2000 7800 2000
Wire Wire Line
	7800 2100 8050 2100
Wire Wire Line
	8050 2100 8050 3550
Wire Wire Line
	8050 3550 6500 3550
Wire Wire Line
	6500 3550 6500 6450
Wire Wire Line
	6500 6450 5700 6450
Wire Wire Line
	5700 6550 6550 6550
Wire Wire Line
	6550 6550 6550 3600
Wire Wire Line
	6550 3600 8100 3600
Wire Wire Line
	8100 3600 8100 2200
Wire Wire Line
	8100 2200 7800 2200
Wire Wire Line
	7800 2300 8150 2300
Wire Wire Line
	8150 2300 8150 3650
Wire Wire Line
	8150 3650 6600 3650
Wire Wire Line
	6600 3650 6600 6650
Wire Wire Line
	6600 6650 5700 6650
NoConn ~ 7800 2400
NoConn ~ 7800 2500
NoConn ~ 7800 2600
Wire Wire Line
	2850 3000 2150 3000
Wire Wire Line
	2150 3000 2150 7700
Wire Wire Line
	2150 7700 4100 7700
Wire Wire Line
	5900 7700 5900 6850
Wire Wire Line
	5900 6850 5700 6850
Text Label 2250 3000 0    50   ~ 0
RegisterClock
Wire Wire Line
	4700 4500 4100 4500
Wire Wire Line
	4100 4500 4100 7700
Connection ~ 4100 7700
Wire Wire Line
	4100 7700 5900 7700
Wire Wire Line
	4100 4500 4100 2100
Wire Wire Line
	4100 2100 4700 2100
Connection ~ 4100 4500
$Comp
L Device:CP1 C5
U 1 1 5DEA1B0E
P 8850 5850
F 0 "C5" H 8965 5896 50  0000 L CNN
F 1 "10µF" H 8965 5805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 8888 5700 50  0001 C CNN
F 3 "~" H 8850 5850 50  0001 C CNN
	1    8850 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5600 8850 5600
Wire Wire Line
	8850 5600 8850 5700
Connection ~ 9300 5600
Wire Wire Line
	8850 6000 8850 6100
Wire Wire Line
	8850 6100 9300 6100
Connection ~ 9300 6100
NoConn ~ 7200 900 
Text Notes 7950 1350 0    50   ~ 0
TODO: The next version of this\nshould have an active-low Reset\nline on the connector.
Wire Wire Line
	2250 3450 2250 5250
$EndSCHEMATC
