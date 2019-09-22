EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 21 22
Title "ALU"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 "The bits of the constant register provide the ALU control signals."
Comment4 "The ALU operands are directly wired to the A and B registers."
$EndDescr
$Comp
L 74xx:74LS181 U69
U 1 1 5D7E57B3
P 3050 2050
F 0 "U69" H 2800 3050 50  0000 C CNN
F 1 "74F181" H 2800 2950 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 3050 2050 50  0001 C CNN
F 3 "74xx/74F181.pdf" H 3050 2050 50  0001 C CNN
	1    3050 2050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0179
U 1 1 5D7E905F
P 3050 1050
F 0 "#PWR0179" H 3050 900 50  0001 C CNN
F 1 "VCC" H 3067 1223 50  0000 C CNN
F 2 "" H 3050 1050 50  0001 C CNN
F 3 "" H 3050 1050 50  0001 C CNN
	1    3050 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0180
U 1 1 5D7EA36F
P 3050 3050
F 0 "#PWR0180" H 3050 2800 50  0001 C CNN
F 1 "GND" H 3055 2877 50  0000 C CNN
F 2 "" H 3050 3050 50  0001 C CNN
F 3 "" H 3050 3050 50  0001 C CNN
	1    3050 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D7F19F0
P 7800 5950
AR Path="/5D2C0761/5D7F19F0" Ref="C?"  Part="1" 
AR Path="/5D2C0CE4/5D7F19F0" Ref="C74"  Part="1" 
F 0 "C74" H 7915 5996 50  0000 L CNN
F 1 "100nF" H 7915 5905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7838 5800 50  0001 C CNN
F 3 "~" H 7800 5950 50  0001 C CNN
	1    7800 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D7F19F6
P 8300 5950
AR Path="/5D2C0761/5D7F19F6" Ref="C?"  Part="1" 
AR Path="/5D2C0CE4/5D7F19F6" Ref="C75"  Part="1" 
F 0 "C75" H 8415 5996 50  0000 L CNN
F 1 "100nF" H 8415 5905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8338 5800 50  0001 C CNN
F 3 "~" H 8300 5950 50  0001 C CNN
	1    8300 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D7F19FC
P 8800 5950
AR Path="/5D2C0761/5D7F19FC" Ref="C?"  Part="1" 
AR Path="/5D2C0CE4/5D7F19FC" Ref="C76"  Part="1" 
F 0 "C76" H 8915 5996 50  0000 L CNN
F 1 "100nF" H 8915 5905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8838 5800 50  0001 C CNN
F 3 "~" H 8800 5950 50  0001 C CNN
	1    8800 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D7F1A02
P 9300 5950
AR Path="/5D2C0761/5D7F1A02" Ref="C?"  Part="1" 
AR Path="/5D2C0CE4/5D7F1A02" Ref="C77"  Part="1" 
F 0 "C77" H 9415 5996 50  0000 L CNN
F 1 "100nF" H 9415 5905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9338 5800 50  0001 C CNN
F 3 "~" H 9300 5950 50  0001 C CNN
	1    9300 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D7F1A0E
P 7800 6100
AR Path="/5D2C0761/5D7F1A0E" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CE4/5D7F1A0E" Ref="#PWR0190"  Part="1" 
F 0 "#PWR0190" H 7800 5850 50  0001 C CNN
F 1 "GND" H 7805 5927 50  0000 C CNN
F 2 "" H 7800 6100 50  0001 C CNN
F 3 "" H 7800 6100 50  0001 C CNN
	1    7800 6100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D7F1A14
P 7800 5800
AR Path="/5D2C0761/5D7F1A14" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CE4/5D7F1A14" Ref="#PWR0189"  Part="1" 
F 0 "#PWR0189" H 7800 5650 50  0001 C CNN
F 1 "VCC" H 7817 5973 50  0000 C CNN
F 2 "" H 7800 5800 50  0001 C CNN
F 3 "" H 7800 5800 50  0001 C CNN
	1    7800 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5800 8300 5800
Connection ~ 7800 5800
Wire Wire Line
	8300 5800 8800 5800
