EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 11 21
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
L 74xx:74LS181 U?
U 1 1 5D7E57B3
P 3550 2100
F 0 "U?" H 3300 3100 50  0000 C CNN
F 1 "74F181" H 3300 3000 50  0000 C CNN
F 2 "" H 3550 2100 50  0001 C CNN
F 3 "74xx/74F181.pdf" H 3550 2100 50  0001 C CNN
	1    3550 2100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D7E905F
P 3550 1100
F 0 "#PWR?" H 3550 950 50  0001 C CNN
F 1 "VCC" H 3567 1273 50  0000 C CNN
F 2 "" H 3550 1100 50  0001 C CNN
F 3 "" H 3550 1100 50  0001 C CNN
	1    3550 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D7EA36F
P 3550 3100
F 0 "#PWR?" H 3550 2850 50  0001 C CNN
F 1 "GND" H 3555 2927 50  0000 C CNN
F 2 "" H 3550 3100 50  0001 C CNN
F 3 "" H 3550 3100 50  0001 C CNN
	1    3550 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D7F19F0
P 8100 6400
AR Path="/5D2C0761/5D7F19F0" Ref="C?"  Part="1" 
AR Path="/5D2C0CE4/5D7F19F0" Ref="C?"  Part="1" 
F 0 "C?" H 8215 6446 50  0000 L CNN
F 1 "100nF" H 8215 6355 50  0000 L CNN
F 2 "" H 8138 6250 50  0001 C CNN
F 3 "~" H 8100 6400 50  0001 C CNN
	1    8100 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D7F19F6
P 8600 6400
AR Path="/5D2C0761/5D7F19F6" Ref="C?"  Part="1" 
AR Path="/5D2C0CE4/5D7F19F6" Ref="C?"  Part="1" 
F 0 "C?" H 8715 6446 50  0000 L CNN
F 1 "100nF" H 8715 6355 50  0000 L CNN
F 2 "" H 8638 6250 50  0001 C CNN
F 3 "~" H 8600 6400 50  0001 C CNN
	1    8600 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D7F19FC
P 9100 6400
AR Path="/5D2C0761/5D7F19FC" Ref="C?"  Part="1" 
AR Path="/5D2C0CE4/5D7F19FC" Ref="C?"  Part="1" 
F 0 "C?" H 9215 6446 50  0000 L CNN
F 1 "100nF" H 9215 6355 50  0000 L CNN
F 2 "" H 9138 6250 50  0001 C CNN
F 3 "~" H 9100 6400 50  0001 C CNN
	1    9100 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D7F1A02
P 9600 6400
AR Path="/5D2C0761/5D7F1A02" Ref="C?"  Part="1" 
AR Path="/5D2C0CE4/5D7F1A02" Ref="C?"  Part="1" 
F 0 "C?" H 9715 6446 50  0000 L CNN
F 1 "100nF" H 9715 6355 50  0000 L CNN
F 2 "" H 9638 6250 50  0001 C CNN
F 3 "~" H 9600 6400 50  0001 C CNN
	1    9600 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D7F1A0E
P 8100 6550
AR Path="/5D2C0761/5D7F1A0E" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CE4/5D7F1A0E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8100 6300 50  0001 C CNN
F 1 "GND" H 8105 6377 50  0000 C CNN
F 2 "" H 8100 6550 50  0001 C CNN
F 3 "" H 8100 6550 50  0001 C CNN
	1    8100 6550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D7F1A14
P 8100 6250
AR Path="/5D2C0761/5D7F1A14" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CE4/5D7F1A14" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8100 6100 50  0001 C CNN
F 1 "VCC" H 8117 6423 50  0000 C CNN
F 2 "" H 8100 6250 50  0001 C CNN
F 3 "" H 8100 6250 50  0001 C CNN
	1    8100 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 6250 8600 6250
Connection ~ 8100 6250
Wire Wire Line
	8600 6250 9100 6250
Connection ~ 8600 6250
Wire Wire Line
	9100 6250 9600 6250
Connection ~ 9100 6250
Wire Wire Line
	9600 6550 9100 6550
Wire Wire Line
	9100 6550 8600 6550
Connection ~ 9100 6550
Wire Wire Line
	8600 6550 8100 6550
