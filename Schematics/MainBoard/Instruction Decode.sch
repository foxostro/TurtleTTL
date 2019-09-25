EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 14 22
Title "Instruction Decode"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "The Instruction Decoder decodes an eight bit opcode into a sixteen-bit control word."
$EndDescr
$Comp
L Memory_EEPROM:GLS29EE010 U?
U 1 1 5DB5EC09
P 2900 1250
AR Path="/5D2C0AA0/5DB5EC09" Ref="U?"  Part="1" 
AR Path="/5D2C0B92/5DB5EC09" Ref="U43"  Part="1" 
F 0 "U43" H 2550 1450 50  0000 C CNN
F 1 "GLS29EE010" H 2550 1350 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_Socket" H 2900 1250 50  0001 C CNN
F 3 "" H 2900 1250 50  0001 C CNN
	1    2900 1250
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:GLS29EE010 U?
U 1 1 5DB5EC5B
P 2900 4200
AR Path="/5D2C0AA0/5DB5EC5B" Ref="U?"  Part="1" 
AR Path="/5D2C0B92/5DB5EC5B" Ref="U44"  Part="1" 
F 0 "U44" H 2550 4400 50  0000 C CNN
F 1 "GLS29EE010" H 2550 4300 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_Socket" H 2900 4200 50  0001 C CNN
F 3 "" H 2900 4200 50  0001 C CNN
	1    2900 4200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U?
U 1 1 5DB613F7
P 8150 4950
AR Path="/5D2C14C3/5DB613F7" Ref="U?"  Part="1" 
AR Path="/5D2C0B92/5DB613F7" Ref="U47"  Part="1" 
F 0 "U47" H 7900 5750 50  0000 C CNN
F 1 "74F574" H 7900 5650 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 8150 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 8150 4950 50  0001 C CNN
	1    8150 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 5DB6758A
P 8150 5750
F 0 "#PWR0131" H 8150 5500 50  0001 C CNN
F 1 "GND" H 8155 5577 50  0000 C CNN
F 2 "" H 8150 5750 50  0001 C CNN
F 3 "" H 8150 5750 50  0001 C CNN
	1    8150 5750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0130
U 1 1 5DB6804E
P 8150 4150
F 0 "#PWR0130" H 8150 4000 50  0001 C CNN
F 1 "VCC" H 8167 4323 50  0000 C CNN
F 2 "" H 8150 4150 50  0001 C CNN
F 3 "" H 8150 4150 50  0001 C CNN
	1    8150 4150
	1    0    0    -1  
$EndComp
Entry Wire Line
	7350 5250 7450 5150
Entry Wire Line
	7350 5150 7450 5050
Entry Wire Line
	7350 4550 7450 4450
Entry Wire Line
	7350 4650 7450 4550
Entry Wire Line
	7350 4750 7450 4650
Entry Wire Line
	7350 4850 7450 4750
Entry Wire Line
	7350 4950 7450 4850
Entry Wire Line
	7350 5050 7450 4950
Wire Wire Line
	7450 5150 7650 5150
Wire Wire Line
	7650 5050 7450 5050
Wire Wire Line
	7450 4950 7650 4950
Wire Wire Line
	7650 4850 7450 4850
Wire Wire Line
	7450 4750 7650 4750
Wire Wire Line
	7650 4650 7450 4650
Wire Wire Line
	7450 4550 7650 4550
Wire Wire Line
	7650 4450 7450 4450