Connection ~ 8300 5800
Wire Wire Line
	8800 5800 9300 5800
Connection ~ 8800 5800
Wire Wire Line
	9300 6100 8800 6100
Wire Wire Line
	8800 6100 8300 6100
Connection ~ 8800 6100
Wire Wire Line
	8300 6100 7800 6100
Connection ~ 8300 6100
Connection ~ 7800 6100
Text GLabel 850  1250 0    50   Input ~ 0
A[0..7]
Text GLabel 850  1650 0    50   Input ~ 0
B[0..7]
Entry Wire Line
	2150 1250 2250 1350
Wire Wire Line
	2250 1350 2450 1350
Text Label 2300 1350 0    50   ~ 0
A0
Entry Wire Line
	2150 1350 2250 1450
Wire Wire Line
	2250 1450 2450 1450
Text Label 2300 1450 0    50   ~ 0
A1
Entry Wire Line
	2150 1450 2250 1550
Wire Wire Line
	2250 1550 2450 1550
Text Label 2300 1550 0    50   ~ 0
A2
Entry Wire Line
	2150 1550 2250 1650
Wire Wire Line
	2250 1650 2450 1650
Text Label 2300 1650 0    50   ~ 0
A3
Entry Wire Line
	2150 1650 2250 1750
Wire Wire Line
	2250 1750 2450 1750
Text Label 2300 1750 0    50   ~ 0
B0
Entry Wire Line
	2150 1750 2250 1850
Wire Wire Line
	2250 1850 2450 1850
Text Label 2300 1850 0    50   ~ 0
B1
Entry Wire Line
	2150 1850 2250 1950
Wire Wire Line
	2250 1950 2450 1950
Text Label 2300 1950 0    50   ~ 0
B2
Entry Wire Line
	2150 1950 2250 2050
Wire Wire Line
	2250 2050 2450 2050
Text Label 2300 2050 0    50   ~ 0
B3
Entry Wire Line
	2150 2050 2250 2150
Wire Wire Line
	2250 2150 2450 2150
Text Label 2300 2150 0    50   ~ 0
C0
Entry Wire Line
	2150 2150 2250 2250
Wire Wire Line
	2250 2250 2450 2250
Text Label 2300 2250 0    50   ~ 0
C1
Entry Wire Line
	2150 2250 2250 2350
Wire Wire Line
	2250 2350 2450 2350
Text Label 2300 2350 0    50   ~ 0
C2
Entry Wire Line
	2150 2350 2250 2450
Wire Wire Line
	2250 2450 2450 2450
Text Label 2300 2450 0    50   ~ 0
C3
Text GLabel 850  2050 0    50   Input ~ 0
C[0..7]
Entry Wire Line
	2150 2550 2250 2650
Wire Wire Line
	2250 2650 2450 2650
Text Label 2300 2650 0    50   ~ 0
C5
Entry Wire Line
	2150 2650 2250 2750
Wire Wire Line
	2250 2750 2450 2750
Text Label 2300 2750 0    50   ~ 0
C4
NoConn ~ 3650 2550
NoConn ~ 3650 2650
Wire Bus Line
	950  2050 850  2050
Wire Bus Line
	2150 2050 950  2050
Connection ~ 950  2050
Wire Bus Line
	2150 1250 1150 1250
Wire Bus Line
	2150 1650 1050 1650
Connection ~ 1050 1650
Wire Bus Line
	1050 1650 850  1650
Connection ~ 1150 1250
Wire Bus Line
	1150 1250 850  1250
Wire Wire Line
	3650 2250 3800 2250
Wire Wire Line
	3800 2250 3800 3350
Wire Wire Line
	3800 3350 1950 3350
Wire Wire Line
	1950 5350 2450 5350
Wire Bus Line
	1150 3850 2150 3850
Wire Bus Line
	1050 4250 2150 4250
Wire Bus Line
	2150 4650 950  4650
NoConn ~ 3650 5250
NoConn ~ 3650 5150
Text Label 2300 5250 0    50   ~ 0
C5
Wire Wire Line
	2250 5250 2450 5250
Entry Wire Line
	2150 5150 2250 5250
