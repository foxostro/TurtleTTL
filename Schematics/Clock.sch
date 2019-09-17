EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 19 24
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
L Oscillator:ACO-xxxMHz 10MHz1
U 1 1 5D387BCA
P 1700 1450
F 0 "10MHz1" H 1357 1496 50  0000 R CNN
F 1 "ACO-xxxMHz" H 1357 1405 50  0000 R CNN
F 2 "Oscillator:Oscillator_DIP-14" H 2150 1100 50  0001 C CNN
F 3 "http://www.conwin.com/datasheets/cx/cx030.pdf" H 1600 1450 50  0001 C CNN
	1    1700 1450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U67
U 1 1 5D3898BC
P 2550 1550
F 0 "U67" H 2550 1917 50  0000 C CNN
F 1 "74LS393" H 2550 1826 50  0000 C CNN
F 2 "" H 2550 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 2550 1550 50  0001 C CNN
	1    2550 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U71
U 1 1 5D38C231
P 5300 1550
F 0 "U71" H 5300 1917 50  0000 C CNN
F 1 "74LS393" H 5300 1826 50  0000 C CNN
F 2 "" H 5300 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 5300 1550 50  0001 C CNN
	1    5300 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U72
U 1 1 5D38D960
P 6600 1550
F 0 "U72" H 6600 1917 50  0000 C CNN
F 1 "74LS393" H 6600 1826 50  0000 C CNN
F 2 "" H 6600 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 6600 1550 50  0001 C CNN
	1    6600 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U73
U 1 1 5D38E544
P 7950 1550
F 0 "U73" H 7950 1917 50  0000 C CNN
F 1 "74LS393" H 7950 1826 50  0000 C CNN
F 2 "" H 7950 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 7950 1550 50  0001 C CNN
	1    7950 1550
	1    0    0    -1  
$EndComp
$Comp
L Timer:LM555 U66
U 1 1 5D38F3A1
P 2000 4150
F 0 "U66" H 1800 4650 50  0000 C CNN
F 1 "LM555" H 1800 4550 50  0000 C CNN
F 2 "" H 2000 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 2000 4150 50  0001 C CNN
	1    2000 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C56
U 1 1 5D393902
P 1050 4600
F 0 "C56" H 1142 4646 50  0000 L CNN
F 1 "10nF" H 1142 4555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1050 4600 50  0001 C CNN
F 3 "~" H 1050 4600 50  0001 C CNN
	1    1050 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C57
U 1 1 5D394118
P 2600 4600
F 0 "C57" H 2692 4646 50  0000 L CNN
F 1 "10µF" H 2692 4555 50  0000 L CNN
F 2 "" H 2600 4600 50  0001 C CNN
F 3 "~" H 2600 4600 50  0001 C CNN
	1    2600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3950 1500 3950
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
	2600 4350 2600 4500
Connection ~ 2600 4350
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
L 74xx:74LS393 U74
U 1 1 5D3C15D2
P 9350 1550
F 0 "U74" H 9350 1917 50  0000 C CNN
F 1 "74LS393" H 9350 1826 50  0000 C CNN
F 2 "" H 9350 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 9350 1550 50  0001 C CNN
	1    9350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1750 8650 1450
Wire Wire Line
	8650 1450 8850 1450
Wire Wire Line
	8850 1750 8750 1750
Wire Wire Line
	1700 800  3150 800 
Wire Wire Line
	3150 800  3150 1450
Wire Wire Line
	3150 1650 3050 1650
Connection ~ 1700 800 
Wire Wire Line
	3150 1550 3050 1550
Connection ~ 3150 1550
Wire Wire Line
	3150 1550 3150 1650
Wire Wire Line
	3150 1450 3050 1450
Connection ~ 3150 1450
Wire Wire Line
	3150 1450 3150 1550
Wire Wire Line
	4400 1650 4500 1650
Wire Wire Line
	4500 1650 4500 1550
Wire Wire Line
	4500 800  3150 800 
Connection ~ 3150 800 
Wire Wire Line
	4400 1550 4500 1550
