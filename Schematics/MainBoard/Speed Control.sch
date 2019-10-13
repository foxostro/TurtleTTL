EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 13 23
Title "Speed Control"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 "An array of LEDs indicates the selected speed."
Comment3 "Convert the output to a three-bit number which selects the clock rate."
Comment4 "Form a Flash ADC from an array of voltage comparators."
$EndDescr
$Comp
L Comparator:LM393 U53
U 1 1 5D7A1D4F
P 9750 2000
F 0 "U53" V 9800 2200 50  0000 C CNN
F 1 "LM393" V 9900 2200 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 9750 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 9750 2000 50  0001 C CNN
	1    9750 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R21
U 1 1 5D7A33A0
P 10250 2000
F 0 "R21" H 10100 1950 50  0000 C CNN
F 1 "4.7k" H 10100 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10180 2000 50  0001 C CNN
F 3 "~" H 10250 2000 50  0001 C CNN
	1    10250 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 2150 10250 2400
Wire Wire Line
	10250 2400 9750 2400
Wire Wire Line
	9750 2400 9750 2300
Wire Wire Line
	9850 1700 9850 1600
Wire Wire Line
	9850 1600 10250 1600
Wire Wire Line
	10250 1600 10250 1850
$Comp
L Comparator:LM393 U52
U 2 1 5D7A78E6
P 8550 2000
F 0 "U52" V 8600 2200 50  0000 C CNN
F 1 "LM393" V 8700 2200 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8550 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 8550 2000 50  0001 C CNN
	2    8550 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5D7A807B
P 9050 2000
F 0 "R18" H 8900 1950 50  0000 C CNN
F 1 "4.7k" H 8900 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8980 2000 50  0001 C CNN
F 3 "~" H 9050 2000 50  0001 C CNN
	1    9050 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 2300 8550 2400
Wire Wire Line
	8550 2400 9050 2400
Wire Wire Line
	9050 2400 9050 2150
Wire Wire Line
	8650 1700 8650 1600
$Comp
L Device:R R19
U 1 1 5D7A8FDE
P 9300 1600
F 0 "R19" V 9500 1650 50  0000 R CNN
F 1 "1k" V 9400 1650 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9230 1600 50  0001 C CNN
F 3 "~" H 9300 1600 50  0001 C CNN
	1    9300 1600
	0    -1   -1   0   
$EndComp
Connection ~ 9850 1600
Wire Wire Line
	8650 1600 9050 1600
Wire Wire Line
	9050 1600 9050 1850
Wire Wire Line
	9050 1600 9150 1600
Connection ~ 9050 1600
Wire Wire Line
	9850 1600 9450 1600
$Comp
L Device:R R15
U 1 1 5D7B86FB
P 7850 2000
F 0 "R15" H 7700 1950 50  0000 C CNN
F 1 "4.7k" H 7700 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7780 2000 50  0001 C CNN
F 3 "~" H 7850 2000 50  0001 C CNN
	1    7850 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 2300 7350 2400
Wire Wire Line
	7350 2400 7850 2400
Wire Wire Line
	7850 2400 7850 2150
Wire Wire Line
	7450 1700 7450 1600
$Comp
L Device:R R16
U 1 1 5D7B8705
P 8100 1600
F 0 "R16" V 8300 1650 50  0000 R CNN
F 1 "1k" V 8200 1650 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8030 1600 50  0001 C CNN
F 3 "~" H 8100 1600 50  0001 C CNN
	1    8100 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 1600 7850 1600
Wire Wire Line
	7850 1600 7850 1850
Wire Wire Line
	7850 1600 7950 1600
Connection ~ 7850 1600
Wire Wire Line
	8650 1600 8250 1600
Connection ~ 8650 1600
$Comp
L Comparator:LM393 U50
U 2 1 5D7BAD1B
P 6150 2000
F 0 "U50" V 6200 2200 50  0000 C CNN
F 1 "LM393" V 6300 2200 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6150 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 6150 2000 50  0001 C CNN
	2    6150 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5D7BAD21