Connection ~ 8600 6550
Connection ~ 8100 6550
Text GLabel 1250 1300 0    50   Input ~ 0
A
Text GLabel 1250 1700 0    50   Input ~ 0
B
Entry Wire Line
	2650 1300 2750 1400
Wire Wire Line
	2750 1400 2950 1400
Text Label 2800 1400 0    50   ~ 0
A0
Entry Wire Line
	2650 1400 2750 1500
Wire Wire Line
	2750 1500 2950 1500
Text Label 2800 1500 0    50   ~ 0
A1
Entry Wire Line
	2650 1500 2750 1600
Wire Wire Line
	2750 1600 2950 1600
Text Label 2800 1600 0    50   ~ 0
A2
Entry Wire Line
	2650 1600 2750 1700
Wire Wire Line
	2750 1700 2950 1700
Text Label 2800 1700 0    50   ~ 0
A3
Entry Wire Line
	2650 1700 2750 1800
Wire Wire Line
	2750 1800 2950 1800
Text Label 2800 1800 0    50   ~ 0
B0
Entry Wire Line
	2650 1800 2750 1900
Wire Wire Line
	2750 1900 2950 1900
Text Label 2800 1900 0    50   ~ 0
B1
Entry Wire Line
	2650 1900 2750 2000
Wire Wire Line
	2750 2000 2950 2000
Text Label 2800 2000 0    50   ~ 0
B2
Entry Wire Line
	2650 2000 2750 2100
Wire Wire Line
	2750 2100 2950 2100
Text Label 2800 2100 0    50   ~ 0
B3
Entry Wire Line
	2650 2100 2750 2200
Wire Wire Line
	2750 2200 2950 2200
Text Label 2800 2200 0    50   ~ 0
C0
Entry Wire Line
	2650 2200 2750 2300
Wire Wire Line
	2750 2300 2950 2300
Text Label 2800 2300 0    50   ~ 0
C1
Entry Wire Line
	2650 2300 2750 2400
Wire Wire Line
	2750 2400 2950 2400
Text Label 2800 2400 0    50   ~ 0
C2
Entry Wire Line
	2650 2400 2750 2500
Wire Wire Line
	2750 2500 2950 2500
Text Label 2800 2500 0    50   ~ 0
C3
Text GLabel 1250 2100 0    50   Input ~ 0
C
Entry Wire Line
	2650 2600 2750 2700
Wire Wire Line
	2750 2700 2950 2700
Text Label 2800 2700 0    50   ~ 0
C4
Entry Wire Line
	2650 2700 2750 2800
Wire Wire Line
	2750 2800 2950 2800
Text Label 2800 2800 0    50   ~ 0
C5
NoConn ~ 4150 2600
NoConn ~ 4150 2700
Wire Bus Line
	1450 2100 1250 2100
Wire Bus Line
	2650 2100 1450 2100
Connection ~ 1450 2100
Wire Bus Line
	2650 1300 1650 1300
Wire Bus Line
	2650 1700 1550 1700
Connection ~ 1550 1700
Wire Bus Line
	1550 1700 1250 1700
Connection ~ 1650 1300
Wire Bus Line
	1650 1300 1250 1300
Wire Wire Line
	4150 2300 4300 2300
Wire Wire Line
	4300 2300 4300 3400
Wire Wire Line
	4300 3400 2450 3400
Wire Wire Line
	2450 5400 2950 5400
Wire Bus Line
	1650 3900 2650 3900
Wire Bus Line
	1550 4300 2650 4300
Wire Bus Line
	2650 4700 1450 4700
NoConn ~ 4150 5300
NoConn ~ 4150 5200
Text Label 2800 5300 0    50   ~ 0
C4
Wire Wire Line
	2750 5300 2950 5300
Entry Wire Line
	2650 5200 2750 5300
Text Label 2800 5100 0    50   ~ 0
C3
Wire Wire Line
	2750 5100 2950 5100
Entry Wire Line
	2650 5000 2750 5100
Text Label 2800 5000 0    50   ~ 0
C2
Wire Wire Line
	2750 5000 2950 5000
Entry Wire Line
	2650 4900 2750 5000
Text Label 2800 4900 0    50   ~ 0
C1
Wire Wire Line
	2750 4900 2950 4900
Entry Wire Line
	2650 4800 2750 4900
Text Label 2800 4800 0    50   ~ 0
C0
Wire Wire Line
	2750 4800 2950 4800
