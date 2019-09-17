EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 23 24
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
L 74xx:74LS181 U84
U 1 1 5D7E57B3
P 3050 2050
F 0 "U84" H 2800 3050 50  0000 C CNN
F 1 "74F181" H 2800 2950 50  0000 C CNN
F 2 "" H 3050 2050 50  0001 C CNN
F 3 "74xx/74F181.pdf" H 3050 2050 50  0001 C CNN
	1    3050 2050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0285
U 1 1 5D7E905F
P 3050 1050
F 0 "#PWR0285" H 3050 900 50  0001 C CNN
F 1 "VCC" H 3067 1223 50  0000 C CNN
F 2 "" H 3050 1050 50  0001 C CNN
F 3 "" H 3050 1050 50  0001 C CNN
	1    3050 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0286
U 1 1 5D7EA36F
P 3050 3050
F 0 "#PWR0286" H 3050 2800 50  0001 C CNN
F 1 "GND" H 3055 2877 50  0000 C CNN
F 2 "" H 3050 3050 50  0001 C CNN
F 3 "" H 3050 3050 50  0001 C CNN
	1    3050 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D7F19F0
P 8000 6350
AR Path="/5D2C0761/5D7F19F0" Ref="C?"  Part="1" 
AR Path="/5D2C0CE4/5D7F19F0" Ref="C79"  Part="1" 
F 0 "C79" H 8115 6396 50  0000 L CNN
F 1 "100nF" H 8115 6305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8038 6200 50  0001 C CNN
F 3 "~" H 8000 6350 50  0001 C CNN
	1    8000 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D7F19F6
P 8500 6350
AR Path="/5D2C0761/5D7F19F6" Ref="C?"  Part="1" 
AR Path="/5D2C0CE4/5D7F19F6" Ref="C80"  Part="1" 
F 0 "C80" H 8615 6396 50  0000 L CNN
F 1 "100nF" H 8615 6305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8538 6200 50  0001 C CNN
F 3 "~" H 8500 6350 50  0001 C CNN
	1    8500 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D7F19FC
P 9000 6350
AR Path="/5D2C0761/5D7F19FC" Ref="C?"  Part="1" 
AR Path="/5D2C0CE4/5D7F19FC" Ref="C81"  Part="1" 
F 0 "C81" H 9115 6396 50  0000 L CNN
F 1 "100nF" H 9115 6305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9038 6200 50  0001 C CNN
F 3 "~" H 9000 6350 50  0001 C CNN
	1    9000 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D7F1A02
P 9500 6350
AR Path="/5D2C0761/5D7F1A02" Ref="C?"  Part="1" 
AR Path="/5D2C0CE4/5D7F1A02" Ref="C82"  Part="1" 
F 0 "C82" H 9615 6396 50  0000 L CNN
F 1 "100nF" H 9615 6305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9538 6200 50  0001 C CNN
F 3 "~" H 9500 6350 50  0001 C CNN
	1    9500 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D7F1A0E
P 8000 6500
AR Path="/5D2C0761/5D7F1A0E" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CE4/5D7F1A0E" Ref="#PWR0287"  Part="1" 
F 0 "#PWR0287" H 8000 6250 50  0001 C CNN
F 1 "GND" H 8005 6327 50  0000 C CNN
F 2 "" H 8000 6500 50  0001 C CNN
F 3 "" H 8000 6500 50  0001 C CNN
	1    8000 6500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D7F1A14
P 8000 6200
AR Path="/5D2C0761/5D7F1A14" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CE4/5D7F1A14" Ref="#PWR0288"  Part="1" 
F 0 "#PWR0288" H 8000 6050 50  0001 C CNN
F 1 "VCC" H 8017 6373 50  0000 C CNN
F 2 "" H 8000 6200 50  0001 C CNN
F 3 "" H 8000 6200 50  0001 C CNN
	1    8000 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 6200 8500 6200
Connection ~ 8000 6200
Wire Wire Line
	8500 6200 9000 6200
Connection ~ 8500 6200
Wire Wire Line
	9000 6200 9500 6200
