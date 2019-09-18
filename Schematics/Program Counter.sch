EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 7 24
Title "Program Counter"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1050 4250 0    50   Input ~ 0
~J
$Comp
L 74xx:74LS161 U19
U 1 1 5D21151D
P 3000 2600
F 0 "U19" H 2750 3400 50  0000 C CNN
F 1 "74F161" H 2750 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3000 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 3000 2600 50  0001 C CNN
	1    3000 2600
	1    0    0    -1  
$EndComp
Text GLabel 1050 3950 0    50   Input ~ 0
~RST
Text GLabel 1050 4100 0    50   Input ~ 0
CE
Wire Wire Line
	2500 3100 2200 3100
Wire Wire Line
	2200 3100 2200 3950
Wire Wire Line
	4500 3950 4500 3100
Wire Wire Line
	6550 3100 6550 3950
Wire Wire Line
	8700 3100 8700 3950
Wire Wire Line
	2200 3950 1050 3950
Text GLabel 1050 3800 0    50   Input ~ 0
ControlClock
Wire Wire Line
	2500 2900 2100 2900
Wire Wire Line
	2100 2900 2100 3800
Wire Wire Line
	2100 3800 1050 3800
Wire Wire Line
	4400 2900 4400 3800
Wire Wire Line
	6450 2900 6450 3800
Wire Wire Line
	8600 2900 8600 3800
Wire Wire Line
	2000 2700 2000 2800
Wire Wire Line
	2000 4100 1050 4100
Wire Wire Line
	4300 2700 4300 4100
Wire Wire Line
	6350 2700 6350 4100
Wire Wire Line
	8500 2700 8500 4100
Wire Wire Line
	2000 2700 2500 2700
Wire Wire Line
	2000 2800 2500 2800
Connection ~ 2000 2800
Wire Wire Line
	2000 2800 2000 4100
$Comp
L power:VCC #PWR048
U 1 1 5D22033E
P 3000 1450
F 0 "#PWR048" H 3000 1300 50  0001 C CNN
F 1 "VCC" H 3017 1623 50  0000 C CNN
F 2 "" H 3000 1450 50  0001 C CNN
F 3 "" H 3000 1450 50  0001 C CNN
	1    3000 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1450 3000 1500
Wire Wire Line
	3000 1800 3000 1500
Wire Wire Line
	10250 1500 9300 1500
Connection ~ 9300 1500
$Comp
L power:GND #PWR049
U 1 1 5D228832
P 3000 3400
F 0 "#PWR049" H 3000 3150 50  0001 C CNN
F 1 "GND" H 3005 3227 50  0000 C CNN
F 2 "" H 3000 3400 50  0001 C CNN
F 3 "" H 3000 3400 50  0001 C CNN
	1    3000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2600 1900 2600
Wire Wire Line
	1900 2600 1900 4250
Wire Wire Line
	1900 4250 1050 4250
Wire Wire Line
	4200 2600 4200 4250
Wire Wire Line
	6250 2600 6250 4250
Wire Wire Line
	8400 2600 8400 4250
Entry Wire Line
	1900 2000 2000 2100
Entry Wire Line
	1900 2100 2000 2200
Entry Wire Line
	1900 2200 2000 2300
Entry Wire Line
	1900 2300 2000 2400
Entry Wire Line
	3950 2000 4050 2100
Entry Wire Line
	3950 2100 4050 2200
Entry Wire Line
	3950 2200 4050 2300
Entry Wire Line
	3950 2300 4050 2400
Wire Wire Line
	2000 2100 2500 2100
Wire Wire Line
	2500 2200 2000 2200
Wire Wire Line
	2000 2300 2500 2300
Wire Wire Line
	2500 2400 2000 2400
Entry Wire Line
	6050 2000 6150 2100
Entry Wire Line
	6050 2100 6150 2200
Entry Wire Line
	6050 2200 6150 2300
Entry Wire Line
	6050 2300 6150 2400
