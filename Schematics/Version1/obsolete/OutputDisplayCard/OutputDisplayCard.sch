EESchema Schematic File Version 4
LIBS:OutputDisplayCard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Output Display Card"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Expansion card which displays a number on a four character LED display."
$EndDescr
Connection ~ 3700 1100
Wire Wire Line
	3700 1150 3650 1150
Wire Wire Line
	3700 1100 3700 1150
Wire Wire Line
	5300 1250 10300 1250
$Comp
L 74xx:74LS139 U4
U 1 1 5D2AA07C
P 4800 1050
F 0 "U4" H 4800 1417 50  0000 C CNN
F 1 "74LS139" H 4800 1326 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4800 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS139" H 4800 1050 50  0001 C CNN
	1    4800 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1250 10300 2150
$Comp
L power:GND #PWR05
U 1 1 5DED0A85
P 4300 1250
F 0 "#PWR05" H 4300 1000 50  0001 C CNN
F 1 "GND" V 4305 1122 50  0000 R CNN
F 2 "" H 4300 1250 50  0001 C CNN
F 3 "" H 4300 1250 50  0001 C CNN
	1    4300 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 1050 3850 1050
Wire Wire Line
	4300 950  3650 950 
Wire Wire Line
	5300 950  10450 950 
Wire Wire Line
	5300 1050 10400 1050
Wire Wire Line
	5300 1150 10350 1150
$Comp
L 74xx:74LS393 U1
U 1 1 5D2AB003
P 3150 950
F 0 "U1" H 3150 1317 50  0000 C CNN
F 1 "74LS393" H 3150 1226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3150 950 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 3150 950 50  0001 C CNN
	1    3150 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 850  1200 850 
$Comp
L power:GND #PWR03
U 1 1 5DED13E2
P 2650 1150
F 0 "#PWR03" H 2650 900 50  0001 C CNN
F 1 "GND" V 2655 1022 50  0000 R CNN
F 2 "" H 2650 1150 50  0001 C CNN
F 3 "" H 2650 1150 50  0001 C CNN
	1    2650 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 850  3650 850 
Wire Wire Line
	3700 1050 3650 1050
Wire Wire Line
	3700 1050 3700 1100
Wire Wire Line
	10450 2450 10300 2450
Wire Wire Line
	10450 950  10450 2450
Wire Wire Line
	10400 2350 10300 2350
Wire Wire Line
	10400 1050 10400 2350
Wire Wire Line
	10350 2250 10300 2250
Wire Wire Line
	10350 1150 10350 2250
Text GLabel 1200 850  0    50   Input ~ 0
FixedRateClock
$Comp
L power:VCC #PWR04
U 1 1 5DECFDBB
P 3700 1100
F 0 "#PWR04" H 3700 950 50  0001 C CNN
F 1 "VCC" V 3717 1228 50  0000 L CNN
F 2 "" H 3700 1100 50  0001 C CNN
F 3 "" H 3700 1100 50  0001 C CNN
	1    3700 1100
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 5DEA93D8
P 6700 1550
F 0 "#PWR014" H 6700 1400 50  0001 C CNN
F 1 "VCC" H 6717 1723 50  0000 C CNN
F 2 "" H 6700 1550 50  0001 C CNN
F 3 "" H 6700 1550 50  0001 C CNN
	1    6700 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1500 7500 1500
Wire Wire Line
	8050 1750 8050 1500
Wire Wire Line
	8100 1750 8050 1750
Wire Wire Line
	7950 1600 7950 1950
Wire Wire Line
	7600 1600 7950 1600
Wire Wire Line
	7950 1950 8100 1950
Wire Wire Line
	7500 2350 7300 2350
Wire Wire Line
	8000 1850 8100 1850
Wire Wire Line
	8000 1550 8000 1850
Wire Wire Line
	7550 1550 8000 1550
Wire Wire Line
	7550 2250 7550 1550
Wire Wire Line
	7600 2150 7600 1600
Wire Wire Line
	7850 2150 8100 2150
Wire Wire Line
	7850 1950 7850 2150
Wire Wire Line
	7800 2250 8100 2250
Wire Wire Line
	7800 1850 7800 2250