Connection ~ 9000 6200
Wire Wire Line
	9500 6500 9000 6500
Wire Wire Line
	9000 6500 8500 6500
Connection ~ 9000 6500
Wire Wire Line
	8500 6500 8000 6500
Connection ~ 8500 6500
Connection ~ 8000 6500
Text GLabel 750  1250 0    50   Input ~ 0
A
Text GLabel 750  1650 0    50   Input ~ 0
B
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
Text GLabel 750  2050 0    50   Input ~ 0
C
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
	950  2050 750  2050
Wire Bus Line
	2150 2050 950  2050
Connection ~ 950  2050
Wire Bus Line
	2150 1250 1150 1250
Wire Bus Line
	2150 1650 1050 1650
Connection ~ 1050 1650
Wire Bus Line
	1050 1650 750  1650
Connection ~ 1150 1250
Wire Bus Line
	1150 1250 750  1250
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
L power:GND #PWR0289
U 1 1 5D7EA8C4
P 3050 5650
F 0 "#PWR0289" H 3050 5400 50  0001 C CNN
F 1 "GND" H 3055 5477 50  0000 C CNN
F 2 "" H 3050 5650 50  0001 C CNN
F 3 "" H 3050 5650 50  0001 C CNN
	1    3050 5650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS181 U85
U 1 1 5D7E72AF
P 3050 4650
F 0 "U85" H 2800 5650 50  0000 C CNN
F 1 "74F181" H 2800 5550 50  0000 C CNN
F 2 "" H 3050 4650 50  0001 C CNN
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
DataBus
Text Label 6400 2050 0    50   ~ 0
DataBus7
Text Label 6400 1950 0    50   ~ 0
DataBus6
Text Label 6400 1850 0    50   ~ 0
DataBus5
Text Label 6400 1750 0    50   ~ 0
DataBus4
Text Label 6400 1650 0    50   ~ 0
DataBus3
Text Label 6400 1550 0    50   ~ 0
DataBus2
Text Label 6400 1450 0    50   ~ 0
DataBus1
Text Label 6400 1350 0    50   ~ 0
DataBus0
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
L power:VCC #PWR0290
U 1 1 5D804E58
P 5400 2250
F 0 "#PWR0290" H 5400 2100 50  0001 C CNN
F 1 "VCC" V 5418 2377 50  0000 L CNN
F 2 "" H 5400 2250 50  0001 C CNN
F 3 "" H 5400 2250 50  0001 C CNN
	1    5400 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0291
U 1 1 5D8049CB
P 5900 2650
F 0 "#PWR0291" H 5900 2400 50  0001 C CNN
F 1 "GND" H 5905 2477 50  0000 C CNN
F 2 "" H 5900 2650 50  0001 C CNN
F 3 "" H 5900 2650 50  0001 C CNN
	1    5900 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0292
U 1 1 5D80445D
P 5900 1050
F 0 "#PWR0292" H 5900 900 50  0001 C CNN
F 1 "VCC" H 5917 1223 50  0000 C CNN
F 2 "" H 5900 1050 50  0001 C CNN
F 3 "" H 5900 1050 50  0001 C CNN
	1    5900 1050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U86
U 1 1 5D7FF31F
P 5900 1850
F 0 "U86" H 5650 2650 50  0000 C CNN
F 1 "74LS245" H 5650 2550 50  0000 C CNN
F 2 "" H 5900 1850 50  0001 C CNN
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
AluResult0
Text Label 5400 1450 2    50   ~ 0
AluResult1
Text Label 5400 1550 2    50   ~ 0
AluResult2
Text Label 5400 1650 2    50   ~ 0
AluResult3
Text Label 5400 1750 2    50   ~ 0
AluResult4
Text Label 5400 1850 2    50   ~ 0
AluResult5
Text Label 5400 1950 2    50   ~ 0
AluResult6
Text Label 5400 2050 2    50   ~ 0
AluResult7
$Comp
L power:VCC #PWR0293
U 1 1 5D7E9918
P 3050 3650
F 0 "#PWR0293" H 3050 3500 50  0001 C CNN
F 1 "VCC" H 3067 3823 50  0000 C CNN
F 2 "" H 3050 3650 50  0001 C CNN
F 3 "" H 3050 3650 50  0001 C CNN
	1    3050 3650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0294
