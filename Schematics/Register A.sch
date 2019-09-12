EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 11 20
Title "Register A"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Register A is wired to the ALU's A operand."
$EndDescr
$Comp
L 74xx:74LS245 U?
U 1 1 5D2294B7
P 5300 3350
F 0 "U?" H 5300 4331 50  0000 C CNN
F 1 "74LS245" H 5300 4240 50  0000 C CNN
F 2 "" H 5300 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 5300 3350 50  0001 C CNN
	1    5300 3350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 U?
U 1 1 5D22BDC4
P 7350 3350
F 0 "U?" H 7350 4331 50  0000 C CNN
F 1 "74F377" H 7350 4240 50  0000 C CNN
F 2 "" H 7350 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 7350 3350 50  0001 C CNN
	1    7350 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5300 4150 7350 4150
$Comp
L power:VCC #PWR?
U 1 1 5D22FEA7
P 6350 2450
F 0 "#PWR?" H 6350 2300 50  0001 C CNN
F 1 "VCC" H 6367 2623 50  0000 C CNN
F 2 "" H 6350 2450 50  0001 C CNN
F 3 "" H 6350 2450 50  0001 C CNN
	1    6350 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2550 6350 2550
Wire Wire Line
	4800 3850 4700 3850
Wire Wire Line
	4800 3750 4350 3750
Wire Wire Line
	4350 3750 4350 4150
Wire Wire Line
	4350 4150 5300 4150
Connection ~ 5300 4150
Wire Wire Line
	6850 3350 6050 3350
Wire Wire Line
	5800 3550 5850 3550
Text GLabel 3200 1750 0    50   Input ~ 0
~AI
Text GLabel 3200 2050 0    50   Input ~ 0
~AO
Text GLabel 3200 1900 0    50   Input ~ 0
CLK0
Wire Wire Line
	7850 3550 8050 3550
Wire Wire Line
	8050 4700 3800 4700
Wire Wire Line
	3800 4700 3800 3550
Wire Wire Line
	3800 3550 4800 3550
Wire Wire Line
	8050 3550 8050 4700
Wire Wire Line
	7850 3450 8100 3450
Wire Wire Line
	8100 3450 8100 4750
Wire Wire Line
	8100 4750 3750 4750
Wire Wire Line
	3750 4750 3750 3450
Wire Wire Line
	3750 3450 4800 3450
Wire Wire Line
	4800 3350 3700 3350
Wire Wire Line
	3700 3350 3700 4800
Wire Wire Line
	3700 4800 8150 4800
Wire Wire Line
	8150 4800 8150 3350
Wire Wire Line
	8150 3350 7850 3350
Wire Wire Line
	7850 3250 8200 3250
Wire Wire Line
	8200 3250 8200 4850
Wire Wire Line
	8200 4850 3650 4850
Wire Wire Line
	3650 4850 3650 3250
Wire Wire Line
	3650 3250 4800 3250
Wire Wire Line
	4800 3150 3600 3150
Wire Wire Line
	3600 3150 3600 4900
Wire Wire Line
	3600 4900 8250 4900
Wire Wire Line
	8250 4900 8250 3150
Wire Wire Line
	8250 3150 7850 3150
Wire Wire Line
	7850 3050 8300 3050
Wire Wire Line
	8300 3050 8300 4950
Wire Wire Line
	8300 4950 3550 4950
Wire Wire Line
	3550 4950 3550 3050
Wire Wire Line
	3550 3050 4800 3050
Wire Wire Line
	4800 2950 3500 2950
Wire Wire Line
	3500 2950 3500 5000
Wire Wire Line
	3500 5000 8350 5000
Wire Wire Line
	8350 5000 8350 2950
Wire Wire Line
	8350 2950 7850 2950
Wire Wire Line
	7850 2850 8400 2850
Wire Wire Line
	8400 2850 8400 5050
Wire Wire Line
	8400 5050 3450 5050
Wire Wire Line
	3450 5050 3450 2850
Wire Wire Line
	3450 2850 4800 2850
Text GLabel 2350 2850 0    50   BiDi ~ 0
Bus00
Text GLabel 2350 2950 0    50   BiDi ~ 0
Bus01
Text GLabel 2350 3050 0    50   BiDi ~ 0
Bus02
Text GLabel 2350 3150 0    50   BiDi ~ 0
Bus03
Text GLabel 2350 3250 0    50   BiDi ~ 0
Bus04
Text GLabel 2350 3350 0    50   BiDi ~ 0
Bus05
Text GLabel 2350 3450 0    50   BiDi ~ 0
Bus06
Wire Wire Line
	3450 2850 2350 2850
Connection ~ 3450 2850
Wire Wire Line
	2350 2950 3500 2950
Connection ~ 3500 2950
Wire Wire Line
	3550 3050 2350 3050
