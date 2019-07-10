EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 13 19
Title "Register B"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Register B is wired to the ALU's B operand."
$EndDescr
$Comp
L 74xx:74LS245 U?
U 1 1 5D29B68D
P 5300 3300
AR Path="/5D2C0CA7/5D29B68D" Ref="U?"  Part="1" 
AR Path="/5D2C0D13/5D29B68D" Ref="U?"  Part="1" 
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
AR Path="/5D2C0CA7/5D29B693" Ref="U?"  Part="1" 
AR Path="/5D2C0D13/5D29B693" Ref="U?"  Part="1" 
F 0 "U?" H 7350 4281 50  0000 C CNN
F 1 "74F377" H 7350 4190 50  0000 C CNN
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
AR Path="/5D2C0CA7/5D29B69A" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0D13/5D29B69A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 2250 50  0001 C CNN
F 1 "VCC" H 6367 2573 50  0000 C CNN
F 2 "" H 6350 2400 50  0001 C CNN
F 3 "" H 6350 2400 50  0001 C CNN
	1    6350 2400
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
	5850 5550 5850 5400
Connection ~ 5850 3500
Wire Wire Line
	5850 3500 6850 3500
Wire Wire Line
	5950 5550 5950 5350
Wire Wire Line
	5800 3400 5950 3400
Connection ~ 5950 3400
Wire Wire Line
	5950 3400 6850 3400
Wire Wire Line
	6050 5550 6050 5300
Connection ~ 6050 3300
Wire Wire Line
	6050 3300 5800 3300
Wire Wire Line
	6150 5550 6150 5250
Wire Wire Line
	5800 3200 6150 3200
Connection ~ 6150 3200
Wire Wire Line
	6150 3200 6850 3200
Wire Wire Line
	6250 5550 6250 5200
Wire Wire Line
	5800 3100 6250 3100
Connection ~ 6250 3100
Wire Wire Line
	6250 3100 6850 3100
Wire Wire Line
	6350 5550 6350 5150
Wire Wire Line
	5800 3000 6350 3000
Connection ~ 6350 3000
Wire Wire Line
	6350 3000 6850 3000
Wire Wire Line
	6450 5550 6450 5100
Wire Wire Line
	5800 2900 6450 2900
Connection ~ 6450 2900
Wire Wire Line
	6450 2900 6850 2900
Wire Wire Line
	6550 5550 6550 5050
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
$Comp
L Device:R_US R?
U 1 1 5D72D2D7
P 2400 7100
AR Path="/5D2C07CD/5D72D2D7" Ref="R?"  Part="1" 
AR Path="/5D2C0D13/5D72D2D7" Ref="R?"  Part="1" 
F 0 "R?" H 2468 7146 50  0000 L CNN
F 1 "220Ω" H 2468 7055 50  0000 L CNN
F 2 "" V 2440 7090 50  0001 C CNN
F 3 "~" H 2400 7100 50  0001 C CNN
	1    2400 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D72D2DD
P 2750 7100
AR Path="/5D2C07CD/5D72D2DD" Ref="R?"  Part="1" 
AR Path="/5D2C0D13/5D72D2DD" Ref="R?"  Part="1" 
F 0 "R?" H 2818 7146 50  0000 L CNN
F 1 "220Ω" H 2818 7055 50  0000 L CNN
F 2 "" V 2790 7090 50  0001 C CNN
F 3 "~" H 2750 7100 50  0001 C CNN
	1    2750 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D72D2E3
P 3100 7100
AR Path="/5D2C07CD/5D72D2E3" Ref="R?"  Part="1" 
AR Path="/5D2C0D13/5D72D2E3" Ref="R?"  Part="1" 
F 0 "R?" H 3168 7146 50  0000 L CNN
F 1 "220Ω" H 3168 7055 50  0000 L CNN
F 2 "" V 3140 7090 50  0001 C CNN
F 3 "~" H 3100 7100 50  0001 C CNN
	1    3100 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D72D2E9
P 3450 7100
AR Path="/5D2C07CD/5D72D2E9" Ref="R?"  Part="1" 
AR Path="/5D2C0D13/5D72D2E9" Ref="R?"  Part="1" 
F 0 "R?" H 3518 7146 50  0000 L CNN
F 1 "220Ω" H 3518 7055 50  0000 L CNN
F 2 "" V 3490 7090 50  0001 C CNN
F 3 "~" H 3450 7100 50  0001 C CNN
	1    3450 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D72D2EF