Text Label 2300 5050 0    50   ~ 0
C3
Wire Wire Line
	2250 5050 2450 5050
Entry Wire Line
	2150 4950 2250 5050
Text Label 2300 4950 0    50   ~ 0
C2
Wire Wire Line
	2250 4950 2450 4950
Entry Wire Line
	2150 4850 2250 4950
Text Label 2300 4850 0    50   ~ 0
C1
Wire Wire Line
	2250 4850 2450 4850
Entry Wire Line
	2150 4750 2250 4850
Text Label 2300 4750 0    50   ~ 0
C0
Wire Wire Line
	2250 4750 2450 4750
Entry Wire Line
	2150 4650 2250 4750
Text Label 2300 4650 0    50   ~ 0
B7
Wire Wire Line
	2250 4650 2450 4650
Entry Wire Line
	2150 4550 2250 4650
Text Label 2300 4550 0    50   ~ 0
B6
Wire Wire Line
	2250 4550 2450 4550
Entry Wire Line
	2150 4450 2250 4550
Text Label 2300 4450 0    50   ~ 0
B5
Wire Wire Line
	2250 4450 2450 4450
Entry Wire Line
	2150 4350 2250 4450
Text Label 2300 4350 0    50   ~ 0
B4
Wire Wire Line
	2250 4350 2450 4350
Entry Wire Line
	2150 4250 2250 4350
Text Label 2300 4250 0    50   ~ 0
A7
Wire Wire Line
	2250 4250 2450 4250
Entry Wire Line
	2150 4150 2250 4250
Text Label 2300 4150 0    50   ~ 0
A6
Wire Wire Line
	2250 4150 2450 4150
Entry Wire Line
	2150 4050 2250 4150
Text Label 2300 4050 0    50   ~ 0
A5
Wire Wire Line
	2250 4050 2450 4050
Entry Wire Line
	2150 3950 2250 4050
Text Label 2300 3950 0    50   ~ 0
A4
Wire Wire Line
	2250 3950 2450 3950
Entry Wire Line
	2150 3850 2250 3950
$Comp
L power:GND #PWR0182
U 1 1 5D7EA8C4
P 3050 5650
F 0 "#PWR0182" H 3050 5400 50  0001 C CNN
F 1 "GND" H 3055 5477 50  0000 C CNN
F 2 "" H 3050 5650 50  0001 C CNN
F 3 "" H 3050 5650 50  0001 C CNN
	1    3050 5650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS181 U70
U 1 1 5D7E72AF
P 3050 4650
F 0 "U70" H 2800 5650 50  0000 C CNN
F 1 "74F181" H 2800 5550 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 3050 4650 50  0001 C CNN
F 3 "74xx/74F181.pdf" H 3050 4650 50  0001 C CNN
	1    3050 4650
	1    0    0    -1  
$EndComp
Wire Bus Line
	1150 1250 1150 3850
Wire Bus Line
	1050 1650 1050 4250
Wire Bus Line
	950  2050 950  4650
Wire Wire Line
	1950 3350 1950 5350
Wire Bus Line
	6850 600  9150 600 
Text GLabel 9150 600  2    50   Output ~ 0
DataBus[0..7]
Text Label 6400 2050 0    50   ~ 0
DataBus0
Text Label 6400 1950 0    50   ~ 0
DataBus1
Text Label 6400 1850 0    50   ~ 0
DataBus2
Text Label 6400 1750 0    50   ~ 0
DataBus3
Text Label 6400 1650 0    50   ~ 0
DataBus4
Text Label 6400 1550 0    50   ~ 0
DataBus5
Text Label 6400 1450 0    50   ~ 0
DataBus6
Text Label 6400 1350 0    50   ~ 0
DataBus7
Wire Wire Line
	6750 2050 6400 2050
Wire Wire Line
	6400 1950 6750 1950
Wire Wire Line
	6750 1850 6400 1850
Wire Wire Line
	6400 1750 6750 1750
Wire Wire Line
	6750 1650 6400 1650
Wire Wire Line
	6400 1550 6750 1550
Wire Wire Line
	6750 1450 6400 1450
