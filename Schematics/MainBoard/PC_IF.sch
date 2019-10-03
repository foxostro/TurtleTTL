EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 9 21
Title "PC/IF"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 "and the control clock."
Comment3 "This alleviates timing constraints related to the phase shift between the register clock"
Comment4 "The PC/IF register sits between the program counter and the Instruction Fetch stage."
$EndDescr
$Comp
L power:VCC #PWR056
U 1 1 5DD10B91
P 5500 1750
F 0 "#PWR056" H 5500 1600 50  0001 C CNN
F 1 "VCC" H 5517 1923 50  0000 C CNN
F 2 "" H 5500 1750 50  0001 C CNN
F 3 "" H 5500 1750 50  0001 C CNN
	1    5500 1750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR058
U 1 1 5DD11404
P 5500 3900
F 0 "#PWR058" H 5500 3750 50  0001 C CNN
F 1 "VCC" H 5517 4073 50  0000 C CNN
F 2 "" H 5500 3900 50  0001 C CNN
F 3 "" H 5500 3900 50  0001 C CNN
	1    5500 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR057
U 1 1 5DD11B50
P 5500 3350
F 0 "#PWR057" H 5500 3100 50  0001 C CNN
F 1 "GND" H 5505 3177 50  0000 C CNN
F 2 "" H 5500 3350 50  0001 C CNN
F 3 "" H 5500 3350 50  0001 C CNN
	1    5500 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR059
U 1 1 5DD12126
P 5500 5500
F 0 "#PWR059" H 5500 5250 50  0001 C CNN
F 1 "GND" H 5505 5327 50  0000 C CNN
F 2 "" H 5500 5500 50  0001 C CNN
F 3 "" H 5500 5500 50  0001 C CNN
	1    5500 5500
	1    0    0    -1  
$EndComp
Text GLabel 2200 4050 0    50   Input ~ 0
ControlClock
Wire Wire Line
	5000 5100 3400 5100
$Comp
L power:GND #PWR055
U 1 1 5DD12CA4
P 5000 5200
F 0 "#PWR055" H 5000 4950 50  0001 C CNN
F 1 "GND" V 5005 5072 50  0000 R CNN
F 2 "" H 5000 5200 50  0001 C CNN
F 3 "" H 5000 5200 50  0001 C CNN
	1    5000 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR054
U 1 1 5DD131DF
P 5000 3050
F 0 "#PWR054" H 5000 2800 50  0001 C CNN
F 1 "GND" V 5005 2922 50  0000 R CNN
F 2 "" H 5000 3050 50  0001 C CNN
F 3 "" H 5000 3050 50  0001 C CNN
	1    5000 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 2950 3400 2950
Wire Wire Line
	3400 2950 3400 4050
Wire Wire Line
	2200 4050 3400 4050
Connection ~ 3400 4050
Wire Wire Line
	3400 4050 3400 5100
Text GLabel 2150 1350 0    50   Input ~ 0
PC[0..15]
Entry Wire Line
	4550 2050 4450 1950
Entry Wire Line
	4550 2150 4450 2050
Entry Wire Line
	4550 2250 4450 2150
Entry Wire Line
	4550 2350 4450 2250
Entry Wire Line
	4550 2450 4450 2350
Entry Wire Line
	4550 2550 4450 2450
Entry Wire Line
	4550 2650 4450 2550
Entry Wire Line
	4550 2750 4450 2650
Entry Wire Line
	4550 4200 4450 4100
Entry Wire Line
	4550 4300 4450 4200
Entry Wire Line
	4550 4400 4450 4300
Entry Wire Line
	4550 4500 4450 4400
Entry Wire Line
	4550 4600 4450 4500
Entry Wire Line
	4550 4700 4450 4600
Entry Wire Line
	4550 4800 4450 4700
Entry Wire Line
	4550 4900 4450 4800
Wire Wire Line
	4550 4900 5000 4900
Wire Wire Line
	5000 4800 4550 4800
Wire Wire Line
	5000 4700 4550 4700
Wire Wire Line
	4550 4600 5000 4600
Wire Wire Line
	5000 4500 4550 4500
Wire Wire Line
	4550 4400 5000 4400
Wire Wire Line
	5000 4300 4550 4300
Wire Wire Line
	4550 4200 5000 4200
Wire Wire Line
	5000 2750 4550 2750
Wire Wire Line
	4550 2650 5000 2650
Wire Wire Line
	5000 2550 4550 2550
Wire Wire Line
	4550 2450 5000 2450
Wire Wire Line
	5000 2350 4550 2350
Wire Wire Line
	4550 2250 5000 2250
Wire Wire Line
	5000 2150 4550 2150
Wire Wire Line
	4550 2050 5000 2050
Text Label 4550 2050 0    50   ~ 0
PC0
Text Label 4550 2150 0    50   ~ 0
PC1
Text Label 4550 2250 0    50   ~ 0
PC2
Text Label 4550 2350 0    50   ~ 0
PC3
Text Label 4550 2450 0    50   ~ 0
PC4
Text Label 4550 2550 0    50   ~ 0
PC5
Text Label 4550 2650 0    50   ~ 0
PC6
Text Label 4550 2750 0    50   ~ 0
PC7
Text Label 4550 4200 0    50   ~ 0
PC8
Text Label 4550 4300 0    50   ~ 0
PC9
Text Label 4550 4400 0    50   ~ 0
PC10
Text Label 4550 4500 0    50   ~ 0
PC11
Text Label 4550 4600 0    50   ~ 0
PC12
Text Label 4550 4700 0    50   ~ 0
PC13
Text Label 4550 4800 0    50   ~ 0
PC14
Text Label 4550 4900 0    50   ~ 0
PC15
Wire Bus Line
	4450 1350 2150 1350
