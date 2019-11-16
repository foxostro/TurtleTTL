EESchema Schematic File Version 4
LIBS:MainBoard-cache
LIBS:ResetBoard-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 11 22
Title "Instruction Decode"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "The Instruction Decoder decodes an eight bit opcode into a sixteen-bit control word."
$EndDescr
$Comp
L 74xx:74LS574 U?
U 1 1 5DB613F7
P 8300 5450
AR Path="/5D2C14C3/5DB613F7" Ref="U?"  Part="1" 
AR Path="/5D2C0B92/5DB613F7" Ref="U47"  Part="1" 
F 0 "U47" H 8050 6250 50  0000 C CNN
F 1 "74F574" H 8050 6150 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 8300 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 8300 5450 50  0001 C CNN
	1    8300 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 5DB6758A
P 8300 6250
F 0 "#PWR0131" H 8300 6000 50  0001 C CNN
F 1 "GND" H 8305 6077 50  0000 C CNN
F 2 "" H 8300 6250 50  0001 C CNN
F 3 "" H 8300 6250 50  0001 C CNN
	1    8300 6250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0130
U 1 1 5DB6804E
P 8300 4650
F 0 "#PWR0130" H 8300 4500 50  0001 C CNN
F 1 "VCC" H 8317 4823 50  0000 C CNN
F 2 "" H 8300 4650 50  0001 C CNN
F 3 "" H 8300 4650 50  0001 C CNN
	1    8300 4650
	1    0    0    -1  
$EndComp
Entry Wire Line
	7500 5750 7600 5650
Entry Wire Line
	7500 5650 7600 5550
Entry Wire Line
	7500 5050 7600 4950
Entry Wire Line
	7500 5150 7600 5050
Entry Wire Line
	7500 5250 7600 5150
Entry Wire Line
	7500 5350 7600 5250
Entry Wire Line
	7500 5450 7600 5350
Entry Wire Line
	7500 5550 7600 5450
Wire Wire Line
	7600 5650 7800 5650
Wire Wire Line
	7800 5550 7600 5550
Wire Wire Line
	7600 5450 7800 5450
Wire Wire Line
	7800 5350 7600 5350
Wire Wire Line
	7600 5250 7800 5250
Wire Wire Line
	7800 5150 7600 5150
Wire Wire Line
	7600 5050 7800 5050
Wire Wire Line
	7800 4950 7600 4950
Text GLabel 5950 5750 0    50   Input ~ 0
IR[0..7]
Text Label 7650 4950 0    50   ~ 0
IR0
Text Label 7650 5050 0    50   ~ 0
IR1
Text Label 7650 5150 0    50   ~ 0
IR2
Text Label 7650 5250 0    50   ~ 0
IR3
Text Label 7650 5350 0    50   ~ 0
IR4
Text Label 7650 5450 0    50   ~ 0
IR5
Text Label 7650 5550 0    50   ~ 0
IR6
Text Label 7650 5650 0    50   ~ 0
IR7
Text GLabel 5950 5850 0    50   Input ~ 0
ControlClock
$Comp
L power:GND #PWR0129
U 1 1 5DB73C30
P 7800 5950
F 0 "#PWR0129" H 7800 5700 50  0001 C CNN
F 1 "GND" V 7805 5822 50  0000 R CNN
F 2 "" H 7800 5950 50  0001 C CNN
F 3 "" H 7800 5950 50  0001 C CNN
	1    7800 5950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC56D86
P 1300 7650
AR Path="/5D2C0761/5DC56D86" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0B92/5DC56D86" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 1300 7400 50  0001 C CNN
F 1 "GND" H 1305 7477 50  0000 C CNN
F 2 "" H 1300 7650 50  0001 C CNN
F 3 "" H 1300 7650 50  0001 C CNN
	1    1300 7650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC56D68
