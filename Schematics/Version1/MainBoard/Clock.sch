EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 14 23
Title "Clock"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 "the three-bit control signal."
Comment4 "The clock module divides the signal from the crystal oscillator at a rate determined by"
$EndDescr
$Comp
L Oscillator:ACO-xxxMHz OSC1
U 1 1 5D387BCA
P 1700 1450
F 0 "OSC1" H 1357 1496 50  0000 R CNN
F 1 "10MHz" H 1357 1405 50  0000 R CNN
F 2 "Oscillator:Oscillator_DIP-14" H 2150 1100 50  0001 C CNN
F 3 "http://www.conwin.com/datasheets/cx/cx030.pdf" H 1600 1450 50  0001 C CNN
	1    1700 1450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U56
U 1 1 5D3898BC
P 2550 1550
F 0 "U56" H 2550 1917 50  0000 C CNN
F 1 "74LS393" H 2550 1826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2550 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 2550 1550 50  0001 C CNN
	1    2550 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U58
U 1 1 5D38C231
P 5300 1550
F 0 "U58" H 5300 1917 50  0000 C CNN
F 1 "74LS393" H 5300 1826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5300 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 5300 1550 50  0001 C CNN
	1    5300 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U58
U 2 1 5D38D960
P 6600 1550
F 0 "U58" H 6600 1917 50  0000 C CNN
F 1 "74LS393" H 6600 1826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6600 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 6600 1550 50  0001 C CNN
	2    6600 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U59
U 1 1 5D38E544
P 7950 1550
F 0 "U59" H 7950 1917 50  0000 C CNN
F 1 "74LS393" H 7950 1826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7950 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 7950 1550 50  0001 C CNN
	1    7950 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C54
U 1 1 5D393902
P 1050 4600
F 0 "C54" H 1142 4646 50  0000 L CNN
F 1 "10nF" H 1142 4555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1050 4600 50  0001 C CNN
F 3 "~" H 1050 4600 50  0001 C CNN
	1    1050 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C55
U 1 1 5D394118
P 2600 4550
F 0 "C55" H 2692 4596 50  0000 L CNN
F 1 "10µF" H 2692 4505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2600 4550 50  0001 C CNN
F 3 "~" H 2600 4550 50  0001 C CNN
	1    2600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4550 2000 4750
Wire Wire Line
	2000 4750 2600 4750
Wire Wire Line
	2500 4150 2600 4150
Wire Wire Line
	2600 4150 2600 4350
Wire Wire Line
	2600 4350 2500 4350
Wire Wire Line
	800  3150 1400 3150
Wire Wire Line
	2000 3150 2000 3750
Wire Wire Line
	1500 4350 1400 4350
Wire Wire Line
	1400 4350 1400 3150
Connection ~ 1400 3150
Wire Wire Line
	1400 3150 2000 3150
Wire Wire Line
	1050 4700 1050 4750
Wire Wire Line
	1050 4750 2000 4750
Connection ~ 2000 4750
Wire Wire Line
	1500 4150 1050 4150
Wire Wire Line
	1050 4150 1050 4500
Wire Wire Line
	2600 4700 2600 4750
Wire Wire Line
	2000 3150 2600 3150
Connection ~ 2000 3150
Wire Wire Line
	1700 1150 1700 800 
Wire Wire Line
	2000 1450 2050 1450
Wire Wire Line
	3250 1750 3250 1450
Wire Wire Line
	3250 1450 3400 1450
Wire Wire Line
	4600 1750 4600 1450
Wire Wire Line
	4600 1450 4800 1450
Wire Wire Line
	6000 1750 6000 1450
Wire Wire Line
	6000 1450 6100 1450
Wire Wire Line
	7350 1750 7350 1450
Wire Wire Line
	7350 1450 7450 1450
$Comp
L 74xx:74LS393 U59
U 2 1 5D3C15D2
P 9350 1550
F 0 "U59" H 9350 1917 50  0000 C CNN
F 1 "74LS393" H 9350 1826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9350 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 9350 1550 50  0001 C CNN
	2    9350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1750 8650 1450
