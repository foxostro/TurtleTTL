EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 3 19
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
L Oscillator:ACO-xxxMHz 10MHz
U 1 1 5D387BCA
P 1550 1450
F 0 "10MHz" H 1207 1496 50  0000 R CNN
F 1 "ACO-xxxMHz" H 1207 1405 50  0000 R CNN
F 2 "Oscillator:Oscillator_DIP-14" H 2000 1100 50  0001 C CNN
F 3 "http://www.conwin.com/datasheets/cx/cx030.pdf" H 1450 1450 50  0001 C CNN
	1    1550 1450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U?
U 1 1 5D3898BC
P 2400 1550
F 0 "U?" H 2400 1917 50  0000 C CNN
F 1 "74LS393" H 2400 1826 50  0000 C CNN
F 2 "" H 2400 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 2400 1550 50  0001 C CNN
	1    2400 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U?
U 1 1 5D38C231
P 5150 1550
F 0 "U?" H 5150 1917 50  0000 C CNN
F 1 "74LS393" H 5150 1826 50  0000 C CNN
F 2 "" H 5150 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 5150 1550 50  0001 C CNN
	1    5150 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U?
U 1 1 5D38D960
P 6450 1550
F 0 "U?" H 6450 1917 50  0000 C CNN
F 1 "74LS393" H 6450 1826 50  0000 C CNN
F 2 "" H 6450 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 6450 1550 50  0001 C CNN
	1    6450 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U?
U 1 1 5D38E544
P 7800 1550
F 0 "U?" H 7800 1917 50  0000 C CNN
F 1 "74LS393" H 7800 1826 50  0000 C CNN
F 2 "" H 7800 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 7800 1550 50  0001 C CNN
	1    7800 1550
	1    0    0    -1  
$EndComp
$Comp
L Timer:LM555 U?
U 1 1 5D38F3A1
P 1850 3250
F 0 "U?" H 1650 3750 50  0000 C CNN
F 1 "LM555" H 1650 3650 50  0000 C CNN
F 2 "" H 1850 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 1850 3250 50  0001 C CNN
	1    1850 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5D39244B
P 2450 2450
F 0 "R?" H 2518 2496 50  0000 L CNN
F 1 "1KΩ" H 2518 2405 50  0000 L CNN
F 2 "" H 2450 2450 50  0001 C CNN
F 3 "~" H 2450 2450 50  0001 C CNN
	1    2450 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5D39306C
P 650 2450
F 0 "R?" H 718 2496 50  0000 L CNN
F 1 "1MΩ" H 718 2405 50  0000 L CNN
F 2 "" H 650 2450 50  0001 C CNN
F 3 "~" H 650 2450 50  0001 C CNN
	1    650  2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D393902
P 900 3700
F 0 "C?" H 992 3746 50  0000 L CNN
F 1 "10nF" H 992 3655 50  0000 L CNN
F 2 "" H 900 3700 50  0001 C CNN
F 3 "~" H 900 3700 50  0001 C CNN
	1    900  3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D394118
P 2450 3700
F 0 "C?" H 2542 3746 50  0000 L CNN
F 1 "10nF" H 2542 3655 50  0000 L CNN
F 2 "" H 2450 3700 50  0001 C CNN
F 3 "~" H 2450 3700 50  0001 C CNN
	1    2450 3700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5D394C6A
P 650 2850
F 0 "SW?" V 604 2948 50  0000 L CNN
F 1 "SW_SPST" V 695 2948 50  0000 L CNN
F 2 "" H 650 2850 50  0001 C CNN
F 3 "~" H 650 2850 50  0001 C CNN
	1    650  2850
	0    1    1    0   
$EndComp
Wire Wire Line
	650  3050 1350 3050
$Comp
L power:VCC #PWR?
U 1 1 5D3986DC
P 650 750
F 0 "#PWR?" H 650 600 50  0001 C CNN
F 1 "VCC" H 667 923 50  0000 C CNN
F 2 "" H 650 750 50  0001 C CNN
F 3 "" H 650 750 50  0001 C CNN
	1    650  750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  2250 650  2350