P 1300 7400
AR Path="/5D2C0761/5DC56D68" Ref="C?"  Part="1" 
AR Path="/5D2C0B92/5DC56D68" Ref="C43"  Part="1" 
F 0 "C43" H 1415 7446 50  0000 L CNN
F 1 "100nF" H 1415 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1338 7250 50  0001 C CNN
F 3 "~" H 1300 7400 50  0001 C CNN
	1    1300 7400
	1    0    0    -1  
$EndComp
Entry Wire Line
	8950 5650 9050 5550
Entry Wire Line
	8950 5550 9050 5450
Entry Wire Line
	8950 5450 9050 5350
Entry Wire Line
	8950 5350 9050 5250
Entry Wire Line
	8950 5250 9050 5150
Entry Wire Line
	8950 5150 9050 5050
Entry Wire Line
	8950 5050 9050 4950
Entry Wire Line
	8950 4950 9050 4850
Text GLabel 9850 4650 2    50   Output ~ 0
C[0..7]
Text Label 8950 4950 2    50   ~ 0
C0
Text Label 8950 5050 2    50   ~ 0
C1
Text Label 8950 5150 2    50   ~ 0
C2
Text Label 8950 5250 2    50   ~ 0
C3
Text Label 8950 5350 2    50   ~ 0
C4
Text Label 8950 5450 2    50   ~ 0
C5
Text Label 8950 5550 2    50   ~ 0
C6
Text Label 8950 5650 2    50   ~ 0
C7
Wire Wire Line
	8800 4950 8950 4950
Wire Wire Line
	8950 5050 8800 5050
Wire Wire Line
	8800 5150 8950 5150
Wire Wire Line
	8950 5250 8800 5250
Wire Wire Line
	8800 5350 8950 5350
Wire Wire Line
	8950 5450 8800 5450
Wire Wire Line
	8800 5550 8950 5550
Wire Wire Line
	8950 5650 8800 5650
Wire Bus Line
	9050 4650 9850 4650
Wire Bus Line
	5950 5750 7500 5750
Wire Wire Line
	5950 5850 7800 5850
$Comp
L power:VCC #PWR?
U 1 1 5DC56D8C
P 1300 7150
AR Path="/5D2C0761/5DC56D8C" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0B92/5DC56D8C" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 1300 7000 50  0001 C CNN
F 1 "VCC" H 1317 7323 50  0000 C CNN
F 2 "" H 1300 7150 50  0001 C CNN
F 3 "" H 1300 7150 50  0001 C CNN
	1    1300 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7150 1300 7250
Wire Wire Line
	1300 7650 1300 7550
$Comp
L power:VCC #PWR0111
U 1 1 5DD110C1
P 2850 900
F 0 "#PWR0111" H 2850 750 50  0001 C CNN
F 1 "VCC" H 2867 1073 50  0000 C CNN
F 2 "" H 2850 900 50  0001 C CNN
F 3 "" H 2850 900 50  0001 C CNN
	1    2850 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5DD110C7
P 2850 5800
F 0 "#PWR0112" H 2850 5550 50  0001 C CNN
F 1 "GND" H 2855 5627 50  0000 C CNN
F 2 "" H 2850 5800 50  0001 C CNN
F 3 "" H 2850 5800 50  0001 C CNN
	1    2850 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1550 3300 1550
Wire Wire Line
	3300 5350 3100 5350
Wire Wire Line
	3300 5600 3300 5350
Connection ~ 3300 5350
Wire Wire Line
	3300 5150 3100 5150
Connection ~ 3300 5150
Wire Wire Line
	3100 4950 3300 4950
Connection ~ 3300 4950
Wire Wire Line
	3100 4750 3300 4750
Connection ~ 3300 4750
Wire Wire Line
	3100 4550 3300 4550
Connection ~ 3300 4550
Wire Wire Line
	3300 4350 3100 4350
Wire Wire Line
	3300 4150 3100 4150
Wire Wire Line
	3100 3950 3300 3950
Wire Wire Line
	3100 3750 3300 3750
Wire Wire Line
	3100 3550 3300 3550
Wire Wire Line
	3300 3350 3100 3350
Wire Wire Line
	3300 3150 3100 3150
Wire Wire Line
	3100 2950 3300 2950