P 6650 2000
F 0 "R12" H 6500 1950 50  0000 C CNN
F 1 "4.7k" H 6500 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6580 2000 50  0001 C CNN
F 3 "~" H 6650 2000 50  0001 C CNN
	1    6650 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 2300 6150 2400
Wire Wire Line
	6150 2400 6650 2400
Wire Wire Line
	6650 2400 6650 2150
Wire Wire Line
	6250 1700 6250 1600
$Comp
L Device:R R13
U 1 1 5D7BAD2B
P 6900 1600
F 0 "R13" V 7100 1650 50  0000 R CNN
F 1 "1k" V 7000 1650 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6830 1600 50  0001 C CNN
F 3 "~" H 6900 1600 50  0001 C CNN
	1    6900 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 1600 6650 1600
Wire Wire Line
	6650 1600 6650 1850
Wire Wire Line
	6650 1600 6750 1600
Connection ~ 6650 1600
$Comp
L Comparator:LM393 U50
U 1 1 5D7BDFA0
P 4950 2000
F 0 "U50" V 5000 2200 50  0000 C CNN
F 1 "LM393" V 5100 2200 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4950 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 4950 2000 50  0001 C CNN
	1    4950 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5D7BDFA6
P 5450 2000
F 0 "R9" H 5300 1950 50  0000 C CNN
F 1 "4.7k" H 5300 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5380 2000 50  0001 C CNN
F 3 "~" H 5450 2000 50  0001 C CNN
	1    5450 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 2300 4950 2400
Wire Wire Line
	4950 2400 5450 2400
Wire Wire Line
	5450 2400 5450 2150
Wire Wire Line
	5050 1700 5050 1600
$Comp
L Device:R R10
U 1 1 5D7BDFB0
P 5750 1600
F 0 "R10" V 5950 1650 50  0000 R CNN
F 1 "1k" V 5850 1650 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5680 1600 50  0001 C CNN
F 3 "~" H 5750 1600 50  0001 C CNN
	1    5750 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 1600 5450 1600
Wire Wire Line
	5450 1600 5450 1850
Wire Wire Line
	5450 1600 5600 1600
Connection ~ 5450 1600
$Comp
L Comparator:LM393 U49
U 2 1 5D7C00DB
P 3850 2000
F 0 "U49" V 3900 2200 50  0000 C CNN
F 1 "LM393" V 4000 2200 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3850 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3850 2000 50  0001 C CNN
	2    3850 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5D7C00E1
P 4350 2000
F 0 "R6" H 4200 1950 50  0000 C CNN
F 1 "4.7k" H 4200 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4280 2000 50  0001 C CNN
F 3 "~" H 4350 2000 50  0001 C CNN
	1    4350 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 2300 3850 2400
Wire Wire Line
	3850 2400 4350 2400
Wire Wire Line
	4350 2400 4350 2150
Wire Wire Line
	3950 1700 3950 1600
$Comp
L Device:R R7
U 1 1 5D7C00EB
P 4600 1600
F 0 "R7" V 4800 1650 50  0000 R CNN
F 1 "1k" V 4700 1650 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4530 1600 50  0001 C CNN
F 3 "~" H 4600 1600 50  0001 C CNN
	1    4600 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 1600 4350 1600
Wire Wire Line
	4350 1600 4350 1850
Wire Wire Line
	4350 1600 4450 1600
Connection ~ 4350 1600
$Comp
L Comparator:LM393 U49
U 1 1 5D7E9B37
P 2700 2000
F 0 "U49" V 2750 2200 50  0000 C CNN
F 1 "LM393" V 2850 2200 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2700 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 2700 2000 50  0001 C CNN
	1    2700 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D7E9B3D
P 3200 2000
F 0 "R3" H 3050 1950 50  0000 C CNN
F 1 "4.7k" H 3050 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3130 2000 50  0001 C CNN
F 3 "~" H 3200 2000 50  0001 C CNN
	1    3200 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 2300 2700 2400