Entry Wire Line
	8150 2100 8250 2200
Entry Wire Line
	8150 2200 8250 2300
Entry Wire Line
	8150 2300 8250 2400
Text Label 2000 2100 0    50   ~ 0
AddressBus0
Text Label 2000 2200 0    50   ~ 0
AddressBus1
Text Label 2000 2300 0    50   ~ 0
AddressBus2
Text Label 2000 2400 0    50   ~ 0
AddressBus3
Text Label 4050 2100 0    50   ~ 0
AddressBus4
Text Label 4050 2200 0    50   ~ 0
AddressBus5
Text Label 4050 2300 0    50   ~ 0
AddressBus6
Text Label 4050 2400 0    50   ~ 0
AddressBus7
Text Label 6150 2100 0    50   ~ 0
AddressBus8
Text Label 6150 2200 0    50   ~ 0
AddressBus9
Text Label 6150 2300 0    50   ~ 0
AddressBus10
Text Label 6150 2400 0    50   ~ 0
AddressBus11
Entry Wire Line
	8150 2000 8250 2100
Text Label 8250 2100 0    50   ~ 0
AddressBus12
Text Label 8250 2200 0    50   ~ 0
AddressBus13
Text Label 8250 2300 0    50   ~ 0
AddressBus14
Text Label 8250 2400 0    50   ~ 0
AddressBus15
Entry Wire Line
	3700 2100 3800 2000
Entry Wire Line
	3700 2200 3800 2100
Entry Wire Line
	3700 2300 3800 2200
Entry Wire Line
	3700 2400 3800 2300
Wire Wire Line
	3700 2400 3500 2400
Wire Wire Line
	3700 2300 3500 2300
Wire Wire Line
	3700 2200 3500 2200
Wire Wire Line
	3700 2100 3500 2100
Text Label 3500 2100 0    50   ~ 0
PC0
Text Label 3500 2200 0    50   ~ 0
PC1
Wire Wire Line
	1900 4250 4200 4250
Connection ~ 1900 4250
Wire Wire Line
	2000 4100 4300 4100
Connection ~ 2000 4100
Wire Wire Line
	2200 3950 4500 3950
Connection ~ 2200 3950
Wire Wire Line
	2100 3800 4400 3800
Connection ~ 2100 3800
Wire Wire Line
	10250 2600 10250 1500
Wire Wire Line
	3000 1500 5100 1500
Connection ~ 3000 1500
Entry Wire Line
	5800 2100 5900 2000
Entry Wire Line
	5800 2200 5900 2100
Entry Wire Line
	5800 2300 5900 2200
Entry Wire Line
	5800 2400 5900 2300
Text Label 5600 2100 0    50   ~ 0
PC4
Text Label 5600 2200 0    50   ~ 0
PC5
Text Label 5600 2300 0    50   ~ 0
PC6
Text Label 5600 2400 0    50   ~ 0
PC7
Wire Wire Line
	4200 4250 6250 4250
Connection ~ 4200 4250
Wire Wire Line
	4300 4100 6350 4100
Connection ~ 4300 4100
Wire Wire Line
	4500 3950 6550 3950
Connection ~ 4500 3950
Wire Wire Line
	4400 3800 6450 3800
Connection ~ 4400 3800
Wire Wire Line
	5100 1500 7200 1500
Connection ~ 5100 1500
Entry Wire Line
	7900 2100 8000 2000
Entry Wire Line
	7900 2200 8000 2100
Entry Wire Line
	7900 2300 8000 2200
Entry Wire Line
	7900 2400 8000 2300
Text Label 7700 2100 0    50   ~ 0
PC8
Text Label 7700 2200 0    50   ~ 0
PC9
Text Label 7700 2300 0    50   ~ 0
PC10
Text Label 7700 2400 0    50   ~ 0
PC11
Wire Wire Line
	6250 4250 8400 4250
Connection ~ 6250 4250
Wire Wire Line
	6350 4100 8500 4100