Wire Wire Line
	3100 2750 3300 2750
Wire Wire Line
	3100 2550 3300 2550
Wire Wire Line
	3300 2350 3100 2350
Wire Wire Line
	3300 2150 3100 2150
Wire Wire Line
	3100 1950 3300 1950
Wire Wire Line
	3100 1750 3300 1750
Wire Wire Line
	3100 1450 3450 1450
Connection ~ 3300 1750
Connection ~ 3300 1950
Connection ~ 3300 2150
Connection ~ 3300 2350
Connection ~ 3300 2550
Connection ~ 3300 2750
Connection ~ 3300 2950
Connection ~ 3300 3150
Connection ~ 3300 3350
Connection ~ 3300 3550
Connection ~ 3300 3750
Connection ~ 3300 3950
Connection ~ 3300 4150
Connection ~ 3300 4350
Wire Wire Line
	3300 1550 3300 1750
Wire Wire Line
	3300 1750 3300 1950
Wire Wire Line
	3300 1950 3300 2150
Wire Wire Line
	3300 2150 3300 2350
Wire Wire Line
	3300 2350 3300 2550
Wire Wire Line
	3300 2550 3300 2750
Wire Wire Line
	3300 2750 3300 2950
Wire Wire Line
	3300 2950 3300 3150
Wire Wire Line
	3300 3150 3300 3350
Wire Wire Line
	3300 3350 3300 3550
Wire Wire Line
	3300 3550 3300 3750
Wire Wire Line
	3300 3750 3300 3950
Wire Wire Line
	3300 3950 3300 4150
Wire Wire Line
	3300 4150 3300 4350
Wire Wire Line
	3300 4350 3300 4550
Wire Wire Line
	3300 4550 3300 4750
Wire Wire Line
	3300 4750 3300 4950
Wire Wire Line
	3300 4950 3300 5150
Wire Wire Line
	3300 5150 3300 5350
Wire Wire Line
	2600 1650 2400 1650
Wire Wire Line
	2400 5250 2600 5250
Connection ~ 2400 5250
Wire Wire Line
	2600 5050 2400 5050
Connection ~ 2400 5050
Wire Wire Line
	2600 4850 2400 4850
Connection ~ 2400 4850
Wire Wire Line
	2600 4650 2400 4650
Connection ~ 2400 4650
Wire Wire Line
	2400 4450 2600 4450
Wire Wire Line
	2400 4250 2600 4250
Wire Wire Line
	2600 4050 2400 4050
Wire Wire Line
	2600 3850 2400 3850
Wire Wire Line
	2600 3650 2400 3650
Wire Wire Line
	2400 3450 2600 3450
Wire Wire Line
	2400 3250 2600 3250
Wire Wire Line
	2600 3050 2400 3050
Wire Wire Line
	2600 2850 2400 2850
Wire Wire Line
	2600 2650 2400 2650
Wire Wire Line
	2400 2450 2600 2450
Wire Wire Line
	2400 2250 2600 2250
Wire Wire Line
	2600 2050 2400 2050
Wire Wire Line
	2600 1850 2400 1850
Connection ~ 2400 1850
Connection ~ 2400 2050
Connection ~ 2400 2250
Connection ~ 2400 2450
Connection ~ 2400 2650
Connection ~ 2400 2850
Connection ~ 2400 3050
Connection ~ 2400 3250
Connection ~ 2400 3450
Connection ~ 2400 3650
Connection ~ 2400 3850
Connection ~ 2400 4050
Connection ~ 2400 4250
Connection ~ 2400 4450
Wire Wire Line
	2400 1650 2400 1850
Wire Wire Line
	2400 1850 2400 2050
Wire Wire Line
	2400 2050 2400 2250
Wire Wire Line
	2400 2250 2400 2450
Wire Wire Line
	2400 2450 2400 2650
Wire Wire Line
	2400 2650 2400 2850
Wire Wire Line
	2400 2850 2400 3050
Wire Wire Line
	2400 3050 2400 3250