Wire Wire Line
	650  2550 650  2650
$Comp
L power:GND #PWR?
U 1 1 5D399663
P 900 6750
F 0 "#PWR?" H 900 6500 50  0001 C CNN
F 1 "GND" H 905 6577 50  0000 C CNN
F 2 "" H 900 6750 50  0001 C CNN
F 3 "" H 900 6750 50  0001 C CNN
	1    900  6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3650 1850 3850
Wire Wire Line
	1850 3850 2450 3850
Wire Wire Line
	2350 3250 2450 3250
Wire Wire Line
	2450 3250 2450 3450
Wire Wire Line
	2450 3450 2350 3450
Wire Wire Line
	650  2250 1250 2250
Wire Wire Line
	1850 2250 1850 2850
Connection ~ 650  2250
Wire Wire Line
	1350 3450 1250 3450
Wire Wire Line
	1250 3450 1250 2250
Connection ~ 1250 2250
Wire Wire Line
	1250 2250 1850 2250
Wire Wire Line
	900  3800 900  3850
Wire Wire Line
	900  3850 1850 3850
Connection ~ 1850 3850
Wire Wire Line
	1350 3250 900  3250
Wire Wire Line
	900  3250 900  3600
Wire Wire Line
	2450 3800 2450 3850
Connection ~ 2450 3850
Wire Wire Line
	2450 2550 2450 3250
Connection ~ 2450 3250
Wire Wire Line
	1850 2250 2450 2250
Wire Wire Line
	2450 2250 2450 2350
Connection ~ 1850 2250
Wire Wire Line
	2450 3450 2450 3600
Connection ~ 2450 3450
Wire Wire Line
	1550 1150 1550 800 
Wire Wire Line
	1850 1450 1900 1450
Wire Wire Line
	3100 1750 3100 1450
Wire Wire Line
	3100 1450 3250 1450
Wire Wire Line
	4450 1750 4450 1450
Wire Wire Line
	4450 1450 4650 1450
Wire Wire Line
	5650 1750 5750 1750
Wire Wire Line
	5850 1750 5850 1450
Wire Wire Line
	5850 1450 5950 1450
Wire Wire Line
	7200 1750 7200 1450
Wire Wire Line
	7200 1450 7300 1450
Wire Wire Line
	1550 1750 1800 1750
Wire Wire Line
	650  750  650  800 
Wire Wire Line
	1550 800  650  800 
Connection ~ 650  800 
Wire Wire Line
	650  800  650  2250
$Comp
L 74xx:74LS393 U?
U 1 1 5D3C15D2
P 9200 1550
F 0 "U?" H 9200 1917 50  0000 C CNN
F 1 "74LS393" H 9200 1826 50  0000 C CNN
F 2 "" H 9200 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 9200 1550 50  0001 C CNN
	1    9200 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1750 8500 1450
Wire Wire Line
	8500 1450 8700 1450
Wire Wire Line
	8700 1750 8600 1750
Wire Wire Line
	8600 1750 8600 3850
Wire Wire Line
	1550 800  3000 800 
Wire Wire Line
	3000 800  3000 1450
Wire Wire Line
	3000 1650 2900 1650
Connection ~ 1550 800 
Wire Wire Line
	3000 1550 2900 1550
Connection ~ 3000 1550
Wire Wire Line
	3000 1550 3000 1650
Wire Wire Line
	3000 1450 2900 1450
Connection ~ 3000 1450
Wire Wire Line
	3000 1450 3000 1550
Wire Wire Line
	4250 1650 4350 1650
Wire Wire Line
	4350 1650 4350 1550
Wire Wire Line
	4350 800  3000 800 
Connection ~ 3000 800 
Wire Wire Line
	4250 1550 4350 1550
Connection ~ 4350 1550
Wire Wire Line
	4350 1550 4350 1450