Connection ~ 6350 4100
Wire Wire Line
	6550 3950 8700 3950
Connection ~ 6550 3950
Wire Wire Line
	6450 3800 8600 3800
Connection ~ 6450 3800
Wire Wire Line
	7200 1500 9300 1500
Connection ~ 7200 1500
Entry Wire Line
	10050 2100 10150 2000
Entry Wire Line
	10050 2200 10150 2100
Entry Wire Line
	10050 2300 10150 2200
Entry Wire Line
	10050 2400 10150 2300
Text Label 9850 2100 0    50   ~ 0
PC12
Text Label 9850 2200 0    50   ~ 0
PC13
Text Label 9850 2300 0    50   ~ 0
PC14
Text Label 9850 2400 0    50   ~ 0
PC15
Wire Bus Line
	1350 1600 1900 1600
Connection ~ 1900 1600
Wire Bus Line
	1900 1600 3950 1600
Connection ~ 3950 1600
Wire Bus Line
	3950 1600 6050 1600
Connection ~ 6050 1600
Wire Bus Line
	6050 1600 8150 1600
Wire Bus Line
	3800 1700 5900 1700
Connection ~ 8000 1700
Wire Bus Line
	8000 1700 10150 1700
Connection ~ 5900 1700
Wire Bus Line
	5900 1700 8000 1700
Connection ~ 3000 3400
$Comp
L Device:LED D13
U 1 1 5D4B377D
P 3600 5350
F 0 "D13" V 3639 5233 50  0000 R CNN
F 1 "LED" V 3548 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 3600 5350 50  0001 C CNN
F 3 "~" H 3600 5350 50  0001 C CNN
	1    3600 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D14
U 1 1 5D4B4437
P 3950 5350
F 0 "D14" V 3989 5233 50  0000 R CNN
F 1 "LED" V 3898 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 3950 5350 50  0001 C CNN
F 3 "~" H 3950 5350 50  0001 C CNN
	1    3950 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D15
U 1 1 5D4B4851
P 4300 5350
F 0 "D15" V 4339 5233 50  0000 R CNN
F 1 "LED" V 4248 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4300 5350 50  0001 C CNN
F 3 "~" H 4300 5350 50  0001 C CNN
	1    4300 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D16
U 1 1 5D4B4D53
P 4650 5350
F 0 "D16" V 4689 5233 50  0000 R CNN
F 1 "LED" V 4598 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4650 5350 50  0001 C CNN
F 3 "~" H 4650 5350 50  0001 C CNN
	1    4650 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D12
U 1 1 5D4B52E6
P 3250 5350
F 0 "D12" V 3289 5233 50  0000 R CNN
F 1 "LED" V 3198 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 3250 5350 50  0001 C CNN
F 3 "~" H 3250 5350 50  0001 C CNN
	1    3250 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D11
U 1 1 5D4B5B31
P 2900 5350
F 0 "D11" V 2939 5233 50  0000 R CNN
F 1 "LED" V 2848 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2900 5350 50  0001 C CNN
F 3 "~" H 2900 5350 50  0001 C CNN
	1    2900 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D10
U 1 1 5D4B60E1
P 2550 5350
F 0 "D10" V 2589 5233 50  0000 R CNN
F 1 "LED" V 2498 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2550 5350 50  0001 C CNN
F 3 "~" H 2550 5350 50  0001 C CNN
	1    2550 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D17
U 1 1 5D4B6A71
P 5000 5350
F 0 "D17" V 5039 5233 50  0000 R CNN
F 1 "LED" V 4948 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 5000 5350 50  0001 C CNN
F 3 "~" H 5000 5350 50  0001 C CNN
	1    5000 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D18
U 1 1 5D4B6FAD
P 5350 5350
F 0 "D18" V 5389 5233 50  0000 R CNN
F 1 "LED" V 5298 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 5350 5350 50  0001 C CNN
F 3 "~" H 5350 5350 50  0001 C CNN
	1    5350 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D19