Wire Wire Line
	2700 2400 3200 2400
Wire Wire Line
	3200 2400 3200 2150
Wire Wire Line
	2800 1700 2800 1600
$Comp
L Device:R R4
U 1 1 5D7E9B47
P 3450 1600
F 0 "R4" V 3650 1650 50  0000 R CNN
F 1 "1k" V 3550 1650 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3380 1600 50  0001 C CNN
F 3 "~" H 3450 1600 50  0001 C CNN
	1    3450 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 1600 3200 1600
Wire Wire Line
	3200 1600 3200 1850
Wire Wire Line
	3200 1600 3300 1600
Connection ~ 3200 1600
Wire Wire Line
	3600 1600 3950 1600
Connection ~ 3950 1600
Wire Wire Line
	4750 1600 5050 1600
Connection ~ 5050 1600
Wire Wire Line
	5900 1600 6250 1600
Connection ~ 6250 1600
Wire Wire Line
	7050 1600 7450 1600
Connection ~ 7450 1600
$Comp
L Comparator:LM393 U52
U 1 1 5D7B86F5
P 7350 2000
F 0 "U52" V 7400 2200 50  0000 C CNN
F 1 "LM393" V 7500 2200 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7350 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 7350 2000 50  0001 C CNN
	1    7350 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 1700 3750 1250
Connection ~ 3750 1250
Wire Wire Line
	4850 1700 4850 1250
Connection ~ 4850 1250
Wire Wire Line
	4850 1250 3750 1250
Wire Wire Line
	6050 1700 6050 1250
Wire Wire Line
	4850 1250 6050 1250
Connection ~ 6050 1250
Wire Wire Line
	6050 1250 7250 1250
Wire Wire Line
	7250 1700 7250 1250
Connection ~ 7250 1250
Wire Wire Line
	7250 1250 8450 1250
Wire Wire Line
	8450 1700 8450 1250
Connection ~ 8450 1250
Wire Wire Line
	9650 1700 9650 1250
Wire Wire Line
	8450 1250 9650 1250
$Comp
L Device:R R1
U 1 1 5D82D23E
P 2200 1600
F 0 "R1" V 2400 1650 50  0000 R CNN
F 1 "1k" V 2300 1650 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2130 1600 50  0001 C CNN
F 3 "~" H 2200 1600 50  0001 C CNN
	1    2200 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 1600 2350 1600
Connection ~ 2800 1600
$Comp
L power:GND #PWR0142
U 1 1 5D832C07
P 1650 1750
F 0 "#PWR0142" H 1650 1500 50  0001 C CNN
F 1 "GND" H 1655 1577 50  0000 C CNN
F 2 "" H 1650 1750 50  0001 C CNN
F 3 "" H 1650 1750 50  0001 C CNN
	1    1650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1750 1650 1600
Wire Wire Line
	1650 1600 2050 1600
Wire Wire Line
	2600 1250 3750 1250
$Comp
L Device:R_POT RV1
U 1 1 5D839402
P 1650 1250
F 0 "RV1" H 1581 1296 50  0000 R CNN
F 1 "R_POT" H 1581 1205 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA6-H2,5_Horizontal" H 1650 1250 50  0001 C CNN
F 3 "~" H 1650 1250 50  0001 C CNN
	1    1650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1400 1650 1600
Connection ~ 1650 1600
Wire Wire Line
	1800 1250 2600 1250
Connection ~ 2600 1250
Wire Wire Line
	2600 1250 2600 1700