Wire Wire Line
	7750 2350 8100 2350
Wire Wire Line
	7750 1750 7750 2350
Wire Wire Line
	3850 1050 3850 850 
$Comp
L Display_Character:CC56-12CGKWA U7
U 1 1 5D2A69C6
P 9200 2050
F 0 "U7" H 9200 2717 50  0000 C CNN
F 1 "CC56-12CGKWA" H 9200 2626 50  0000 C CNN
F 2 "Display_7Segment:CA56-12CGKWA" H 9200 1450 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/CC56-12CGKWA(Ver.8A).pdf" H 8770 2080 50  0001 C CNN
	1    9200 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E12C1FB
P 2100 7600
AR Path="/5D2C0720/5E12C1FB" Ref="C?"  Part="1" 
AR Path="/5D2C0C74/5E12C1FB" Ref="C?"  Part="1" 
AR Path="/5E12C1FB" Ref="C1"  Part="1" 
F 0 "C1" H 2215 7646 50  0000 L CNN
F 1 "100nF" H 2215 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2138 7450 50  0001 C CNN
F 3 "~" H 2100 7600 50  0001 C CNN
	1    2100 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E12C201
P 2600 7600
AR Path="/5D2C0720/5E12C201" Ref="C?"  Part="1" 
AR Path="/5D2C0C74/5E12C201" Ref="C?"  Part="1" 
AR Path="/5E12C201" Ref="C2"  Part="1" 
F 0 "C2" H 2715 7646 50  0000 L CNN
F 1 "100nF" H 2715 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2638 7450 50  0001 C CNN
F 3 "~" H 2600 7600 50  0001 C CNN
	1    2600 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E12C207
P 3100 7600
AR Path="/5D2C0720/5E12C207" Ref="C?"  Part="1" 
AR Path="/5D2C0C74/5E12C207" Ref="C?"  Part="1" 
AR Path="/5E12C207" Ref="C3"  Part="1" 
F 0 "C3" H 3215 7646 50  0000 L CNN
F 1 "100nF" H 3215 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3138 7450 50  0001 C CNN
F 3 "~" H 3100 7600 50  0001 C CNN
	1    3100 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E12C20D
P 3600 7600
AR Path="/5D2C0720/5E12C20D" Ref="C?"  Part="1" 
AR Path="/5D2C0C74/5E12C20D" Ref="C?"  Part="1" 
AR Path="/5E12C20D" Ref="C4"  Part="1" 
F 0 "C4" H 3715 7646 50  0000 L CNN
F 1 "100nF" H 3715 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3638 7450 50  0001 C CNN
F 3 "~" H 3600 7600 50  0001 C CNN
	1    3600 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E12C213
P 4100 7600
AR Path="/5D2C0720/5E12C213" Ref="C?"  Part="1" 
AR Path="/5D2C0C74/5E12C213" Ref="C?"  Part="1" 
AR Path="/5E12C213" Ref="C5"  Part="1" 
F 0 "C5" H 4215 7646 50  0000 L CNN
F 1 "100nF" H 4215 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4138 7450 50  0001 C CNN
F 3 "~" H 4100 7600 50  0001 C CNN
	1    4100 7600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E12C219
P 2100 7750
AR Path="/5D2C0720/5E12C219" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0C74/5E12C219" Ref="#PWR?"  Part="1" 
AR Path="/5E12C219" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2100 7500 50  0001 C CNN
F 1 "GND" H 2105 7577 50  0000 C CNN
F 2 "" H 2100 7750 50  0001 C CNN
F 3 "" H 2100 7750 50  0001 C CNN
	1    2100 7750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E12C21F
P 2100 7450
AR Path="/5D2C0720/5E12C21F" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0C74/5E12C21F" Ref="#PWR?"  Part="1" 
AR Path="/5E12C21F" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2100 7300 50  0001 C CNN
F 1 "VCC" H 2117 7623 50  0000 C CNN
F 2 "" H 2100 7450 50  0001 C CNN
F 3 "" H 2100 7450 50  0001 C CNN
	1    2100 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7450 2600 7450
Connection ~ 2100 7450
Wire Wire Line
	2600 7450 3100 7450
