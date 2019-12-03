EESchema Schematic File Version 4
LIBS:MicrocodeROMBoard-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 2
Title "TurtleTTL: Microcode ROM Board"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2500 7200 1500 500 
U 5D2C0B92
F0 "Instruction Decode" 50
F1 "Instruction Decode.sch" 50
$EndSheet
$Comp
L Device:CP1 C?
U 1 1 5D837B95
P 900 7150
AR Path="/5D2C0720/5D837B95" Ref="C?"  Part="1" 
AR Path="/5D2C0761/5D837B95" Ref="C?"  Part="1" 
AR Path="/5D837B95" Ref="C1"  Part="1" 
F 0 "C1" H 992 7196 50  0000 L CNN
F 1 "10µF" H 992 7105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 900 7150 50  0001 C CNN
F 3 "~" H 900 7150 50  0001 C CNN
	1    900  7150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 5DD08A30
P 900 6850
F 0 "#PWR0101" H 900 6700 50  0001 C CNN
F 1 "VCC" H 917 7023 50  0000 C CNN
F 2 "" H 900 6850 50  0001 C CNN
F 3 "" H 900 6850 50  0001 C CNN
	1    900  6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  6850 900  7000
$Comp
L power:GND #PWR0102
U 1 1 5DD0936F
P 900 7450
F 0 "#PWR0102" H 900 7200 50  0001 C CNN
F 1 "GND" H 905 7277 50  0000 C CNN
F 2 "" H 900 7450 50  0001 C CNN
F 3 "" H 900 7450 50  0001 C CNN
	1    900  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  7300 900  7450
NoConn ~ 5850 3500
NoConn ~ 5850 3300
NoConn ~ 5850 3100
NoConn ~ 5850 2900
NoConn ~ 8050 3400
NoConn ~ 8050 3200
NoConn ~ 8050 3000
NoConn ~ 8050 2800
Wire Bus Line
	5600 2200 5750 2200
Wire Bus Line
	8300 2100 8150 2100
Text GLabel 8300 2100 2    50   Input ~ 0
IR[8..15]
Text Label 8050 2000 2    50   ~ 0
IR15
Text Label 8050 2200 2    50   ~ 0
IR13
Wire Wire Line
	8050 3400 7200 3400
Wire Wire Line
	8050 3200 7200 3200
Wire Wire Line
	8050 3000 7200 3000
Wire Wire Line
	8050 2800 7200 2800
Text Label 8050 2600 2    50   ~ 0
IR9
Text Label 8050 2400 2    50   ~ 0
IR11
Wire Wire Line
	8050 2600 7200 2600
Entry Wire Line
	8050 2600 8150 2700
Wire Wire Line
	8050 2400 7200 2400
Entry Wire Line
	8050 2400 8150 2500
Wire Wire Line
	8050 2200 7200 2200
Entry Wire Line
	8050 2200 8150 2300
Wire Wire Line
	8050 2000 7200 2000
Entry Wire Line
	8050 2000 8150 2100
Text Label 5850 2100 0    50   ~ 0
IR14
Text Label 5850 2300 0    50   ~ 0
IR12
Wire Wire Line
	5850 3500 6700 3500
Wire Wire Line
	5850 3300 6700 3300
Wire Wire Line
	5850 3100 6700 3100
Wire Wire Line
	5850 2900 6700 2900
Text Label 5850 2700 0    50   ~ 0
IR8
Text Label 5850 2500 0    50   ~ 0
IR10
Wire Wire Line
	5850 2700 6700 2700
Entry Wire Line
	5850 2700 5750 2800
Wire Wire Line
	5850 2500 6700 2500
Entry Wire Line
	5850 2500 5750 2600
Wire Wire Line
	5850 2300 6700 2300
Entry Wire Line
	5850 2300 5750 2400
Wire Wire Line
	5850 2100 6700 2100
Entry Wire Line
	5850 2100 5750 2200
Text GLabel 5600 2200 0    50   Input ~ 0
IR[8..15]
Wire Bus Line
	4300 2200 4150 2200
Text GLabel 1450 2300 0    50   Output ~ 0
ControlWord[0..31]
Text GLabel 4300 2200 2    50   Output ~ 0
ControlWord[0..31]
NoConn ~ 3900 1900
NoConn ~ 3900 1700
NoConn ~ 3900 1500
Text GLabel 1800 2000 0    50   Input ~ 0
ControlClock
Text GLabel 1800 1800 0    50   Input ~ 0
~CarryOut
Text GLabel 1800 1600 0    50   Input ~ 0
~A=B
Connection ~ 7400 3700
Wire Wire Line
	7400 3700 7400 3800
