EESchema Schematic File Version 4
LIBS:Firenze-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 19 19
Title "Register D"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Register D is wired directly to the Output Display Module."
$EndDescr
$Comp
L 74xx:74LS245 U?
U 1 1 5D2A25EB
P 5400 3350
AR Path="/5D2C0CA7/5D2A25EB" Ref="U?"  Part="1" 
AR Path="/5D29E36D/5D2A25EB" Ref="U?"  Part="1" 
F 0 "U?" H 5400 4331 50  0000 C CNN
F 1 "74LS245" H 5400 4240 50  0000 C CNN
F 2 "" H 5400 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 5400 3350 50  0001 C CNN
	1    5400 3350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 U?
U 1 1 5D2A25F1
P 7450 3350
AR Path="/5D2C0CA7/5D2A25F1" Ref="U?"  Part="1" 
AR Path="/5D29E36D/5D2A25F1" Ref="U?"  Part="1" 
F 0 "U?" H 7450 4331 50  0000 C CNN
F 1 "74F377" H 7450 4240 50  0000 C CNN
F 2 "" H 7450 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 7450 3350 50  0001 C CNN
	1    7450 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5400 4150 7450 4150
$Comp
L power:VCC #PWR?
U 1 1 5D2A25F8
P 6450 2450
AR Path="/5D2C0CA7/5D2A25F8" Ref="#PWR?"  Part="1" 
AR Path="/5D29E36D/5D2A25F8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 2300 50  0001 C CNN
F 1 "VCC" H 6467 2623 50  0000 C CNN
F 2 "" H 6450 2450 50  0001 C CNN
F 3 "" H 6450 2450 50  0001 C CNN
	1    6450 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D2A25FE
P 7450 4200
AR Path="/5D2C0CA7/5D2A25FE" Ref="#PWR?"  Part="1" 
AR Path="/5D29E36D/5D2A25FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7450 3950 50  0001 C CNN
F 1 "GND" H 7455 4027 50  0000 C CNN
F 2 "" H 7450 4200 50  0001 C CNN
F 3 "" H 7450 4200 50  0001 C CNN
	1    7450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4200 7450 4150
Connection ~ 7450 4150
Wire Wire Line
	5400 2550 6450 2550
Wire Wire Line
	4900 3850 4800 3850
Wire Wire Line
	4900 3750 4450 3750
Wire Wire Line
	4450 3750 4450 4150
Wire Wire Line
	4450 4150 5400 4150
Connection ~ 5400 4150
Wire Wire Line
	6950 3350 6150 3350
Wire Wire Line
	5900 3550 5950 3550
Text GLabel 3300 1750 0    50   Input ~ 0
~DI
Text GLabel 3300 2050 0    50   Input ~ 0
~DO
Text GLabel 3300 1900 0    50   Input ~ 0
CLK0
Wire Wire Line
	7950 3550 8150 3550
Wire Wire Line
	8150 4700 3900 4700
Wire Wire Line
	3900 4700 3900 3550
Wire Wire Line
	3900 3550 4900 3550
Wire Wire Line
	8150 3550 8150 4700
Wire Wire Line
	7950 3450 8200 3450
Wire Wire Line
	8200 3450 8200 4750
Wire Wire Line
	8200 4750 3850 4750
Wire Wire Line
	3850 4750 3850 3450
Wire Wire Line
	3850 3450 4900 3450
Wire Wire Line
	4900 3350 3800 3350
Wire Wire Line
	3800 3350 3800 4800
Wire Wire Line
	3800 4800 8250 4800
Wire Wire Line
	8250 4800 8250 3350
Wire Wire Line
	8250 3350 7950 3350
Wire Wire Line
	7950 3250 8300 3250
Wire Wire Line
	8300 3250 8300 4850
Wire Wire Line
	8300 4850 3750 4850
Wire Wire Line
	3750 4850 3750 3250
Wire Wire Line
	3750 3250 4900 3250
Wire Wire Line
	4900 3150 3700 3150
Wire Wire Line
	3700 3150 3700 4900
Wire Wire Line
	3700 4900 8350 4900
Wire Wire Line
	8350 4900 8350 3150
Wire Wire Line
	8350 3150 7950 3150
Wire Wire Line
	7950 3050 8400 3050
Wire Wire Line
	8400 3050 8400 4950
Wire Wire Line
	8400 4950 3650 4950
Wire Wire Line
	3650 4950 3650 3050
Wire Wire Line
	3650 3050 4900 3050
Wire Wire Line
	4900 2950 3600 2950