$Comp
L Memory_EEPROM:GLS29EE010 U?
U 1 1 5D87E8A6
P 4950 5000
AR Path="/5D2C0AA0/5D87E8A6" Ref="U?"  Part="1" 
AR Path="/5D79C284/5D87E8A6" Ref="U51"  Part="1" 
F 0 "U51" V 4850 3950 50  0000 C CNN
F 1 "GLS29EE010" V 4950 3950 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_Socket" H 4950 5000 50  0001 C CNN
F 3 "" H 4950 5000 50  0001 C CNN
	1    4950 5000
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 5D8893BB
P 7400 6150
F 0 "#PWR0146" H 7400 5900 50  0001 C CNN
F 1 "GND" H 7405 5977 50  0000 C CNN
F 2 "" H 7400 6150 50  0001 C CNN
F 3 "" H 7400 6150 50  0001 C CNN
	1    7400 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5000 7400 5000
Wire Wire Line
	7050 4350 7050 4250
Wire Wire Line
	7050 4250 7400 4250
Wire Wire Line
	7400 4250 7400 5000
Connection ~ 7400 5000
Wire Wire Line
	7050 4250 6950 4250
Wire Wire Line
	6950 4250 6950 4350
Connection ~ 7050 4250
$Comp
L power:VCC #PWR0145
U 1 1 5D89300F
P 6850 4200
F 0 "#PWR0145" H 6850 4050 50  0001 C CNN
F 1 "VCC" H 6867 4373 50  0000 C CNN
F 2 "" H 6850 4200 50  0001 C CNN
F 3 "" H 6850 4200 50  0001 C CNN
	1    6850 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4200 6850 4350
Connection ~ 9750 2400
Connection ~ 8550 2400
Connection ~ 7350 2400
Connection ~ 6150 2400
Wire Wire Line
	4950 2400 4950 2600
Connection ~ 4950 2400
Wire Wire Line
	3850 2400 3850 2500
Connection ~ 3850 2400
Connection ~ 2700 2400
Text GLabel 5050 6650 3    50   Output ~ 0
ClockRate0
Text GLabel 5150 6650 3    50   Output ~ 0
ClockRate1
Text GLabel 5250 6650 3    50   Output ~ 0
ClockRate2
Wire Wire Line
	5050 5600 5050 6650
Wire Wire Line
	5150 5600 5150 6650
Wire Wire Line
	5250 5600 5250 6650
$Comp
L Device:R R2
U 1 1 5D97CC48
P 2450 2400
F 0 "R2" V 2243 2400 50  0000 C CNN
F 1 "1k" V 2334 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2380 2400 50  0001 C CNN
F 3 "~" H 2450 2400 50  0001 C CNN
	1    2450 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5D97DDCC
P 3600 2500
F 0 "R5" V 3393 2500 50  0000 C CNN
F 1 "1k" V 3484 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3530 2500 50  0001 C CNN
F 3 "~" H 3600 2500 50  0001 C CNN
	1    3600 2500
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0140
U 1 1 5D97E7D7
P 800 800
F 0 "#PWR0140" H 800 650 50  0001 C CNN
F 1 "VCC" H 817 973 50  0000 C CNN
F 2 "" H 800 800 50  0001 C CNN
F 3 "" H 800 800 50  0001 C CNN
	1    800  800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2400 800  2400
Wire Wire Line
	800  2400 800  1000
Wire Wire Line
	2700 2400 2600 2400
Wire Wire Line
	3450 2500 800  2500
Wire Wire Line
	800  2500 800  2400
Connection ~ 800  2400
Wire Wire Line
	3850 2500 3750 2500
$Comp
L Device:R R8
U 1 1 5D99D8E1
P 4700 2600
F 0 "R8" V 4493 2600 50  0000 C CNN
F 1 "1k" V 4584 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4630 2600 50  0001 C CNN
F 3 "~" H 4700 2600 50  0001 C CNN
	1    4700 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 2600 4950 2600
Wire Wire Line
	4550 2600 800  2600
Wire Wire Line
	800  2600 800  2500
Connection ~ 800  2500
$Comp
L Device:R R11
U 1 1 5D9AF4B1
P 5900 2700
F 0 "R11" V 5693 2700 50  0000 C CNN
F 1 "1k" V 5784 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5830 2700 50  0001 C CNN
F 3 "~" H 5900 2700 50  0001 C CNN
	1    5900 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 2700 6150 2700