Connection ~ 6950 3800
Wire Wire Line
	6500 3800 6950 3800
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 5DD50BB5
P 6900 2800
AR Path="/5D2C0CE4/5DD50BB5" Ref="J?"  Part="1" 
AR Path="/5D2C0B92/5DD50BB5" Ref="J?"  Part="1" 
AR Path="/5DD50BB5" Ref="J2"  Part="1" 
F 0 "J2" H 6950 1550 50  0000 C CNN
F 1 "Microcode ROM Connector 2" H 6950 1650 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 6900 2800 50  0001 C CNN
F 3 "~" H 6900 2800 50  0001 C CNN
	1    6900 2800
	1    0    0    1   
$EndComp
Wire Wire Line
	6950 3800 6950 4000
Wire Wire Line
	6350 1350 6350 1900
Wire Wire Line
	6700 1900 6350 1900
Connection ~ 6500 2000
Wire Wire Line
	6500 1800 6700 1800
Wire Wire Line
	6500 2000 6500 1800
Wire Wire Line
	6950 1350 7550 1350
Connection ~ 6950 1350
Wire Wire Line
	6950 1250 6950 1350
Wire Wire Line
	7550 1350 7550 1800
Wire Wire Line
	6350 1350 6950 1350
Wire Wire Line
	6950 3800 7400 3800
Wire Wire Line
	6500 3600 6500 3800
Wire Wire Line
	6500 3400 6500 3600
Wire Wire Line
	6500 3200 6500 3400
Wire Wire Line
	6500 3000 6500 3200
Wire Wire Line
	6500 2800 6500 3000
Wire Wire Line
	6500 2600 6500 2800
Wire Wire Line
	6500 2400 6500 2600
Wire Wire Line
	6500 2200 6500 2400
Wire Wire Line
	6500 2000 6500 2200
Connection ~ 6500 3600
Connection ~ 6500 3400
Connection ~ 6500 3200
Connection ~ 6500 3000
Connection ~ 6500 2800
Connection ~ 6500 2600
Connection ~ 6500 2400
Connection ~ 6500 2200
Wire Wire Line
	6700 2200 6500 2200
Wire Wire Line
	6700 2400 6500 2400
Wire Wire Line
	6500 2600 6700 2600
Wire Wire Line
	6500 2800 6700 2800
Wire Wire Line
	6700 3000 6500 3000
Wire Wire Line
	6700 3200 6500 3200
Wire Wire Line
	6700 3400 6500 3400
Wire Wire Line
	6500 3600 6700 3600
Wire Wire Line
	6700 2000 6500 2000
Wire Wire Line
	7400 3500 7400 3700
Wire Wire Line
	7400 3300 7400 3500
Wire Wire Line
	7400 3100 7400 3300
Wire Wire Line
	7400 2900 7400 3100
Wire Wire Line
	7400 2700 7400 2900
Wire Wire Line
	7400 2500 7400 2700
Wire Wire Line
	7400 2300 7400 2500
Wire Wire Line
	7400 2100 7400 2300
Wire Wire Line
	7400 1900 7400 2100
Connection ~ 7400 3500
Connection ~ 7400 3300
Connection ~ 7400 3100
Connection ~ 7400 2900
Connection ~ 7400 2700
Connection ~ 7400 2500
Connection ~ 7400 2300
Connection ~ 7400 2100
Wire Wire Line
	7200 1800 7550 1800
Wire Wire Line
	7200 2100 7400 2100
Wire Wire Line
	7200 2300 7400 2300
Wire Wire Line
	7400 2500 7200 2500
Wire Wire Line
	7400 2700 7200 2700
Wire Wire Line
	7200 2900 7400 2900
Wire Wire Line
	7200 3100 7400 3100
Wire Wire Line
	7200 3300 7400 3300
Wire Wire Line
	7400 3500 7200 3500
Wire Wire Line
	7400 3700 7200 3700
Wire Wire Line
	7200 1900 7400 1900
$Comp
L power:GND #PWR0103
U 1 1 5DD50ABA
P 6950 4000
F 0 "#PWR0103" H 6950 3750 50  0001 C CNN
F 1 "GND" H 6955 3827 50  0000 C CNN
F 2 "" H 6950 4000 50  0001 C CNN
F 3 "" H 6950 4000 50  0001 C CNN
	1    6950 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 5DD50AB4