Wire Wire Line
	8650 1450 8850 1450
Wire Wire Line
	8850 1750 8750 1750
Connection ~ 1700 800 
$Comp
L 74xx:74LS393 U56
U 2 1 5D38B39F
P 3900 1550
F 0 "U56" H 3900 1917 50  0000 C CNN
F 1 "74LS393" H 3900 1826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3900 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 3900 1550 50  0001 C CNN
	2    3900 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1750 3300 1750
Wire Wire Line
	4800 1750 4700 1750
Wire Wire Line
	6100 1750 6050 1750
Wire Wire Line
	7450 1750 7400 1750
Wire Wire Line
	4150 6500 4150 6700
Text GLabel 5350 4850 2    50   Output ~ 0
CLK
$Comp
L Device:R R24
U 1 1 5D43460F
P 5050 6000
F 0 "R24" H 5118 6046 50  0000 L CNN
F 1 "220Ω" H 5118 5955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5090 5990 50  0001 C CNN
F 3 "~" H 5050 6000 50  0001 C CNN
	1    5050 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D42B044
P 5050 5550
F 0 "D1" V 5089 5433 50  0000 R CNN
F 1 "LED" V 4998 5433 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 5050 5550 50  0001 C CNN
F 3 "~" H 5050 5550 50  0001 C CNN
	1    5050 5550
	0    -1   -1   0   
$EndComp
Text Notes 5350 5550 0    50   ~ 0
Clock LED
Wire Wire Line
	2000 1450 2000 1950
Wire Wire Line
	2000 1950 3000 1950
Wire Wire Line
	3000 1950 3000 4900
Wire Wire Line
	3000 4900 3650 4900
Connection ~ 2000 1450
Wire Wire Line
	3050 5000 3650 5000
Connection ~ 3050 1750
Wire Wire Line
	3050 1750 3250 1750
Wire Wire Line
	4400 1750 4600 1750
Wire Wire Line
	4600 1750 4600 4050
Wire Wire Line
	4600 4050 3100 4050
Wire Wire Line
	3100 4050 3100 5100
Wire Wire Line
	3100 5100 3650 5100
Connection ~ 4600 1750
Wire Wire Line
	8450 1750 8650 1750
Wire Wire Line
	7100 1750 7350 1750
Wire Wire Line
	3150 4100 3150 5200
Wire Wire Line
	10050 4150 10050 1550
Wire Wire Line
	10050 1550 9850 1550
Wire Wire Line
	10100 4100 10100 1450
Wire Wire Line
	9850 1450 10100 1450
Wire Wire Line
	10000 4200 10000 1650
Wire Wire Line
	10000 1650 9850 1650
Wire Wire Line
	9950 4250 9950 1750
Wire Wire Line
	9950 1750 9850 1750
Wire Wire Line
	1700 1750 1700 2000
Connection ~ 1700 1750
Wire Wire Line
	1700 1750 2050 1750
$Comp
L 74xx:74LS151 U57
U 1 1 5D3FEA17
P 4150 5500
F 0 "U57" H 3900 6400 50  0000 C CNN
F 1 "74LS151" H 3900 6300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4150 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 4150 5500 50  0001 C CNN
	1    4150 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6700 4600 6700
Wire Wire Line
	5050 5700 5050 5850
Wire Wire Line
	5050 6150 5050 6700
Wire Wire Line
	4650 5000 5050 5000
Wire Wire Line
	3400 6200 3650 6200
Text GLabel 5350 4700 2    50   Output ~ 0
FixedRateClock
Wire Wire Line
	4650 4900 5050 4900
Wire Wire Line
	5050 4900 5050 4850
Wire Wire Line
	5050 4850 5350 4850
$Comp
L power:VCC #PWR0151
U 1 1 5D90C7E6
P 4150 4600
F 0 "#PWR0151" H 4150 4450 50  0001 C CNN
F 1 "VCC" H 4167 4773 50  0000 C CNN
F 2 "" H 4150 4600 50  0001 C CNN
F 3 "" H 4150 4600 50  0001 C CNN
	1    4150 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 5D919C2F