U 1 1 5D8713D2
P 4450 1000
F 0 "#PWR0294" H 4450 850 50  0001 C CNN
F 1 "VCC" H 4467 1173 50  0000 C CNN
F 2 "" H 4450 1000 50  0001 C CNN
F 3 "" H 4450 1000 50  0001 C CNN
	1    4450 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1000 4450 2350
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
AR Path="/5D2C0CE4/5D879A71" Ref="U87"  Part="1" 
F 0 "U87" H 5700 6150 50  0000 C CNN
F 1 "74F377" H 5650 6050 50  0000 C CNN
F 2 "" H 5900 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 5900 5350 50  0001 C CNN
	1    5900 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0295
U 1 1 5D87C428
P 5900 6150
F 0 "#PWR0295" H 5900 5900 50  0001 C CNN
F 1 "GND" H 5905 5977 50  0000 C CNN
F 2 "" H 5900 6150 50  0001 C CNN
F 3 "" H 5900 6150 50  0001 C CNN
	1    5900 6150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0296
U 1 1 5D87C88D
P 5900 4550
F 0 "#PWR0296" H 5900 4400 50  0001 C CNN
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
L Device:LED D?
U 1 1 5D907BF3
P 8450 4800
AR Path="/5D2C07CD/5D907BF3" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D907BF3" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D907BF3" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D907BF3" Ref="D?"  Part="1" 
AR Path="/5D2C0CE4/5D907BF3" Ref="D94"  Part="1" 
F 0 "D94" V 8489 4683 50  0000 R CNN
F 1 "LED" V 8398 4683 50  0000 R CNN
F 2 "" H 8450 4800 50  0001 C CNN
F 3 "~" H 8450 4800 50  0001 C CNN
	1    8450 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D907BF9
P 8800 4800
AR Path="/5D2C07CD/5D907BF9" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D907BF9" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D907BF9" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D907BF9" Ref="D?"  Part="1" 
AR Path="/5D2C0CE4/5D907BF9" Ref="D95"  Part="1" 
F 0 "D95" V 8839 4683 50  0000 R CNN
F 1 "LED" V 8748 4683 50  0000 R CNN
F 2 "" H 8800 4800 50  0001 C CNN
F 3 "~" H 8800 4800 50  0001 C CNN
	1    8800 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D907BFF
P 9150 4800
AR Path="/5D2C07CD/5D907BFF" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D907BFF" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D907BFF" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D907BFF" Ref="D?"  Part="1" 
AR Path="/5D2C0CE4/5D907BFF" Ref="D96"  Part="1" 
F 0 "D96" V 9189 4683 50  0000 R CNN
F 1 "LED" V 9098 4683 50  0000 R CNN
F 2 "" H 9150 4800 50  0001 C CNN
F 3 "~" H 9150 4800 50  0001 C CNN
	1    9150 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D907C05
P 9500 4800
AR Path="/5D2C07CD/5D907C05" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D907C05" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D907C05" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D907C05" Ref="D?"  Part="1" 
AR Path="/5D2C0CE4/5D907C05" Ref="D97"  Part="1" 
F 0 "D97" V 9539 4683 50  0000 R CNN
F 1 "LED" V 9448 4683 50  0000 R CNN
F 2 "" H 9500 4800 50  0001 C CNN
F 3 "~" H 9500 4800 50  0001 C CNN
	1    9500 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D907C0B
P 8100 4800
AR Path="/5D2C07CD/5D907C0B" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D907C0B" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D907C0B" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D907C0B" Ref="D?"  Part="1" 
AR Path="/5D2C0CE4/5D907C0B" Ref="D93"  Part="1" 
F 0 "D93" V 8139 4683 50  0000 R CNN
F 1 "LED" V 8048 4683 50  0000 R CNN
F 2 "" H 8100 4800 50  0001 C CNN
F 3 "~" H 8100 4800 50  0001 C CNN
	1    8100 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D907C11