Connection ~ 4500 1550
Wire Wire Line
	4500 1550 4500 1450
Wire Wire Line
	4400 1450 4500 1450
Connection ~ 4500 1450
Wire Wire Line
	4500 1450 4500 800 
Wire Wire Line
	5800 1650 5900 1650
Wire Wire Line
	5900 1650 5900 1550
Wire Wire Line
	5900 1450 5800 1450
Wire Wire Line
	5800 1550 5900 1550
Connection ~ 5900 1550
Wire Wire Line
	5900 1550 5900 1450
Wire Wire Line
	5900 1450 5900 800 
Wire Wire Line
	5900 800  4500 800 
Connection ~ 5900 1450
Connection ~ 4500 800 
Wire Wire Line
	7100 1650 7200 1650
Wire Wire Line
	7200 1650 7200 1550
Wire Wire Line
	7200 1450 7100 1450
Wire Wire Line
	7100 1550 7200 1550
Connection ~ 7200 1550
Wire Wire Line
	7200 1550 7200 1450
Wire Wire Line
	7200 1450 7200 800 
Wire Wire Line
	7200 800  5900 800 
Connection ~ 7200 1450
Connection ~ 5900 800 
Wire Wire Line
	8450 1650 8550 1650
Wire Wire Line
	8550 1650 8550 1550
Wire Wire Line
	8550 1450 8450 1450
Wire Wire Line
	8450 1550 8550 1550
Connection ~ 8550 1550
Wire Wire Line
	8550 1550 8550 1450
Wire Wire Line
	8550 1450 8550 800 
Wire Wire Line
	8550 800  7200 800 
Connection ~ 8550 1450
Connection ~ 7200 800 
$Comp
L 74xx:74LS393 U69
U 1 1 5D38B39F
P 3900 1550
F 0 "U69" H 3900 1917 50  0000 C CNN
F 1 "74LS393" H 3900 1826 50  0000 C CNN
F 2 "" H 3900 1550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 3900 1550 50  0001 C CNN
	1    3900 1550
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
Text GLabel 5350 5000 2    50   Output ~ 0
~CLK
$Comp
L Device:R R88
U 1 1 5D43460F
P 5050 6000
F 0 "R88" H 5118 6046 50  0000 L CNN
F 1 "220Ω" H 5118 5955 50  0000 L CNN
F 2 "" V 5090 5990 50  0001 C CNN
F 3 "~" H 5050 6000 50  0001 C CNN
	1    5050 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D72
U 1 1 5D42B044
P 5050 5550
F 0 "D72" V 5089 5433 50  0000 R CNN
F 1 "LED" V 4998 5433 50  0000 R CNN
F 2 "" H 5050 5550 50  0001 C CNN
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
L 74xx:74LS151 U70
U 1 1 5D3FEA17
P 4150 5500
F 0 "U70" H 3900 6400 50  0000 C CNN
F 1 "74LS151" H 3900 6300 50  0000 C CNN
F 2 "" H 4150 5500 50  0001 C CNN
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
	5050 5000 5350 5000
Connection ~ 5050 5000
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
L power:VCC #PWR0249
U 1 1 5D90C7E6
P 4150 4600
F 0 "#PWR0249" H 4150 4450 50  0001 C CNN
F 1 "VCC" H 4167 4773 50  0000 C CNN
F 2 "" H 4150 4600 50  0001 C CNN
F 3 "" H 4150 4600 50  0001 C CNN
	1    4150 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0250
U 1 1 5D919C2F
P 2000 4750
F 0 "#PWR0250" H 2000 4500 50  0001 C CNN
F 1 "GND" H 2005 4577 50  0000 C CNN
F 2 "" H 2000 4750 50  0001 C CNN
F 3 "" H 2000 4750 50  0001 C CNN
	1    2000 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0251
U 1 1 5D91A0CA
P 4600 6700
F 0 "#PWR0251" H 4600 6450 50  0001 C CNN
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
L Device:C C58
U 1 1 5D934C27
P 8000 5400
F 0 "C58" H 8115 5446 50  0000 L CNN
F 1 "100nF" H 8115 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8038 5250 50  0001 C CNN
F 3 "~" H 8000 5400 50  0001 C CNN
	1    8000 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C60