Wire Wire Line
	4250 1450 4350 1450
Connection ~ 4350 1450
Wire Wire Line
	4350 1450 4350 800 
Wire Wire Line
	5650 1650 5750 1650
Wire Wire Line
	5750 1650 5750 1550
Wire Wire Line
	5750 1450 5650 1450
Wire Wire Line
	5650 1550 5750 1550
Connection ~ 5750 1550
Wire Wire Line
	5750 1550 5750 1450
Wire Wire Line
	5750 1450 5750 800 
Wire Wire Line
	5750 800  4350 800 
Connection ~ 5750 1450
Connection ~ 4350 800 
Wire Wire Line
	6950 1650 7050 1650
Wire Wire Line
	7050 1650 7050 1550
Wire Wire Line
	7050 1450 6950 1450
Wire Wire Line
	6950 1550 7050 1550
Connection ~ 7050 1550
Wire Wire Line
	7050 1550 7050 1450
Wire Wire Line
	7050 1450 7050 800 
Wire Wire Line
	7050 800  5750 800 
Connection ~ 7050 1450
Connection ~ 5750 800 
Wire Wire Line
	8300 1650 8400 1650
Wire Wire Line
	8400 1650 8400 1550
Wire Wire Line
	8400 1450 8300 1450
Wire Wire Line
	8300 1550 8400 1550
Connection ~ 8400 1550
Wire Wire Line
	8400 1550 8400 1450
Wire Wire Line
	8400 1450 8400 800 
Wire Wire Line
	8400 800  7050 800 
Connection ~ 8400 1450
Connection ~ 7050 800 
$Comp
L 74xx:74LS393 U?
U 1 1 5D38B39F
P 3750 1550
F 0 "U?" H 3750 1917 50  0000 C CNN
F 1 "74LS393" H 3750 1826 50  0000 C CNN
F 2 "" H 3750 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 3750 1550 50  0001 C CNN
	1    3750 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3850 2800 3850
Wire Wire Line
	3250 1750 3150 1750
Wire Wire Line
	3150 1750 3150 3850
Connection ~ 3150 3850
Wire Wire Line
	3150 3850 4550 3850
Wire Wire Line
	4650 1750 4550 1750
Wire Wire Line
	4550 1750 4550 3850
Connection ~ 4550 3850
Wire Wire Line
	4550 3850 5900 3850
Wire Wire Line
	5950 1750 5900 1750
Wire Wire Line
	5900 1750 5900 3850
Connection ~ 5900 3850
Wire Wire Line
	5900 3850 7250 3850
Wire Wire Line
	7300 1750 7250 1750
Wire Wire Line
	7250 1750 7250 3850
Connection ~ 7250 3850
Wire Wire Line
	7250 3850 8600 3850
$Comp
L 74xx:74LS151 U?
U 1 1 5D3FEA17
P 4000 5500
F 0 "U?" H 3750 6400 50  0000 C CNN
F 1 "74LS151" H 3750 6300 50  0000 C CNN
F 2 "" H 4000 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 4000 5500 50  0001 C CNN
	1    4000 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3850 900  6600
Connection ~ 900  3850
Wire Wire Line
	4000 6500 4000 6600
Wire Wire Line
	4000 6600 900  6600
Connection ~ 900  6600
Wire Wire Line
	900  6600 900  6750
Wire Wire Line
	8400 800  10400 800 
Wire Wire Line
	10400 800  10400 4400
Wire Wire Line
	10400 4400 5800 4400
Wire Wire Line
	4000 4400 4000 4600
Connection ~ 8400 800 
$Comp
L 74xx:74LS245 U?
U 1 1 5D407E3C
P 5800 5400
F 0 "U?" H 5550 6200 50  0000 C CNN
F 1 "74LS245" H 5550 6100 50  0000 C CNN
F 2 "" H 5800 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 5800 5400 50  0001 C CNN
	1    5800 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4600 5800 4400