P 2000 4750
F 0 "#PWR0150" H 2000 4500 50  0001 C CNN
F 1 "GND" H 2005 4577 50  0000 C CNN
F 2 "" H 2000 4750 50  0001 C CNN
F 3 "" H 2000 4750 50  0001 C CNN
	1    2000 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0152
U 1 1 5D91A0CA
P 4600 6700
F 0 "#PWR0152" H 4600 6450 50  0001 C CNN
F 1 "GND" H 4605 6527 50  0000 C CNN
F 2 "" H 4600 6700 50  0001 C CNN
F 3 "" H 4600 6700 50  0001 C CNN
	1    4600 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1750 3050 4000
Wire Wire Line
	5350 4700 5050 4700
Wire Wire Line
	5050 4700 5050 4000
Wire Wire Line
	5050 4000 3050 4000
Connection ~ 3050 4000
Wire Wire Line
	3050 4000 3050 5000
$Comp
L Device:C C56
U 1 1 5D934C27
P 6750 5400
F 0 "C56" H 6865 5446 50  0000 L CNN
F 1 "100nF" H 6865 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6788 5250 50  0001 C CNN
F 3 "~" H 6750 5400 50  0001 C CNN
	1    6750 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C57
U 1 1 5D935B94
P 7250 5400
F 0 "C57" H 7365 5446 50  0000 L CNN
F 1 "100nF" H 7365 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7288 5250 50  0001 C CNN
F 3 "~" H 7250 5400 50  0001 C CNN
	1    7250 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C58
U 1 1 5D935F32
P 7750 5400
F 0 "C58" H 7865 5446 50  0000 L CNN
F 1 "100nF" H 7865 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7788 5250 50  0001 C CNN
F 3 "~" H 7750 5400 50  0001 C CNN
	1    7750 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C59
U 1 1 5D936485
P 8250 5400
F 0 "C59" H 8365 5446 50  0000 L CNN
F 1 "100nF" H 8365 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8288 5250 50  0001 C CNN
F 3 "~" H 8250 5400 50  0001 C CNN
	1    8250 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C60
U 1 1 5D93673D
P 8750 5400
F 0 "C60" H 8865 5446 50  0000 L CNN
F 1 "100nF" H 8865 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8788 5250 50  0001 C CNN
F 3 "~" H 8750 5400 50  0001 C CNN
	1    8750 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0154
U 1 1 5D936CDD
P 6750 5550
F 0 "#PWR0154" H 6750 5300 50  0001 C CNN
F 1 "GND" H 6755 5377 50  0000 C CNN
F 2 "" H 6750 5550 50  0001 C CNN
F 3 "" H 6750 5550 50  0001 C CNN
	1    6750 5550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0153
U 1 1 5D937A39
P 6750 5250
F 0 "#PWR0153" H 6750 5100 50  0001 C CNN
F 1 "VCC" H 6767 5423 50  0000 C CNN
F 2 "" H 6750 5250 50  0001 C CNN
F 3 "" H 6750 5250 50  0001 C CNN
	1    6750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5250 7250 5250
Connection ~ 6750 5250
Wire Wire Line
	7250 5250 7750 5250
Connection ~ 7250 5250
Wire Wire Line
	7750 5250 8250 5250
Connection ~ 7750 5250
Wire Wire Line
	8250 5250 8750 5250
Connection ~ 8250 5250
Wire Wire Line
	8750 5550 8250 5550
Wire Wire Line
	8250 5550 7750 5550
Connection ~ 8250 5550
Wire Wire Line
	7750 5550 7250 5550
Connection ~ 7750 5550
Wire Wire Line
	7250 5550 6750 5550
Connection ~ 7250 5550
Connection ~ 6750 5550
Text GLabel 5350 5000 2    50   Output ~ 0
RegisterClock
Wire Wire Line
	5350 5000 5050 5000
Connection ~ 2600 4150
Wire Wire Line
	2600 3150 2600 3450
Wire Wire Line
	800  3150 800  3450
Wire Wire Line
	2600 3650 2600 4150