Connection ~ 3550 3050
Wire Wire Line
	3600 3150 2350 3150
Connection ~ 3600 3150
Wire Wire Line
	3650 3250 2350 3250
Connection ~ 3650 3250
Wire Wire Line
	3700 3350 2350 3350
Connection ~ 3700 3350
Wire Wire Line
	3750 3450 2350 3450
Connection ~ 3750 3450
Text GLabel 2350 3550 0    50   BiDi ~ 0
Bus07
Wire Wire Line
	3800 3550 2350 3550
Connection ~ 3800 3550
Text GLabel 5850 5600 3    50   Output ~ 0
ALUA7
Text GLabel 5950 5600 3    50   Output ~ 0
ALUA6
Text GLabel 6050 5600 3    50   Output ~ 0
ALUA5
Text GLabel 6150 5600 3    50   Output ~ 0
ALUA4
Text GLabel 6250 5600 3    50   Output ~ 0
ALUA3
Text GLabel 6350 5600 3    50   Output ~ 0
ALUA2
Text GLabel 6450 5600 3    50   Output ~ 0
ALUA1
Text GLabel 6550 5600 3    50   Output ~ 0
ALUA0
Wire Wire Line
	5850 5600 5850 5100
Connection ~ 5850 3550
Wire Wire Line
	5850 3550 6850 3550
Wire Wire Line
	5950 5600 5950 5150
Wire Wire Line
	5800 3450 5950 3450
Connection ~ 5950 3450
Wire Wire Line
	5950 3450 6850 3450
Wire Wire Line
	6050 5600 6050 5200
Connection ~ 6050 3350
Wire Wire Line
	6050 3350 5800 3350
Wire Wire Line
	6150 5600 6150 5250
Wire Wire Line
	5800 3250 6150 3250
Connection ~ 6150 3250
Wire Wire Line
	6150 3250 6850 3250
Wire Wire Line
	6250 5600 6250 5300
Wire Wire Line
	5800 3150 6250 3150
Connection ~ 6250 3150
Wire Wire Line
	6250 3150 6850 3150
Wire Wire Line
	6350 5600 6350 5350
Wire Wire Line
	5800 3050 6350 3050
Connection ~ 6350 3050
Wire Wire Line
	6350 3050 6850 3050
Wire Wire Line
	6450 5600 6450 5400
Wire Wire Line
	5800 2950 6450 2950
Connection ~ 6450 2950
Wire Wire Line
	6450 2950 6850 2950
Wire Wire Line
	6550 5600 6550 5450
Wire Wire Line
	5800 2850 6550 2850
Connection ~ 6550 2850
Wire Wire Line
	6550 2850 6850 2850
Wire Wire Line
	4700 3850 4700 2050
Wire Wire Line
	4700 2050 3200 2050
Wire Wire Line
	6350 2450 6350 2550
Connection ~ 6350 2550
Wire Wire Line
	6350 2550 7350 2550
Wire Wire Line
	7850 3750 8800 3750
Wire Wire Line
	8800 3750 8800 1900
Wire Wire Line
	3200 1900 8800 1900
Wire Wire Line
	7850 3850 8900 3850
Wire Wire Line
	8900 3850 8900 1750
Wire Wire Line
	3200 1750 8900 1750
$Comp
L Device:LED D?
U 1 1 5D6C655C
P 3400 6100
AR Path="/5D2C07CD/5D6C655C" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D6C655C" Ref="D?"  Part="1" 
F 0 "D?" V 3439 5983 50  0000 R CNN
F 1 "LED" V 3348 5983 50  0000 R CNN
F 2 "" H 3400 6100 50  0001 C CNN
F 3 "~" H 3400 6100 50  0001 C CNN
	1    3400 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D6C6562
P 3750 6100
AR Path="/5D2C07CD/5D6C6562" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D6C6562" Ref="D?"  Part="1" 
F 0 "D?" V 3789 5983 50  0000 R CNN
F 1 "LED" V 3698 5983 50  0000 R CNN
F 2 "" H 3750 6100 50  0001 C CNN
F 3 "~" H 3750 6100 50  0001 C CNN
	1    3750 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D6C6568
P 4100 6100
AR Path="/5D2C07CD/5D6C6568" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D6C6568" Ref="D?"  Part="1" 
F 0 "D?" V 4139 5983 50  0000 R CNN
F 1 "LED" V 4048 5983 50  0000 R CNN
F 2 "" H 4100 6100 50  0001 C CNN
F 3 "~" H 4100 6100 50  0001 C CNN
	1    4100 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D6C656E
P 4450 6100
AR Path="/5D2C07CD/5D6C656E" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D6C656E" Ref="D?"  Part="1" 
F 0 "D?" V 4489 5983 50  0000 R CNN
F 1 "LED" V 4398 5983 50  0000 R CNN
F 2 "" H 4450 6100 50  0001 C CNN
F 3 "~" H 4450 6100 50  0001 C CNN
	1    4450 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D6C6574