Connection ~ 5800 4400
Wire Wire Line
	5800 4400 4000 4400
Wire Wire Line
	5800 6200 5800 6600
Wire Wire Line
	5800 6600 5200 6600
Connection ~ 4000 6600
Text GLabel 8350 4900 2    50   Output ~ 0
Clock0
Text GLabel 8350 5000 2    50   Output ~ 0
Clock1
Text GLabel 8350 5100 2    50   Output ~ 0
Clock2
Text GLabel 8350 5300 2    50   Output ~ 0
~Clock0
Text GLabel 8350 5450 2    50   Output ~ 0
~Clock1
Text GLabel 8350 5600 2    50   Output ~ 0
~Clock2
Wire Wire Line
	6300 4900 8350 4900
Wire Wire Line
	6300 5000 8350 5000
Wire Wire Line
	6300 5100 8350 5100
Wire Wire Line
	6300 5300 8350 5300
$Comp
L Device:LED D?
U 1 1 5D42D2DF
P 6450 5900
F 0 "D?" V 6489 5783 50  0000 R CNN
F 1 "LED" V 6398 5783 50  0000 R CNN
F 2 "" H 6450 5900 50  0001 C CNN
F 3 "~" H 6450 5900 50  0001 C CNN
	1    6450 5900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D43460F
P 7200 6250
F 0 "R?" H 7268 6296 50  0000 L CNN
F 1 "220Ω" H 7268 6205 50  0000 L CNN
F 2 "" V 7240 6240 50  0001 C CNN
F 3 "~" H 7200 6250 50  0001 C CNN
	1    7200 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D434E3F
P 6450 6300
F 0 "R?" H 6518 6346 50  0000 L CNN
F 1 "220Ω" H 6518 6255 50  0000 L CNN
F 2 "" V 6490 6290 50  0001 C CNN
F 3 "~" H 6450 6300 50  0001 C CNN
	1    6450 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5900 5200 5900
Wire Wire Line
	5200 5900 5200 6600
Connection ~ 5200 6600
Wire Wire Line
	5200 6600 5100 6600
Wire Wire Line
	5300 5800 5100 5800
Wire Wire Line
	5100 5800 5100 6600
Connection ~ 5100 6600
Wire Wire Line
	5100 6600 4000 6600
Wire Wire Line
	4500 5000 4600 5000
Wire Wire Line
	4600 5000 4600 5300
Wire Wire Line
	4600 5600 5300 5600
Wire Wire Line
	5300 5500 4600 5500
Connection ~ 4600 5500
Wire Wire Line
	4600 5500 4600 5600
Wire Wire Line
	5300 5400 4600 5400
Connection ~ 4600 5400
Wire Wire Line
	4600 5400 4600 5500
Wire Wire Line
	5300 5300 4600 5300
Connection ~ 4600 5300
Wire Wire Line
	4600 5300 4600 5400
Wire Wire Line
	4500 4900 5300 4900
$Comp
L Device:LED D?
U 1 1 5D42B044
P 7200 5900
F 0 "D?" V 7239 5783 50  0000 R CNN
F 1 "LED" V 7148 5783 50  0000 R CNN
F 2 "" H 7200 5900 50  0001 C CNN
F 3 "~" H 7200 5900 50  0001 C CNN
	1    7200 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 5400 8250 5400
Wire Wire Line
	8250 5400 8250 5450
Wire Wire Line
	8250 5450 8350 5450
Wire Wire Line
	6300 5500 8200 5500
Wire Wire Line
	8200 5500 8200 5600
Wire Wire Line
	8200 5600 8350 5600
Wire Wire Line
	6450 6050 6450 6150
Wire Wire Line
	7200 6050 7200 6100
Wire Wire Line
	7200 6400 7200 6600
Wire Wire Line
	7200 6600 6450 6600
Connection ~ 5800 6600
Wire Wire Line
	6450 6450 6450 6600
Connection ~ 6450 6600
Wire Wire Line
	6450 6600 5800 6600