Entry Wire Line
	6600 2850 6500 2750
Entry Wire Line
	6600 2150 6500 2050
Entry Wire Line
	6600 2250 6500 2150
Entry Wire Line
	6600 2350 6500 2250
Entry Wire Line
	6600 2450 6500 2350
Entry Wire Line
	6600 2550 6500 2450
Entry Wire Line
	6600 2650 6500 2550
Entry Wire Line
	6600 2750 6500 2650
Entry Wire Line
	6600 5000 6500 4900
Entry Wire Line
	6600 4300 6500 4200
Entry Wire Line
	6600 4400 6500 4300
Entry Wire Line
	6600 4500 6500 4400
Entry Wire Line
	6600 4600 6500 4500
Entry Wire Line
	6600 4700 6500 4600
Entry Wire Line
	6600 4800 6500 4700
Entry Wire Line
	6600 4900 6500 4800
Wire Wire Line
	6500 2050 6000 2050
Wire Wire Line
	6000 2150 6500 2150
Wire Wire Line
	6500 2250 6000 2250
Wire Wire Line
	6000 2350 6500 2350
Wire Wire Line
	6500 2450 6000 2450
Wire Wire Line
	6000 2550 6500 2550
Wire Wire Line
	6500 2650 6000 2650
Wire Wire Line
	6000 2750 6500 2750
Wire Wire Line
	6500 4200 6000 4200
Wire Wire Line
	6000 4300 6500 4300
Wire Wire Line
	6500 4400 6000 4400
Wire Wire Line
	6000 4500 6500 4500
Wire Wire Line
	6500 4600 6000 4600
Wire Wire Line
	6500 4700 6000 4700
Wire Wire Line
	6000 4800 6500 4800
Wire Wire Line
	6500 4900 6000 4900
Text Label 6200 2050 0    50   ~ 0
PC_IF0
Text Label 6200 2150 0    50   ~ 0
PC_IF1
Text Label 6200 2250 0    50   ~ 0
PC_IF2
Text Label 6200 2350 0    50   ~ 0
PC_IF3
Text Label 6200 2450 0    50   ~ 0
PC_IF4
Text Label 6200 2550 0    50   ~ 0
PC_IF5
Text Label 6200 2650 0    50   ~ 0
PC_IF6
Text Label 6200 2750 0    50   ~ 0
PC_IF7
Text Label 6200 4200 0    50   ~ 0
PC_IF8
Text Label 6200 4300 0    50   ~ 0
PC_IF9
Text Label 6200 4400 0    50   ~ 0
PC_IF10
Text Label 6200 4500 0    50   ~ 0
PC_IF11
Text Label 6200 4600 0    50   ~ 0
PC_IF12
Text Label 6200 4700 0    50   ~ 0
PC_IF13
Text Label 6200 4800 0    50   ~ 0
PC_IF14
Text Label 6200 4900 0    50   ~ 0
PC_IF15
Text GLabel 8850 5500 2    50   Output ~ 0
PC_IF[0..15]
Wire Bus Line
	8850 5500 6600 5500
$Comp
L Device:C C22
U 1 1 5DD31495
P 1000 7150
F 0 "C22" H 1115 7196 50  0000 L CNN
F 1 "100nF" H 1115 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1038 7000 50  0001 C CNN
F 3 "~" H 1000 7150 50  0001 C CNN
	1    1000 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 5DD3149B
P 1500 7150
F 0 "C23" H 1615 7196 50  0000 L CNN
F 1 "100nF" H 1615 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1538 7000 50  0001 C CNN
F 3 "~" H 1500 7150 50  0001 C CNN
	1    1500 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR053
U 1 1 5DD314A1
P 1000 7300
F 0 "#PWR053" H 1000 7050 50  0001 C CNN
F 1 "GND" H 1005 7127 50  0000 C CNN
F 2 "" H 1000 7300 50  0001 C CNN
F 3 "" H 1000 7300 50  0001 C CNN
	1    1000 7300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR052
U 1 1 5DD314A7
P 1000 7000
F 0 "#PWR052" H 1000 6850 50  0001 C CNN
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
$Comp
L 74xx:74LS574 U?
U 1 1 5D89A6E8
P 5500 2550
AR Path="/5D2C14C3/5D89A6E8" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D89A6E8" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E4B/5D89A6E8" Ref="U22"  Part="1" 
F 0 "U22" H 5250 3350 50  0000 C CNN
F 1 "74F574" H 5250 3250 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 5500 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 5500 2550 50  0001 C CNN
	1    5500 2550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U?
U 1 1 5D89C1BF
P 5500 4700
AR Path="/5D2C14C3/5D89C1BF" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D89C1BF" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E4B/5D89C1BF" Ref="U23"  Part="1" 
F 0 "U23" H 5250 5500 50  0000 C CNN
F 1 "74F574" H 5250 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 5500 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 5500 4700 50  0001 C CNN
	1    5500 4700
	1    0    0    -1  
$EndComp
Wire Bus Line
	4450 1350 4450 4800
Wire Bus Line
	6600 2150 6600 5500
$EndSCHEMATC