U 1 1 5D4B74CC
P 5700 5350
F 0 "D19" V 5739 5233 50  0000 R CNN
F 1 "LED" V 5648 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 5700 5350 50  0001 C CNN
F 3 "~" H 5700 5350 50  0001 C CNN
	1    5700 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D20
U 1 1 5D4B7716
P 6050 5350
F 0 "D20" V 6089 5233 50  0000 R CNN
F 1 "LED" V 5998 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6050 5350 50  0001 C CNN
F 3 "~" H 6050 5350 50  0001 C CNN
	1    6050 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D21
U 1 1 5D4B7BFB
P 6400 5350
F 0 "D21" V 6439 5233 50  0000 R CNN
F 1 "LED" V 6348 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6400 5350 50  0001 C CNN
F 3 "~" H 6400 5350 50  0001 C CNN
	1    6400 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D22
U 1 1 5D4B80E0
P 6750 5350
F 0 "D22" V 6789 5233 50  0000 R CNN
F 1 "LED" V 6698 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6750 5350 50  0001 C CNN
F 3 "~" H 6750 5350 50  0001 C CNN
	1    6750 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D23
U 1 1 5D4B8412
P 7100 5350
F 0 "D23" V 7139 5233 50  0000 R CNN
F 1 "LED" V 7048 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 7100 5350 50  0001 C CNN
F 3 "~" H 7100 5350 50  0001 C CNN
	1    7100 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D24
U 1 1 5D4B87F2
P 7450 5350
F 0 "D24" V 7489 5233 50  0000 R CNN
F 1 "LED" V 7398 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 7450 5350 50  0001 C CNN
F 3 "~" H 7450 5350 50  0001 C CNN
	1    7450 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5D4B9345
P 2200 5800
F 0 "R9" H 2268 5846 50  0000 L CNN
F 1 "220Ω" H 2268 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2240 5790 50  0001 C CNN
F 3 "~" H 2200 5800 50  0001 C CNN
	1    2200 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5D4B9B45
P 2550 5800
F 0 "R10" H 2618 5846 50  0000 L CNN
F 1 "220Ω" H 2618 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2590 5790 50  0001 C CNN
F 3 "~" H 2550 5800 50  0001 C CNN
	1    2550 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D4B9F5F
P 2900 5800
F 0 "R11" H 2968 5846 50  0000 L CNN
F 1 "220Ω" H 2968 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2940 5790 50  0001 C CNN
F 3 "~" H 2900 5800 50  0001 C CNN
	1    2900 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5D4BA4B8
P 3250 5800
F 0 "R12" H 3318 5846 50  0000 L CNN
F 1 "220Ω" H 3318 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3290 5790 50  0001 C CNN
F 3 "~" H 3250 5800 50  0001 C CNN
	1    3250 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5D4BAA4B
P 3600 5800
F 0 "R13" H 3668 5846 50  0000 L CNN
F 1 "220Ω" H 3668 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3640 5790 50  0001 C CNN
F 3 "~" H 3600 5800 50  0001 C CNN
	1    3600 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5D4BB101
P 3950 5800
F 0 "R14" H 4018 5846 50  0000 L CNN
F 1 "220Ω" H 4018 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3990 5790 50  0001 C CNN
F 3 "~" H 3950 5800 50  0001 C CNN
	1    3950 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5D4BB48A
P 4300 5800
F 0 "R15" H 4368 5846 50  0000 L CNN
F 1 "220Ω" H 4368 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4340 5790 50  0001 C CNN
F 3 "~" H 4300 5800 50  0001 C CNN
	1    4300 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5D4BB9E3
P 4650 5800
F 0 "R16" H 4718 5846 50  0000 L CNN
F 1 "220Ω" H 4718 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4690 5790 50  0001 C CNN
F 3 "~" H 4650 5800 50  0001 C CNN
	1    4650 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5D4BBDA6