Wire Wire Line
	6300 5600 6450 5600
Wire Wire Line
	6450 5600 6450 5750
Wire Wire Line
	6300 5200 7200 5200
Wire Wire Line
	7200 5200 7200 5750
Text Notes 7250 5800 0    50   ~ 0
Clock LED
Text Notes 6500 5800 0    50   ~ 0
Inverted\nClock LED
Text GLabel 2250 6200 0    50   Input ~ 0
Halt
Wire Wire Line
	2250 6200 3500 6200
Text GLabel 4800 7350 2    50   Output ~ 0
ClockRate0
Text GLabel 4800 7250 2    50   Output ~ 0
ClockRate1
Text GLabel 4800 7150 2    50   Output ~ 0
ClockRate2
Wire Wire Line
	3500 6000 3400 6000
Wire Wire Line
	3400 6000 3400 7150
Wire Wire Line
	3400 7150 4800 7150
Wire Wire Line
	4800 7250 3300 7250
Wire Wire Line
	3300 7250 3300 5900
Wire Wire Line
	3300 5900 3500 5900
Wire Wire Line
	3500 5800 3200 5800
Wire Wire Line
	3200 5800 3200 7350
Wire Wire Line
	3200 7350 4800 7350
Wire Wire Line
	1850 1450 1850 1950
Wire Wire Line
	1850 1950 2850 1950
Wire Wire Line
	2850 1950 2850 4900
Wire Wire Line
	2850 4900 3500 4900
Connection ~ 1850 1450
Wire Wire Line
	2900 1750 2900 5000
Wire Wire Line
	2900 5000 3500 5000
Connection ~ 2900 1750
Wire Wire Line
	2900 1750 3100 1750
Wire Wire Line
	4250 1750 4350 1750
Wire Wire Line
	4350 1750 4350 4000
Wire Wire Line
	4350 4000 2950 4000
Wire Wire Line
	2950 4000 2950 5100
Wire Wire Line
	2950 5100 3500 5100
Connection ~ 4350 1750
Wire Wire Line
	4350 1750 4450 1750
Wire Wire Line
	5750 1750 5750 4050
Wire Wire Line
	5750 4050 3000 4050
Wire Wire Line
	3000 4050 3000 5200
Wire Wire Line
	3000 5200 3500 5200
Connection ~ 5750 1750
Wire Wire Line
	5750 1750 5850 1750
Wire Wire Line
	8300 1750 8500 1750
Wire Wire Line
	6950 1750 7200 1750
Wire Wire Line
	3050 4100 3050 5300
Wire Wire Line
	3050 5300 3500 5300
Wire Wire Line
	3500 5400 3100 5400
Wire Wire Line
	3100 5400 3100 4150
Wire Wire Line
	3100 4150 9900 4150
Wire Wire Line
	9900 4150 9900 1550
Wire Wire Line
	9900 1550 9700 1550
Wire Wire Line
	9950 4100 9950 1450
Wire Wire Line
	9700 1450 9950 1450
Wire Wire Line
	3050 4100 9950 4100
Wire Wire Line
	3500 5500 3150 5500
Wire Wire Line
	3150 5500 3150 4200
Wire Wire Line
	3150 4200 9850 4200
Wire Wire Line
	9850 4200 9850 1650
Wire Wire Line
	9850 1650 9700 1650
Wire Wire Line
	3500 5600 3200 5600
Wire Wire Line
	3200 5600 3200 4250
Wire Wire Line
	3200 4250 9800 4250
Wire Wire Line
	9800 4250 9800 1750
Wire Wire Line
	9800 1750 9700 1750
Wire Wire Line
	1800 1750 1800 2000
Wire Wire Line
	1800 2000 2800 2000
Wire Wire Line
	2800 2000 2800 3850
Connection ~ 1800 1750
Wire Wire Line
	1800 1750 1900 1750
Connection ~ 2800 3850
Wire Wire Line
	2800 3850 3150 3850
$EndSCHEMATC