P 6950 1250
F 0 "#PWR0104" H 6950 1100 50  0001 C CNN
F 1 "VCC" H 6967 1423 50  0000 C CNN
F 2 "" H 6950 1250 50  0001 C CNN
F 3 "" H 6950 1250 50  0001 C CNN
	1    6950 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x40_Odd_Even J?
U 1 1 5DD111C2
P 2750 3300
AR Path="/5D2C0CE4/5DD111C2" Ref="J?"  Part="1" 
AR Path="/5D2C0B92/5DD111C2" Ref="J?"  Part="1" 
AR Path="/5DD111C2" Ref="J1"  Part="1" 
F 0 "J1" H 2800 1075 50  0000 C CNN
F 1 "Microcode ROM Connector 1" H 2800 1166 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x40_P2.54mm_Vertical" H 2750 3300 50  0001 C CNN
F 3 "~" H 2750 3300 50  0001 C CNN
	1    2750 3300
	1    0    0    1   
$EndComp
Wire Wire Line
	2200 850  2200 1400
Wire Wire Line
	2550 1400 2200 1400
Connection ~ 2350 1500
Wire Wire Line
	2350 1300 2550 1300
Wire Wire Line
	2350 1500 2350 1300
Text Label 3500 5100 0    50   ~ 0
ControlWord1
Text Label 1700 5200 0    50   ~ 0
ControlWord0
Text Label 1700 5000 0    50   ~ 0
ControlWord2
Text Label 1700 4800 0    50   ~ 0
ControlWord4
Text Label 1700 4600 0    50   ~ 0
ControlWord6
Text Label 1700 4400 0    50   ~ 0
ControlWord8
Text Label 1700 4200 0    50   ~ 0
ControlWord10
Text Label 1700 4000 0    50   ~ 0
ControlWord12
Text Label 1700 3800 0    50   ~ 0
ControlWord14
Text Label 3500 4900 0    50   ~ 0
ControlWord3
Text Label 3500 4700 0    50   ~ 0
ControlWord5
Text Label 3500 4500 0    50   ~ 0
ControlWord7
Text Label 3500 4300 0    50   ~ 0
ControlWord9
Text Label 3500 4100 0    50   ~ 0
ControlWord11
Text Label 3500 3900 0    50   ~ 0
ControlWord13
Text Label 3500 3700 0    50   ~ 0
ControlWord15
Text Label 1700 3000 0    50   ~ 0
ControlWord22
Text Label 1700 3200 0    50   ~ 0
ControlWord20
Text Label 1700 3400 0    50   ~ 0
ControlWord18
Text Label 1700 3600 0    50   ~ 0
ControlWord16
Text Label 3500 3500 0    50   ~ 0
ControlWord17
Text Label 3500 3300 0    50   ~ 0
ControlWord19
Text Label 3500 3100 0    50   ~ 0
ControlWord21
Text Label 3500 2900 0    50   ~ 0
ControlWord23
Text Label 1700 2800 0    50   ~ 0
ControlWord24
Text Label 1700 2600 0    50   ~ 0
ControlWord26
Text Label 1700 2400 0    50   ~ 0
ControlWord28
Text Label 1700 2200 0    50   ~ 0
ControlWord30
Text Label 3500 2700 0    50   ~ 0
ControlWord25
Text Label 3500 2500 0    50   ~ 0
ControlWord27
Text Label 3500 2300 0    50   ~ 0
ControlWord29
Text Label 3500 2100 0    50   ~ 0
ControlWord31
Wire Bus Line
	1450 2300 1600 2300
Wire Wire Line
	1700 5200 2550 5200
Entry Wire Line
	1700 5200 1600 5300
Wire Wire Line
	1700 5000 2550 5000
Entry Wire Line
	1700 5000 1600 5100
Wire Wire Line
	1700 4800 2550 4800
Entry Wire Line
	1700 4800 1600 4900
Wire Wire Line
	1700 4600 2550 4600
Entry Wire Line
	1700 4600 1600 4700
Wire Wire Line
	1700 4400 2550 4400
Entry Wire Line
	1700 4400 1600 4500
Wire Wire Line
	1700 4200 2550 4200
Entry Wire Line
	1700 4200 1600 4300
Wire Wire Line
	1700 4000 2550 4000
Entry Wire Line
	1700 4000 1600 4100
Wire Wire Line
	1700 3800 2550 3800
Entry Wire Line
	1700 3800 1600 3900
Wire Wire Line
	1700 3600 2550 3600
Entry Wire Line
	1700 3600 1600 3700