Wire Wire Line
	6150 2700 6150 2400
Wire Wire Line
	5750 2700 800  2700
Wire Wire Line
	800  2700 800  2600
Connection ~ 800  2600
$Comp
L Device:R R14
U 1 1 5DA0DD43
P 7100 2800
F 0 "R14" V 6893 2800 50  0000 C CNN
F 1 "1k" V 6984 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7030 2800 50  0001 C CNN
F 3 "~" H 7100 2800 50  0001 C CNN
	1    7100 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 2800 7350 2800
Wire Wire Line
	7350 2800 7350 2400
Wire Wire Line
	6950 2800 800  2800
Wire Wire Line
	800  2800 800  2700
Connection ~ 800  2700
$Comp
L Device:R R17
U 1 1 5DA209AF
P 8300 2900
F 0 "R17" V 8093 2900 50  0000 C CNN
F 1 "1k" V 8184 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8230 2900 50  0001 C CNN
F 3 "~" H 8300 2900 50  0001 C CNN
	1    8300 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 2900 8550 2900
Wire Wire Line
	8550 2900 8550 2400
Wire Wire Line
	8150 2900 800  2900
Wire Wire Line
	800  2900 800  2800
Connection ~ 800  2800
$Comp
L Device:R R20
U 1 1 5DA34360
P 9500 3000
F 0 "R20" V 9293 3000 50  0000 C CNN
F 1 "1k" V 9384 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9430 3000 50  0001 C CNN
F 3 "~" H 9500 3000 50  0001 C CNN
	1    9500 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 3000 9750 3000
Wire Wire Line
	9750 3000 9750 2400
Wire Wire Line
	9350 3000 800  3000
Wire Wire Line
	800  3000 800  2900
Connection ~ 800  2900
Wire Wire Line
	1650 1100 1650 1000
Wire Wire Line
	1650 1000 800  1000
Connection ~ 800  1000
Wire Wire Line
	800  1000 800  800 
$Comp
L Device:C C53
U 1 1 5DA68DA5
P 2800 7350
F 0 "C53" H 2915 7396 50  0000 L CNN
F 1 "100nF" H 2915 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2838 7200 50  0001 C CNN
F 3 "~" H 2800 7350 50  0001 C CNN
	1    2800 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C52
U 1 1 5DA690FC
P 2300 7350
F 0 "C52" H 2415 7396 50  0000 L CNN
F 1 "100nF" H 2415 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2338 7200 50  0001 C CNN
F 3 "~" H 2300 7350 50  0001 C CNN
	1    2300 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C51
U 1 1 5DA694C8
P 1800 7350
F 0 "C51" H 1915 7396 50  0000 L CNN
F 1 "100nF" H 1915 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1838 7200 50  0001 C CNN
F 3 "~" H 1800 7350 50  0001 C CNN
	1    1800 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C50
U 1 1 5DA69963
P 1300 7350
F 0 "C50" H 1415 7396 50  0000 L CNN
F 1 "100nF" H 1415 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1338 7200 50  0001 C CNN
F 3 "~" H 1300 7350 50  0001 C CNN
	1    1300 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C49
U 1 1 5DA69DD0
P 800 7350
F 0 "C49" H 915 7396 50  0000 L CNN
F 1 "100nF" H 915 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 838 7200 50  0001 C CNN
F 3 "~" H 800 7350 50  0001 C CNN
	1    800  7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0143
U 1 1 5DA6A5E2
P 2800 7500
F 0 "#PWR0143" H 2800 7250 50  0001 C CNN
F 1 "GND" H 2805 7327 50  0000 C CNN
F 2 "" H 2800 7500 50  0001 C CNN
F 3 "" H 2800 7500 50  0001 C CNN
	1    2800 7500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0141
U 1 1 5DA6B55A
P 800 7200
F 0 "#PWR0141" H 800 7050 50  0001 C CNN
F 1 "VCC" H 817 7373 50  0000 C CNN
F 2 "" H 800 7200 50  0001 C CNN
F 3 "" H 800 7200 50  0001 C CNN
	1    800  7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7200 800  7200