Wire Wire Line
	2400 3250 2400 3450
Wire Wire Line
	2400 3450 2400 3650
Wire Wire Line
	2400 3650 2400 3850
Wire Wire Line
	2400 3850 2400 4050
Wire Wire Line
	2400 4050 2400 4250
Wire Wire Line
	2400 4250 2400 4450
Wire Wire Line
	2400 4450 2400 4650
Wire Wire Line
	2400 4650 2400 4850
Wire Wire Line
	2400 4850 2400 5050
Wire Wire Line
	2400 5050 2400 5250
Wire Wire Line
	2850 5600 3300 5600
Wire Wire Line
	2250 1000 2850 1000
Wire Wire Line
	3450 1000 3450 1450
Wire Wire Line
	2850 900  2850 1000
Connection ~ 2850 1000
Wire Wire Line
	2850 1000 3450 1000
Wire Wire Line
	3100 2050 3950 2050
Wire Wire Line
	3950 1850 3100 1850
Wire Wire Line
	3950 1650 3100 1650
Wire Wire Line
	1850 1750 2600 1750
Wire Wire Line
	2600 1950 1850 1950
Wire Wire Line
	2600 2150 1850 2150
Entry Wire Line
	4100 2250 4200 2350
Wire Wire Line
	4100 2250 3100 2250
Entry Wire Line
	4100 2450 4200 2550
Wire Wire Line
	4100 2450 3100 2450
Entry Wire Line
	4100 2650 4200 2750
Wire Wire Line
	4100 2650 3100 2650
Entry Wire Line
	4100 2850 4200 2950
Wire Wire Line
	4100 2850 3100 2850
Entry Wire Line
	4100 3050 4200 3150
Wire Wire Line
	4100 3050 3100 3050
Entry Wire Line
	4100 3250 4200 3350
Wire Wire Line
	4100 3250 3100 3250
Entry Wire Line
	4100 3450 4200 3550
Wire Wire Line
	4100 3450 3100 3450
Entry Wire Line
	4100 3650 4200 3750
Wire Wire Line
	4100 3650 3100 3650
Entry Wire Line
	4100 3850 4200 3950
Wire Wire Line
	4100 3850 3100 3850
Entry Wire Line
	4100 4050 4200 4150
Wire Wire Line
	4100 4050 3100 4050
Entry Wire Line
	4100 4250 4200 4350
Wire Wire Line
	4100 4250 3100 4250
Entry Wire Line
	4100 4450 4200 4550
Wire Wire Line
	4100 4450 3100 4450
Entry Wire Line
	4100 4650 4200 4750
Wire Wire Line
	4100 4650 3100 4650
Entry Wire Line
	4100 4850 4200 4950
Wire Wire Line
	4100 4850 3100 4850
Entry Wire Line
	4100 5050 4200 5150
Wire Wire Line
	4100 5050 3100 5050
Entry Wire Line
	4100 5250 4200 5350
Wire Wire Line
	4100 5250 3100 5250
Entry Wire Line
	1750 2350 1650 2450
Wire Wire Line
	1750 2350 2600 2350
Entry Wire Line
	1750 2550 1650 2650
Wire Wire Line
	1750 2550 2600 2550
Entry Wire Line
	1750 2750 1650 2850
Wire Wire Line
	1750 2750 2600 2750
Entry Wire Line
	1750 2950 1650 3050
Wire Wire Line
	1750 2950 2600 2950
Entry Wire Line
	1750 3150 1650 3250
Wire Wire Line
	1750 3150 2600 3150
Entry Wire Line
	1750 3350 1650 3450
Wire Wire Line
	1750 3350 2600 3350
Entry Wire Line
	1750 3550 1650 3650
Wire Wire Line
	1750 3550 2600 3550
Entry Wire Line
	1750 3750 1650 3850
Wire Wire Line
	1750 3750 2600 3750
Entry Wire Line
	1750 3950 1650 4050
Wire Wire Line
	1750 3950 2600 3950
Entry Wire Line
	1750 4150 1650 4250