Entry Wire Line
	2650 4700 2750 4800
Text Label 2800 4700 0    50   ~ 0
B7
Wire Wire Line
	2750 4700 2950 4700
Entry Wire Line
	2650 4600 2750 4700
Text Label 2800 4600 0    50   ~ 0
B6
Wire Wire Line
	2750 4600 2950 4600
Entry Wire Line
	2650 4500 2750 4600
Text Label 2800 4500 0    50   ~ 0
B5
Wire Wire Line
	2750 4500 2950 4500
Entry Wire Line
	2650 4400 2750 4500
Text Label 2800 4400 0    50   ~ 0
B4
Wire Wire Line
	2750 4400 2950 4400
Entry Wire Line
	2650 4300 2750 4400
Text Label 2800 4300 0    50   ~ 0
A7
Wire Wire Line
	2750 4300 2950 4300
Entry Wire Line
	2650 4200 2750 4300
Text Label 2800 4200 0    50   ~ 0
A6
Wire Wire Line
	2750 4200 2950 4200
Entry Wire Line
	2650 4100 2750 4200
Text Label 2800 4100 0    50   ~ 0
A5
Wire Wire Line
	2750 4100 2950 4100
Entry Wire Line
	2650 4000 2750 4100
Text Label 2800 4000 0    50   ~ 0
A4
Wire Wire Line
	2750 4000 2950 4000
Entry Wire Line
	2650 3900 2750 4000
$Comp
L power:GND #PWR?
U 1 1 5D7EA8C4
P 3550 5700
F 0 "#PWR?" H 3550 5450 50  0001 C CNN
F 1 "GND" H 3555 5527 50  0000 C CNN
F 2 "" H 3550 5700 50  0001 C CNN
F 3 "" H 3550 5700 50  0001 C CNN
	1    3550 5700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS181 U?
U 1 1 5D7E72AF
P 3550 4700
F 0 "U?" H 3300 5700 50  0000 C CNN
F 1 "74F181" H 3300 5600 50  0000 C CNN
F 2 "" H 3550 4700 50  0001 C CNN
F 3 "74xx/74F181.pdf" H 3550 4700 50  0001 C CNN
	1    3550 4700
	1    0    0    -1  
$EndComp
Wire Bus Line
	1650 1300 1650 3900
Wire Bus Line
	1550 1700 1550 4300
Wire Bus Line
	1450 2100 1450 4700
Wire Wire Line
	2450 3400 2450 5400
Wire Bus Line
	7350 2950 9650 2950
Text GLabel 9650 2950 2    50   Output ~ 0
DataBus
Text Label 6900 2100 0    50   ~ 0
DataBus7
Text Label 6900 2000 0    50   ~ 0
DataBus6
Text Label 6900 1900 0    50   ~ 0
DataBus5
Text Label 6900 1800 0    50   ~ 0
DataBus4
Text Label 6900 1700 0    50   ~ 0
DataBus3
Text Label 6900 1600 0    50   ~ 0
DataBus2
Text Label 6900 1500 0    50   ~ 0
DataBus1
Text Label 6900 1400 0    50   ~ 0
DataBus0
Wire Wire Line
	7250 2100 6900 2100
Wire Wire Line
	6900 2000 7250 2000
Wire Wire Line
	7250 1900 6900 1900
Wire Wire Line
	6900 1800 7250 1800
Wire Wire Line
	7250 1700 6900 1700
Wire Wire Line
	6900 1600 7250 1600
Wire Wire Line
	7250 1500 6900 1500
Wire Wire Line
	6900 1400 7250 1400
Entry Wire Line
	7250 2100 7350 2200
Entry Wire Line
	7250 2000 7350 2100
Entry Wire Line
	7250 1900 7350 2000
Entry Wire Line
	7250 1800 7350 1900
Entry Wire Line
	7250 1700 7350 1800
Entry Wire Line
	7250 1600 7350 1700
Entry Wire Line
	7250 1500 7350 1600
Entry Wire Line
	7250 1400 7350 1500
$Comp
L power:VCC #PWR?
U 1 1 5D804E58
P 5900 2300
F 0 "#PWR?" H 5900 2150 50  0001 C CNN
F 1 "VCC" V 5918 2427 50  0000 L CNN
F 2 "" H 5900 2300 50  0001 C CNN
F 3 "" H 5900 2300 50  0001 C CNN
	1    5900 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8049CB