Connection ~ 2600 7450
Wire Wire Line
	3100 7450 3600 7450
Connection ~ 3100 7450
Wire Wire Line
	3600 7450 4100 7450
Connection ~ 3600 7450
Wire Wire Line
	4100 7750 3600 7750
Wire Wire Line
	3600 7750 3100 7750
Connection ~ 3600 7750
Wire Wire Line
	3100 7750 2600 7750
Connection ~ 3100 7750
Wire Wire Line
	2600 7750 2100 7750
Connection ~ 2600 7750
Connection ~ 2100 7750
$Comp
L Device:C C?
U 1 1 5E13255E
P 4600 7600
AR Path="/5D2C0720/5E13255E" Ref="C?"  Part="1" 
AR Path="/5D2C0C74/5E13255E" Ref="C?"  Part="1" 
AR Path="/5E13255E" Ref="C6"  Part="1" 
F 0 "C6" H 4715 7646 50  0000 L CNN
F 1 "100nF" H 4715 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4638 7450 50  0001 C CNN
F 3 "~" H 4600 7600 50  0001 C CNN
	1    4600 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 7450 4600 7450
Wire Wire Line
	4600 7750 4100 7750
Connection ~ 4100 7450
Connection ~ 4100 7750
$Comp
L power:GND #PWR010
U 1 1 5DEE8F73
P 5950 3700
F 0 "#PWR010" H 5950 3450 50  0001 C CNN
F 1 "GND" V 5955 3572 50  0000 R CNN
F 2 "" H 5950 3700 50  0001 C CNN
F 3 "" H 5950 3700 50  0001 C CNN
	1    5950 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 3650 5950 3650
Wire Wire Line
	5950 3650 5950 3700
Wire Wire Line
	5950 3750 6050 3750
Connection ~ 5950 3700
Wire Wire Line
	5950 3700 5950 3750
$Comp
L power:VCC #PWR09
U 1 1 5DED18A8
P 5950 3550
F 0 "#PWR09" H 5950 3400 50  0001 C CNN
F 1 "VCC" V 5967 3677 50  0000 L CNN
F 2 "" H 5950 3550 50  0001 C CNN
F 3 "" H 5950 3550 50  0001 C CNN
	1    5950 3550
	0    -1   1    0   
$EndComp
Wire Wire Line
	6050 3550 5950 3550
$Comp
L power:GND #PWR08
U 1 1 5DED6590
P 5950 2850
F 0 "#PWR08" H 5950 2600 50  0001 C CNN
F 1 "GND" V 5955 2722 50  0000 R CNN
F 2 "" H 5950 2850 50  0001 C CNN
F 3 "" H 5950 2850 50  0001 C CNN
	1    5950 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 2550 5950 2550
Wire Wire Line
	5950 2550 5950 2650
Wire Wire Line
	5950 3150 6050 3150
Connection ~ 5950 2850
Wire Wire Line
	5950 2850 5950 2950
Wire Wire Line
	6050 2650 5950 2650
Connection ~ 5950 2650
Wire Wire Line
	5950 2650 5950 2750
Wire Wire Line
	6050 2750 5950 2750
Connection ~ 5950 2750
Wire Wire Line
	5950 2750 5950 2850
Wire Wire Line
	6050 2850 5950 2850
Wire Wire Line
	6050 2950 5950 2950
Connection ~ 5950 2950
Wire Wire Line
	5950 2950 5950 3050
Wire Wire Line
	6050 3050 5950 3050
Connection ~ 5950 3050
Wire Wire Line
	5950 3050 5950 3150
Entry Wire Line
	5600 1850 5700 1750
Entry Wire Line
	5600 1950 5700 1850
Entry Wire Line
	5600 2050 5700 1950
Entry Wire Line
	5600 2150 5700 2050
Entry Wire Line
	5600 2250 5700 2150
Entry Wire Line
	5600 2350 5700 2250
Entry Wire Line
	5600 2450 5700 2350
Entry Wire Line
	5600 2550 5700 2450
Wire Wire Line
	5700 1750 6050 1750
Wire Wire Line
	6050 1850 5700 1850
