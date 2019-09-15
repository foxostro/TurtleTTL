EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 20 20
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 "and the control clock."
Comment3 "This alleviates timing constraints related to the phase shift between the register clock"
Comment4 "The PC/IF register sits between the program counter and the Instruction Fetch stage."
$EndDescr
$Comp
L 74xx:74LS377 U?
U 1 1 5DD0E967
P 4900 2750
AR Path="/5D2C0CA7/5DD0E967" Ref="U?"  Part="1" 
AR Path="/5D7BE200/5DD0E967" Ref="U?"  Part="1" 
F 0 "U?" H 4650 3550 50  0000 C CNN
F 1 "74F377" H 4650 3450 50  0000 C CNN
F 2 "" H 4900 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 4900 2750 50  0001 C CNN
	1    4900 2750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 U?
U 1 1 5DD0E9D6
P 4900 4900
AR Path="/5D2C0CA7/5DD0E9D6" Ref="U?"  Part="1" 
AR Path="/5D7BE200/5DD0E9D6" Ref="U?"  Part="1" 
F 0 "U?" H 4650 5700 50  0000 C CNN
F 1 "74F377" H 4650 5600 50  0000 C CNN
F 2 "" H 4900 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 4900 4900 50  0001 C CNN
	1    4900 4900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DD10B91
P 4900 1950
F 0 "#PWR?" H 4900 1800 50  0001 C CNN
F 1 "VCC" H 4917 2123 50  0000 C CNN
F 2 "" H 4900 1950 50  0001 C CNN
F 3 "" H 4900 1950 50  0001 C CNN
	1    4900 1950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DD11404
P 4900 4100
F 0 "#PWR?" H 4900 3950 50  0001 C CNN
F 1 "VCC" H 4917 4273 50  0000 C CNN
F 2 "" H 4900 4100 50  0001 C CNN
F 3 "" H 4900 4100 50  0001 C CNN
	1    4900 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD11B50
P 4900 3550
F 0 "#PWR?" H 4900 3300 50  0001 C CNN
F 1 "GND" H 4905 3377 50  0000 C CNN
F 2 "" H 4900 3550 50  0001 C CNN
F 3 "" H 4900 3550 50  0001 C CNN
	1    4900 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD12126
P 4900 5700
F 0 "#PWR?" H 4900 5450 50  0001 C CNN
F 1 "GND" H 4905 5527 50  0000 C CNN
F 2 "" H 4900 5700 50  0001 C CNN
F 3 "" H 4900 5700 50  0001 C CNN
	1    4900 5700
	1    0    0    -1  
$EndComp
Text GLabel 1600 4250 0    50   Input ~ 0
ControlClock
Wire Wire Line
	4400 5300 2800 5300
$Comp
L power:GND #PWR?
U 1 1 5DD12CA4
P 4400 5400
F 0 "#PWR?" H 4400 5150 50  0001 C CNN
F 1 "GND" V 4405 5272 50  0000 R CNN
F 2 "" H 4400 5400 50  0001 C CNN
F 3 "" H 4400 5400 50  0001 C CNN
	1    4400 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD131DF
P 4400 3250
F 0 "#PWR?" H 4400 3000 50  0001 C CNN
F 1 "GND" V 4405 3122 50  0000 R CNN
F 2 "" H 4400 3250 50  0001 C CNN
F 3 "" H 4400 3250 50  0001 C CNN
	1    4400 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 3150 2800 3150
Wire Wire Line
	2800 3150 2800 4250
Wire Wire Line
	1600 4250 2800 4250
Connection ~ 2800 4250
Wire Wire Line
	2800 4250 2800 5300
Text GLabel 1550 1550 0    50   Input ~ 0
PC
Entry Wire Line
	3950 2250 3850 2150
Entry Wire Line
	3950 2350 3850 2250
Entry Wire Line
	3950 2450 3850 2350
Entry Wire Line
	3950 2550 3850 2450
Entry Wire Line
	3950 2650 3850 2550
Entry Wire Line
	3950 2750 3850 2650
Entry Wire Line
	3950 2850 3850 2750
Entry Wire Line
	3950 2950 3850 2850
Entry Wire Line
	3950 4400 3850 4300
Entry Wire Line
	3950 4500 3850 4400
Entry Wire Line
	3950 4600 3850 4500
Entry Wire Line
	3950 4700 3850 4600
Entry Wire Line
	3950 4800 3850 4700
Entry Wire Line
	3950 4900 3850 4800
Entry Wire Line
	3950 5000 3850 4900
Entry Wire Line
	3950 5100 3850 5000
Wire Wire Line
	3950 5100 4400 5100
Wire Wire Line
	4400 5000 3950 5000
Wire Wire Line
	4400 4900 3950 4900
Wire Wire Line
	3950 4800 4400 4800
Wire Wire Line
	4400 4700 3950 4700
Wire Wire Line
	3950 4600 4400 4600
Wire Wire Line
	4400 4500 3950 4500
Wire Wire Line
	3950 4400 4400 4400
Wire Wire Line
	4400 2950 3950 2950
Wire Wire Line
	3950 2850 4400 2850
Wire Wire Line
	4400 2750 3950 2750
Wire Wire Line
	3950 2650 4400 2650
Wire Wire Line
	4400 2550 3950 2550
Wire Wire Line
	3950 2450 4400 2450
Wire Wire Line
	4400 2350 3950 2350
Wire Wire Line
	3950 2250 4400 2250