P 3050 6100
AR Path="/5D2C07CD/5D6C6574" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D6C6574" Ref="D?"  Part="1" 
F 0 "D?" V 3089 5983 50  0000 R CNN
F 1 "LED" V 2998 5983 50  0000 R CNN
F 2 "" H 3050 6100 50  0001 C CNN
F 3 "~" H 3050 6100 50  0001 C CNN
	1    3050 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D6C657A
P 2700 6100
AR Path="/5D2C07CD/5D6C657A" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D6C657A" Ref="D?"  Part="1" 
F 0 "D?" V 2739 5983 50  0000 R CNN
F 1 "LED" V 2648 5983 50  0000 R CNN
F 2 "" H 2700 6100 50  0001 C CNN
F 3 "~" H 2700 6100 50  0001 C CNN
	1    2700 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D6C6580
P 2350 6100
AR Path="/5D2C07CD/5D6C6580" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D6C6580" Ref="D?"  Part="1" 
F 0 "D?" V 2389 5983 50  0000 R CNN
F 1 "LED" V 2298 5983 50  0000 R CNN
F 2 "" H 2350 6100 50  0001 C CNN
F 3 "~" H 2350 6100 50  0001 C CNN
	1    2350 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D6C6586
P 2000 6100
AR Path="/5D2C07CD/5D6C6586" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D6C6586" Ref="D?"  Part="1" 
F 0 "D?" V 2039 5983 50  0000 R CNN
F 1 "LED" V 1948 5983 50  0000 R CNN
F 2 "" H 2000 6100 50  0001 C CNN
F 3 "~" H 2000 6100 50  0001 C CNN
	1    2000 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D6C65BC
P 2000 6550
AR Path="/5D2C07CD/5D6C65BC" Ref="R?"  Part="1" 
AR Path="/5D2C0CA7/5D6C65BC" Ref="R?"  Part="1" 
F 0 "R?" H 2068 6596 50  0000 L CNN
F 1 "220Ω" H 2068 6505 50  0000 L CNN
F 2 "" V 2040 6540 50  0001 C CNN
F 3 "~" H 2000 6550 50  0001 C CNN
	1    2000 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D6C65C2
P 2350 6550
AR Path="/5D2C07CD/5D6C65C2" Ref="R?"  Part="1" 
AR Path="/5D2C0CA7/5D6C65C2" Ref="R?"  Part="1" 
F 0 "R?" H 2418 6596 50  0000 L CNN
F 1 "220Ω" H 2418 6505 50  0000 L CNN
F 2 "" V 2390 6540 50  0001 C CNN
F 3 "~" H 2350 6550 50  0001 C CNN
	1    2350 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D6C65C8
P 2700 6550
AR Path="/5D2C07CD/5D6C65C8" Ref="R?"  Part="1" 
AR Path="/5D2C0CA7/5D6C65C8" Ref="R?"  Part="1" 
F 0 "R?" H 2768 6596 50  0000 L CNN
F 1 "220Ω" H 2768 6505 50  0000 L CNN
F 2 "" V 2740 6540 50  0001 C CNN
F 3 "~" H 2700 6550 50  0001 C CNN
	1    2700 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D6C65CE
P 3050 6550
AR Path="/5D2C07CD/5D6C65CE" Ref="R?"  Part="1" 
AR Path="/5D2C0CA7/5D6C65CE" Ref="R?"  Part="1" 
F 0 "R?" H 3118 6596 50  0000 L CNN
F 1 "220Ω" H 3118 6505 50  0000 L CNN
F 2 "" V 3090 6540 50  0001 C CNN
F 3 "~" H 3050 6550 50  0001 C CNN
	1    3050 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D6C65D4
P 3400 6550
AR Path="/5D2C07CD/5D6C65D4" Ref="R?"  Part="1" 
AR Path="/5D2C0CA7/5D6C65D4" Ref="R?"  Part="1" 
F 0 "R?" H 3468 6596 50  0000 L CNN
F 1 "220Ω" H 3468 6505 50  0000 L CNN
F 2 "" V 3440 6540 50  0001 C CNN
F 3 "~" H 3400 6550 50  0001 C CNN
	1    3400 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D6C65DA
P 3750 6550
AR Path="/5D2C07CD/5D6C65DA" Ref="R?"  Part="1" 
AR Path="/5D2C0CA7/5D6C65DA" Ref="R?"  Part="1" 
F 0 "R?" H 3818 6596 50  0000 L CNN
F 1 "220Ω" H 3818 6505 50  0000 L CNN
F 2 "" V 3790 6540 50  0001 C CNN
F 3 "~" H 3750 6550 50  0001 C CNN
	1    3750 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D6C65E0