P 6400 2700
F 0 "#PWR?" H 6400 2450 50  0001 C CNN
F 1 "GND" H 6405 2527 50  0000 C CNN
F 2 "" H 6400 2700 50  0001 C CNN
F 3 "" H 6400 2700 50  0001 C CNN
	1    6400 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D80445D
P 6400 1100
F 0 "#PWR?" H 6400 950 50  0001 C CNN
F 1 "VCC" H 6417 1273 50  0000 C CNN
F 2 "" H 6400 1100 50  0001 C CNN
F 3 "" H 6400 1100 50  0001 C CNN
	1    6400 1100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 5D7FF31F
P 6400 1900
F 0 "U?" H 6150 2700 50  0000 C CNN
F 1 "74LS245" H 6150 2600 50  0000 C CNN
F 2 "" H 6400 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 6400 1900 50  0001 C CNN
	1    6400 1900
	1    0    0    -1  
$EndComp
Entry Wire Line
	4600 1600 4700 1700
Entry Wire Line
	4600 1700 4700 1800
Entry Wire Line
	4600 1800 4700 1900
Entry Wire Line
	4600 1900 4700 2000
Wire Wire Line
	4600 1600 4150 1600
Wire Wire Line
	4150 1700 4600 1700
Wire Wire Line
	4600 1800 4150 1800
Wire Wire Line
	4150 1900 4600 1900
Entry Wire Line
	4600 4200 4700 4300
Entry Wire Line
	4600 4300 4700 4400
Entry Wire Line
	4600 4400 4700 4500
Entry Wire Line
	4600 4500 4700 4600
Wire Wire Line
	4600 4200 4150 4200
Wire Wire Line
	4150 4300 4600 4300
Wire Wire Line
	4600 4400 4150 4400
Wire Wire Line
	4150 4500 4600 4500
Text Label 4550 1600 2    50   ~ 0
AluResult0
Text Label 4550 1700 2    50   ~ 0
AluResult1
Text Label 4550 1800 2    50   ~ 0
AluResult2
Text Label 4550 1900 2    50   ~ 0
AluResult3
Text Label 4550 4200 2    50   ~ 0
AluResult4
Text Label 4550 4300 2    50   ~ 0
AluResult5
Text Label 4550 4400 2    50   ~ 0
AluResult6
Text Label 4550 4500 2    50   ~ 0
AluResult7
Entry Wire Line
	5350 1300 5450 1400
Entry Wire Line
	5350 1400 5450 1500
Entry Wire Line
	5350 1500 5450 1600
Entry Wire Line
	5350 1600 5450 1700
Entry Wire Line
	5350 1700 5450 1800
Entry Wire Line
	5350 1800 5450 1900
Entry Wire Line
	5350 1900 5450 2000
Entry Wire Line
	5350 2000 5450 2100
Wire Bus Line
	4700 1200 5350 1200
Wire Wire Line
	5450 1400 5900 1400
Wire Wire Line
	5900 1500 5450 1500
Wire Wire Line
	5450 1600 5900 1600
Wire Wire Line
	5900 1700 5450 1700
Wire Wire Line
	5900 1800 5450 1800
Wire Wire Line
	5450 1900 5900 1900
Wire Wire Line
	5900 2000 5450 2000
Wire Wire Line
	5450 2100 5900 2100
Text Label 5900 1400 2    50   ~ 0
AluResult0
Text Label 5900 1500 2    50   ~ 0
AluResult1
Text Label 5900 1600 2    50   ~ 0
AluResult2
Text Label 5900 1700 2    50   ~ 0
AluResult3
Text Label 5900 1800 2    50   ~ 0
AluResult4
Text Label 5900 1900 2    50   ~ 0
AluResult5
Text Label 5900 2000 2    50   ~ 0
AluResult6
Text Label 5900 2100 2    50   ~ 0
AluResult7
$Comp
L power:VCC #PWR?
U 1 1 5D7E9918
P 3550 3700
F 0 "#PWR?" H 3550 3550 50  0001 C CNN
F 1 "VCC" H 3567 3873 50  0000 C CNN
F 2 "" H 3550 3700 50  0001 C CNN
F 3 "" H 3550 3700 50  0001 C CNN
	1    3550 3700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D8713D2