P 3800 7100
AR Path="/5D2C07CD/5D72D2EF" Ref="R?"  Part="1" 
AR Path="/5D2C0D13/5D72D2EF" Ref="R?"  Part="1" 
F 0 "R?" H 3868 7146 50  0000 L CNN
F 1 "220Ω" H 3868 7055 50  0000 L CNN
F 2 "" V 3840 7090 50  0001 C CNN
F 3 "~" H 3800 7100 50  0001 C CNN
	1    3800 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D72D2F5
P 4150 7100
AR Path="/5D2C07CD/5D72D2F5" Ref="R?"  Part="1" 
AR Path="/5D2C0D13/5D72D2F5" Ref="R?"  Part="1" 
F 0 "R?" H 4218 7146 50  0000 L CNN
F 1 "220Ω" H 4218 7055 50  0000 L CNN
F 2 "" V 4190 7090 50  0001 C CNN
F 3 "~" H 4150 7100 50  0001 C CNN
	1    4150 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D72D2FB
P 4500 7100
AR Path="/5D2C07CD/5D72D2FB" Ref="R?"  Part="1" 
AR Path="/5D2C0D13/5D72D2FB" Ref="R?"  Part="1" 
F 0 "R?" H 4568 7146 50  0000 L CNN
F 1 "220Ω" H 4568 7055 50  0000 L CNN
F 2 "" V 4540 7090 50  0001 C CNN
F 3 "~" H 4500 7100 50  0001 C CNN
	1    4500 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D72D301
P 4850 7100
AR Path="/5D2C07CD/5D72D301" Ref="R?"  Part="1" 
AR Path="/5D2C0D13/5D72D301" Ref="R?"  Part="1" 
F 0 "R?" H 4918 7146 50  0000 L CNN
F 1 "220Ω" H 4918 7055 50  0000 L CNN
F 2 "" V 4890 7090 50  0001 C CNN
F 3 "~" H 4850 7100 50  0001 C CNN
	1    4850 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 7250 2400 7350
Wire Wire Line
	2400 7350 2750 7350
Wire Wire Line
	2750 7250 2750 7350
Connection ~ 2750 7350
Wire Wire Line
	2750 7350 3100 7350
Wire Wire Line
	3100 7250 3100 7350
Connection ~ 3100 7350
Wire Wire Line
	3100 7350 3450 7350
Wire Wire Line
	3450 7250 3450 7350
Connection ~ 3450 7350
Wire Wire Line
	3450 7350 3800 7350
Wire Wire Line
	3800 7250 3800 7350
Connection ~ 3800 7350
Wire Wire Line
	3800 7350 4150 7350
Wire Wire Line
	4150 7250 4150 7350
Connection ~ 4150 7350
Wire Wire Line
	4150 7350 4500 7350
Wire Wire Line
	4500 7250 4500 7350
Connection ~ 4500 7350
Wire Wire Line
	4500 7350 4850 7350
Wire Wire Line
	4850 7250 4850 7350
$Comp
L power:GND #PWR?
U 1 1 5D72D31C
P 2100 7350
AR Path="/5D2C07CD/5D72D31C" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5D72D31C" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0D13/5D72D31C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2100 7100 50  0001 C CNN
F 1 "GND" H 2105 7177 50  0000 C CNN
F 2 "" H 2100 7350 50  0001 C CNN
F 3 "" H 2100 7350 50  0001 C CNN
	1    2100 7350
	1    0    0    -1  
$EndComp
Connection ~ 2400 7350
Wire Wire Line
	2100 7350 2400 7350
Connection ~ 2100 7350
Wire Wire Line
	4350 4100 2100 4100
Wire Wire Line
	2100 4100 2100 7350
Connection ~ 4350 4100
Connection ~ 6550 5050
Wire Wire Line
	6550 5050 6550 2800
Connection ~ 6450 5100
Wire Wire Line
	6450 5100 6450 2900
Connection ~ 6350 5150
Wire Wire Line
	6350 5150 6350 3000
Connection ~ 6250 5200
Wire Wire Line
	6250 5200 6250 3100
Connection ~ 6150 5250
Wire Wire Line
	6150 5250 6150 3200
Connection ~ 6050 5300
Wire Wire Line
	6050 5300 6050 3300
Connection ~ 5950 5350
Wire Wire Line
	5950 5350 5950 3400
Connection ~ 5850 5400
Wire Wire Line
	5850 5400 5850 3500
Wire Wire Line
	2400 6800 2400 6950
Wire Wire Line
	2400 5050 6550 5050