$Comp
L Device:R_Small R23
U 1 1 5D39244B
P 2600 3550
F 0 "R23" H 2668 3596 50  0000 L CNN
F 1 "47kΩ" H 2668 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2600 3550 50  0001 C CNN
F 3 "~" H 2600 3550 50  0001 C CNN
	1    2600 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5200 3150 5200
Wire Wire Line
	3650 5300 3200 5300
Wire Wire Line
	3200 5300 3200 4150
Wire Wire Line
	3650 5400 3250 5400
Wire Wire Line
	3250 5400 3250 4200
Wire Wire Line
	3650 5500 3300 5500
Wire Wire Line
	3300 5500 3300 4250
Wire Wire Line
	4700 1750 4700 2000
Wire Wire Line
	3300 1750 3300 2000
$Comp
L power:GND #PWR0149
U 1 1 5D888695
P 1700 2000
F 0 "#PWR0149" H 1700 1750 50  0001 C CNN
F 1 "GND" H 1705 1827 50  0000 C CNN
F 2 "" H 1700 2000 50  0001 C CNN
F 3 "" H 1700 2000 50  0001 C CNN
	1    1700 2000
	1    0    0    -1  
$EndComp
Connection ~ 1700 2000
Connection ~ 3300 2000
Wire Wire Line
	3300 2000 4700 2000
Connection ~ 4700 2000
Wire Wire Line
	3150 4100 10100 4100
Wire Wire Line
	3300 4250 9950 4250
Wire Wire Line
	3250 4200 10000 4200
Wire Wire Line
	3200 4150 10050 4150
Wire Wire Line
	4700 2000 6050 2000
Wire Wire Line
	6050 1750 6050 2000
Connection ~ 6050 2000
Wire Wire Line
	6050 2000 7400 2000
Wire Wire Line
	7400 1750 7400 2000
Connection ~ 7400 2000
Wire Wire Line
	7400 2000 8750 2000
Wire Wire Line
	8750 1750 8750 2000
Wire Wire Line
	5800 1750 6000 1750
Wire Wire Line
	1700 2000 3300 2000
$Comp
L power:VCC #PWR0148
U 1 1 5D3986DC
P 1700 750
F 0 "#PWR0148" H 1700 600 50  0001 C CNN
F 1 "VCC" H 1717 923 50  0000 C CNN
F 2 "" H 1700 750 50  0001 C CNN
F 3 "" H 1700 750 50  0001 C CNN
	1    1700 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 750  1700 800 
$Comp
L power:VCC #PWR0147
U 1 1 5D8FB444
P 800 3100
F 0 "#PWR0147" H 800 2950 50  0001 C CNN
F 1 "VCC" H 817 3273 50  0000 C CNN
F 2 "" H 800 3100 50  0001 C CNN
F 3 "" H 800 3100 50  0001 C CNN
	1    800  3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3100 800  3150
Connection ~ 800  3150
Wire Wire Line
	3650 6000 2150 6000
Wire Wire Line
	2150 5900 3650 5900
Wire Wire Line
	3650 5800 2150 5800
Text GLabel 2150 6000 0    50   Input ~ 0
ClockRate2
Text GLabel 2150 5900 0    50   Input ~ 0
ClockRate1
Text GLabel 2150 5800 0    50   Input ~ 0
ClockRate0
Wire Wire Line
	3400 6450 3400 6200
Wire Wire Line
	3100 6450 3400 6450
$Comp
L 74xx:74LS04 U54
U 1 1 5D7C9FC5
P 2800 6450
F 0 "U54" H 2800 6767 50  0000 C CNN
F 1 "74LS04" H 2800 6676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2800 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2800 6450 50  0001 C CNN
	1    2800 6450
	1    0    0    -1  
$EndComp
Text GLabel 2150 6450 0    50   Input ~ 0
~HLT
Wire Wire Line
	2150 6450 2500 6450
Wire Wire Line
	2950 3950 2950 5600
Wire Wire Line
	2500 3950 2950 3950
Wire Wire Line
	2950 5600 3650 5600
Connection ~ 4600 6700
Wire Wire Line
	4600 6700 5050 6700