Text GLabel 1100 7250 0    50   Input ~ 0
IR[0..15]
Text Label 7500 4450 0    50   ~ 0
IR0
Text Label 7500 4550 0    50   ~ 0
IR1
Text Label 7500 4650 0    50   ~ 0
IR2
Text Label 7500 4750 0    50   ~ 0
IR3
Text Label 7500 4850 0    50   ~ 0
IR4
Text Label 7500 4950 0    50   ~ 0
IR5
Text Label 7500 5050 0    50   ~ 0
IR6
Text Label 7500 5150 0    50   ~ 0
IR7
Text GLabel 1100 7400 0    50   Input ~ 0
ControlClock
$Comp
L power:GND #PWR0129
U 1 1 5DB73C30
P 7650 5450
F 0 "#PWR0129" H 7650 5200 50  0001 C CNN
F 1 "GND" V 7655 5322 50  0000 R CNN
F 2 "" H 7650 5450 50  0001 C CNN
F 3 "" H 7650 5450 50  0001 C CNN
	1    7650 5450
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS574 U?
U 1 1 5DB75B66
P 4400 1850
AR Path="/5D2C14C3/5DB75B66" Ref="U?"  Part="1" 
AR Path="/5D2C0B92/5DB75B66" Ref="U45"  Part="1" 
F 0 "U45" H 4150 2650 50  0000 C CNN
F 1 "74F574" H 4150 2550 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4400 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 4400 1850 50  0001 C CNN
	1    4400 1850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U?
U 1 1 5DB7864A
P 4400 4800
AR Path="/5D2C14C3/5DB7864A" Ref="U?"  Part="1" 
AR Path="/5D2C0B92/5DB7864A" Ref="U46"  Part="1" 
F 0 "U46" H 4150 5600 50  0000 C CNN
F 1 "74F574" H 4150 5500 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4400 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 4400 4800 50  0001 C CNN
	1    4400 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5DB796AD
P 4400 5600
F 0 "#PWR0126" H 4400 5350 50  0001 C CNN
F 1 "GND" H 4405 5427 50  0000 C CNN
F 2 "" H 4400 5600 50  0001 C CNN
F 3 "" H 4400 5600 50  0001 C CNN
	1    4400 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5DB79B03
P 4400 2650
F 0 "#PWR0124" H 4400 2400 50  0001 C CNN
F 1 "GND" H 4405 2477 50  0000 C CNN
F 2 "" H 4400 2650 50  0001 C CNN
F 3 "" H 4400 2650 50  0001 C CNN
	1    4400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0123
U 1 1 5DB7A069
P 4400 1050
F 0 "#PWR0123" H 4400 900 50  0001 C CNN
F 1 "VCC" H 4417 1223 50  0000 C CNN
F 2 "" H 4400 1050 50  0001 C CNN
F 3 "" H 4400 1050 50  0001 C CNN
	1    4400 1050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0125
U 1 1 5DB7A788
P 4400 4000
F 0 "#PWR0125" H 4400 3850 50  0001 C CNN
F 1 "VCC" H 4417 4173 50  0000 C CNN
F 2 "" H 4400 4000 50  0001 C CNN
F 3 "" H 4400 4000 50  0001 C CNN
	1    4400 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0119
U 1 1 5DB7ADC3
P 2900 4100
F 0 "#PWR0119" H 2900 3950 50  0001 C CNN
F 1 "VCC" H 2917 4273 50  0000 C CNN
F 2 "" H 2900 4100 50  0001 C CNN
F 3 "" H 2900 4100 50  0001 C CNN
	1    2900 4100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0117
U 1 1 5DB7B2F7
P 2900 1150
F 0 "#PWR0117" H 2900 1000 50  0001 C CNN
F 1 "VCC" H 2917 1323 50  0000 C CNN
F 2 "" H 2900 1150 50  0001 C CNN
F 3 "" H 2900 1150 50  0001 C CNN
	1    2900 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5DB7B91A
P 2900 6500
F 0 "#PWR0120" H 2900 6250 50  0001 C CNN
F 1 "GND" H 2905 6327 50  0000 C CNN
F 2 "" H 2900 6500 50  0001 C CNN
F 3 "" H 2900 6500 50  0001 C CNN
	1    2900 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 7400 3600 7400
Wire Wire Line
	3900 5200 3600 5200