P 4100 6550
AR Path="/5D2C07CD/5D6C65E0" Ref="R?"  Part="1" 
AR Path="/5D2C0CA7/5D6C65E0" Ref="R?"  Part="1" 
F 0 "R?" H 4168 6596 50  0000 L CNN
F 1 "220Ω" H 4168 6505 50  0000 L CNN
F 2 "" V 4140 6540 50  0001 C CNN
F 3 "~" H 4100 6550 50  0001 C CNN
	1    4100 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D6C65E6
P 4450 6550
AR Path="/5D2C07CD/5D6C65E6" Ref="R?"  Part="1" 
AR Path="/5D2C0CA7/5D6C65E6" Ref="R?"  Part="1" 
F 0 "R?" H 4518 6596 50  0000 L CNN
F 1 "220Ω" H 4518 6505 50  0000 L CNN
F 2 "" V 4490 6540 50  0001 C CNN
F 3 "~" H 4450 6550 50  0001 C CNN
	1    4450 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6700 2000 6800
Wire Wire Line
	2000 6800 2350 6800
Wire Wire Line
	2350 6700 2350 6800
Connection ~ 2350 6800
Wire Wire Line
	2350 6800 2700 6800
Wire Wire Line
	2700 6700 2700 6800
Connection ~ 2700 6800
Wire Wire Line
	2700 6800 3050 6800
Wire Wire Line
	3050 6700 3050 6800
Connection ~ 3050 6800
Wire Wire Line
	3050 6800 3400 6800
Wire Wire Line
	3400 6700 3400 6800
Connection ~ 3400 6800
Wire Wire Line
	3400 6800 3750 6800
Wire Wire Line
	3750 6700 3750 6800
Connection ~ 3750 6800
Wire Wire Line
	3750 6800 4100 6800
Wire Wire Line
	4100 6700 4100 6800
Connection ~ 4100 6800
Wire Wire Line
	4100 6800 4450 6800
Wire Wire Line
	4450 6700 4450 6800
$Comp
L power:GND #PWR?
U 1 1 5D6C6649
P 1700 6800
AR Path="/5D2C07CD/5D6C6649" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5D6C6649" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1700 6550 50  0001 C CNN
F 1 "GND" H 1705 6627 50  0000 C CNN
F 2 "" H 1700 6800 50  0001 C CNN
F 3 "" H 1700 6800 50  0001 C CNN
	1    1700 6800
	1    0    0    -1  
$EndComp
Connection ~ 2000 6800
Wire Wire Line
	2000 6250 2000 6400
Wire Wire Line
	2350 6250 2350 6400
Wire Wire Line
	2700 6400 2700 6250
Wire Wire Line
	3050 6250 3050 6400
Wire Wire Line
	3400 6400 3400 6250
Wire Wire Line
	3750 6250 3750 6400
Wire Wire Line
	4100 6400 4100 6250
Wire Wire Line
	4450 6250 4450 6400
Wire Wire Line
	2000 5100 5850 5100
Wire Wire Line
	2000 5100 2000 5950
Connection ~ 5850 5100
Wire Wire Line
	5850 5100 5850 3550
Wire Wire Line
	2350 5150 5950 5150
Wire Wire Line
	2350 5150 2350 5950
Connection ~ 5950 5150
Wire Wire Line
	5950 5150 5950 3450
Wire Wire Line
	2700 5200 6050 5200
Wire Wire Line
	2700 5200 2700 5950
Connection ~ 6050 5200
Wire Wire Line
	6050 5200 6050 3350
Wire Wire Line
	3050 5250 6150 5250
Wire Wire Line
	3050 5250 3050 5950
Connection ~ 6150 5250
Wire Wire Line
	6150 5250 6150 3250
Wire Wire Line
	3400 5300 6250 5300
Wire Wire Line
	3400 5300 3400 5950
Connection ~ 6250 5300
Wire Wire Line
	6250 5300 6250 3150
Wire Wire Line
	3750 5350 6350 5350
Wire Wire Line
	3750 5350 3750 5950
Connection ~ 6350 5350
Wire Wire Line
	6350 5350 6350 3050
Wire Wire Line
	4100 5400 6450 5400
Wire Wire Line
	4100 5400 4100 5950
Connection ~ 6450 5400
Wire Wire Line
	6450 5400 6450 2950
Wire Wire Line
	4450 5450 6550 5450
Wire Wire Line
	4450 5450 4450 5950
Connection ~ 6550 5450
Wire Wire Line
	6550 5450 6550 2850
Wire Wire Line
	4350 4150 1700 4150
Wire Wire Line
	1700 4150 1700 6800
Wire Wire Line
	1700 6800 2000 6800
Connection ~ 4350 4150
Connection ~ 1700 6800
$EndSCHEMATC