U 1 1 5D935B94
P 8500 5400
F 0 "C60" H 8615 5446 50  0000 L CNN
F 1 "100nF" H 8615 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8538 5250 50  0001 C CNN
F 3 "~" H 8500 5400 50  0001 C CNN
	1    8500 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C62
U 1 1 5D935F32
P 9000 5400
F 0 "C62" H 9115 5446 50  0000 L CNN
F 1 "100nF" H 9115 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9038 5250 50  0001 C CNN
F 3 "~" H 9000 5400 50  0001 C CNN
	1    9000 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C64
U 1 1 5D936485
P 9500 5400
F 0 "C64" H 9615 5446 50  0000 L CNN
F 1 "100nF" H 9615 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9538 5250 50  0001 C CNN
F 3 "~" H 9500 5400 50  0001 C CNN
	1    9500 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C66
U 1 1 5D93673D
P 10000 5400
F 0 "C66" H 10115 5446 50  0000 L CNN
F 1 "100nF" H 10115 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10038 5250 50  0001 C CNN
F 3 "~" H 10000 5400 50  0001 C CNN
	1    10000 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0252
U 1 1 5D936CDD
P 8000 5550
F 0 "#PWR0252" H 8000 5300 50  0001 C CNN
F 1 "GND" H 8005 5377 50  0000 C CNN
F 2 "" H 8000 5550 50  0001 C CNN
F 3 "" H 8000 5550 50  0001 C CNN
	1    8000 5550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0253
U 1 1 5D937A39
P 8000 5250
F 0 "#PWR0253" H 8000 5100 50  0001 C CNN
F 1 "VCC" H 8017 5423 50  0000 C CNN
F 2 "" H 8000 5250 50  0001 C CNN
F 3 "" H 8000 5250 50  0001 C CNN
	1    8000 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5250 8500 5250
Connection ~ 8000 5250
Wire Wire Line
	8500 5250 9000 5250
Connection ~ 8500 5250
Wire Wire Line
	9000 5250 9500 5250
Connection ~ 9000 5250
Wire Wire Line
	9500 5250 10000 5250
Connection ~ 9500 5250
Wire Wire Line
	10000 5550 9500 5550
Wire Wire Line
	9500 5550 9000 5550
Connection ~ 9500 5550
Wire Wire Line
	9000 5550 8500 5550
Connection ~ 9000 5550
Wire Wire Line
	8500 5550 8000 5550
Connection ~ 8500 5550
Connection ~ 8000 5550
$Comp
L Device:C C59
U 1 1 5D9721DB
P 8000 6200
F 0 "C59" H 8115 6246 50  0000 L CNN
F 1 "100nF" H 8115 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8038 6050 50  0001 C CNN
F 3 "~" H 8000 6200 50  0001 C CNN
	1    8000 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C61
U 1 1 5D9721E1
P 8500 6200
F 0 "C61" H 8615 6246 50  0000 L CNN
F 1 "100nF" H 8615 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8538 6050 50  0001 C CNN
F 3 "~" H 8500 6200 50  0001 C CNN
	1    8500 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C63
U 1 1 5D9721E7
P 9000 6200
F 0 "C63" H 9115 6246 50  0000 L CNN
F 1 "100nF" H 9115 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9038 6050 50  0001 C CNN
F 3 "~" H 9000 6200 50  0001 C CNN
	1    9000 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C65
U 1 1 5D9721ED
P 9500 6200
F 0 "C65" H 9615 6246 50  0000 L CNN
F 1 "100nF" H 9615 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9538 6050 50  0001 C CNN
F 3 "~" H 9500 6200 50  0001 C CNN
	1    9500 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C67
U 1 1 5D9721F3
P 10000 6200
F 0 "C67" H 10115 6246 50  0000 L CNN
F 1 "100nF" H 10115 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10038 6050 50  0001 C CNN
F 3 "~" H 10000 6200 50  0001 C CNN
	1    10000 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0254