P 4950 1050
F 0 "#PWR?" H 4950 900 50  0001 C CNN
F 1 "VCC" H 4967 1223 50  0000 C CNN
F 2 "" H 4950 1050 50  0001 C CNN
F 3 "" H 4950 1050 50  0001 C CNN
	1    4950 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1050 4950 2400
Wire Wire Line
	4950 2400 4150 2400
Wire Wire Line
	4950 5000 4150 5000
Connection ~ 4950 2400
$Comp
L 74xx:74LS377 U?
U 1 1 5D879A71
P 6400 5400
AR Path="/5D2C0CA7/5D879A71" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5D879A71" Ref="U?"  Part="1" 
AR Path="/5D2C0CE4/5D879A71" Ref="U?"  Part="1" 
F 0 "U?" H 6200 6200 50  0000 C CNN
F 1 "74F377" H 6150 6100 50  0000 C CNN
F 2 "" H 6400 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 6400 5400 50  0001 C CNN
	1    6400 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D87C428
P 6400 6200
F 0 "#PWR?" H 6400 5950 50  0001 C CNN
F 1 "GND" H 6405 6027 50  0000 C CNN
F 2 "" H 6400 6200 50  0001 C CNN
F 3 "" H 6400 6200 50  0001 C CNN
	1    6400 6200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D87C88D
P 6400 4600
F 0 "#PWR?" H 6400 4450 50  0001 C CNN
F 1 "VCC" H 6417 4773 50  0000 C CNN
F 2 "" H 6400 4600 50  0001 C CNN
F 3 "" H 6400 4600 50  0001 C CNN
	1    6400 4600
	1    0    0    -1  
$EndComp
NoConn ~ 6900 5600
NoConn ~ 6900 5500
NoConn ~ 6900 5400
NoConn ~ 6900 5300
NoConn ~ 6900 5200
NoConn ~ 6900 5100
NoConn ~ 5900 5100
NoConn ~ 5900 5200
NoConn ~ 5900 5300
NoConn ~ 5900 5400
NoConn ~ 5900 5500
NoConn ~ 5900 5600
Text GLabel 1750 6900 0    50   Input ~ 0
RegisterClock
Wire Wire Line
	5900 5800 5350 5800
Wire Wire Line
	5350 5800 5350 6900
Wire Wire Line
	5350 6900 1750 6900
Wire Wire Line
	5900 2400 5250 2400
Wire Wire Line
	5450 5900 5900 5900
Wire Wire Line
	5250 2400 5250 6750
Text GLabel 1750 6750 0    50   Input ~ 0
~EO
Wire Wire Line
	5250 6750 1750 6750
Wire Wire Line
	4950 2400 4950 5000
Wire Wire Line
	5900 5000 4950 5000
Connection ~ 4950 5000
Wire Wire Line
	4150 4900 5900 4900
Wire Wire Line
	5450 7050 5450 5900
Text GLabel 1750 7050 0    50   Input ~ 0
~FI
Wire Wire Line
	1750 7050 5450 7050
Text Notes 6550 6150 0    50   ~ 0
Flags Register
Text GLabel 9650 3350 2    50   Output ~ 0
~A=B
Wire Wire Line
	6900 4900 7600 4900
Wire Wire Line
	7600 4900 7600 3150
Text GLabel 9650 3150 2    50   Output ~ 0
~CarryOut
Wire Wire Line
	7600 3150 9650 3150
Wire Wire Line
	9650 3350 7700 3350
Wire Wire Line
	7700 3350 7700 5000
Wire Wire Line
	7700 5000 6900 5000
Text Notes 3050 7800 2    50   ~ 0
TODO: Verify the order of bits used from the constant register.
NoConn ~ 4850 5750
Wire Bus Line
	2650 1300 2650 1600
Wire Bus Line
	2650 1700 2650 2000
Wire Bus Line
	2650 4300 2650 4600
Wire Bus Line
	2650 3900 2650 4200
Wire Bus Line
	2650 4700 2650 5200
Wire Bus Line
	2650 2100 2650 2700
Wire Bus Line
	5350 1200 5350 2000
Wire Bus Line
	4700 1200 4700 4600
Wire Bus Line
	7350 1500 7350 2950
$EndSCHEMATC
