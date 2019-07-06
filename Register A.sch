EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 18
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
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
F 1 "74LS377" H 7350 4240 50  0000 C CNN
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
$Comp
L power:GND #PWR?
U 1 1 5D230698
P 7350 4200
F 0 "#PWR?" H 7350 3950 50  0001 C CNN
F 1 "GND" H 7355 4027 50  0000 C CNN
F 2 "" H 7350 4200 50  0001 C CNN
F 3 "" H 7350 4200 50  0001 C CNN
	1    7350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4200 7350 4150
Connection ~ 7350 4150
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
	5850 5600 5850 3550
Connection ~ 5850 3550
Wire Wire Line
	5850 3550 6850 3550
Wire Wire Line
	5950 5600 5950 3450
Wire Wire Line
	5800 3450 5950 3450
Connection ~ 5950 3450
Wire Wire Line
	5950 3450 6850 3450
Wire Wire Line
	6050 5600 6050 3350
Connection ~ 6050 3350
Wire Wire Line
	6050 3350 5800 3350
Wire Wire Line
	6150 5600 6150 3250
Wire Wire Line
	5800 3250 6150 3250
Connection ~ 6150 3250
Wire Wire Line
	6150 3250 6850 3250
Wire Wire Line
	6250 5600 6250 3150
Wire Wire Line
	5800 3150 6250 3150
Connection ~ 6250 3150
Wire Wire Line
	6250 3150 6850 3150
Wire Wire Line
	6350 5600 6350 3050
Wire Wire Line
	5800 3050 6350 3050
Connection ~ 6350 3050
Wire Wire Line
	6350 3050 6850 3050
Wire Wire Line
	6450 5600 6450 2950
Wire Wire Line
	5800 2950 6450 2950
Connection ~ 6450 2950
Wire Wire Line
	6450 2950 6850 2950
Wire Wire Line
	6550 5600 6550 2850
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
$EndSCHEMATC