Connection ~ 800  7200
Wire Wire Line
	1300 7200 1800 7200
Connection ~ 1300 7200
Wire Wire Line
	1800 7200 2300 7200
Connection ~ 1800 7200
Wire Wire Line
	2300 7200 2800 7200
Connection ~ 2300 7200
Wire Wire Line
	2300 7500 2800 7500
Connection ~ 2800 7500
Wire Wire Line
	2300 7500 1800 7500
Connection ~ 2300 7500
Wire Wire Line
	1800 7500 1300 7500
Connection ~ 1800 7500
Wire Wire Line
	1300 7500 800  7500
Connection ~ 1300 7500
Wire Wire Line
	5750 4350 5750 4250
Wire Wire Line
	5750 4250 5850 4250
Connection ~ 6950 4250
Wire Wire Line
	5850 4350 5850 4250
Connection ~ 5850 4250
Wire Wire Line
	5850 4250 5950 4250
Wire Wire Line
	5950 4350 5950 4250
Connection ~ 5950 4250
Wire Wire Line
	5950 4250 6050 4250
Wire Wire Line
	6050 4350 6050 4250
Connection ~ 6050 4250
Wire Wire Line
	6050 4250 6150 4250
Wire Wire Line
	6150 4350 6150 4250
Connection ~ 6150 4250
Wire Wire Line
	6150 4250 6250 4250
Wire Wire Line
	6250 4350 6250 4250
Connection ~ 6250 4250
Wire Wire Line
	6250 4250 6350 4250
Wire Wire Line
	6350 4350 6350 4250
Connection ~ 6350 4250
Wire Wire Line
	6350 4250 6450 4250
Wire Wire Line
	6450 4350 6450 4250
Connection ~ 6450 4250
Wire Wire Line
	6450 4250 6550 4250
Wire Wire Line
	6550 4350 6550 4250
Connection ~ 6550 4250
Wire Wire Line
	6550 4250 6650 4250
Wire Wire Line
	6650 4350 6650 4250
Connection ~ 6650 4250
Wire Wire Line
	6650 4250 6950 4250
$Comp
L Comparator:LM393 U53
U 2 1 5DBE61E6
P 12050 2400
F 0 "U53" V 12100 2600 50  0000 C CNN
F 1 "LM393" V 12200 2600 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 12050 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 12050 2400 50  0001 C CNN
	2    12050 2400
	0    1    1    0   
$EndComp
NoConn ~ 12050 2700
$Comp
L Connector:Conn_01x09_Female J?
U 1 1 5D95167C
P 1100 4750
AR Path="/5D29E36D/5D95167C" Ref="J?"  Part="1" 
AR Path="/5D2C12A5/5D95167C" Ref="J?"  Part="1" 
AR Path="/5D2C0CE4/5D95167C" Ref="J?"  Part="1" 
AR Path="/5D2C0D13/5D95167C" Ref="J?"  Part="1" 
AR Path="/5D79C284/5D95167C" Ref="J7"  Part="1" 
F 0 "J7" V 1250 4700 50  0000 C CNN
F 1 "Speed Control LED Connector" V 1350 4700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 1100 4750 50  0001 C CNN
F 3 "~" H 1100 4750 50  0001 C CNN
	1    1100 4750
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 5DA4B6D6
P 700 4400
F 0 "#PWR0139" H 700 4150 50  0001 C CNN
F 1 "GND" H 705 4227 50  0000 C CNN
F 2 "" H 700 4400 50  0001 C CNN
F 3 "" H 700 4400 50  0001 C CNN
	1    700  4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	700  4400 700  4550
NoConn ~ 1500 4550
Wire Wire Line
	9750 3000 9750 3300
Wire Wire Line
	9750 3300 5050 3300
Wire Wire Line
	5050 3300 5050 4350