Wire Wire Line
	1750 4150 2600 4150
Entry Wire Line
	1750 4350 1650 4450
Wire Wire Line
	1750 4350 2600 4350
Entry Wire Line
	1750 4550 1650 4650
Wire Wire Line
	1750 4550 2600 4550
Entry Wire Line
	1750 4750 1650 4850
Wire Wire Line
	1750 4750 2600 4750
Entry Wire Line
	1750 4950 1650 5050
Wire Wire Line
	1750 4950 2600 4950
Entry Wire Line
	1750 5150 1650 5250
Wire Wire Line
	1750 5150 2600 5150
Entry Wire Line
	1750 5350 1650 5450
Wire Wire Line
	1750 5350 2600 5350
Wire Bus Line
	1500 2450 1650 2450
Text Label 3550 2250 0    50   ~ 0
ControlWord31
Text Label 3550 2450 0    50   ~ 0
ControlWord29
Text Label 3550 2650 0    50   ~ 0
ControlWord27
Text Label 3550 2850 0    50   ~ 0
ControlWord25
Text Label 1750 2350 0    50   ~ 0
ControlWord30
Text Label 1750 2550 0    50   ~ 0
ControlWord28
Text Label 1750 2750 0    50   ~ 0
ControlWord26
Text Label 1750 2950 0    50   ~ 0
ControlWord24
Text Label 3550 3050 0    50   ~ 0
ControlWord23
Text Label 3550 3250 0    50   ~ 0
ControlWord21
Text Label 3550 3450 0    50   ~ 0
ControlWord19
Text Label 3550 3650 0    50   ~ 0
ControlWord17
Text Label 1750 3750 0    50   ~ 0
ControlWord16
Text Label 1750 3550 0    50   ~ 0
ControlWord18
Text Label 1750 3350 0    50   ~ 0
ControlWord20
Text Label 1750 3150 0    50   ~ 0
ControlWord22
Text Label 3550 3850 0    50   ~ 0
ControlWord15
Text Label 3550 4050 0    50   ~ 0
ControlWord13
Text Label 3550 4250 0    50   ~ 0
ControlWord11
Text Label 3550 4450 0    50   ~ 0
ControlWord9
Text Label 3550 4650 0    50   ~ 0
ControlWord7
Text Label 3550 4850 0    50   ~ 0
ControlWord5
Text Label 3550 5050 0    50   ~ 0
ControlWord3
Text Label 1750 3950 0    50   ~ 0
ControlWord14
Text Label 1750 4150 0    50   ~ 0
ControlWord12
Text Label 1750 4350 0    50   ~ 0
ControlWord10
Text Label 1750 4550 0    50   ~ 0
ControlWord8
Text Label 1750 4750 0    50   ~ 0
ControlWord6
Text Label 1750 4950 0    50   ~ 0
ControlWord4
Text Label 1750 5150 0    50   ~ 0
ControlWord2
Text Label 1750 5350 0    50   ~ 0
ControlWord0
Text Label 3550 5250 0    50   ~ 0
ControlWord1
Wire Wire Line
	2400 1650 2400 1450
Wire Wire Line
	2400 1450 2600 1450
Connection ~ 2400 1650
Wire Wire Line
	2600 1550 2250 1550
Wire Wire Line
	2250 1000 2250 1550
Wire Wire Line
	2850 5600 2400 5600
Connection ~ 2850 5600
Wire Wire Line
	2850 5600 2850 5800
$Comp
L Connector_Generic:Conn_02x40_Odd_Even J?
U 1 1 5DD111C2
P 2800 3450
AR Path="/5D2C0CE4/5DD111C2" Ref="J?"  Part="1" 
AR Path="/5D2C0B92/5DD111C2" Ref="J14"  Part="1" 
F 0 "J14" H 2850 1225 50  0000 C CNN
F 1 "Microcode ROM Connector 1" H 2850 1316 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x40_P2.54mm_Vertical" H 2800 3450 50  0001 C CNN
F 3 "~" H 2800 3450 50  0001 C CNN
	1    2800 3450
	1    0    0    1   