Wire Wire Line
	5700 1950 6050 1950
Wire Wire Line
	6050 2050 5700 2050
Wire Wire Line
	6050 2150 5700 2150
Wire Wire Line
	5700 2250 6050 2250
Wire Wire Line
	6050 2350 5700 2350
Wire Wire Line
	6050 2450 5700 2450
Text Label 6050 1750 2    50   ~ 0
Out0
Text Label 6050 1850 2    50   ~ 0
Out1
Text Label 6050 1950 2    50   ~ 0
Out2
Text Label 6050 2050 2    50   ~ 0
Out3
Text Label 6050 2150 2    50   ~ 0
Out4
Text Label 6050 2250 2    50   ~ 0
Out5
Text Label 6050 2350 2    50   ~ 0
Out6
Text Label 6050 2450 2    50   ~ 0
Out7
$Comp
L power:GND #PWR015
U 1 1 5DECB2CD
P 6700 3950
F 0 "#PWR015" H 6700 3700 50  0001 C CNN
F 1 "GND" H 6705 3777 50  0000 C CNN
F 2 "" H 6700 3950 50  0001 C CNN
F 3 "" H 6700 3950 50  0001 C CNN
	1    6700 3950
	1    0    0    -1  
$EndComp
Text GLabel 700  6900 0    50   Input ~ 0
~PO
Text GLabel 700  6300 0    50   Input ~ 0
~PI
Wire Wire Line
	4050 6000 4050 6300
Wire Wire Line
	4150 6000 4050 6000
Text Label 6950 5300 0    50   ~ 0
DataBus3
Text GLabel 1100 5900 0    50   Input ~ 0
RegisterClock
Wire Wire Line
	4150 5900 1100 5900
Text Label 5450 5000 2    50   ~ 0
Out0
Text Label 5450 5100 2    50   ~ 0
Out1
Text Label 5450 5200 2    50   ~ 0
Out2
Text Label 5450 5300 2    50   ~ 0
Out3
Text Label 5450 5400 2    50   ~ 0
Out4
Text Label 5450 5500 2    50   ~ 0
Out5
Text Label 5450 5600 2    50   ~ 0
Out6
Text Label 5450 5700 2    50   ~ 0
Out7
Entry Wire Line
	5500 5100 5600 5000
Entry Wire Line
	5500 5000 5600 4900
Entry Wire Line
	5500 5700 5600 5600
Entry Wire Line
	5500 5600 5600 5500
Entry Wire Line
	5500 5500 5600 5400
Entry Wire Line
	5500 5400 5600 5300
Entry Wire Line
	5500 5300 5600 5200
Entry Wire Line
	5500 5200 5600 5100
$Comp
L power:VCC #PWR?
U 1 1 5DF2BC17
P 5950 5900
AR Path="/5D2C0CA7/5DF2BC17" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DF2BC17" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0C74/5DF2BC17" Ref="#PWR?"  Part="1" 
AR Path="/5DF2BC17" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 5950 5750 50  0001 C CNN
F 1 "VCC" H 5967 6073 50  0000 C CNN
F 2 "" H 5950 5900 50  0001 C CNN
F 3 "" H 5950 5900 50  0001 C CNN
	1    5950 5900
	0    -1   1    0   
$EndComp
Wire Wire Line
	5700 6000 5700 6900
Wire Wire Line
	5950 6000 5700 6000
Wire Wire Line
	3700 5000 4150 5000
Wire Wire Line
	3700 5100 4150 5100
Wire Wire Line
	3700 5200 4150 5200
Wire Wire Line
	3700 5300 4150 5300
Wire Wire Line
	3700 5400 4150 5400
Wire Wire Line
	3700 5500 4150 5500
Wire Wire Line
	3700 5600 4150 5600
Wire Wire Line
	3700 5700 4150 5700
Text Label 4100 5000 2    50   ~ 0
DataBus0
Text Label 4100 5700 2    50   ~ 0
DataBus7
Text Label 4100 5600 2    50   ~ 0
DataBus6
Text Label 4100 5500 2    50   ~ 0
DataBus5
Text Label 4100 5400 2    50   ~ 0
DataBus4
Text Label 4100 5300 2    50   ~ 0
DataBus3
Text Label 4100 5200 2    50   ~ 0
DataBus2
Text Label 4100 5100 2    50   ~ 0
DataBus1
Entry Wire Line
	3600 4900 3700 5000