Wire Wire Line
	3600 5200 3600 7400
Connection ~ 3600 7400
Wire Wire Line
	3600 7400 1100 7400
Wire Wire Line
	3600 5200 3600 2250
Wire Wire Line
	3600 2250 3900 2250
Connection ~ 3600 5200
$Comp
L power:GND #PWR0122
U 1 1 5DB80A57
P 3900 5300
F 0 "#PWR0122" H 3900 5050 50  0001 C CNN
F 1 "GND" V 3905 5172 50  0000 R CNN
F 2 "" H 3900 5300 50  0001 C CNN
F 3 "" H 3900 5300 50  0001 C CNN
	1    3900 5300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5DB8100B
P 3900 2350
F 0 "#PWR0121" H 3900 2100 50  0001 C CNN
F 1 "GND" V 3905 2222 50  0000 R CNN
F 2 "" H 3900 2350 50  0001 C CNN
F 3 "" H 3900 2350 50  0001 C CNN
	1    3900 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 1350 3900 1350
Wire Wire Line
	3900 1450 3500 1450
Wire Wire Line
	3500 1550 3900 1550
Wire Wire Line
	3900 1650 3500 1650
Wire Wire Line
	3500 1750 3900 1750
Wire Wire Line
	3900 1850 3500 1850
Wire Wire Line
	3500 1950 3900 1950
Wire Wire Line
	3900 2050 3500 2050
Wire Wire Line
	3900 4300 3500 4300
Wire Wire Line
	3500 4400 3900 4400
Wire Wire Line
	3900 4500 3500 4500
Wire Wire Line
	3500 4600 3900 4600
Wire Wire Line
	3900 4700 3500 4700
Wire Wire Line
	3500 4800 3900 4800
Wire Wire Line
	3900 4900 3500 4900
Wire Wire Line
	3500 5000 3900 5000
Wire Bus Line
	5700 5250 5700 7250
Wire Bus Line
	5700 7250 1850 7250
Entry Wire Line
	1850 4400 1950 4500
Entry Wire Line
	1850 4500 1950 4600
Entry Wire Line
	1850 4600 1950 4700
Entry Wire Line
	1850 4700 1950 4800
Entry Wire Line
	1850 4800 1950 4900
Entry Wire Line
	1850 4900 1950 5000
Entry Wire Line
	1850 4300 1950 4400
Entry Wire Line
	1850 4200 1950 4300
Wire Wire Line
	1950 4300 2250 4300
Wire Wire Line
	2250 4400 1950 4400
Wire Wire Line
	1950 4500 2250 4500
Wire Wire Line
	2250 4600 1950 4600
Wire Wire Line
	1950 4700 2250 4700
Wire Wire Line
	2250 4800 1950 4800
Wire Wire Line
	1950 4900 2250 4900
Wire Wire Line
	2250 5000 1950 5000
Text Label 1950 4300 0    50   ~ 0
IR8
Text Label 1950 4400 0    50   ~ 0
IR9
Text Label 1950 4500 0    50   ~ 0
IR10
Text Label 1950 4600 0    50   ~ 0
IR11
Text Label 1950 4700 0    50   ~ 0
IR12
Text Label 1950 4800 0    50   ~ 0
IR13
Text Label 1950 4900 0    50   ~ 0
IR14
Text Label 1950 5000 0    50   ~ 0
IR15
Entry Wire Line
	1850 1450 1950 1550
Entry Wire Line
	1850 1550 1950 1650
Entry Wire Line
	1850 1650 1950 1750
Entry Wire Line
	1850 1750 1950 1850
Entry Wire Line
	1850 1850 1950 1950
Entry Wire Line
	1850 1950 1950 2050
Entry Wire Line
	1850 1250 1950 1350
Entry Wire Line
	1850 1350 1950 1450
Wire Wire Line
	1950 1350 2250 1350
Wire Wire Line
	2250 1450 1950 1450