P 5000 5800
F 0 "R17" H 5068 5846 50  0000 L CNN
F 1 "220Ω" H 5068 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5040 5790 50  0001 C CNN
F 3 "~" H 5000 5800 50  0001 C CNN
	1    5000 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5D4BC0D8
P 5350 5800
F 0 "R18" H 5418 5846 50  0000 L CNN
F 1 "220Ω" H 5418 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5390 5790 50  0001 C CNN
F 3 "~" H 5350 5800 50  0001 C CNN
	1    5350 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5D4BC49B
P 5700 5800
F 0 "R19" H 5768 5846 50  0000 L CNN
F 1 "220Ω" H 5768 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5740 5790 50  0001 C CNN
F 3 "~" H 5700 5800 50  0001 C CNN
	1    5700 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5D4BC807
P 6050 5800
F 0 "R20" H 6118 5846 50  0000 L CNN
F 1 "220Ω" H 6118 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6090 5790 50  0001 C CNN
F 3 "~" H 6050 5800 50  0001 C CNN
	1    6050 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5D4BCBAD
P 6400 5800
F 0 "R21" H 6468 5846 50  0000 L CNN
F 1 "220Ω" H 6468 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6440 5790 50  0001 C CNN
F 3 "~" H 6400 5800 50  0001 C CNN
	1    6400 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 5D4BCF36
P 6750 5800
F 0 "R22" H 6818 5846 50  0000 L CNN
F 1 "220Ω" H 6818 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6790 5790 50  0001 C CNN
F 3 "~" H 6750 5800 50  0001 C CNN
	1    6750 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 5D4BD19D
P 7100 5800
F 0 "R23" H 7168 5846 50  0000 L CNN
F 1 "220Ω" H 7168 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7140 5790 50  0001 C CNN
F 3 "~" H 7100 5800 50  0001 C CNN
	1    7100 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 5D4BD509
P 7450 5800
F 0 "R24" H 7518 5846 50  0000 L CNN
F 1 "220Ω" H 7518 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7490 5790 50  0001 C CNN
F 3 "~" H 7450 5800 50  0001 C CNN
	1    7450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5950 2200 6050
Wire Wire Line
	7450 6050 7450 5950
Wire Wire Line
	2550 5950 2550 6050
Connection ~ 2550 6050
Wire Wire Line
	2550 6050 2900 6050
Wire Wire Line
	2900 5950 2900 6050
Connection ~ 2900 6050
Wire Wire Line
	2900 6050 3250 6050
Wire Wire Line
	3250 5950 3250 6050
Connection ~ 3250 6050
Wire Wire Line
	3250 6050 3600 6050
Wire Wire Line
	3600 5950 3600 6050
Connection ~ 3600 6050
Wire Wire Line
	3600 6050 3950 6050
Wire Wire Line
	3950 5950 3950 6050
Connection ~ 3950 6050
Wire Wire Line
	3950 6050 4300 6050
Wire Wire Line
	4300 5950 4300 6050
Connection ~ 4300 6050
Wire Wire Line
	4300 6050 4650 6050
Wire Wire Line
	4650 5950 4650 6050
Connection ~ 4650 6050
Wire Wire Line
	4650 6050 5000 6050
Wire Wire Line
	5000 5950 5000 6050
Connection ~ 5000 6050
Wire Wire Line
	5000 6050 5350 6050
Wire Wire Line
	5350 5950 5350 6050
Connection ~ 5350 6050
Wire Wire Line
	5350 6050 5700 6050
Wire Wire Line
	5700 5950 5700 6050
Connection ~ 5700 6050
Wire Wire Line
	5700 6050 6050 6050
Wire Wire Line
	6050 5950 6050 6050
Connection ~ 6050 6050
Wire Wire Line
	6050 6050 6400 6050
Wire Wire Line
	6400 5950 6400 6050
Connection ~ 6400 6050
Wire Wire Line
	6400 6050 6750 6050