Wire Wire Line
	6400 1350 6750 1350
Entry Wire Line
	6750 1450 6850 1350
Entry Wire Line
	6750 1350 6850 1250
Entry Wire Line
	6750 2050 6850 1950
Entry Wire Line
	6750 1950 6850 1850
Entry Wire Line
	6750 1850 6850 1750
Entry Wire Line
	6750 1750 6850 1650
Entry Wire Line
	6750 1650 6850 1550
Entry Wire Line
	6750 1550 6850 1450
$Comp
L power:VCC #PWR0184
U 1 1 5D804E58
P 5400 2250
F 0 "#PWR0184" H 5400 2100 50  0001 C CNN
F 1 "VCC" V 5418 2377 50  0000 L CNN
F 2 "" H 5400 2250 50  0001 C CNN
F 3 "" H 5400 2250 50  0001 C CNN
	1    5400 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0186
U 1 1 5D8049CB
P 5900 2650
F 0 "#PWR0186" H 5900 2400 50  0001 C CNN
F 1 "GND" H 5905 2477 50  0000 C CNN
F 2 "" H 5900 2650 50  0001 C CNN
F 3 "" H 5900 2650 50  0001 C CNN
	1    5900 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0185
U 1 1 5D80445D
P 5900 1050
F 0 "#PWR0185" H 5900 900 50  0001 C CNN
F 1 "VCC" H 5917 1223 50  0000 C CNN
F 2 "" H 5900 1050 50  0001 C CNN
F 3 "" H 5900 1050 50  0001 C CNN
	1    5900 1050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U71
U 1 1 5D7FF31F
P 5900 1850
F 0 "U71" H 5650 2650 50  0000 C CNN
F 1 "74LS245" H 5650 2550 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 5900 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 5900 1850 50  0001 C CNN
	1    5900 1850
	1    0    0    -1  
$EndComp
Entry Wire Line
	4100 1550 4200 1450
Entry Wire Line
	4100 1650 4200 1550
Entry Wire Line
	4100 1750 4200 1650
Entry Wire Line
	4100 1850 4200 1750
Wire Wire Line
	4100 1550 3650 1550
Wire Wire Line
	3650 1650 4100 1650
Wire Wire Line
	4100 1750 3650 1750
Wire Wire Line
	3650 1850 4100 1850
Entry Wire Line
	4100 4150 4200 4050
Entry Wire Line
	4100 4250 4200 4150
Entry Wire Line
	4100 4350 4200 4250
Entry Wire Line
	4100 4450 4200 4350
Wire Wire Line
	4100 4150 3650 4150
Wire Wire Line
	3650 4250 4100 4250
Wire Wire Line
	4100 4350 3650 4350
Wire Wire Line
	3650 4450 4100 4450
Text Label 4050 1550 2    50   ~ 0
AluResult0
Text Label 4050 1650 2    50   ~ 0
AluResult1
Text Label 4050 1750 2    50   ~ 0
AluResult2
Text Label 4050 1850 2    50   ~ 0
AluResult3
Text Label 4050 4150 2    50   ~ 0
AluResult4
Text Label 4050 4250 2    50   ~ 0
AluResult5
Text Label 4050 4350 2    50   ~ 0
AluResult6
Text Label 4050 4450 2    50   ~ 0
AluResult7
Entry Wire Line
	4850 1250 4950 1350
Entry Wire Line
	4850 1350 4950 1450
Entry Wire Line
	4850 1450 4950 1550
Entry Wire Line
	4850 1550 4950 1650
Entry Wire Line
	4850 1650 4950 1750
Entry Wire Line
	4850 1750 4950 1850
Entry Wire Line
	4850 1850 4950 1950
Entry Wire Line
	4850 1950 4950 2050
Wire Bus Line
	4200 1150 4850 1150
Wire Wire Line
	4950 1350 5400 1350
Wire Wire Line
	5400 1450 4950 1450
Wire Wire Line
	4950 1550 5400 1550
Wire Wire Line
	5400 1650 4950 1650
Wire Wire Line
	5400 1750 4950 1750