Wire Wire Line
	1950 1550 2250 1550
Wire Wire Line
	2250 1650 1950 1650
Wire Wire Line
	1950 1750 2250 1750
Wire Wire Line
	2250 1850 1950 1850
Wire Wire Line
	1950 1950 2250 1950
Wire Wire Line
	2250 2050 1950 2050
Text Label 1950 1350 0    50   ~ 0
IR8
Text Label 1950 1450 0    50   ~ 0
IR9
Text Label 1950 1550 0    50   ~ 0
IR10
Text Label 1950 1650 0    50   ~ 0
IR11
Text Label 1950 1750 0    50   ~ 0
IR12
Text Label 1950 1850 0    50   ~ 0
IR13
Text Label 1950 1950 0    50   ~ 0
IR14
Text Label 1950 2050 0    50   ~ 0
IR15
Connection ~ 1850 7250
Wire Bus Line
	1850 7250 1100 7250
Text GLabel 1100 6850 0    50   Input ~ 0
~A=B
Text GLabel 1100 7050 0    50   Input ~ 0
~CarryOut
Wire Wire Line
	1550 5100 1550 6850
Wire Wire Line
	1550 6850 1100 6850
Wire Wire Line
	1550 2150 1550 5100
Connection ~ 1550 5100
Wire Wire Line
	1650 2250 1650 5200
Wire Wire Line
	1650 5200 1650 7050
Wire Wire Line
	1650 7050 1100 7050
Connection ~ 1650 5200
Wire Wire Line
	2250 6200 2200 6200
Wire Wire Line
	2200 6200 2200 6250
Wire Wire Line
	2200 6300 2250 6300
$Comp
L power:GND #PWR0116
U 1 1 5DBD4428
P 2200 6250
F 0 "#PWR0116" H 2200 6000 50  0001 C CNN
F 1 "GND" V 2205 6122 50  0000 R CNN
F 2 "" H 2200 6250 50  0001 C CNN
F 3 "" H 2200 6250 50  0001 C CNN
	1    2200 6250
	0    1    1    0   
$EndComp
Connection ~ 2200 6250
Wire Wire Line
	2200 6250 2200 6300
Wire Wire Line
	2250 3250 2200 3250
Wire Wire Line
	2200 3250 2200 3300
Wire Wire Line
	2200 3350 2250 3350
$Comp
L power:GND #PWR0113
U 1 1 5DBE64D4
P 2200 3300
F 0 "#PWR0113" H 2200 3050 50  0001 C CNN
F 1 "GND" V 2205 3172 50  0000 R CNN
F 2 "" H 2200 3300 50  0001 C CNN
F 3 "" H 2200 3300 50  0001 C CNN
	1    2200 3300
	0    1    1    0   
$EndComp
Connection ~ 2200 3300
Wire Wire Line
	2200 3300 2200 3350
$Comp
L power:VCC #PWR0115
U 1 1 5DBEAA53
P 2200 6100
F 0 "#PWR0115" H 2200 5950 50  0001 C CNN
F 1 "VCC" V 2218 6227 50  0000 L CNN
F 2 "" H 2200 6100 50  0001 C CNN
F 3 "" H 2200 6100 50  0001 C CNN
	1    2200 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 6100 2200 6100
$Comp
L power:VCC #PWR0112
U 1 1 5DBEFE69
P 2200 3150
F 0 "#PWR0112" H 2200 3000 50  0001 C CNN
F 1 "VCC" V 2218 3277 50  0000 L CNN
F 2 "" H 2200 3150 50  0001 C CNN
F 3 "" H 2200 3150 50  0001 C CNN
	1    2200 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 3150 2200 3150
Wire Wire Line
	2250 2350 2200 2350
Wire Wire Line
	2200 2350 2200 2450
Wire Wire Line
	2200 2950 2250 2950
Wire Wire Line
	2250 2850 2200 2850