Wire Wire Line
	6750 5950 6750 6050
Connection ~ 6750 6050
Wire Wire Line
	6750 6050 7100 6050
Wire Wire Line
	7100 5950 7100 6050
Connection ~ 7100 6050
Wire Wire Line
	7100 6050 7450 6050
$Comp
L power:GND #PWR047
U 1 1 5D533285
P 2400 6050
F 0 "#PWR047" H 2400 5800 50  0001 C CNN
F 1 "GND" H 2405 5877 50  0000 C CNN
F 2 "" H 2400 6050 50  0001 C CNN
F 3 "" H 2400 6050 50  0001 C CNN
	1    2400 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5500 2550 5650
Wire Wire Line
	2900 5650 2900 5500
Wire Wire Line
	3250 5500 3250 5650
Wire Wire Line
	3600 5650 3600 5500
Wire Wire Line
	3950 5500 3950 5650
Wire Wire Line
	4300 5650 4300 5500
Wire Wire Line
	4650 5500 4650 5650
Wire Wire Line
	5000 5650 5000 5500
Wire Wire Line
	5350 5500 5350 5650
Wire Wire Line
	5700 5650 5700 5500
Wire Wire Line
	6050 5500 6050 5650
Wire Wire Line
	6400 5650 6400 5500
Wire Wire Line
	6750 5500 6750 5650
Wire Wire Line
	7100 5650 7100 5500
Wire Wire Line
	7450 5500 7450 5650
Entry Wire Line
	2550 5000 2650 4900
Entry Wire Line
	2900 5000 3000 4900
Entry Wire Line
	3250 5000 3350 4900
Entry Wire Line
	3600 5000 3700 4900
Entry Wire Line
	3950 5000 4050 4900
Entry Wire Line
	4300 5000 4400 4900
Entry Wire Line
	4650 5000 4750 4900
Entry Wire Line
	5000 5000 5100 4900
Entry Wire Line
	5350 5000 5450 4900
Entry Wire Line
	5700 5000 5800 4900
Entry Wire Line
	6050 5000 6150 4900
Entry Wire Line
	6400 5000 6500 4900
Entry Wire Line
	6750 5000 6850 4900
Entry Wire Line
	7100 5000 7200 4900
Entry Wire Line
	7450 5000 7550 4900
Wire Wire Line
	2550 5200 2550 5000
Wire Wire Line
	2900 5200 2900 5000
Wire Wire Line
	3250 5200 3250 5000
Wire Wire Line
	3600 5200 3600 5000
Wire Wire Line
	3950 5200 3950 5000
Wire Wire Line
	4300 5200 4300 5000
Wire Wire Line
	4650 5200 4650 5000
Wire Wire Line
	5000 5000 5000 5200
Wire Wire Line
	5350 5200 5350 5000
Wire Wire Line
	5700 5200 5700 5000
Wire Wire Line
	6050 5200 6050 5000
Wire Wire Line
	6400 5200 6400 5000
Wire Wire Line
	6750 5200 6750 5000
Wire Wire Line
	7100 5200 7100 5000
Wire Wire Line
	7450 5200 7450 5000
Text Label 7450 5100 0    50   ~ 0
PC0
Text Label 7100 5100 0    50   ~ 0
PC1
Text Label 6750 5100 0    50   ~ 0
PC2
Text Label 6400 5100 0    50   ~ 0
PC3
Text Label 6050 5100 0    50   ~ 0
PC4
Text Label 5700 5100 0    50   ~ 0
PC5
Text Label 5350 5100 0    50   ~ 0
PC6
Text Label 5000 5100 0    50   ~ 0
PC7
Text Label 4650 5100 0    50   ~ 0
PC8
Text Label 4300 5100 0    50   ~ 0
PC9
Text Label 3950 5100 0    50   ~ 0
PC10
Text Label 3600 5100 0    50   ~ 0
PC11
Text Label 3250 5100 0    50   ~ 0
PC12
Text Label 2900 5100 0    50   ~ 0
PC13
Text Label 2550 5100 0    50   ~ 0
PC14
Text GLabel 10050 4900 2    50   Output ~ 0
PC[0..15]
Wire Wire Line
	8800 2600 8400 2600