Wire Wire Line
	4950 1850 5400 1850
Wire Wire Line
	5400 1950 4950 1950
Wire Wire Line
	4950 2050 5400 2050
Text Label 5400 1350 2    50   ~ 0
AluResult7
Text Label 5400 1450 2    50   ~ 0
AluResult6
Text Label 5400 1550 2    50   ~ 0
AluResult5
Text Label 5400 1650 2    50   ~ 0
AluResult4
Text Label 5400 1750 2    50   ~ 0
AluResult3
Text Label 5400 1850 2    50   ~ 0
AluResult2
Text Label 5400 1950 2    50   ~ 0
AluResult1
Text Label 5400 2050 2    50   ~ 0
AluResult0
$Comp
L power:VCC #PWR0181
U 1 1 5D7E9918
P 3050 3650
F 0 "#PWR0181" H 3050 3500 50  0001 C CNN
F 1 "VCC" H 3067 3823 50  0000 C CNN
F 2 "" H 3050 3650 50  0001 C CNN
F 3 "" H 3050 3650 50  0001 C CNN
	1    3050 3650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0183
U 1 1 5D8713D2
P 4450 1000
F 0 "#PWR0183" H 4450 850 50  0001 C CNN
F 1 "VCC" H 4467 1173 50  0000 C CNN
F 2 "" H 4450 1000 50  0001 C CNN
F 3 "" H 4450 1000 50  0001 C CNN
	1    4450 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1000 4450 1950
Wire Wire Line
	4450 2350 3650 2350
Wire Wire Line
	4450 4950 3650 4950
Connection ~ 4450 2350
$Comp
L 74xx:74LS377 U?
U 1 1 5D879A71
P 5900 5350
AR Path="/5D2C0CA7/5D879A71" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5D879A71" Ref="U?"  Part="1" 
AR Path="/5D2C0CE4/5D879A71" Ref="U72"  Part="1" 
F 0 "U72" H 5700 6150 50  0000 C CNN
F 1 "74F377" H 5650 6050 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 5900 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 5900 5350 50  0001 C CNN
	1    5900 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0188
U 1 1 5D87C428
P 5900 6150
F 0 "#PWR0188" H 5900 5900 50  0001 C CNN
F 1 "GND" H 5905 5977 50  0000 C CNN
F 2 "" H 5900 6150 50  0001 C CNN
F 3 "" H 5900 6150 50  0001 C CNN
	1    5900 6150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0187
U 1 1 5D87C88D
P 5900 4550
F 0 "#PWR0187" H 5900 4400 50  0001 C CNN
F 1 "VCC" H 5917 4723 50  0000 C CNN
F 2 "" H 5900 4550 50  0001 C CNN
F 3 "" H 5900 4550 50  0001 C CNN
	1    5900 4550
	1    0    0    -1  
$EndComp
NoConn ~ 6400 5550
NoConn ~ 6400 5450
NoConn ~ 6400 5350
NoConn ~ 6400 5250
NoConn ~ 6400 5150
NoConn ~ 6400 5050
NoConn ~ 5400 5050
NoConn ~ 5400 5150
NoConn ~ 5400 5250
NoConn ~ 5400 5350
NoConn ~ 5400 5450
NoConn ~ 5400 5550
Text GLabel 1250 6850 0    50   Input ~ 0
RegisterClock
Wire Wire Line
	5400 5750 4850 5750
Wire Wire Line
	4850 5750 4850 6850
Wire Wire Line
	4850 6850 1250 6850
Wire Wire Line
	5400 2350 4750 2350
Wire Wire Line
	4950 5850 5400 5850
Wire Wire Line
	4750 2350 4750 6700
Text GLabel 1250 6700 0    50   Input ~ 0
~EO
Wire Wire Line
	4750 6700 1250 6700
Wire Wire Line
	4450 2350 4450 4950
Wire Wire Line
	5400 4950 4450 4950
Connection ~ 4450 4950
Wire Wire Line
	3650 4850 5400 4850
Wire Wire Line
	4950 7000 4950 5850
Text GLabel 1250 7000 0    50   Input ~ 0
~FI
Wire Wire Line
	1250 7000 4950 7000