Wire Wire Line
	1700 3400 2550 3400
Entry Wire Line
	1700 3400 1600 3500
Wire Wire Line
	1700 3200 2550 3200
Entry Wire Line
	1700 3200 1600 3300
Wire Wire Line
	1700 3000 2550 3000
Entry Wire Line
	1700 3000 1600 3100
Wire Wire Line
	1700 2800 2550 2800
Entry Wire Line
	1700 2800 1600 2900
Wire Wire Line
	1700 2600 2550 2600
Entry Wire Line
	1700 2600 1600 2700
Wire Wire Line
	1700 2400 2550 2400
Entry Wire Line
	1700 2400 1600 2500
Wire Wire Line
	1700 2200 2550 2200
Entry Wire Line
	1700 2200 1600 2300
Wire Wire Line
	4050 5100 3050 5100
Entry Wire Line
	4050 5100 4150 5200
Wire Wire Line
	4050 4900 3050 4900
Entry Wire Line
	4050 4900 4150 5000
Wire Wire Line
	4050 4700 3050 4700
Entry Wire Line
	4050 4700 4150 4800
Wire Wire Line
	4050 4500 3050 4500
Entry Wire Line
	4050 4500 4150 4600
Wire Wire Line
	4050 4300 3050 4300
Entry Wire Line
	4050 4300 4150 4400
Wire Wire Line
	4050 4100 3050 4100
Entry Wire Line
	4050 4100 4150 4200
Wire Wire Line
	4050 3900 3050 3900
Entry Wire Line
	4050 3900 4150 4000
Wire Wire Line
	4050 3700 3050 3700
Entry Wire Line
	4050 3700 4150 3800
Wire Wire Line
	4050 3500 3050 3500
Entry Wire Line
	4050 3500 4150 3600
Wire Wire Line
	4050 3300 3050 3300
Entry Wire Line
	4050 3300 4150 3400
Wire Wire Line
	4050 3100 3050 3100
Entry Wire Line
	4050 3100 4150 3200
Wire Wire Line
	4050 2900 3050 2900
Entry Wire Line
	4050 2900 4150 3000
Wire Wire Line
	4050 2700 3050 2700
Entry Wire Line
	4050 2700 4150 2800
Wire Wire Line
	4050 2500 3050 2500
Entry Wire Line
	4050 2500 4150 2600
Wire Wire Line
	4050 2300 3050 2300
Entry Wire Line
	4050 2300 4150 2400
Wire Wire Line
	4050 2100 3050 2100
Entry Wire Line
	4050 2100 4150 2200
Wire Wire Line
	2550 2000 1800 2000
Wire Wire Line
	2550 1800 1800 1800
Wire Wire Line
	1800 1600 2550 1600
Wire Wire Line
	3900 1500 3050 1500
Wire Wire Line
	3900 1700 3050 1700
Wire Wire Line
	3050 1900 3900 1900
Wire Wire Line
	2800 850  3400 850 
Connection ~ 2800 850 
Wire Wire Line
	2800 750  2800 850 
Wire Wire Line
	3400 850  3400 1300
Wire Wire Line
	2200 850  2800 850 
Wire Wire Line
	2350 4900 2350 5100
Wire Wire Line
	2350 4700 2350 4900
Wire Wire Line
	2350 4500 2350 4700
Wire Wire Line
	2350 4300 2350 4500
Wire Wire Line
	2350 4100 2350 4300
Wire Wire Line
	2350 3900 2350 4100
Wire Wire Line
	2350 3700 2350 3900
Wire Wire Line
	2350 3500 2350 3700
Wire Wire Line
	2350 3300 2350 3500
Wire Wire Line
	2350 3100 2350 3300
Wire Wire Line
	2350 2900 2350 3100
Wire Wire Line
	2350 2700 2350 2900
Wire Wire Line
	2350 2500 2350 2700
Wire Wire Line
	2350 2300 2350 2500
Wire Wire Line
	2350 2100 2350 2300
Wire Wire Line
	2350 1900 2350 2100
Wire Wire Line
	2350 1700 2350 1900
Wire Wire Line
	2350 1500 2350 1700
Connection ~ 2350 4300
Connection ~ 2350 4100
Connection ~ 2350 3900
Connection ~ 2350 3700
Connection ~ 2350 3500
Connection ~ 2350 3300
Connection ~ 2350 3100
Connection ~ 2350 2900
Connection ~ 2350 2700
Connection ~ 2350 2500
Connection ~ 2350 2300
Connection ~ 2350 2100
Connection ~ 2350 1900
Connection ~ 2350 1700
Wire Wire Line
	2550 1700 2350 1700