Wire Wire Line
	8800 2700 8500 2700
Wire Wire Line
	8800 2400 8250 2400
Wire Wire Line
	8250 2300 8800 2300
Wire Wire Line
	8800 2200 8250 2200
Wire Wire Line
	8250 2100 8800 2100
Wire Wire Line
	8800 2900 8600 2900
Wire Wire Line
	9300 1500 9300 1800
Wire Wire Line
	9800 2600 10250 2600
Wire Wire Line
	10050 2100 9800 2100
Wire Wire Line
	9800 2200 10050 2200
Wire Wire Line
	10050 2300 9800 2300
Wire Wire Line
	9800 2400 10050 2400
Wire Wire Line
	8800 3100 8700 3100
$Comp
L 74xx:74LS161 U22
U 1 1 5D217C94
P 9300 2600
F 0 "U22" H 9050 3400 50  0000 C CNN
F 1 "74F161" H 9050 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9300 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 9300 2600 50  0001 C CNN
	1    9300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2600 6250 2600
Wire Wire Line
	7200 3400 9300 3400
Connection ~ 7200 3400
Wire Wire Line
	6700 2700 6350 2700
Wire Wire Line
	6700 2400 6150 2400
Wire Wire Line
	6150 2300 6700 2300
Wire Wire Line
	6700 2200 6150 2200
Wire Wire Line
	6700 2900 6450 2900
Wire Wire Line
	7200 1800 7200 1500
Wire Wire Line
	7900 2100 7700 2100
Wire Wire Line
	7900 2200 7700 2200
Wire Wire Line
	7900 2300 7700 2300
Wire Wire Line
	7900 2400 7700 2400
Wire Wire Line
	6700 3100 6550 3100
$Comp
L 74xx:74LS161 U21
U 1 1 5D21617C
P 7200 2600
F 0 "U21" H 6950 3400 50  0000 C CNN
F 1 "74F161" H 6950 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7200 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 7200 2600 50  0001 C CNN
	1    7200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2600 4200 2600
Wire Wire Line
	3000 3400 5100 3400
Connection ~ 5100 3400
Wire Wire Line
	5100 3400 7200 3400
Wire Wire Line
	4600 2700 4300 2700
Wire Wire Line
	4050 2400 4600 2400
Wire Wire Line
	4600 2300 4050 2300
Wire Wire Line
	4050 2200 4600 2200
Wire Wire Line
	4600 2100 4050 2100
Wire Wire Line
	4600 2900 4400 2900
Wire Wire Line
	5100 1800 5100 1500
Wire Wire Line
	5800 2100 5600 2100
Wire Wire Line
	5800 2200 5600 2200
Wire Wire Line
	5800 2300 5600 2300
Wire Wire Line
	5800 2400 5600 2400
Wire Wire Line
	4500 3100 4600 3100
$Comp
L 74xx:74LS161 U20
U 1 1 5D214E57
P 5100 2600
F 0 "U20" H 4850 3400 50  0000 C CNN
F 1 "74F161" H 4850 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5100 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 5100 2600 50  0001 C CNN
	1    5100 2600
	1    0    0    -1  
$EndComp
Text Label 3500 2400 0    50   ~ 0
PC3
Text Label 3500 2300 0    50   ~ 0
PC2
Text GLabel 1350 1600 0    50   Input ~ 0
AddressBus[0..15]
Wire Wire Line
	8100 2800 8100 2600
Wire Wire Line
	8100 2600 7700 2600
Wire Wire Line
	8100 2800 8800 2800
Wire Wire Line
	5600 2600 6000 2600
Wire Wire Line
	6000 2600 6000 2800