Wire Bus Line
	1100 4700 3600 4700
Text GLabel 1100 4700 0    50   Input ~ 0
DataBus[0..7]
Entry Wire Line
	3600 5600 3700 5700
Entry Wire Line
	3600 5500 3700 5600
Entry Wire Line
	3600 5400 3700 5500
Entry Wire Line
	3600 5300 3700 5400
Entry Wire Line
	3600 5200 3700 5300
Entry Wire Line
	3600 5100 3700 5200
Entry Wire Line
	3600 5000 3700 5100
$Comp
L 74xx:74LS377 U?
U 1 1 5DF2BBF5
P 4650 5500
AR Path="/5D2C0CA7/5DF2BBF5" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DF2BBF5" Ref="U?"  Part="1" 
AR Path="/5D2C0C74/5DF2BBF5" Ref="U?"  Part="1" 
AR Path="/5DF2BBF5" Ref="U3"  Part="1" 
F 0 "U3" H 4450 6300 50  0000 C CNN
F 1 "74F377" H 4400 6200 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4650 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 4650 5500 50  0001 C CNN
	1    4650 5500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DF2BBEF
P 4650 4700
AR Path="/5D2C0CA7/5DF2BBEF" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DF2BBEF" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0C74/5DF2BBEF" Ref="#PWR?"  Part="1" 
AR Path="/5DF2BBEF" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 4650 4550 50  0001 C CNN
F 1 "VCC" H 4667 4873 50  0000 C CNN
F 2 "" H 4650 4700 50  0001 C CNN
F 3 "" H 4650 4700 50  0001 C CNN
	1    4650 4700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 5DF2BBE9
P 6450 5500
AR Path="/5D2C0CA7/5DF2BBE9" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DF2BBE9" Ref="U?"  Part="1" 
AR Path="/5D2C0C74/5DF2BBE9" Ref="U?"  Part="1" 
AR Path="/5DF2BBE9" Ref="U5"  Part="1" 
F 0 "U5" H 6200 6300 50  0000 C CNN
F 1 "74LS245" H 6200 6200 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 6450 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 6450 5500 50  0001 C CNN
	1    6450 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF2BBE3
P 4650 6300
AR Path="/5D7BD0EA/5DF2BBE3" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DF2BBE3" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0C74/5DF2BBE3" Ref="#PWR?"  Part="1" 
AR Path="/5DF2BBE3" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 4650 6050 50  0001 C CNN
F 1 "GND" H 4655 6127 50  0000 C CNN
F 2 "" H 4650 6300 50  0001 C CNN
F 3 "" H 4650 6300 50  0001 C CNN
	1    4650 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF2BBDD
P 6450 6300
AR Path="/5D7BD0EA/5DF2BBDD" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DF2BBDD" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0C74/5DF2BBDD" Ref="#PWR?"  Part="1" 
AR Path="/5DF2BBDD" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 6450 6050 50  0001 C CNN
F 1 "GND" H 6455 6127 50  0000 C CNN
F 2 "" H 6450 6300 50  0001 C CNN
F 3 "" H 6450 6300 50  0001 C CNN
	1    6450 6300
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DF2BBD7
P 6450 4700
AR Path="/5D2C0CA7/5DF2BBD7" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DF2BBD7" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0C74/5DF2BBD7" Ref="#PWR?"  Part="1" 
AR Path="/5DF2BBD7" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 6450 4550 50  0001 C CNN
F 1 "VCC" H 6467 4873 50  0000 C CNN
F 2 "" H 6450 4700 50  0001 C CNN
F 3 "" H 6450 4700 50  0001 C CNN
	1    6450 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7350 5000 6950 5000
Wire Wire Line
	7350 5100 6950 5100
Wire Wire Line
	7350 5200 6950 5200
Wire Wire Line
	7350 5300 6950 5300
Wire Wire Line
	7350 5400 6950 5400