$Comp
L Device:LED D?
U 1 1 5D72D2D1
P 2400 6650
AR Path="/5D2C07CD/5D72D2D1" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5D72D2D1" Ref="D?"  Part="1" 
F 0 "D?" V 2439 6533 50  0000 R CNN
F 1 "LED" V 2348 6533 50  0000 R CNN
F 2 "" H 2400 6650 50  0001 C CNN
F 3 "~" H 2400 6650 50  0001 C CNN
	1    2400 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 5050 2400 6500
Wire Wire Line
	2750 6800 2750 6950
Wire Wire Line
	2750 5100 6450 5100
$Comp
L Device:LED D?
U 1 1 5D72D2CB
P 2750 6650
AR Path="/5D2C07CD/5D72D2CB" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5D72D2CB" Ref="D?"  Part="1" 
F 0 "D?" V 2789 6533 50  0000 R CNN
F 1 "LED" V 2698 6533 50  0000 R CNN
F 2 "" H 2750 6650 50  0001 C CNN
F 3 "~" H 2750 6650 50  0001 C CNN
	1    2750 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 5100 2750 6500
Wire Wire Line
	3100 6950 3100 6800
Wire Wire Line
	3100 5150 6350 5150
$Comp
L Device:LED D?
U 1 1 5D72D2C5
P 3100 6650
AR Path="/5D2C07CD/5D72D2C5" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5D72D2C5" Ref="D?"  Part="1" 
F 0 "D?" V 3139 6533 50  0000 R CNN
F 1 "LED" V 3048 6533 50  0000 R CNN
F 2 "" H 3100 6650 50  0001 C CNN
F 3 "~" H 3100 6650 50  0001 C CNN
	1    3100 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 5150 3100 6500
Wire Wire Line
	3450 6800 3450 6950
Wire Wire Line
	3450 5200 6250 5200
$Comp
L Device:LED D?
U 1 1 5D72D2BF
P 3450 6650
AR Path="/5D2C07CD/5D72D2BF" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5D72D2BF" Ref="D?"  Part="1" 
F 0 "D?" V 3489 6533 50  0000 R CNN
F 1 "LED" V 3398 6533 50  0000 R CNN
F 2 "" H 3450 6650 50  0001 C CNN
F 3 "~" H 3450 6650 50  0001 C CNN
	1    3450 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 5200 3450 6500
Wire Wire Line
	3800 6950 3800 6800
Wire Wire Line
	3800 5250 6150 5250
$Comp
L Device:LED D?
U 1 1 5D72D2A7
P 3800 6650
AR Path="/5D2C07CD/5D72D2A7" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5D72D2A7" Ref="D?"  Part="1" 
F 0 "D?" V 3839 6533 50  0000 R CNN
F 1 "LED" V 3748 6533 50  0000 R CNN
F 2 "" H 3800 6650 50  0001 C CNN
F 3 "~" H 3800 6650 50  0001 C CNN
	1    3800 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 5250 3800 6500
Wire Wire Line
	4150 6800 4150 6950
Wire Wire Line
	4150 5300 6050 5300
$Comp
L Device:LED D?
U 1 1 5D72D2AD
P 4150 6650
AR Path="/5D2C07CD/5D72D2AD" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5D72D2AD" Ref="D?"  Part="1" 
F 0 "D?" V 4189 6533 50  0000 R CNN
F 1 "LED" V 4098 6533 50  0000 R CNN
F 2 "" H 4150 6650 50  0001 C CNN
F 3 "~" H 4150 6650 50  0001 C CNN
	1    4150 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 5300 4150 6500
Wire Wire Line
	4500 6950 4500 6800
Wire Wire Line
	4500 5350 5950 5350
$Comp
L Device:LED D?
U 1 1 5D72D2B3
P 4500 6650
AR Path="/5D2C07CD/5D72D2B3" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5D72D2B3" Ref="D?"  Part="1" 
F 0 "D?" V 4539 6533 50  0000 R CNN
F 1 "LED" V 4448 6533 50  0000 R CNN
F 2 "" H 4500 6650 50  0001 C CNN
F 3 "~" H 4500 6650 50  0001 C CNN
	1    4500 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 5350 4500 6500
Wire Wire Line
	4850 6800 4850 6950
Wire Wire Line
	4850 5400 5850 5400
$Comp
L Device:LED D?
U 1 1 5D72D2B9
P 4850 6650
AR Path="/5D2C07CD/5D72D2B9" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5D72D2B9" Ref="D?"  Part="1" 
F 0 "D?" V 4889 6533 50  0000 R CNN
F 1 "LED" V 4798 6533 50  0000 R CNN
F 2 "" H 4850 6650 50  0001 C CNN
F 3 "~" H 4850 6650 50  0001 C CNN
	1    4850 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 5400 4850 6500
$EndSCHEMATC