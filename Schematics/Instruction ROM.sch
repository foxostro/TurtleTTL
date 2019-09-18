EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 10 24
Title "Instruction ROM"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "16-bit instructions are read from ROM at the address specified by the Program Counter."
$EndDescr
$Comp
L Memory_EEPROM:GLS29EE010 U26
U 1 1 5D23BFD4
P 4500 2000
F 0 "U26" H 4800 2200 50  0000 C CNN
F 1 "GLS29EE010" H 4800 2100 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_Socket" H 4500 2000 50  0001 C CNN
F 3 "" H 4500 2000 50  0001 C CNN
	1    4500 2000
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0158
U 1 1 5D241E73
P 4500 1000
F 0 "#PWR0158" H 4500 850 50  0001 C CNN
F 1 "VCC" H 4517 1173 50  0000 C CNN
F 2 "" H 4500 1000 50  0001 C CNN
F 3 "" H 4500 1000 50  0001 C CNN
	1    4500 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1000 4500 1500
Wire Wire Line
	6550 1900 6550 1500
Connection ~ 4500 1500
Wire Wire Line
	4500 1500 4500 1900
$Comp
L power:GND #PWR0159
U 1 1 5D2423FD
P 4500 5000
F 0 "#PWR0159" H 4500 4750 50  0001 C CNN
F 1 "GND" H 4505 4827 50  0000 C CNN
F 2 "" H 4500 5000 50  0001 C CNN
F 3 "" H 4500 5000 50  0001 C CNN
	1    4500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5000 4500 4500
Wire Wire Line
	6550 4500 6550 4300
Connection ~ 4500 4500
Wire Wire Line
	4500 4500 4500 4300
Entry Wire Line
	5500 2100 5600 2000
Entry Wire Line
	5500 2200 5600 2100
Entry Wire Line
	5500 2300 5600 2200
Entry Wire Line
	5500 2400 5600 2300
Entry Wire Line
	5500 2500 5600 2400
Entry Wire Line
	5500 2600 5600 2500
Entry Wire Line
	5500 2700 5600 2600
Entry Wire Line
	5500 2800 5600 2700
Entry Wire Line
	5500 2900 5600 2800
Entry Wire Line
	5500 3000 5600 2900
Entry Wire Line
	5500 3100 5600 3000
Entry Wire Line
	5500 3200 5600 3100
Entry Wire Line
	5500 3300 5600 3200
Entry Wire Line
	5500 3400 5600 3300
Entry Wire Line
	5500 3500 5600 3400
Entry Wire Line
	5500 3600 5600 3500
Text Label 5500 2100 2    50   ~ 0
PC_IF0
Text Label 5500 2200 2    50   ~ 0
PC_IF1
Text Label 5500 2300 2    50   ~ 0
PC_IF2
Text Label 5500 2400 2    50   ~ 0
PC_IF3
Text Label 5500 2500 2    50   ~ 0
PC_IF4
Text Label 5500 2600 2    50   ~ 0
PC_IF5
Text Label 5500 2700 2    50   ~ 0
PC_IF6
Text Label 5500 2800 2    50   ~ 0
PC_IF7
Text Label 5500 2900 2    50   ~ 0
PC_IF8
Text Label 5500 3000 2    50   ~ 0
PC_IF9
Text Label 5500 3100 2    50   ~ 0
PC_IF10
Text Label 5500 3200 2    50   ~ 0
PC_IF11
Text Label 5500 3300 2    50   ~ 0
PC_IF12
Text Label 5500 3400 2    50   ~ 0
PC_IF13
Text Label 5500 3500 2    50   ~ 0
PC_IF14
Text Label 5500 3600 2    50   ~ 0
PC_IF15
Wire Wire Line
	5150 3900 5700 3900
Wire Wire Line
	5900 4000 5600 4000
Wire Wire Line
	5150 4100 5700 4100
Wire Wire Line
	5600 4000 5600 4500
Connection ~ 5600 4000
Wire Wire Line
	5600 4000 5150 4000
Connection ~ 5600 4500
Wire Wire Line
	5600 4500 5700 4500
Wire Wire Line
	5700 4100 5700 4500
Connection ~ 5700 4100
Wire Wire Line
	5700 4100 5900 4100
Connection ~ 5700 4500
Wire Wire Line
	5700 4500 6550 4500
Wire Wire Line
	5700 3900 5700 1500
Connection ~ 5700 3900
Wire Wire Line
	5700 3900 5900 3900
Connection ~ 5700 1500
Wire Wire Line
	5700 1500 4500 1500
Wire Wire Line
	5500 4500 5600 4500
Wire Wire Line
	4500 4500 5500 4500
Connection ~ 5500 3700
Wire Wire Line
	5900 3700 5500 3700
Connection ~ 5500 4500
Wire Wire Line
	5150 3700 5500 3700
Wire Wire Line
	5500 3700 5500 4500
Entry Wire Line
	7450 2100 7550 2000
Entry Wire Line
	7450 2200 7550 2100
Entry Wire Line
	7450 2400 7550 2300
Entry Wire Line
	7450 2500 7550 2400
Entry Wire Line
	7450 2600 7550 2500
Entry Wire Line
	7450 2700 7550 2600
Entry Wire Line
	7450 2800 7550 2700
Entry Wire Line
	7450 2300 7550 2200
Wire Wire Line
	7150 2100 7450 2100
Wire Wire Line
	7450 2200 7150 2200
Wire Wire Line
	7150 2300 7450 2300