Connection ~ 9750 3000
Wire Wire Line
	8550 2900 8550 3400
Wire Wire Line
	8550 3400 5150 3400
Wire Wire Line
	5150 3400 5150 4350
Connection ~ 8550 2900
Wire Wire Line
	7350 2800 7350 3500
Wire Wire Line
	7350 3500 5250 3500
Wire Wire Line
	5250 3500 5250 4350
Connection ~ 7350 2800
Wire Wire Line
	6150 2700 6150 3600
Wire Wire Line
	6150 3600 5350 3600
Wire Wire Line
	5350 3600 5350 4350
Connection ~ 6150 2700
Wire Wire Line
	5450 4350 5450 3700
Wire Wire Line
	5450 3700 4950 3700
Wire Wire Line
	4950 3700 4950 2600
Connection ~ 4950 2600
Wire Wire Line
	3850 2500 3850 3800
Wire Wire Line
	3850 3800 5550 3800
Wire Wire Line
	5550 3800 5550 4350
Connection ~ 3850 2500
Wire Wire Line
	5650 4350 5650 3900
Wire Wire Line
	5650 3900 2700 3900
Wire Wire Line
	2700 3900 2700 2400
Wire Wire Line
	2700 3900 1400 3900
Wire Wire Line
	1400 3900 1400 4550
Connection ~ 2700 3900
Wire Wire Line
	3850 3800 1300 3800
Wire Wire Line
	1300 3800 1300 4550
Connection ~ 3850 3800
Wire Wire Line
	4950 3700 1200 3700
Wire Wire Line
	1200 3700 1200 4550
Connection ~ 4950 3700
Wire Wire Line
	5350 3600 1100 3600
Wire Wire Line
	1100 3600 1100 4550
Connection ~ 5350 3600
Wire Wire Line
	5250 3500 1000 3500
Wire Wire Line
	1000 3500 1000 4550
Connection ~ 5250 3500
Wire Wire Line
	5150 3400 900  3400
Wire Wire Line
	900  3400 900  4550
Connection ~ 5150 3400
Wire Wire Line
	5050 3300 800  3300
Wire Wire Line
	800  3300 800  4550
Connection ~ 5050 3300
$Comp
L power:VCC #PWR0247
U 1 1 5DAD2B0E
P 12050 1850
F 0 "#PWR0247" H 12050 1700 50  0001 C CNN
F 1 "VCC" H 12067 2023 50  0000 C CNN
F 2 "" H 12050 1850 50  0001 C CNN
F 3 "" H 12050 1850 50  0001 C CNN
	1    12050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 2100 11950 2000
Wire Wire Line
	11950 2000 12050 2000
Wire Wire Line
	12150 2000 12150 2100
Wire Wire Line
	12050 1850 12050 2000
Connection ~ 12050 2000
Wire Wire Line
	12050 2000 12150 2000
Wire Wire Line
	7400 5000 7400 6150
NoConn ~ 5350 5600
NoConn ~ 5450 5600
NoConn ~ 5550 5600
NoConn ~ 5650 5600
NoConn ~ 5750 5600
$Comp
L power:VCC #PWR0144
U 1 1 5DA4F47F
P 4700 5000
F 0 "#PWR0144" H 4700 4850 50  0001 C CNN
F 1 "VCC" V 4718 5127 50  0000 L CNN
F 2 "" H 4700 5000 50  0001 C CNN
F 3 "" H 4700 5000 50  0001 C CNN
	1    4700 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 5000 4750 5000
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5DA5BB7B
P 4750 4900
F 0 "#FLG0102" H 4750 4975 50  0001 C CNN
F 1 "PWR_FLAG" H 4750 5073 50  0000 C CNN
F 2 "" H 4750 4900 50  0001 C CNN
F 3 "~" H 4750 4900 50  0001 C CNN
	1    4750 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4900 4750 5000
Connection ~ 4750 5000
Wire Wire Line
	4750 5000 4850 5000
$EndSCHEMATC