Wire Wire Line
	2550 1900 2350 1900
Wire Wire Line
	2350 2100 2550 2100
Wire Wire Line
	2350 2300 2550 2300
Wire Wire Line
	2550 2500 2350 2500
Wire Wire Line
	2550 2700 2350 2700
Wire Wire Line
	2550 2900 2350 2900
Wire Wire Line
	2350 3100 2550 3100
Wire Wire Line
	2350 3300 2550 3300
Wire Wire Line
	2550 3500 2350 3500
Wire Wire Line
	2550 3700 2350 3700
Wire Wire Line
	2550 3900 2350 3900
Wire Wire Line
	2350 4100 2550 4100
Wire Wire Line
	2350 4300 2550 4300
Connection ~ 2350 4500
Wire Wire Line
	2550 4500 2350 4500
Connection ~ 2350 4700
Wire Wire Line
	2550 4700 2350 4700
Connection ~ 2350 4900
Wire Wire Line
	2550 4900 2350 4900
Connection ~ 2350 5100
Wire Wire Line
	2350 5100 2550 5100
Wire Wire Line
	2550 1500 2350 1500
Wire Wire Line
	3250 5000 3250 5200
Wire Wire Line
	3250 4800 3250 5000
Wire Wire Line
	3250 4600 3250 4800
Wire Wire Line
	3250 4400 3250 4600
Wire Wire Line
	3250 4200 3250 4400
Wire Wire Line
	3250 4000 3250 4200
Wire Wire Line
	3250 3800 3250 4000
Wire Wire Line
	3250 3600 3250 3800
Wire Wire Line
	3250 3400 3250 3600
Wire Wire Line
	3250 3200 3250 3400
Wire Wire Line
	3250 3000 3250 3200
Wire Wire Line
	3250 2800 3250 3000
Wire Wire Line
	3250 2600 3250 2800
Wire Wire Line
	3250 2400 3250 2600
Wire Wire Line
	3250 2200 3250 2400
Wire Wire Line
	3250 2000 3250 2200
Wire Wire Line
	3250 1800 3250 2000
Wire Wire Line
	3250 1600 3250 1800
Wire Wire Line
	3250 1400 3250 1600
Connection ~ 3250 4200
Connection ~ 3250 4000
Connection ~ 3250 3800
Connection ~ 3250 3600
Connection ~ 3250 3400
Connection ~ 3250 3200
Connection ~ 3250 3000
Connection ~ 3250 2800
Connection ~ 3250 2600
Connection ~ 3250 2400
Connection ~ 3250 2200
Connection ~ 3250 2000
Connection ~ 3250 1800
Connection ~ 3250 1600
Wire Wire Line
	3050 1300 3400 1300
Wire Wire Line
	3050 1600 3250 1600
Wire Wire Line
	3050 1800 3250 1800
Wire Wire Line
	3250 2000 3050 2000
Wire Wire Line
	3250 2200 3050 2200
Wire Wire Line
	3050 2400 3250 2400
Wire Wire Line
	3050 2600 3250 2600
Wire Wire Line
	3050 2800 3250 2800
Wire Wire Line
	3250 3000 3050 3000
Wire Wire Line
	3250 3200 3050 3200
Wire Wire Line
	3050 3400 3250 3400
Wire Wire Line
	3050 3600 3250 3600
Wire Wire Line
	3050 3800 3250 3800
Wire Wire Line
	3250 4000 3050 4000
Wire Wire Line
	3250 4200 3050 4200
Connection ~ 3250 4400
Wire Wire Line
	3050 4400 3250 4400
Connection ~ 3250 4600
Wire Wire Line
	3050 4600 3250 4600
Connection ~ 3250 4800
Wire Wire Line
	3050 4800 3250 4800
Connection ~ 3250 5000
Wire Wire Line
	3250 5000 3050 5000
Wire Wire Line
	3250 5200 3050 5200
Wire Wire Line
	3050 1400 3250 1400
$Comp
L power:VCC #PWR0106
U 1 1 5DD110C1
P 2800 750
F 0 "#PWR0106" H 2800 600 50  0001 C CNN
F 1 "VCC" H 2817 923 50  0000 C CNN
F 2 "" H 2800 750 50  0001 C CNN
F 3 "" H 2800 750 50  0001 C CNN
	1    2800 750 
	1    0    0    -1  