Wire Wire Line
	3600 2950 3600 5000
Wire Wire Line
	3600 5000 8450 5000
Wire Wire Line
	8450 5000 8450 2950
Wire Wire Line
	8450 2950 7950 2950
Wire Wire Line
	7950 2850 8500 2850
Wire Wire Line
	8500 2850 8500 5050
Wire Wire Line
	8500 5050 3550 5050
Wire Wire Line
	3550 5050 3550 2850
Wire Wire Line
	3550 2850 4900 2850
Text GLabel 2450 2850 0    50   BiDi ~ 0
Bus00
Text GLabel 2450 2950 0    50   BiDi ~ 0
Bus01
Text GLabel 2450 3050 0    50   BiDi ~ 0
Bus02
Text GLabel 2450 3150 0    50   BiDi ~ 0
Bus03
Text GLabel 2450 3250 0    50   BiDi ~ 0
Bus04
Text GLabel 2450 3350 0    50   BiDi ~ 0
Bus05
Text GLabel 2450 3450 0    50   BiDi ~ 0
Bus06
Wire Wire Line
	3550 2850 2450 2850
Connection ~ 3550 2850
Wire Wire Line
	2450 2950 3600 2950
Connection ~ 3600 2950
Wire Wire Line
	3650 3050 2450 3050
Connection ~ 3650 3050
Wire Wire Line
	3700 3150 2450 3150
Connection ~ 3700 3150
Wire Wire Line
	3750 3250 2450 3250
Connection ~ 3750 3250
Wire Wire Line
	3800 3350 2450 3350
Connection ~ 3800 3350
Wire Wire Line
	3850 3450 2450 3450
Connection ~ 3850 3450
Text GLabel 2450 3550 0    50   BiDi ~ 0
Bus07
Wire Wire Line
	3900 3550 2450 3550
Connection ~ 3900 3550
Text GLabel 5950 5600 3    50   Output ~ 0
Out7
Text GLabel 6050 5600 3    50   Output ~ 0
Out6
Text GLabel 6150 5600 3    50   Output ~ 0
Out5
Text GLabel 6250 5600 3    50   Output ~ 0
Out4
Text GLabel 6350 5600 3    50   Output ~ 0
Out3
Text GLabel 6450 5600 3    50   Output ~ 0
Out2
Text GLabel 6550 5600 3    50   Output ~ 0
Out1
Text GLabel 6650 5600 3    50   Output ~ 0
Out0
Wire Wire Line
	5950 5600 5950 3550
Connection ~ 5950 3550
Wire Wire Line
	5950 3550 6950 3550
Wire Wire Line
	6050 5600 6050 3450
Wire Wire Line
	5900 3450 6050 3450
Connection ~ 6050 3450
Wire Wire Line
	6050 3450 6950 3450
Wire Wire Line
	6150 5600 6150 3350
Connection ~ 6150 3350
Wire Wire Line
	6150 3350 5900 3350
Wire Wire Line
	6250 5600 6250 3250
Wire Wire Line
	5900 3250 6250 3250
Connection ~ 6250 3250
Wire Wire Line
	6250 3250 6950 3250
Wire Wire Line
	6350 5600 6350 3150
Wire Wire Line
	5900 3150 6350 3150
Connection ~ 6350 3150
Wire Wire Line
	6350 3150 6950 3150
Wire Wire Line
	6450 5600 6450 3050
Wire Wire Line
	5900 3050 6450 3050
Connection ~ 6450 3050
Wire Wire Line
	6450 3050 6950 3050
Wire Wire Line
	6550 5600 6550 2950
Wire Wire Line
	5900 2950 6550 2950
Connection ~ 6550 2950
Wire Wire Line
	6550 2950 6950 2950
Wire Wire Line
	6650 5600 6650 2850
Wire Wire Line
	5900 2850 6650 2850
Connection ~ 6650 2850
Wire Wire Line
	6650 2850 6950 2850
Wire Wire Line
	4800 3850 4800 2050
Wire Wire Line
	4800 2050 3300 2050
Wire Wire Line
	6450 2450 6450 2550
Connection ~ 6450 2550
Wire Wire Line
	6450 2550 7450 2550
Wire Wire Line
	7950 3750 8900 3750
Wire Wire Line
	8900 3750 8900 1900
Wire Wire Line
	3300 1900 8900 1900
Wire Wire Line
	7950 3850 9000 3850
Wire Wire Line
	9000 3850 9000 1750
Wire Wire Line
	3300 1750 9000 1750
$EndSCHEMATC