$Comp
L Timer:LM555 U55
U 1 1 5D38F3A1
P 2000 4150
F 0 "U55" H 1800 4650 50  0000 C CNN
F 1 "LM555" H 1800 4550 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2000 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 2000 4150 50  0001 C CNN
	1    2000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4350 2600 4400
Connection ~ 2600 4350
$Comp
L 74xx:74LS04 U54
U 2 1 5DC177D8
P -1850 5850
F 0 "U54" H -1850 6167 50  0000 C CNN
F 1 "74LS04" H -1850 6076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H -1850 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H -1850 5850 50  0001 C CNN
	2    -1850 5850
	1    0    0    -1  
$EndComp
NoConn ~ -1550 5850
$Comp
L 74xx:74LS04 U54
U 3 1 5DC314AF
P -1850 5300
F 0 "U54" H -1850 5617 50  0000 C CNN
F 1 "74LS04" H -1850 5526 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H -1850 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H -1850 5300 50  0001 C CNN
	3    -1850 5300
	1    0    0    -1  
$EndComp
NoConn ~ -1550 5300
$Comp
L 74xx:74LS04 U54
U 4 1 5DC39589
P -1850 4800
F 0 "U54" H -1850 5117 50  0000 C CNN
F 1 "74LS04" H -1850 5026 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H -1850 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H -1850 4800 50  0001 C CNN
	4    -1850 4800
	1    0    0    -1  
$EndComp
NoConn ~ -1550 4800
$Comp
L 74xx:74LS04 U54
U 5 1 5DC41B75
P -1150 5850
F 0 "U54" H -1150 6167 50  0000 C CNN
F 1 "74LS04" H -1150 6076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H -1150 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H -1150 5850 50  0001 C CNN
	5    -1150 5850
	1    0    0    -1  
$EndComp
NoConn ~ -850 5850
$Comp
L 74xx:74LS04 U54
U 6 1 5DC4A075
P -1150 5300
F 0 "U54" H -1150 5617 50  0000 C CNN
F 1 "74LS04" H -1150 5526 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H -1150 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H -1150 5300 50  0001 C CNN
	6    -1150 5300
	1    0    0    -1  
$EndComp
NoConn ~ -850 5300
$Comp
L Device:C C61
U 1 1 5D870AB8
P 9250 5400
F 0 "C61" H 9365 5446 50  0000 L CNN
F 1 "100nF" H 9365 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9288 5250 50  0001 C CNN
F 3 "~" H 9250 5400 50  0001 C CNN
	1    9250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5250 9250 5250
Wire Wire Line
	9250 5550 8750 5550
$Comp
L Device:C C62
U 1 1 5D878675
P 9750 5400
F 0 "C62" H 9865 5446 50  0000 L CNN
F 1 "100nF" H 9865 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9788 5250 50  0001 C CNN
F 3 "~" H 9750 5400 50  0001 C CNN
	1    9750 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5250 9750 5250
Wire Wire Line
	9750 5550 9250 5550
Wire Wire Line
	1700 800  8550 800 
NoConn ~ 7100 1450
NoConn ~ 7100 1550
NoConn ~ 7100 1650
NoConn ~ 5800 1450
NoConn ~ 5800 1550
NoConn ~ 5800 1650
NoConn ~ 4400 1450
NoConn ~ 4400 1550
NoConn ~ 4400 1650
NoConn ~ 3050 1450
NoConn ~ 3050 1550
NoConn ~ 3050 1650
NoConn ~ 8450 1450
NoConn ~ 8450 1550
NoConn ~ 8450 1650
$Comp
L power:VCC #PWR0248
U 1 1 5DBD1B45
P -1500 4150
F 0 "#PWR0248" H -1500 4000 50  0001 C CNN
F 1 "VCC" H -1483 4323 50  0000 C CNN
F 2 "" H -1500 4150 50  0001 C CNN
F 3 "" H -1500 4150 50  0001 C CNN
	1    -1500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1450 5850 -1450 5300
Wire Wire Line
	-1450 4450 -1500 4450
Wire Wire Line
	-2150 4450 -2150 4800