Connection ~ 2200 2850
Wire Wire Line
	2200 2850 2200 2950
Wire Wire Line
	2200 2750 2250 2750
Connection ~ 2200 2750
Wire Wire Line
	2200 2750 2200 2850
Wire Wire Line
	2250 2650 2200 2650
Connection ~ 2200 2650
Wire Wire Line
	2200 2650 2200 2750
Wire Wire Line
	2200 2550 2250 2550
Connection ~ 2200 2550
Wire Wire Line
	2250 2450 2200 2450
Connection ~ 2200 2450
Wire Wire Line
	2200 2450 2200 2550
$Comp
L power:GND #PWR0111
U 1 1 5DC141C5
P 2200 2850
F 0 "#PWR0111" H 2200 2600 50  0001 C CNN
F 1 "GND" V 2205 2722 50  0000 R CNN
F 2 "" H 2200 2850 50  0001 C CNN
F 3 "" H 2200 2850 50  0001 C CNN
	1    2200 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 2550 2200 2650
Wire Wire Line
	2200 5300 2200 5400
Wire Wire Line
	2200 5900 2250 5900
Wire Wire Line
	2250 5800 2200 5800
Connection ~ 2200 5800
Wire Wire Line
	2200 5800 2200 5900
Wire Wire Line
	2200 5700 2250 5700
Connection ~ 2200 5700
Wire Wire Line
	2200 5700 2200 5800
Wire Wire Line
	2250 5600 2200 5600
Connection ~ 2200 5600
Wire Wire Line
	2200 5600 2200 5700
Wire Wire Line
	2200 5500 2250 5500
Connection ~ 2200 5500
Wire Wire Line
	2250 5400 2200 5400
Connection ~ 2200 5400
Wire Wire Line
	2200 5400 2200 5500
$Comp
L power:GND #PWR0114
U 1 1 5DC266E6
P 2200 5800
F 0 "#PWR0114" H 2200 5550 50  0001 C CNN
F 1 "GND" V 2205 5672 50  0000 R CNN
F 2 "" H 2200 5800 50  0001 C CNN
F 3 "" H 2200 5800 50  0001 C CNN
	1    2200 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 5500 2200 5600
Wire Wire Line
	2250 5300 2200 5300
Wire Wire Line
	1550 5100 2250 5100
Wire Wire Line
	1650 5200 2250 5200
Wire Wire Line
	1550 2150 2250 2150
Wire Wire Line
	1650 2250 2250 2250
$Comp
L power:GND #PWR0118
U 1 1 5DC7501F
P 2900 3550
F 0 "#PWR0118" H 2900 3300 50  0001 C CNN
F 1 "GND" H 2905 3377 50  0000 C CNN
F 2 "" H 2900 3550 50  0001 C CNN
F 3 "" H 2900 3550 50  0001 C CNN
	1    2900 3550
	1    0    0    -1  
$EndComp
Entry Wire Line
	5550 4300 5650 4200
Entry Wire Line
	5550 4400 5650 4300
Entry Wire Line
	5550 4500 5650 4400
Entry Wire Line
	5550 4600 5650 4500
Entry Wire Line
	5550 4700 5650 4600
Entry Wire Line
	5550 4800 5650 4700
Entry Wire Line
	5550 4900 5650 4800
Entry Wire Line
	5550 5000 5650 4900
Wire Wire Line
	5550 1350 4900 1350
Wire Wire Line
	4900 1450 5550 1450
Wire Wire Line
	5550 1550 4900 1550
Wire Wire Line
	4900 1650 5550 1650
Wire Wire Line
	5550 1750 4900 1750
Wire Wire Line
	4900 1850 5550 1850
Wire Wire Line
	5550 1950 4900 1950
Wire Wire Line
	4900 2050 5550 2050
Wire Wire Line
	5550 4900 4900 4900
Wire Wire Line
	4900 5000 5550 5000
