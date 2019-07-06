EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 18
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
U 1 1 5D29B68D
P 5300 3300
F 0 "U?" H 5300 4281 50  0000 C CNN
F 1 "74LS245" H 5300 4190 50  0000 C CNN
F 2 "" H 5300 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 5300 3300 50  0001 C CNN
	1    5300 3300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 U?
U 1 1 5D29B693
P 7350 3300
F 0 "U?" H 7350 4281 50  0000 C CNN
F 1 "74LS377" H 7350 4190 50  0000 C CNN
F 2 "" H 7350 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 7350 3300 50  0001 C CNN
	1    7350 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5300 4100 7350 4100
$Comp
L power:VCC #PWR?
U 1 1 5D29B69A
P 6350 2400
F 0 "#PWR?" H 6350 2250 50  0001 C CNN
F 1 "VCC" H 6367 2573 50  0000 C CNN
F 2 "" H 6350 2400 50  0001 C CNN
F 3 "" H 6350 2400 50  0001 C CNN
	1    6350 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D29B6A0
P 7350 4150
F 0 "#PWR?" H 7350 3900 50  0001 C CNN
F 1 "GND" H 7355 3977 50  0000 C CNN
F 2 "" H 7350 4150 50  0001 C CNN
F 3 "" H 7350 4150 50  0001 C CNN
	1    7350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4150 7350 4100
Connection ~ 7350 4100
Wire Wire Line
	5300 2500 6350 2500
Wire Wire Line
	4800 3800 4700 3800
Wire Wire Line
	4800 3700 4350 3700
Wire Wire Line
	4350 3700 4350 4100
Wire Wire Line
	4350 4100 5300 4100
Connection ~ 5300 4100
Wire Wire Line
	6850 3300 6050 3300
Wire Wire Line
	5800 3500 5850 3500
Text GLabel 3200 1700 0    50   Input ~ 0
~BI
Text GLabel 3200 2000 0    50   Input ~ 0
~BO
Text GLabel 3200 1850 0    50   Input ~ 0
CLK0
Wire Wire Line
	7850 3500 8050 3500
Wire Wire Line
	8050 4650 3800 4650
Wire Wire Line
	3800 4650 3800 3500
Wire Wire Line
	3800 3500 4800 3500
Wire Wire Line
	8050 3500 8050 4650
Wire Wire Line
	7850 3400 8100 3400
Wire Wire Line
	8100 3400 8100 4700
Wire Wire Line
	8100 4700 3750 4700
Wire Wire Line
	3750 4700 3750 3400
Wire Wire Line
	3750 3400 4800 3400
Wire Wire Line
	4800 3300 3700 3300
Wire Wire Line
	3700 3300 3700 4750
Wire Wire Line
	3700 4750 8150 4750
Wire Wire Line
	8150 4750 8150 3300
Wire Wire Line
	8150 3300 7850 3300
Wire Wire Line
	7850 3200 8200 3200
Wire Wire Line
	8200 3200 8200 4800
Wire Wire Line
	8200 4800 3650 4800
Wire Wire Line
	3650 4800 3650 3200
Wire Wire Line
	3650 3200 4800 3200
Wire Wire Line
	4800 3100 3600 3100
Wire Wire Line
	3600 3100 3600 4850
Wire Wire Line
	3600 4850 8250 4850
Wire Wire Line
	8250 4850 8250 3100
Wire Wire Line
	8250 3100 7850 3100
Wire Wire Line
	7850 3000 8300 3000
Wire Wire Line
	8300 3000 8300 4900
Wire Wire Line
	8300 4900 3550 4900
Wire Wire Line
	3550 4900 3550 3000
Wire Wire Line
	3550 3000 4800 3000
Wire Wire Line
	4800 2900 3500 2900
Wire Wire Line
	3500 2900 3500 4950
Wire Wire Line
	3500 4950 8350 4950
Wire Wire Line
	8350 4950 8350 2900
Wire Wire Line
	8350 2900 7850 2900
Wire Wire Line
	7850 2800 8400 2800
Wire Wire Line
	8400 2800 8400 5000
Wire Wire Line
	8400 5000 3450 5000