Wire Wire Line
	7350 5500 6950 5500
Wire Wire Line
	7350 5600 6950 5600
Wire Wire Line
	7350 5700 6950 5700
Text Label 6950 5000 0    50   ~ 0
DataBus0
Text Label 6950 5700 0    50   ~ 0
DataBus7
Text Label 6950 5600 0    50   ~ 0
DataBus6
Text Label 6950 5500 0    50   ~ 0
DataBus5
Text Label 6950 5400 0    50   ~ 0
DataBus4
Text Label 6950 5200 0    50   ~ 0
DataBus2
Text Label 6950 5100 0    50   ~ 0
DataBus1
Entry Wire Line
	7450 4900 7350 5000
Wire Bus Line
	9900 4600 7450 4600
Text GLabel 9900 4600 2    50   Output ~ 0
DataBus[0..7]
Entry Wire Line
	7450 5600 7350 5700
Entry Wire Line
	7450 5500 7350 5600
Entry Wire Line
	7450 5400 7350 5500
Entry Wire Line
	7450 5300 7350 5400
Entry Wire Line
	7450 5200 7350 5300
Entry Wire Line
	7450 5100 7350 5200
Entry Wire Line
	7450 5000 7350 5100
Wire Wire Line
	7300 2450 8100 2450
Wire Wire Line
	7300 2250 7550 2250
Wire Wire Line
	7300 2150 7600 2150
Wire Wire Line
	7300 2050 8100 2050
Wire Wire Line
	7300 1950 7850 1950
Wire Wire Line
	7300 1850 7800 1850
Wire Wire Line
	7300 1750 7750 1750
Wire Wire Line
	7500 1500 7500 2350
$Comp
L Memory_EEPROM:GLS29EE010 U6
U 1 1 5D2AC6ED
P 6700 1650
F 0 "U6" H 6350 1850 50  0000 C CNN
F 1 "GLS29EE010" H 6350 1750 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_Socket" H 6700 1650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 6700 1650 50  0001 C CNN
	1    6700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3150 5950 3250
Connection ~ 5950 3150
Wire Wire Line
	5950 3250 6050 3250
Wire Wire Line
	6050 3350 5950 3350
Wire Wire Line
	5950 3350 5950 3250
Connection ~ 5950 3250
$Comp
L 74xx:74LS393 U1
U 2 1 5DA37D11
P 4450 9400
F 0 "U1" H 4450 9767 50  0000 C CNN
F 1 "74LS393" H 4450 9676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4450 9400 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 4450 9400 50  0001 C CNN
	2    4450 9400
	1    0    0    -1  
$EndComp
NoConn ~ 3950 9300
NoConn ~ 3950 9600
NoConn ~ 4950 9300
NoConn ~ 4950 9400
NoConn ~ 4950 9500
NoConn ~ 4950 9600
$Comp
L 74xx:74LS139 U4
U 2 1 5DA9330A
P 6300 9400
F 0 "U4" H 6300 9767 50  0000 C CNN
F 1 "74LS139" H 6300 9676 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6300 9400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS139" H 6300 9400 50  0001 C CNN
	2    6300 9400
	1    0    0    -1  
$EndComp
NoConn ~ 6800 9300
NoConn ~ 6800 9400
NoConn ~ 6800 9500
NoConn ~ 6800 9600
NoConn ~ 5800 9600
NoConn ~ 5800 9400
NoConn ~ 5800 9300
Wire Wire Line
	700  6900 5700 6900
Wire Wire Line
	700  6300 4050 6300
Wire Wire Line
	5150 5700 5950 5700
Wire Wire Line
	5150 5000 5950 5000
Wire Wire Line
	5150 5600 5950 5600
Wire Wire Line
	5150 5500 5950 5500
Wire Wire Line
	5150 5400 5950 5400
Wire Wire Line
	5150 5300 5950 5300
Wire Wire Line
	5150 5200 5950 5200
Wire Wire Line
	5150 5100 5950 5100
Wire Bus Line
	7450 4600 7450 5600
Wire Bus Line
	3600 4700 3600 5600
Wire Bus Line
	5600 1850 5600 5600
$EndSCHEMATC