$EndComp
Wire Wire Line
	2400 5250 2400 5600
$Comp
L power:VCC #PWR0113
U 1 1 5DD50AB4
P 6900 900
F 0 "#PWR0113" H 6900 750 50  0001 C CNN
F 1 "VCC" H 6917 1073 50  0000 C CNN
F 2 "" H 6900 900 50  0001 C CNN
F 3 "" H 6900 900 50  0001 C CNN
	1    6900 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5DD50ABA
P 6900 3650
F 0 "#PWR0114" H 6900 3400 50  0001 C CNN
F 1 "GND" H 6905 3477 50  0000 C CNN
F 2 "" H 6900 3650 50  0001 C CNN
F 3 "" H 6900 3650 50  0001 C CNN
	1    6900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1550 7350 1550
Wire Wire Line
	7350 3350 7150 3350
Wire Wire Line
	7350 3150 7150 3150
Wire Wire Line
	7150 2950 7350 2950
Wire Wire Line
	7150 2750 7350 2750
Wire Wire Line
	7150 2550 7350 2550
Wire Wire Line
	7350 2350 7150 2350
Wire Wire Line
	7350 2150 7150 2150
Wire Wire Line
	7150 1950 7350 1950
Wire Wire Line
	7150 1750 7350 1750
Wire Wire Line
	7150 1450 7500 1450
Connection ~ 7350 1750
Connection ~ 7350 1950
Connection ~ 7350 2150
Connection ~ 7350 2350
Connection ~ 7350 2550
Connection ~ 7350 2750
Connection ~ 7350 2950
Connection ~ 7350 3150
Wire Wire Line
	7350 1550 7350 1750
Wire Wire Line
	7350 1750 7350 1950
Wire Wire Line
	7350 1950 7350 2150
Wire Wire Line
	7350 2150 7350 2350
Wire Wire Line
	7350 2350 7350 2550
Wire Wire Line
	7350 2550 7350 2750
Wire Wire Line
	7350 2750 7350 2950
Wire Wire Line
	7350 2950 7350 3150
Wire Wire Line
	7350 3150 7350 3350
Wire Wire Line
	6650 1650 6450 1650
Wire Wire Line
	6450 3250 6650 3250
Wire Wire Line
	6650 3050 6450 3050
Wire Wire Line
	6650 2850 6450 2850
Wire Wire Line
	6650 2650 6450 2650
Wire Wire Line
	6450 2450 6650 2450
Wire Wire Line
	6450 2250 6650 2250
Wire Wire Line
	6650 2050 6450 2050
Wire Wire Line
	6650 1850 6450 1850
Connection ~ 6450 1850
Connection ~ 6450 2050
Connection ~ 6450 2250
Connection ~ 6450 2450
Connection ~ 6450 2650
Connection ~ 6450 2850
Connection ~ 6450 3050
Connection ~ 6450 3250
Wire Wire Line
	6450 1650 6450 1850
Wire Wire Line
	6450 1850 6450 2050
Wire Wire Line
	6450 2050 6450 2250
Wire Wire Line
	6450 2250 6450 2450
Wire Wire Line
	6450 2450 6450 2650
Wire Wire Line
	6450 2650 6450 2850
Wire Wire Line
	6450 2850 6450 3050
Wire Wire Line
	6450 3050 6450 3250
Wire Wire Line
	6450 3250 6450 3450
Wire Wire Line
	6900 3450 7350 3450
Wire Wire Line
	6300 1000 6900 1000
Wire Wire Line
	7500 1000 7500 1450
Wire Wire Line
	6900 900  6900 1000
Connection ~ 6900 1000
Wire Wire Line
	6900 1000 7500 1000
Wire Wire Line
	6450 1650 6450 1450
Wire Wire Line
	6450 1450 6650 1450
Connection ~ 6450 1650
Wire Wire Line
	6650 1550 6300 1550
Wire Wire Line
	6300 1000 6300 1550