Wire Wire Line
	6000 2800 6700 2800
Wire Wire Line
	3500 2600 3900 2600
Wire Wire Line
	3900 2600 3900 2800
Wire Wire Line
	3900 2800 4600 2800
Wire Wire Line
	2200 5500 2200 5650
Entry Wire Line
	2200 5000 2300 4900
$Comp
L Device:LED D9
U 1 1 5D4B6552
P 2200 5350
F 0 "D9" V 2239 5233 50  0000 R CNN
F 1 "LED" V 2148 5233 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2200 5350 50  0001 C CNN
F 3 "~" H 2200 5350 50  0001 C CNN
	1    2200 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 5000 2200 5200
Text Label 2200 5100 0    50   ~ 0
PC15
Wire Bus Line
	9000 4900 9000 3850
Wire Bus Line
	9000 3850 10150 3850
Connection ~ 9000 4900
Wire Bus Line
	9000 4900 10050 4900
$Comp
L Device:C C17
U 1 1 5DCB8122
P 850 7500
F 0 "C17" H 965 7546 50  0000 L CNN
F 1 "100nF" H 965 7455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 888 7350 50  0001 C CNN
F 3 "~" H 850 7500 50  0001 C CNN
	1    850  7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5DCB8128
P 1350 7500
F 0 "C18" H 1465 7546 50  0000 L CNN
F 1 "100nF" H 1465 7455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1388 7350 50  0001 C CNN
F 3 "~" H 1350 7500 50  0001 C CNN
	1    1350 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5DCB812E
P 1850 7500
F 0 "C19" H 1965 7546 50  0000 L CNN
F 1 "100nF" H 1965 7455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1888 7350 50  0001 C CNN
F 3 "~" H 1850 7500 50  0001 C CNN
	1    1850 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5DCB8134
P 2350 7500
F 0 "C20" H 2465 7546 50  0000 L CNN
F 1 "100nF" H 2465 7455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2388 7350 50  0001 C CNN
F 3 "~" H 2350 7500 50  0001 C CNN
	1    2350 7500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR046
U 1 1 5DCB8140
P 850 7650
F 0 "#PWR046" H 850 7400 50  0001 C CNN
F 1 "GND" H 855 7477 50  0000 C CNN
F 2 "" H 850 7650 50  0001 C CNN
F 3 "" H 850 7650 50  0001 C CNN
	1    850  7650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR045
U 1 1 5DCB8146
P 850 7350
F 0 "#PWR045" H 850 7200 50  0001 C CNN
F 1 "VCC" H 867 7523 50  0000 C CNN
F 2 "" H 850 7350 50  0001 C CNN
F 3 "" H 850 7350 50  0001 C CNN
	1    850  7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  7350 1350 7350
Connection ~ 850  7350
Wire Wire Line
	1350 7350 1850 7350
Connection ~ 1350 7350
Wire Wire Line
	1850 7350 2350 7350
Connection ~ 1850 7350
Wire Wire Line
	2350 7650 1850 7650
Wire Wire Line
	1850 7650 1350 7650
Connection ~ 1850 7650
Wire Wire Line
	1350 7650 850  7650
Connection ~ 1350 7650
Connection ~ 850  7650
Connection ~ 2400 6050
Wire Wire Line
	2400 6050 2550 6050
Wire Wire Line
	2200 6050 2400 6050
Wire Wire Line
	6700 2100 6150 2100
Wire Bus Line
	8000 1700 8000 2300
Wire Bus Line
	5900 1700 5900 2300
Wire Bus Line
	3800 1700 3800 2300
Wire Bus Line
	8150 1600 8150 2300
Wire Bus Line
	6050 1600 6050 2300
Wire Bus Line
	3950 1600 3950 2300
Wire Bus Line
	1900 1600 1900 2300
Wire Bus Line
	10150 1700 10150 3850
Wire Bus Line
	2300 4900 9000 4900
$EndSCHEMATC