Text Notes 6050 6100 0    50   ~ 0
Flags Register
Text GLabel 9150 950  2    50   Output ~ 0
~A=B
Wire Wire Line
	6400 4850 6450 4850
Text GLabel 9150 750  2    50   Output ~ 0
~CarryOut
Wire Wire Line
	6950 750  9150 750 
Wire Wire Line
	9150 950  7050 950 
Wire Wire Line
	7050 950  7050 2300
NoConn ~ 4350 5700
$Comp
L power:GND #PWR?
U 1 1 5D907C38
P 9650 4900
AR Path="/5D2C07CD/5D907C38" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5D907C38" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5D907C38" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5D907C38" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CE4/5D907C38" Ref="#PWR0192"  Part="1" 
F 0 "#PWR0192" H 9650 4650 50  0001 C CNN
F 1 "GND" H 9655 4727 50  0000 C CNN
F 2 "" H 9650 4900 50  0001 C CNN
F 3 "" H 9650 4900 50  0001 C CNN
	1    9650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2200 6950 2200
Wire Wire Line
	6950 2200 6950 750 
Wire Wire Line
	6550 2300 7050 2300
Wire Wire Line
	6550 4950 6400 4950
$Comp
L Device:LED D?
U 1 1 5DA4D6A2
P 9450 4200
AR Path="/5D2C07CD/5DA4D6A2" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DA4D6A2" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DA4D6A2" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DA4D6A2" Ref="D?"  Part="1" 
AR Path="/5D2C0CE4/5DA4D6A2" Ref="D3"  Part="1" 
F 0 "D3" V 9489 4083 50  0000 R CNN
F 1 "LED" V 9398 4083 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 9450 4200 50  0001 C CNN
F 3 "~" H 9450 4200 50  0001 C CNN
	1    9450 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 4350 9450 4400
$Comp
L Device:R R?
U 1 1 5DA4D6A9
P 9450 4550
AR Path="/5D2C0CA7/5DA4D6A9" Ref="R?"  Part="1" 
AR Path="/5D2C0CE4/5DA4D6A9" Ref="R28"  Part="1" 
F 0 "R28" H 9520 4596 50  0000 L CNN
F 1 "220Ω" H 9520 4505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9380 4550 50  0001 C CNN
F 3 "~" H 9450 4550 50  0001 C CNN
	1    9450 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DA528C5
P 9800 4200
AR Path="/5D2C07CD/5DA528C5" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DA528C5" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DA528C5" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DA528C5" Ref="D?"  Part="1" 
AR Path="/5D2C0CE4/5DA528C5" Ref="D4"  Part="1" 
F 0 "D4" V 9839 4083 50  0000 R CNN
F 1 "LED" V 9748 4083 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 9800 4200 50  0001 C CNN
F 3 "~" H 9800 4200 50  0001 C CNN
	1    9800 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 4350 9800 4400
$Comp
L Device:R R?
U 1 1 5DA528CC
P 9800 4550
AR Path="/5D2C0CA7/5DA528CC" Ref="R?"  Part="1" 
AR Path="/5D2C0CE4/5DA528CC" Ref="R29"  Part="1" 
F 0 "R29" H 9870 4596 50  0000 L CNN
F 1 "220Ω" H 9870 4505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9730 4550 50  0001 C CNN
F 3 "~" H 9800 4550 50  0001 C CNN
	1    9800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4700 9450 4800
Wire Wire Line
	9800 4800 9800 4700
Wire Wire Line
	9450 4050 9450 3350
Wire Wire Line
	9800 4050 9800 3350
Wire Wire Line
	6550 2300 6550 4950
Wire Wire Line
	6450 2200 6450 4850
Text GLabel 9450 3350 1    50   Input ~ 0
~CarryOut
Text GLabel 9800 3350 1    50   Input ~ 0
~A=B
Wire Wire Line
	9800 4800 9650 4800
Wire Wire Line
	8600 3200 8600 3500