U 1 1 5D9721F9
P 8000 6350
F 0 "#PWR0254" H 8000 6100 50  0001 C CNN
F 1 "GND" H 8005 6177 50  0000 C CNN
F 2 "" H 8000 6350 50  0001 C CNN
F 3 "" H 8000 6350 50  0001 C CNN
	1    8000 6350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0255
U 1 1 5D9721FF
P 8000 6050
F 0 "#PWR0255" H 8000 5900 50  0001 C CNN
F 1 "VCC" H 8017 6223 50  0000 C CNN
F 2 "" H 8000 6050 50  0001 C CNN
F 3 "" H 8000 6050 50  0001 C CNN
	1    8000 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 6050 8500 6050
Connection ~ 8000 6050
Wire Wire Line
	8500 6050 9000 6050
Connection ~ 8500 6050
Wire Wire Line
	9000 6050 9500 6050
Connection ~ 9000 6050
Wire Wire Line
	9500 6050 10000 6050
Connection ~ 9500 6050
Wire Wire Line
	10000 6350 9500 6350
Wire Wire Line
	9500 6350 9000 6350
Connection ~ 9500 6350
Wire Wire Line
	9000 6350 8500 6350
Connection ~ 9000 6350
Wire Wire Line
	8500 6350 8000 6350
Connection ~ 8500 6350
Connection ~ 8000 6350
Wire Wire Line
	5050 5000 5050 5150
Text GLabel 5350 5150 2    50   Output ~ 0
RegisterClock
Wire Wire Line
	5350 5150 5050 5150
Connection ~ 5050 5150
Wire Wire Line
	5050 5150 5050 5400
Connection ~ 2600 4150
Wire Wire Line
	2600 3150 2600 3250
Wire Wire Line
	800  3450 800  3550
Wire Wire Line
	800  3150 800  3250
Wire Wire Line
	2600 3450 2600 4150
$Comp
L Device:R_Small R87
U 1 1 5D39244B
P 2600 3350
F 0 "R87" H 2668 3396 50  0000 L CNN
F 1 "47kΩ" H 2668 3305 50  0000 L CNN
F 2 "" H 2600 3350 50  0001 C CNN
F 3 "~" H 2600 3350 50  0001 C CNN
	1    2600 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R86
U 1 1 5D39306C
P 800 3350
F 0 "R86" H 868 3396 50  0000 L CNN
F 1 "220Ω" H 868 3305 50  0000 L CNN
F 2 "" H 800 3350 50  0001 C CNN
F 3 "~" H 800 3350 50  0001 C CNN
	1    800  3350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5D843F11
P 800 3750
F 0 "SW1" V 846 3702 50  0000 R CNN
F 1 "SW_Push" V 755 3702 50  0000 R CNN
F 2 "" H 800 3950 50  0001 C CNN
F 3 "~" H 800 3950 50  0001 C CNN
	1    800  3750
	0    -1   -1   0   
$EndComp
Text Notes 650  4100 0    50   ~ 0
Manual Clock
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
L power:GND #PWR0256
U 1 1 5D888695
P 1700 2000
F 0 "#PWR0256" H 1700 1750 50  0001 C CNN
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
L power:VCC #PWR0257
U 1 1 5D3986DC
P 1700 750
F 0 "#PWR0257" H 1700 600 50  0001 C CNN
F 1 "VCC" H 1717 923 50  0000 C CNN
F 2 "" H 1700 750 50  0001 C CNN
F 3 "" H 1700 750 50  0001 C CNN
	1    1700 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 750  1700 800 
$Comp
L power:VCC #PWR0258
U 1 1 5D8FB444
P 800 3100
F 0 "#PWR0258" H 800 2950 50  0001 C CNN
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
L 74xx:74LS04 U68
U 1 1 5D7C9FC5
P 2800 6450
F 0 "U68" H 2800 6767 50  0000 C CNN
F 1 "74LS04" H 2800 6676 50  0000 C CNN
F 2 "" H 2800 6450 50  0001 C CNN
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
$EndSCHEMATC