Text Label 3950 2250 0    50   ~ 0
PC00
Text Label 3950 2350 0    50   ~ 0
PC01
Text Label 3950 2450 0    50   ~ 0
PC02
Text Label 3950 2550 0    50   ~ 0
PC03
Text Label 3950 2650 0    50   ~ 0
PC04
Text Label 3950 2750 0    50   ~ 0
PC05
Text Label 3950 2850 0    50   ~ 0
PC06
Text Label 3950 2950 0    50   ~ 0
PC07
Text Label 3950 4400 0    50   ~ 0
PC08
Text Label 3950 4500 0    50   ~ 0
PC09
Text Label 3950 4600 0    50   ~ 0
PC10
Text Label 3950 4700 0    50   ~ 0
PC11
Text Label 3950 4800 0    50   ~ 0
PC12
Text Label 3950 4900 0    50   ~ 0
PC13
Text Label 3950 5000 0    50   ~ 0
PC14
Text Label 3950 5100 0    50   ~ 0
PC15
Wire Bus Line
	3850 1550 1550 1550
Entry Wire Line
	6000 3050 5900 2950
Entry Wire Line
	6000 2350 5900 2250
Entry Wire Line
	6000 2450 5900 2350
Entry Wire Line
	6000 2550 5900 2450
Entry Wire Line
	6000 2650 5900 2550
Entry Wire Line
	6000 2750 5900 2650
Entry Wire Line
	6000 2850 5900 2750
Entry Wire Line
	6000 2950 5900 2850
Entry Wire Line
	6000 5200 5900 5100
Entry Wire Line
	6000 4500 5900 4400
Entry Wire Line
	6000 4600 5900 4500
Entry Wire Line
	6000 4700 5900 4600
Entry Wire Line
	6000 4800 5900 4700
Entry Wire Line
	6000 4900 5900 4800
Entry Wire Line
	6000 5000 5900 4900
Entry Wire Line
	6000 5100 5900 5000
Wire Wire Line
	5900 2250 5400 2250
Wire Wire Line
	5400 2350 5900 2350
Wire Wire Line
	5900 2450 5400 2450
Wire Wire Line
	5400 2550 5900 2550
Wire Wire Line
	5900 2650 5400 2650
Wire Wire Line
	5400 2750 5900 2750
Wire Wire Line
	5900 2850 5400 2850
Wire Wire Line
	5400 2950 5900 2950
Wire Wire Line
	5900 4400 5400 4400
Wire Wire Line
	5400 4500 5900 4500
Wire Wire Line
	5900 4600 5400 4600
Wire Wire Line
	5400 4700 5900 4700
Wire Wire Line
	5900 4800 5400 4800
Wire Wire Line
	5900 4900 5400 4900
Wire Wire Line
	5400 5000 5900 5000
Wire Wire Line
	5900 5100 5400 5100
Text Label 5600 2250 0    50   ~ 0
PC_IF00
Text Label 5600 2350 0    50   ~ 0
PC_IF01
Text Label 5600 2450 0    50   ~ 0
PC_IF02
Text Label 5600 2550 0    50   ~ 0
PC_IF03
Text Label 5600 2650 0    50   ~ 0
PC_IF04
Text Label 5600 2750 0    50   ~ 0
PC_IF05
Text Label 5600 2850 0    50   ~ 0
PC_IF06
Text Label 5600 2950 0    50   ~ 0
PC_IF07
Text Label 5600 4400 0    50   ~ 0
PC_IF08
Text Label 5600 4500 0    50   ~ 0
PC_IF09
Text Label 5600 4600 0    50   ~ 0
PC_IF10
Text Label 5600 4700 0    50   ~ 0
PC_IF11
Text Label 5600 4800 0    50   ~ 0
PC_IF12
Text Label 5600 4900 0    50   ~ 0
PC_IF13
Text Label 5600 5000 0    50   ~ 0
PC_IF14
Text Label 5600 5100 0    50   ~ 0
PC_IF15
Text GLabel 8250 5700 2    50   Output ~ 0
PC_IF
Wire Bus Line
	8250 5700 6000 5700
$Comp
L Device:C C?
U 1 1 5DD31495
P 1000 7150
F 0 "C?" H 1115 7196 50  0000 L CNN
F 1 "100nF" H 1115 7105 50  0000 L CNN
F 2 "" H 1038 7000 50  0001 C CNN
F 3 "~" H 1000 7150 50  0001 C CNN
	1    1000 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DD3149B
P 1500 7150
F 0 "C?" H 1615 7196 50  0000 L CNN
F 1 "100nF" H 1615 7105 50  0000 L CNN
F 2 "" H 1538 7000 50  0001 C CNN
F 3 "~" H 1500 7150 50  0001 C CNN
	1    1500 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD314A1
P 1000 7300
F 0 "#PWR?" H 1000 7050 50  0001 C CNN
F 1 "GND" H 1005 7127 50  0000 C CNN
F 2 "" H 1000 7300 50  0001 C CNN
F 3 "" H 1000 7300 50  0001 C CNN
	1    1000 7300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DD314A7
P 1000 7000
F 0 "#PWR?" H 1000 6850 50  0001 C CNN
F 1 "VCC" H 1017 7173 50  0000 C CNN
F 2 "" H 1000 7000 50  0001 C CNN
F 3 "" H 1000 7000 50  0001 C CNN
	1    1000 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 7000 1500 7000
Connection ~ 1000 7000
Wire Wire Line
	1500 7300 1000 7300
Connection ~ 1000 7300
Wire Bus Line
	3850 1550 3850 5000
Wire Bus Line
	6000 2350 6000 5700
$EndSCHEMATC