Wire Wire Line
	6900 3450 6900 3650
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 5DD50BB5
P 6850 2450
AR Path="/5D2C0CE4/5DD50BB5" Ref="J?"  Part="1" 
AR Path="/5D2C0B92/5DD50BB5" Ref="J15"  Part="1" 
F 0 "J15" H 6900 1200 50  0000 C CNN
F 1 "Microcode ROM Connector 2" H 6900 1300 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 6850 2450 50  0001 C CNN
F 3 "~" H 6850 2450 50  0001 C CNN
	1    6850 2450
	1    0    0    1   
$EndComp
Wire Wire Line
	6450 3450 6900 3450
Connection ~ 6900 3450
Wire Wire Line
	7350 3350 7350 3450
Connection ~ 7350 3350
Text GLabel 1850 1750 0    50   Input ~ 0
~A=B
Text GLabel 1850 1950 0    50   Input ~ 0
~CarryOut
Text GLabel 1850 2150 0    50   Input ~ 0
ControlClock
NoConn ~ 3950 1650
NoConn ~ 3950 1850
NoConn ~ 3950 2050
Text GLabel 4350 2350 2    50   Output ~ 0
ControlWord[0..31]
Text GLabel 1500 2450 0    50   Output ~ 0
ControlWord[0..31]
Wire Bus Line
	4350 2350 4200 2350
Text GLabel 5550 1850 0    50   Input ~ 0
IR[8..15]
Entry Wire Line
	5800 1750 5700 1850
Wire Wire Line
	5800 1750 6650 1750
Entry Wire Line
	5800 1950 5700 2050
Wire Wire Line
	5800 1950 6650 1950
Entry Wire Line
	5800 2150 5700 2250
Wire Wire Line
	5800 2150 6650 2150
Entry Wire Line
	5800 2350 5700 2450
Wire Wire Line
	5800 2350 6650 2350
Text Label 5800 2150 0    50   ~ 0
IR10
Text Label 5800 2350 0    50   ~ 0
IR8
Wire Wire Line
	5800 2550 6650 2550
Wire Wire Line
	5800 2750 6650 2750
Wire Wire Line
	5800 2950 6650 2950
Wire Wire Line
	5800 3150 6650 3150
Text Label 5800 1950 0    50   ~ 0
IR12
Text Label 5800 1750 0    50   ~ 0
IR14
Entry Wire Line
	8000 1650 8100 1750
Wire Wire Line
	8000 1650 7150 1650
Entry Wire Line
	8000 1850 8100 1950
Wire Wire Line
	8000 1850 7150 1850
Entry Wire Line
	8000 2050 8100 2150
Wire Wire Line
	8000 2050 7150 2050
Entry Wire Line
	8000 2250 8100 2350
Wire Wire Line
	8000 2250 7150 2250
Text Label 8000 2050 2    50   ~ 0
IR11
Text Label 8000 2250 2    50   ~ 0
IR9
Wire Wire Line
	8000 2450 7150 2450
Wire Wire Line
	8000 2650 7150 2650
Wire Wire Line
	8000 2850 7150 2850
Wire Wire Line
	8000 3050 7150 3050
Text Label 8000 1850 2    50   ~ 0
IR13
Text Label 8000 1650 2    50   ~ 0
IR15
Text GLabel 8250 1750 2    50   Input ~ 0
IR[8..15]
Wire Bus Line
	8250 1750 8100 1750
Wire Bus Line
	5550 1850 5700 1850
NoConn ~ 8000 2450
NoConn ~ 8000 2650
NoConn ~ 8000 2850
NoConn ~ 8000 3050
NoConn ~ 5800 2550
NoConn ~ 5800 2750
NoConn ~ 5800 2950
NoConn ~ 5800 3150
Wire Bus Line
	5700 1850 5700 2450
Wire Bus Line
	8100 1750 8100 2350
Wire Bus Line
	7500 5050 7500 5750
Wire Bus Line
	9050 4650 9050 5550
Wire Bus Line
	4200 2350 4200 5350
Wire Bus Line
	1650 2450 1650 5450
$EndSCHEMATC