Wire Wire Line
	7450 2400 7150 2400
Wire Wire Line
	7150 2500 7450 2500
Wire Wire Line
	7450 2600 7150 2600
Wire Wire Line
	7150 2700 7450 2700
Wire Wire Line
	7450 2800 7150 2800
Text Label 7450 2100 2    50   ~ 0
IROM8
Text Label 7450 2200 2    50   ~ 0
IROM9
Text Label 3900 2500 2    50   ~ 0
IROM4
Text Label 3900 2600 2    50   ~ 0
IROM5
Text Label 3900 2700 2    50   ~ 0
IROM6
Text Label 3900 2800 2    50   ~ 0
IROM7
Text Label 7450 2300 2    50   ~ 0
IROM10
Text Label 7450 2400 2    50   ~ 0
IROM11
Text Label 7450 2500 2    50   ~ 0
IROM12
Text Label 7450 2600 2    50   ~ 0
IROM13
Text Label 7450 2700 2    50   ~ 0
IROM14
Text Label 7450 2800 2    50   ~ 0
IROM15
Text GLabel 8450 1700 2    50   Output ~ 0
IROM[0..15]
Text GLabel 1500 1600 0    50   Input ~ 0
PC_IF[0..15]
Wire Wire Line
	6550 1500 5700 1500
Text Label 3900 2400 2    50   ~ 0
IROM3
Text Label 3900 2300 2    50   ~ 0
IROM2
Text Label 3900 2200 2    50   ~ 0
IROM1
Text Label 3900 2100 2    50   ~ 0
IROM0
Wire Wire Line
	3600 2100 3900 2100
Wire Wire Line
	3900 2800 3600 2800
Wire Wire Line
	3600 2700 3900 2700
Wire Wire Line
	3900 2600 3600 2600
Wire Wire Line
	3600 2500 3900 2500
Wire Wire Line
	3900 2400 3600 2400
Wire Wire Line
	3600 2300 3900 2300
Wire Wire Line
	3900 2200 3600 2200
Entry Wire Line
	3500 2000 3600 2100
Entry Wire Line
	3500 2700 3600 2800
Entry Wire Line
	3500 2600 3600 2700
Entry Wire Line
	3500 2500 3600 2600
Entry Wire Line
	3500 2400 3600 2500
Entry Wire Line
	3500 2300 3600 2400
Entry Wire Line
	3500 2200 3600 2300
Entry Wire Line
	3500 2100 3600 2200
Wire Bus Line
	3500 1700 7550 1700
Wire Bus Line
	1500 1600 5600 1600
Connection ~ 7550 1700
Wire Bus Line
	7550 1700 8450 1700
$Comp
L Device:C C23
U 1 1 5DCD89FF
P 1150 7300
F 0 "C23" H 1265 7346 50  0000 L CNN
F 1 "100nF" H 1265 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1188 7150 50  0001 C CNN
F 3 "~" H 1150 7300 50  0001 C CNN
	1    1150 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 5DCD8A05
P 1650 7300
F 0 "C24" H 1765 7346 50  0000 L CNN
F 1 "100nF" H 1765 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1688 7150 50  0001 C CNN
F 3 "~" H 1650 7300 50  0001 C CNN
	1    1650 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0160
U 1 1 5DCD8A1D
P 1150 7450
F 0 "#PWR0160" H 1150 7200 50  0001 C CNN
F 1 "GND" H 1155 7277 50  0000 C CNN
F 2 "" H 1150 7450 50  0001 C CNN
F 3 "" H 1150 7450 50  0001 C CNN
	1    1150 7450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0161
U 1 1 5DCD8A23
P 1150 7150
F 0 "#PWR0161" H 1150 7000 50  0001 C CNN
F 1 "VCC" H 1167 7323 50  0000 C CNN
F 2 "" H 1150 7150 50  0001 C CNN
F 3 "" H 1150 7150 50  0001 C CNN
	1    1150 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 7150 1650 7150
Connection ~ 1150 7150
Wire Wire Line
	1650 7450 1150 7450
Connection ~ 1150 7450
$Comp
L Memory_EEPROM:GLS29EE010 U27
U 1 1 5D23ED7B
P 6550 2000
F 0 "U27" H 6250 2200 50  0000 C CNN
F 1 "GLS29EE010" H 6250 2100 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_Socket" H 6550 2000 50  0001 C CNN
F 3 "" H 6550 2000 50  0001 C CNN
	1    6550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3600 5900 3600
Wire Wire Line
	5150 2100 5900 2100
Wire Wire Line
	5150 2200 5900 2200
Wire Wire Line
	5150 2300 5900 2300
Wire Wire Line
	5150 2400 5900 2400
Wire Wire Line
	5150 2500 5900 2500
Wire Wire Line
	5150 2600 5900 2600
Wire Wire Line
	5150 2700 5900 2700
Wire Wire Line
	5150 2800 5900 2800
Wire Wire Line
	5150 2900 5900 2900
Wire Wire Line
	5150 3000 5900 3000
Wire Wire Line
	5150 3100 5900 3100
Wire Wire Line
	5150 3200 5900 3200
Wire Wire Line
	5150 3300 5900 3300
Wire Wire Line
	5150 3400 5900 3400
Wire Wire Line
	5150 3500 5900 3500
Wire Bus Line
	7550 1700 7550 2700
Wire Bus Line
	3500 1700 3500 2700
Wire Bus Line
	5600 1600 5600 3500
$EndSCHEMATC