$Comp
L power:GND #PWR?
U 1 1 5D8E51A7
P 8600 3200
AR Path="/5D2C12A5/5D8E51A7" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CE4/5D8E51A7" Ref="#PWR0191"  Part="1" 
F 0 "#PWR0191" H 8600 2950 50  0001 C CNN
F 1 "GND" H 8605 3027 50  0000 C CNN
F 2 "" H 8600 3200 50  0001 C CNN
F 3 "" H 8600 3200 50  0001 C CNN
	1    8600 3200
	-1   0    0    1   
$EndComp
Entry Wire Line
	7900 3050 7800 2950
Wire Wire Line
	7900 3050 7900 3500
Text Label 7900 3450 1    50   ~ 0
AluResult6
Wire Wire Line
	8100 3050 8100 3500
Text Label 8100 3450 1    50   ~ 0
AluResult4
$Comp
L Connector:Conn_01x09_Female J?
U 1 1 5D8E51B2
P 8200 3700
AR Path="/5D29E36D/5D8E51B2" Ref="J?"  Part="1" 
AR Path="/5D2C12A5/5D8E51B2" Ref="J?"  Part="1" 
AR Path="/5D2C0CE4/5D8E51B2" Ref="J10"  Part="1" 
F 0 "J10" V 8350 3650 50  0000 C CNN
F 1 "ALU Result LED Connector" V 8450 3650 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 8200 3700 50  0001 C CNN
F 3 "~" H 8200 3700 50  0001 C CNN
	1    8200 3700
	0    1    1    0   
$EndComp
Text Label 8500 3450 1    50   ~ 0
AluResult0
Text Label 8400 3450 1    50   ~ 0
AluResult1
Text Label 8300 3450 1    50   ~ 0
AluResult2
Text Label 8200 3450 1    50   ~ 0
AluResult3
Text Label 8000 3450 1    50   ~ 0
AluResult5
Text Label 7800 3450 1    50   ~ 0
AluResult7
Wire Wire Line
	7800 3050 7800 3500
Wire Wire Line
	8000 3050 8000 3500
Wire Wire Line
	8200 3050 8200 3500
Wire Wire Line
	8300 3050 8300 3500
Wire Wire Line
	8400 3050 8400 3500
Wire Wire Line
	8500 3050 8500 3500
Entry Wire Line
	7800 3050 7700 2950
Entry Wire Line
	8000 3050 7900 2950
Entry Wire Line
	8500 3050 8400 2950
Entry Wire Line
	8400 3050 8300 2950
Entry Wire Line
	8300 3050 8200 2950
Entry Wire Line
	8200 3050 8100 2950
Entry Wire Line
	8100 3050 8000 2950
Connection ~ 4200 2950
Connection ~ 9650 4800
Wire Wire Line
	9650 4800 9450 4800
Wire Wire Line
	9650 4800 9650 4900
Text Label 5250 4950 0    50   ~ 0
A=B
Text Label 5200 4850 0    50   ~ 0
Cn+4
Wire Wire Line
	4450 2250 4450 2350
$Comp
L Device:R R?
U 1 1 5D8CF661
P 4450 2100
AR Path="/5D2C0CA7/5D8CF661" Ref="R?"  Part="1" 
AR Path="/5D2C0CE4/5D8CF661" Ref="R38"  Part="1" 
F 0 "R38" H 4520 2146 50  0000 L CNN
F 1 "4.7kΩ" H 4520 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4380 2100 50  0001 C CNN
F 3 "~" H 4450 2100 50  0001 C CNN
	1    4450 2100
	1    0    0    -1  
$EndComp
Wire Bus Line
	2150 1250 2150 1550
Wire Bus Line
	2150 1650 2150 1950
Wire Bus Line
	2150 4250 2150 4550
Wire Bus Line
	2150 3850 2150 4150
Wire Bus Line
	2150 4650 2150 5150
Wire Bus Line
	2150 2050 2150 2650
Wire Bus Line
	4200 1150 4200 2950
Wire Bus Line
	4200 2950 4200 4350
Wire Bus Line
	4850 1150 4850 1950
Wire Bus Line
	6850 600  6850 1950
Wire Bus Line
	4200 2950 8400 2950
$EndSCHEMATC