P 7750 4800
AR Path="/5D2C07CD/5D907C11" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D907C11" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D907C11" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D907C11" Ref="D?"  Part="1" 
AR Path="/5D2C0CE4/5D907C11" Ref="D92"  Part="1" 
F 0 "D92" V 7789 4683 50  0000 R CNN
F 1 "LED" V 7698 4683 50  0000 R CNN
F 2 "" H 7750 4800 50  0001 C CNN
F 3 "~" H 7750 4800 50  0001 C CNN
	1    7750 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D907C17
P 7400 4800
AR Path="/5D2C07CD/5D907C17" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D907C17" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D907C17" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D907C17" Ref="D?"  Part="1" 
AR Path="/5D2C0CE4/5D907C17" Ref="D91"  Part="1" 
F 0 "D91" V 7439 4683 50  0000 R CNN
F 1 "LED" V 7348 4683 50  0000 R CNN
F 2 "" H 7400 4800 50  0001 C CNN
F 3 "~" H 7400 4800 50  0001 C CNN
	1    7400 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D907C1D
P 7050 4800
AR Path="/5D2C07CD/5D907C1D" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D907C1D" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D907C1D" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D907C1D" Ref="D?"  Part="1" 
AR Path="/5D2C0CE4/5D907C1D" Ref="D90"  Part="1" 
F 0 "D90" V 7089 4683 50  0000 R CNN
F 1 "LED" V 6998 4683 50  0000 R CNN
F 2 "" H 7050 4800 50  0001 C CNN
F 3 "~" H 7050 4800 50  0001 C CNN
	1    7050 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 5300 7050 5350
Wire Wire Line
	7050 5350 7400 5350
Wire Wire Line
	7400 5300 7400 5350
Connection ~ 7400 5350
Wire Wire Line
	7400 5350 7750 5350
Wire Wire Line
	7750 5300 7750 5350
Connection ~ 7750 5350
Wire Wire Line
	7750 5350 8100 5350
Wire Wire Line
	8100 5300 8100 5350
Connection ~ 8100 5350
Wire Wire Line
	8100 5350 8450 5350
Wire Wire Line
	8450 5300 8450 5350
Connection ~ 8450 5350
Wire Wire Line
	8450 5350 8800 5350
Wire Wire Line
	8800 5300 8800 5350
Connection ~ 8800 5350
Wire Wire Line
	8800 5350 9150 5350
Wire Wire Line
	9150 5300 9150 5350
Connection ~ 9150 5350
Wire Wire Line
	9500 5300 9500 5350
$Comp
L power:GND #PWR?
U 1 1 5D907C38
P 10150 5350
AR Path="/5D2C07CD/5D907C38" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5D907C38" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5D907C38" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5D907C38" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CE4/5D907C38" Ref="#PWR0297"  Part="1" 
F 0 "#PWR0297" H 10150 5100 50  0001 C CNN
F 1 "GND" H 10155 5177 50  0000 C CNN
F 2 "" H 10150 5350 50  0001 C CNN
F 3 "" H 10150 5350 50  0001 C CNN
	1    10150 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4950 7050 5000
Wire Wire Line
	7400 4950 7400 5000
Wire Wire Line
	7750 5000 7750 4950
Wire Wire Line
	8100 4950 8100 5000
Wire Wire Line
	8450 5000 8450 4950
Wire Wire Line
	8800 4950 8800 5000
Wire Wire Line
	9150 5000 9150 4950
Wire Wire Line
	9500 4950 9500 5000
$Comp
L Device:R R?
U 1 1 5D907C46
P 7050 5150
AR Path="/5D2C0CA7/5D907C46" Ref="R?"  Part="1" 
AR Path="/5D2C0CE4/5D907C46" Ref="R108"  Part="1" 
F 0 "R108" H 7120 5196 50  0000 L CNN
F 1 "220Ω" H 7120 5105 50  0000 L CNN
F 2 "" V 6980 5150 50  0001 C CNN
F 3 "~" H 7050 5150 50  0001 C CNN
	1    7050 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D907C4C