Wire Wire Line
	3450 5000 3450 2800
Wire Wire Line
	3450 2800 4800 2800
Text GLabel 2350 2800 0    50   BiDi ~ 0
Bus00
Text GLabel 2350 2900 0    50   BiDi ~ 0
Bus01
Text GLabel 2350 3000 0    50   BiDi ~ 0
Bus02
Text GLabel 2350 3100 0    50   BiDi ~ 0
Bus03
Text GLabel 2350 3200 0    50   BiDi ~ 0
Bus04
Text GLabel 2350 3300 0    50   BiDi ~ 0
Bus05
Text GLabel 2350 3400 0    50   BiDi ~ 0
Bus06
Wire Wire Line
	3450 2800 2350 2800
Connection ~ 3450 2800
Wire Wire Line
	2350 2900 3500 2900
Connection ~ 3500 2900
Wire Wire Line
	3550 3000 2350 3000
Connection ~ 3550 3000
Wire Wire Line
	3600 3100 2350 3100
Connection ~ 3600 3100
Wire Wire Line
	3650 3200 2350 3200
Connection ~ 3650 3200
Wire Wire Line
	3700 3300 2350 3300
Connection ~ 3700 3300
Wire Wire Line
	3750 3400 2350 3400
Connection ~ 3750 3400
Text GLabel 2350 3500 0    50   BiDi ~ 0
Bus07
Wire Wire Line
	3800 3500 2350 3500
Connection ~ 3800 3500
Text GLabel 5850 5550 3    50   Output ~ 0
ALUB7
Text GLabel 5950 5550 3    50   Output ~ 0
ALUB6
Text GLabel 6050 5550 3    50   Output ~ 0
ALUB5
Text GLabel 6150 5550 3    50   Output ~ 0
ALUB4
Text GLabel 6250 5550 3    50   Output ~ 0
ALUB3
Text GLabel 6350 5550 3    50   Output ~ 0
ALUB2
Text GLabel 6450 5550 3    50   Output ~ 0
ALUB1
Text GLabel 6550 5550 3    50   Output ~ 0
ALUB0
Wire Wire Line
	5850 5550 5850 3500
Connection ~ 5850 3500
Wire Wire Line
	5850 3500 6850 3500
Wire Wire Line
	5950 5550 5950 3400
Wire Wire Line
	5800 3400 5950 3400
Connection ~ 5950 3400
Wire Wire Line
	5950 3400 6850 3400
Wire Wire Line
	6050 5550 6050 3300
Connection ~ 6050 3300
Wire Wire Line
	6050 3300 5800 3300
Wire Wire Line
	6150 5550 6150 3200
Wire Wire Line
	5800 3200 6150 3200
Connection ~ 6150 3200
Wire Wire Line
	6150 3200 6850 3200
Wire Wire Line
	6250 5550 6250 3100
Wire Wire Line
	5800 3100 6250 3100
Connection ~ 6250 3100
Wire Wire Line
	6250 3100 6850 3100
Wire Wire Line
	6350 5550 6350 3000
Wire Wire Line
	5800 3000 6350 3000
Connection ~ 6350 3000
Wire Wire Line
	6350 3000 6850 3000
Wire Wire Line
	6450 5550 6450 2900
Wire Wire Line
	5800 2900 6450 2900
Connection ~ 6450 2900
Wire Wire Line
	6450 2900 6850 2900
Wire Wire Line
	6550 5550 6550 2800
Wire Wire Line
	5800 2800 6550 2800
Connection ~ 6550 2800
Wire Wire Line
	6550 2800 6850 2800
Wire Wire Line
	4700 3800 4700 2000
Wire Wire Line
	4700 2000 3200 2000
Wire Wire Line
	6350 2400 6350 2500
Connection ~ 6350 2500
Wire Wire Line
	6350 2500 7350 2500
Wire Wire Line
	7850 3700 8800 3700
Wire Wire Line
	8800 3700 8800 1850
Wire Wire Line
	3200 1850 8800 1850
Wire Wire Line
	7850 3800 8900 3800
Wire Wire Line
	8900 3800 8900 1700
Wire Wire Line
	3200 1700 8900 1700
$EndSCHEMATC