Text Notes 4150 650  0    50   ~ 0
ID/EX registers
Text Notes 2600 700  0    50   ~ 0
Microcode ROMs
Text Label 4950 1350 0    50   ~ 0
ControlWord0
Text Label 4950 1450 0    50   ~ 0
ControlWord1
Text Label 4950 1550 0    50   ~ 0
ControlWord2
Text Label 4950 1650 0    50   ~ 0
ControlWord3
Text Label 4950 1750 0    50   ~ 0
ControlWord4
Text Label 4950 1850 0    50   ~ 0
ControlWord5
Text Label 4950 1950 0    50   ~ 0
ControlWord6
Text Label 4950 2050 0    50   ~ 0
ControlWord7
Wire Wire Line
	4900 4800 5550 4800
Wire Wire Line
	4900 4700 5550 4700
Wire Wire Line
	4900 4600 5550 4600
Wire Wire Line
	4900 4500 5550 4500
Wire Wire Line
	4900 4400 5550 4400
Wire Wire Line
	4900 4300 5550 4300
Text Label 4950 4300 0    50   ~ 0
ControlWord8
Text Label 4950 4400 0    50   ~ 0
ControlWord9
Text Label 4950 4500 0    50   ~ 0
ControlWord10
Text Label 4950 4600 0    50   ~ 0
ControlWord11
Text Label 4950 4700 0    50   ~ 0
ControlWord12
Text Label 4950 4800 0    50   ~ 0
ControlWord13
Text Label 4950 4900 0    50   ~ 0
ControlWord14
Text Label 4950 5000 0    50   ~ 0
ControlWord15
Connection ~ 6700 1000
Connection ~ 7200 1000
Wire Wire Line
	7200 1000 6700 1000
Connection ~ 7700 1000
Wire Wire Line
	7700 1000 7200 1000
Connection ~ 8200 1000
Wire Wire Line
	8200 1000 7700 1000
Wire Wire Line
	8700 1000 8200 1000
Connection ~ 8200 700 
Wire Wire Line
	8200 700  8700 700 
Connection ~ 7700 700 
Wire Wire Line
	7700 700  8200 700 
Connection ~ 7200 700 
Wire Wire Line
	7200 700  7700 700 
Connection ~ 6700 700 
Wire Wire Line
	6700 700  7200 700 
$Comp
L power:VCC #PWR?
U 1 1 5DC56D8C
P 6700 700
AR Path="/5D2C0761/5DC56D8C" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0B92/5DC56D8C" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 6700 550 50  0001 C CNN
F 1 "VCC" H 6717 873 50  0000 C CNN
F 2 "" H 6700 700 50  0001 C CNN
F 3 "" H 6700 700 50  0001 C CNN
	1    6700 700 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC56D86
P 6700 1000
AR Path="/5D2C0761/5DC56D86" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0B92/5DC56D86" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 6700 750 50  0001 C CNN
F 1 "GND" H 6705 827 50  0000 C CNN
F 2 "" H 6700 1000 50  0001 C CNN
F 3 "" H 6700 1000 50  0001 C CNN
	1    6700 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC56D80
P 8700 850
AR Path="/5D2C0761/5DC56D80" Ref="C?"  Part="1" 
AR Path="/5D2C0B92/5DC56D80" Ref="C47"  Part="1" 
F 0 "C47" H 8815 896 50  0000 L CNN
F 1 "100nF" H 8815 805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8738 700 50  0001 C CNN
F 3 "~" H 8700 850 50  0001 C CNN
	1    8700 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC56D7A
P 8200 850
AR Path="/5D2C0761/5DC56D7A" Ref="C?"  Part="1" 
AR Path="/5D2C0B92/5DC56D7A" Ref="C46"  Part="1" 
F 0 "C46" H 8315 896 50  0000 L CNN
F 1 "100nF" H 8315 805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8238 700 50  0001 C CNN
F 3 "~" H 8200 850 50  0001 C CNN
	1    8200 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC56D74