P 7400 5150
AR Path="/5D2C0CA7/5D907C4C" Ref="R?"  Part="1" 
AR Path="/5D2C0CE4/5D907C4C" Ref="R109"  Part="1" 
F 0 "R109" H 7470 5196 50  0000 L CNN
F 1 "220Ω" H 7470 5105 50  0000 L CNN
F 2 "" V 7330 5150 50  0001 C CNN
F 3 "~" H 7400 5150 50  0001 C CNN
	1    7400 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D907C52
P 7750 5150
AR Path="/5D2C0CA7/5D907C52" Ref="R?"  Part="1" 
AR Path="/5D2C0CE4/5D907C52" Ref="R110"  Part="1" 
F 0 "R110" H 7820 5196 50  0000 L CNN
F 1 "220Ω" H 7820 5105 50  0000 L CNN
F 2 "" V 7680 5150 50  0001 C CNN
F 3 "~" H 7750 5150 50  0001 C CNN
	1    7750 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D907C58
P 8100 5150
AR Path="/5D2C0CA7/5D907C58" Ref="R?"  Part="1" 
AR Path="/5D2C0CE4/5D907C58" Ref="R111"  Part="1" 
F 0 "R111" H 8170 5196 50  0000 L CNN
F 1 "220Ω" H 8170 5105 50  0000 L CNN
F 2 "" V 8030 5150 50  0001 C CNN
F 3 "~" H 8100 5150 50  0001 C CNN
	1    8100 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D907C5E
P 8450 5150
AR Path="/5D2C0CA7/5D907C5E" Ref="R?"  Part="1" 
AR Path="/5D2C0CE4/5D907C5E" Ref="R112"  Part="1" 
F 0 "R112" H 8520 5196 50  0000 L CNN
F 1 "220Ω" H 8520 5105 50  0000 L CNN
F 2 "" V 8380 5150 50  0001 C CNN
F 3 "~" H 8450 5150 50  0001 C CNN
	1    8450 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D907C64
P 8800 5150
AR Path="/5D2C0CA7/5D907C64" Ref="R?"  Part="1" 
AR Path="/5D2C0CE4/5D907C64" Ref="R113"  Part="1" 
F 0 "R113" H 8870 5196 50  0000 L CNN
F 1 "220Ω" H 8870 5105 50  0000 L CNN
F 2 "" V 8730 5150 50  0001 C CNN
F 3 "~" H 8800 5150 50  0001 C CNN
	1    8800 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D907C6A
P 9150 5150
AR Path="/5D2C0CA7/5D907C6A" Ref="R?"  Part="1" 
AR Path="/5D2C0CE4/5D907C6A" Ref="R114"  Part="1" 
F 0 "R114" H 9220 5196 50  0000 L CNN
F 1 "220Ω" H 9220 5105 50  0000 L CNN
F 2 "" V 9080 5150 50  0001 C CNN
F 3 "~" H 9150 5150 50  0001 C CNN
	1    9150 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D907C70
P 9500 5150
AR Path="/5D2C0CA7/5D907C70" Ref="R?"  Part="1" 
AR Path="/5D2C0CE4/5D907C70" Ref="R115"  Part="1" 
F 0 "R115" H 9570 5196 50  0000 L CNN
F 1 "220Ω" H 9570 5105 50  0000 L CNN
F 2 "" V 9430 5150 50  0001 C CNN
F 3 "~" H 9500 5150 50  0001 C CNN
	1    9500 5150
	1    0    0    -1  
$EndComp
Entry Wire Line
	7050 4250 6950 4150
Entry Wire Line
	7400 4250 7300 4150
Entry Wire Line
	7750 4250 7650 4150
Entry Wire Line
	8100 4250 8000 4150
Entry Wire Line
	8450 4250 8350 4150
Entry Wire Line
	8800 4250 8700 4150
Entry Wire Line
	9150 4250 9050 4150
Entry Wire Line
	9500 4250 9400 4150