$EndComp
Text Label 7050 6150 1    50   ~ 0
ControlWord16
Text Label 6950 6150 1    50   ~ 0
ControlWord17
Text Label 6850 6150 1    50   ~ 0
ControlWord18
Text Label 6750 6150 1    50   ~ 0
ControlWord19
Text Label 6650 6150 1    50   ~ 0
ControlWord20
Text Label 6550 6150 1    50   ~ 0
ControlWord21
Text Label 6450 6150 1    50   ~ 0
ControlWord22
Text Label 6350 6150 1    50   ~ 0
ControlWord23
Text Label 5450 6150 1    50   ~ 0
ControlWord24
Text Label 5350 6150 1    50   ~ 0
ControlWord25
Text Label 5250 6150 1    50   ~ 0
ControlWord26
Text Label 5150 6150 1    50   ~ 0
ControlWord27
Text Label 5050 6150 1    50   ~ 0
ControlWord28
Text Label 4950 6150 1    50   ~ 0
ControlWord29
Text Label 4850 6150 1    50   ~ 0
ControlWord30
Text Label 4750 6150 1    50   ~ 0
ControlWord31
Entry Wire Line
	6950 5500 7050 5600
Entry Wire Line
	6750 5500 6850 5600
Entry Wire Line
	6650 5500 6750 5600
Entry Wire Line
	6550 5500 6650 5600
Entry Wire Line
	6450 5500 6550 5600
Entry Wire Line
	6350 5500 6450 5600
Entry Wire Line
	6250 5500 6350 5600
Entry Wire Line
	5350 5500 5450 5600
Entry Wire Line
	5250 5500 5350 5600
Entry Wire Line
	5150 5500 5250 5600
Entry Wire Line
	5050 5500 5150 5600
Entry Wire Line
	4950 5500 5050 5600
Entry Wire Line
	4850 5500 4950 5600
Entry Wire Line
	4750 5500 4850 5600
Entry Wire Line
	4650 5500 4750 5600
Wire Wire Line
	4750 5600 4750 6200
Wire Wire Line
	4950 5600 4950 6200
Wire Wire Line
	5050 5600 5050 6200
Wire Wire Line
	5150 5600 5150 6200
Wire Wire Line
	5250 5600 5250 6200
Wire Wire Line
	5350 5600 5350 6200
Wire Wire Line
	5450 5600 5450 6200
Wire Wire Line
	6350 5600 6350 6200
Wire Wire Line
	6450 5600 6450 6200
Wire Wire Line
	6550 5600 6550 6200
Wire Wire Line
	6650 5600 6650 6200
Wire Wire Line
	6750 5600 6750 6200
Wire Wire Line
	6850 5600 6850 6200
Wire Wire Line
	6950 5600 6950 6200
Wire Wire Line
	7050 5600 7050 6200
Wire Wire Line
	4850 5600 4850 6200
Entry Wire Line
	6850 5500 6950 5600
Text GLabel 3500 6150 0    50   Input ~ 0
ControlWord[0..31]
Text Label 10100 6150 1    50   ~ 0
ControlWord0
Text Label 10000 6150 1    50   ~ 0
ControlWord1
Text Label 9900 6150 1    50   ~ 0
ControlWord2
Text Label 9800 6150 1    50   ~ 0
ControlWord3
Text Label 9700 6150 1    50   ~ 0
ControlWord4
Text Label 9600 6150 1    50   ~ 0
ControlWord5
Text Label 9500 6150 1    50   ~ 0
ControlWord6
Text Label 9400 6150 1    50   ~ 0
ControlWord7
Text Label 8600 6150 1    50   ~ 0
ControlWord8
Text Label 8500 6150 1    50   ~ 0
ControlWord9
Text Label 8400 6150 1    50   ~ 0
ControlWord10
Text Label 8300 6150 1    50   ~ 0
ControlWord11
Text Label 8200 6150 1    50   ~ 0
ControlWord12
Text Label 8100 6150 1    50   ~ 0
ControlWord13
Text Label 8000 6150 1    50   ~ 0
ControlWord14
Text Label 7900 6150 1    50   ~ 0
ControlWord15
Entry Wire Line
	10000 5500 10100 5600
Entry Wire Line
	9800 5500 9900 5600
Entry Wire Line
	9700 5500 9800 5600
Entry Wire Line
	9600 5500 9700 5600
Entry Wire Line
	9500 5500 9600 5600
Entry Wire Line
	9400 5500 9500 5600
Entry Wire Line
	9300 5500 9400 5600
Entry Wire Line
	8500 5500 8600 5600