P 7700 850
AR Path="/5D2C0761/5DC56D74" Ref="C?"  Part="1" 
AR Path="/5D2C0B92/5DC56D74" Ref="C45"  Part="1" 
F 0 "C45" H 7815 896 50  0000 L CNN
F 1 "100nF" H 7815 805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7738 700 50  0001 C CNN
F 3 "~" H 7700 850 50  0001 C CNN
	1    7700 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC56D6E
P 7200 850
AR Path="/5D2C0761/5DC56D6E" Ref="C?"  Part="1" 
AR Path="/5D2C0B92/5DC56D6E" Ref="C44"  Part="1" 
F 0 "C44" H 7315 896 50  0000 L CNN
F 1 "100nF" H 7315 805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7238 700 50  0001 C CNN
F 3 "~" H 7200 850 50  0001 C CNN
	1    7200 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC56D68
P 6700 850
AR Path="/5D2C0761/5DC56D68" Ref="C?"  Part="1" 
AR Path="/5D2C0B92/5DC56D68" Ref="C43"  Part="1" 
F 0 "C43" H 6815 896 50  0000 L CNN
F 1 "100nF" H 6815 805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6738 700 50  0001 C CNN
F 3 "~" H 6700 850 50  0001 C CNN
	1    6700 850 
	1    0    0    -1  
$EndComp
Entry Wire Line
	5550 2050 5650 2150
Entry Wire Line
	5550 1950 5650 2050
Entry Wire Line
	5550 1850 5650 1950
Entry Wire Line
	5550 1750 5650 1850
Entry Wire Line
	5550 1650 5650 1750
Entry Wire Line
	5550 1550 5650 1650
Entry Wire Line
	5550 1450 5650 1550
Entry Wire Line
	5550 1350 5650 1450
Text GLabel 9700 1450 2    50   Output ~ 0
ControlWord[0..15]
Wire Bus Line
	5650 1450 9700 1450
Entry Wire Line
	8800 5150 8900 5050
Entry Wire Line
	8800 5050 8900 4950
Entry Wire Line
	8800 4950 8900 4850
Entry Wire Line
	8800 4850 8900 4750
Entry Wire Line
	8800 4750 8900 4650
Entry Wire Line
	8800 4650 8900 4550
Entry Wire Line
	8800 4550 8900 4450
Entry Wire Line
	8800 4450 8900 4350
Text GLabel 9700 1600 2    50   Output ~ 0
C[0..7]
Text Label 8800 4450 2    50   ~ 0
C0
Text Label 8800 4550 2    50   ~ 0
C1
Text Label 8800 4650 2    50   ~ 0
C2
Text Label 8800 4750 2    50   ~ 0
C3
Text Label 8800 4850 2    50   ~ 0
C4
Text Label 8800 4950 2    50   ~ 0
C5
Text Label 8800 5050 2    50   ~ 0
C6
Text Label 8800 5150 2    50   ~ 0
C7
Wire Wire Line
	8650 4450 8800 4450
Wire Wire Line
	8800 4550 8650 4550
Wire Wire Line
	8650 4650 8800 4650
Wire Wire Line
	8800 4750 8650 4750
Wire Wire Line
	8650 4850 8800 4850
Wire Wire Line
	8800 4950 8650 4950
Wire Wire Line
	8650 5050 8800 5050
Wire Wire Line
	8800 5150 8650 5150
Wire Wire Line
	5800 5350 5800 7400
Wire Bus Line
	8900 1600 9700 1600
Wire Bus Line
	5700 5250 7350 5250
Wire Wire Line
	5800 5350 7650 5350
Wire Bus Line
	7350 4550 7350 5250
Wire Bus Line
	8900 1600 8900 5050
Wire Bus Line
	1850 1250 1850 7250
Wire Bus Line
	5650 1450 5650 4900
$EndSCHEMATC