Connection ~ -1450 5300
Connection ~ -2150 4800
Wire Wire Line
	-2150 4800 -2150 5300
Connection ~ -2150 5300
Wire Wire Line
	-2150 5300 -2150 5850
Wire Wire Line
	-1500 4150 -1500 4450
Connection ~ -1500 4450
Wire Wire Line
	-1500 4450 -2150 4450
Connection ~ 5050 5000
Wire Wire Line
	5050 5000 5050 5400
Wire Wire Line
	800  3950 1500 3950
$Comp
L Switch:SW_Push SW1
U 1 1 5D843F11
P 800 4400
F 0 "SW1" V 846 4352 50  0000 R CNN
F 1 "Step" V 755 4352 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 800 4600 50  0001 C CNN
F 3 "~" H 800 4600 50  0001 C CNN
	1    800  4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R22
U 1 1 5D39306C
P 800 3550
F 0 "R22" H 868 3596 50  0000 L CNN
F 1 "1kΩ" H 868 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 800 3550 50  0001 C CNN
F 3 "~" H 800 3550 50  0001 C CNN
	1    800  3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4750 800  4750
Wire Wire Line
	800  4750 800  4600
Connection ~ 1050 4750
Wire Wire Line
	800  3650 800  3950
Connection ~ 800  3950
Wire Wire Line
	800  3950 800  4200
$Comp
L 74xx:74LS04 U54
U 7 1 5DB505A0
P -950 4650
F 0 "U54" V -600 4650 50  0000 C CNN
F 1 "74LS04" V -700 4650 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H -950 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H -950 4650 50  0001 C CNN
	7    -950 4650
	0    -1   -1   0   
$EndComp
Connection ~ -1450 4650
Wire Wire Line
	-1450 4650 -1450 4450
Wire Wire Line
	-1450 4650 -1450 5300
$Comp
L power:GND #PWR05
U 1 1 5DB54F03
P -450 4700
F 0 "#PWR05" H -450 4450 50  0001 C CNN
F 1 "GND" H -445 4527 50  0000 C CNN
F 2 "" H -450 4700 50  0001 C CNN
F 3 "" H -450 4700 50  0001 C CNN
	1    -450 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	-450 4650 -450 4700
Text GLabel 2800 7450 0    50   Input ~ 0
RegisterClock
$Comp
L Device:R R?
U 1 1 5DE42A90
P 3100 7450
AR Path="/5D2C0CE4/5DE42A90" Ref="R?"  Part="1" 
AR Path="/5D2C0720/5DE42A90" Ref="R31"  Part="1" 
F 0 "R31" V 3307 7450 50  0000 C CNN
F 1 "100Ω" V 3216 7450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3030 7450 50  0001 C CNN
F 3 "~" H 3100 7450 50  0001 C CNN
	1    3100 7450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DE42A96
P 3500 7450
AR Path="/5D2C0CE4/5DE42A96" Ref="C?"  Part="1" 
AR Path="/5D2C0720/5DE42A96" Ref="C83"  Part="1" 
F 0 "C83" V 3248 7450 50  0000 C CNN
F 1 "27pF" V 3339 7450 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3538 7300 50  0001 C CNN
F 3 "~" H 3500 7450 50  0001 C CNN
	1    3500 7450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE42A9C
P 3900 7500
AR Path="/5D2C0CE4/5DE42A9C" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0720/5DE42A9C" Ref="#PWR0304"  Part="1" 
F 0 "#PWR0304" H 3900 7250 50  0001 C CNN
F 1 "GND" H 3905 7327 50  0000 C CNN
F 2 "" H 3900 7500 50  0001 C CNN
F 3 "" H 3900 7500 50  0001 C CNN
	1    3900 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 7500 3900 7450
Wire Wire Line
	3900 7450 3650 7450
Wire Wire Line
	3350 7450 3250 7450
Wire Wire Line
	2950 7450 2800 7450
Text Notes 2100 7900 0    50   ~ 0
AC termination of the RegisterClock signal.\nThis is here because it’s where I hacked it\nin on the Rev 1 board — I know it works\nwhen placed here.
$EndSCHEMATC