Entry Wire Line
	8400 5500 8500 5600
Entry Wire Line
	8300 5500 8400 5600
Entry Wire Line
	8200 5500 8300 5600
Entry Wire Line
	8100 5500 8200 5600
Entry Wire Line
	8000 5500 8100 5600
Entry Wire Line
	7900 5500 8000 5600
Entry Wire Line
	7800 5500 7900 5600
Wire Wire Line
	7900 5600 7900 6200
Wire Wire Line
	8100 5600 8100 6200
Wire Wire Line
	8200 5600 8200 6200
Wire Wire Line
	8300 5600 8300 6200
Wire Wire Line
	8400 5600 8400 6200
Wire Wire Line
	8500 5600 8500 6200
Wire Wire Line
	8600 5600 8600 6200
Wire Wire Line
	9400 5600 9400 6200
Wire Wire Line
	9500 5600 9500 6200
Wire Wire Line
	9600 5600 9600 6200
Wire Wire Line
	9700 5600 9700 6200
Wire Wire Line
	9800 5600 9800 6200
Wire Wire Line
	9900 5600 9900 6200
Wire Wire Line
	10000 5600 10000 6200
Wire Wire Line
	10100 5600 10100 6200
Wire Wire Line
	8000 5600 8000 6200
Entry Wire Line
	9900 5500 10000 5600
$Comp
L Connector:Conn_01x09_Female J?
U 1 1 5DA7DC98
P 5150 6400
AR Path="/5D29E36D/5DA7DC98" Ref="J?"  Part="1" 
AR Path="/5D2C12A5/5DA7DC98" Ref="J?"  Part="1" 
AR Path="/5D2C0CE4/5DA7DC98" Ref="J?"  Part="1" 
AR Path="/5D2C0D13/5DA7DC98" Ref="J?"  Part="1" 
AR Path="/5D2C0CA7/5DA7DC98" Ref="J?"  Part="1" 
AR Path="/5D2C13FD/5DA7DC98" Ref="J?"  Part="1" 
AR Path="/5DA7DC98" Ref="J3"  Part="1" 
F 0 "J3" V 5300 6350 50  0000 C CNN
F 1 "Control Word LED Connector [24..31]" V 5400 6350 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 5150 6400 50  0001 C CNN
F 3 "~" H 5150 6400 50  0001 C CNN
	1    5150 6400
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x09_Female J?
U 1 1 5DA8731D
P 6750 6400
AR Path="/5D29E36D/5DA8731D" Ref="J?"  Part="1" 
AR Path="/5D2C12A5/5DA8731D" Ref="J?"  Part="1" 
AR Path="/5D2C0CE4/5DA8731D" Ref="J?"  Part="1" 
AR Path="/5D2C0D13/5DA8731D" Ref="J?"  Part="1" 
AR Path="/5D2C0CA7/5DA8731D" Ref="J?"  Part="1" 
AR Path="/5D2C13FD/5DA8731D" Ref="J?"  Part="1" 
AR Path="/5DA8731D" Ref="J4"  Part="1" 
F 0 "J4" V 6900 6350 50  0000 C CNN
F 1 "Control Word LED Connector [16..23]" V 7000 6350 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 6750 6400 50  0001 C CNN
F 3 "~" H 6750 6400 50  0001 C CNN
	1    6750 6400
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x09_Female J?
U 1 1 5DA8CAD0
P 8300 6400
AR Path="/5D29E36D/5DA8CAD0" Ref="J?"  Part="1" 
AR Path="/5D2C12A5/5DA8CAD0" Ref="J?"  Part="1" 
AR Path="/5D2C0CE4/5DA8CAD0" Ref="J?"  Part="1" 
AR Path="/5D2C0D13/5DA8CAD0" Ref="J?"  Part="1" 
AR Path="/5D2C0CA7/5DA8CAD0" Ref="J?"  Part="1" 
AR Path="/5D2C13FD/5DA8CAD0" Ref="J?"  Part="1" 
AR Path="/5DA8CAD0" Ref="J5"  Part="1" 
F 0 "J5" V 8450 6350 50  0000 C CNN
F 1 "Control Word LED Connector [8..15]" V 8550 6350 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 8300 6400 50  0001 C CNN
F 3 "~" H 8300 6400 50  0001 C CNN
	1    8300 6400
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x09_Female J?
U 1 1 5DA92064
P 9800 6400
AR Path="/5D29E36D/5DA92064" Ref="J?"  Part="1" 
AR Path="/5D2C12A5/5DA92064" Ref="J?"  Part="1" 
AR Path="/5D2C0CE4/5DA92064" Ref="J?"  Part="1" 
AR Path="/5D2C0D13/5DA92064" Ref="J?"  Part="1" 
AR Path="/5D2C0CA7/5DA92064" Ref="J?"  Part="1" 
AR Path="/5D2C13FD/5DA92064" Ref="J?"  Part="1" 
AR Path="/5DA92064" Ref="J6"  Part="1" 
F 0 "J6" V 9950 6350 50  0000 C CNN
F 1 "Control Word LED Connector [0..7]" V 10050 6350 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 9800 6400 50  0001 C CNN
F 3 "~" H 9800 6400 50  0001 C CNN
	1    9800 6400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA98D34