Text GLabel 6900 3900 1    50   Input ~ 0
AluResult
Text Label 7050 4650 1    50   ~ 0
AluResult7
Text Label 7400 4650 1    50   ~ 0
AluResult6
Text Label 7750 4650 1    50   ~ 0
AluResult5
Text Label 8100 4650 1    50   ~ 0
AluResult4
Text Label 8450 4650 1    50   ~ 0
AluResult3
Text Label 8800 4650 1    50   ~ 0
AluResult2
Text Label 9150 4650 1    50   ~ 0
AluResult1
Text Label 9500 4650 1    50   ~ 0
AluResult0
Wire Wire Line
	7050 4250 7050 4650
Wire Wire Line
	7400 4250 7400 4650
Wire Wire Line
	7750 4250 7750 4650
Wire Wire Line
	8100 4250 8100 4650
Wire Wire Line
	8450 4250 8450 4650
Wire Wire Line
	8800 4250 8800 4650
Wire Wire Line
	9150 4250 9150 4650
Wire Wire Line
	9500 4250 9500 4650
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
P 9800 4750
AR Path="/5D2C07CD/5DA4D6A2" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DA4D6A2" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DA4D6A2" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DA4D6A2" Ref="D?"  Part="1" 
AR Path="/5D2C0CE4/5DA4D6A2" Ref="D98"  Part="1" 
F 0 "D98" V 9839 4633 50  0000 R CNN
F 1 "LED" V 9748 4633 50  0000 R CNN
F 2 "" H 9800 4750 50  0001 C CNN
F 3 "~" H 9800 4750 50  0001 C CNN
	1    9800 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 4900 9800 4950
$Comp
L Device:R R?
U 1 1 5DA4D6A9
P 9800 5100
AR Path="/5D2C0CA7/5DA4D6A9" Ref="R?"  Part="1" 
AR Path="/5D2C0CE4/5DA4D6A9" Ref="R116"  Part="1" 
F 0 "R116" H 9870 5146 50  0000 L CNN
F 1 "220Ω" H 9870 5055 50  0000 L CNN
F 2 "" V 9730 5100 50  0001 C CNN
F 3 "~" H 9800 5100 50  0001 C CNN
	1    9800 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DA528C5
P 10150 4750
AR Path="/5D2C07CD/5DA528C5" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DA528C5" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DA528C5" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DA528C5" Ref="D?"  Part="1" 
AR Path="/5D2C0CE4/5DA528C5" Ref="D99"  Part="1" 
F 0 "D99" V 10189 4633 50  0000 R CNN
F 1 "LED" V 10098 4633 50  0000 R CNN
F 2 "" H 10150 4750 50  0001 C CNN
F 3 "~" H 10150 4750 50  0001 C CNN
	1    10150 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10150 4900 10150 4950
$Comp
L Device:R R?
U 1 1 5DA528CC
P 10150 5100
AR Path="/5D2C0CA7/5DA528CC" Ref="R?"  Part="1" 
AR Path="/5D2C0CE4/5DA528CC" Ref="R117"  Part="1" 
F 0 "R117" H 10220 5146 50  0000 L CNN
F 1 "220Ω" H 10220 5055 50  0000 L CNN
F 2 "" V 10080 5100 50  0001 C CNN
F 3 "~" H 10150 5100 50  0001 C CNN
	1    10150 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5250 9800 5350
Wire Wire Line
	10150 5350 10150 5250
Wire Wire Line
	9800 4600 9800 3900
Wire Wire Line
	10150 4600 10150 3900
Wire Wire Line
	6550 2300 6550 4950
Wire Wire Line
	6450 2200 6450 4850
Text GLabel 9800 3900 1    50   Input ~ 0
~CarryOut
Text GLabel 10150 3900 1    50   Input ~ 0
~A=B
Wire Wire Line
	10150 5350 9800 5350
Wire Wire Line
	9800 5350 9500 5350
Connection ~ 9800 5350
Connection ~ 9500 5350
Connection ~ 10150 5350
Wire Wire Line
	9150 5350 9500 5350
Wire Bus Line
	6900 4150 6900 3900
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
	4850 1150 4850 1950
Wire Bus Line
	4200 1150 4200 4350
Wire Bus Line
	6900 4150 9400 4150
Wire Bus Line
	6850 600  6850 1950
$EndSCHEMATC