P 5550 6100
AR Path="/5D2C07CD/5DA98D34" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DA98D34" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DA98D34" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5DA98D34" Ref="#PWR?"  Part="1" 
AR Path="/5D2C13FD/5DA98D34" Ref="#PWR?"  Part="1" 
AR Path="/5DA98D34" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 5550 5850 50  0001 C CNN
F 1 "GND" H 5555 5927 50  0000 C CNN
F 2 "" H 5550 6100 50  0001 C CNN
F 3 "" H 5550 6100 50  0001 C CNN
	1    5550 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 6200 5550 6100
$Comp
L power:GND #PWR?
U 1 1 5DA9D201
P 7150 6100
AR Path="/5D2C07CD/5DA9D201" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DA9D201" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DA9D201" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5DA9D201" Ref="#PWR?"  Part="1" 
AR Path="/5D2C13FD/5DA9D201" Ref="#PWR?"  Part="1" 
AR Path="/5DA9D201" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 7150 5850 50  0001 C CNN
F 1 "GND" H 7155 5927 50  0000 C CNN
F 2 "" H 7150 6100 50  0001 C CNN
F 3 "" H 7150 6100 50  0001 C CNN
	1    7150 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7150 6200 7150 6100
$Comp
L power:GND #PWR?
U 1 1 5DAA17E2
P 8700 6100
AR Path="/5D2C07CD/5DAA17E2" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DAA17E2" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DAA17E2" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5DAA17E2" Ref="#PWR?"  Part="1" 
AR Path="/5D2C13FD/5DAA17E2" Ref="#PWR?"  Part="1" 
AR Path="/5DAA17E2" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 8700 5850 50  0001 C CNN
F 1 "GND" H 8705 5927 50  0000 C CNN
F 2 "" H 8700 6100 50  0001 C CNN
F 3 "" H 8700 6100 50  0001 C CNN
	1    8700 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 6200 8700 6100
$Comp
L power:GND #PWR?
U 1 1 5DAA5E2C
P 10200 6100
AR Path="/5D2C07CD/5DAA5E2C" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DAA5E2C" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DAA5E2C" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5DAA5E2C" Ref="#PWR?"  Part="1" 
AR Path="/5D2C13FD/5DAA5E2C" Ref="#PWR?"  Part="1" 
AR Path="/5DAA5E2C" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 10200 5850 50  0001 C CNN
F 1 "GND" H 10205 5927 50  0000 C CNN
F 2 "" H 10200 6100 50  0001 C CNN
F 3 "" H 10200 6100 50  0001 C CNN
	1    10200 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	10200 6200 10200 6100
Connection ~ 3250 5200
Wire Bus Line
	4100 5500 4100 6150
Wire Bus Line
	4100 6150 3500 6150
Wire Wire Line
	3250 5200 3250 5300
Wire Wire Line
	2350 5100 2350 5300
Wire Wire Line
	3250 5300 2800 5300
Wire Wire Line
	2800 5300 2800 5450
$Comp
L power:GND #PWR0105
U 1 1 5DD110C7
P 2800 5450
F 0 "#PWR0105" H 2800 5200 50  0001 C CNN
F 1 "GND" H 2805 5277 50  0000 C CNN
F 2 "" H 2800 5450 50  0001 C CNN
F 3 "" H 2800 5450 50  0001 C CNN
	1    2800 5450
	1    0    0    -1  
$EndComp
Connection ~ 2800 5300
Wire Wire Line
	2800 5300 2350 5300
Wire Bus Line
	8150 2100 8150 2700
Wire Bus Line
	5750 2200 5750 2800
Wire Bus Line
	1600 2300 1600 5300
Wire Bus Line
	4150 2200 4150 5200
Wire Bus Line
	4100 5500 10000 5500
$EndSCHEMATC
