EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 8 20
Title "Output Display"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 "are directed to the output display when device zero is selected via the D register."
Comment3 "The output display is assigned to device slot zero. Reads and writes to the M register"
Comment4 "Display a number in a four character LED display."
$EndDescr
Entry Wire Line
	7900 4600 7800 4700
Entry Wire Line
	7900 4700 7800 4800
Entry Wire Line
	7900 4800 7800 4900
Entry Wire Line
	7900 4900 7800 5000
Entry Wire Line
	7900 5000 7800 5100
Entry Wire Line
	7900 5100 7800 5200
Entry Wire Line
	7900 5200 7800 5300
Text GLabel 10050 4200 2    50   Output ~ 0
DataBus
Wire Bus Line
	10050 4200 7900 4200
Entry Wire Line
	7900 4500 7800 4600
Text Label 7400 4700 0    50   ~ 0
DataBus1
Text Label 7400 4800 0    50   ~ 0
DataBus2
Text Label 7400 5000 0    50   ~ 0
DataBus4
Text Label 7400 5100 0    50   ~ 0
DataBus5
Text Label 7400 5200 0    50   ~ 0
DataBus6
Text Label 7400 5300 0    50   ~ 0
DataBus7
Text Label 7400 4600 0    50   ~ 0
DataBus0
Wire Wire Line
	7800 5300 7400 5300
Wire Wire Line
	7800 5200 7400 5200
Wire Wire Line
	7800 5100 7400 5100
Wire Wire Line
	7800 5000 7400 5000
Wire Wire Line
	7800 4900 7400 4900
Wire Wire Line
	7800 4800 7400 4800
Wire Wire Line
	7800 4700 7400 4700
Wire Wire Line
	7800 4600 7400 4600
$Comp
L power:VCC #PWR?
U 1 1 5DF2BBD7
P 6900 4300
AR Path="/5D2C0CA7/5DF2BBD7" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DF2BBD7" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0C74/5DF2BBD7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6900 4150 50  0001 C CNN
F 1 "VCC" H 6917 4473 50  0000 C CNN
F 2 "" H 6900 4300 50  0001 C CNN
F 3 "" H 6900 4300 50  0001 C CNN
	1    6900 4300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF2BBDD
P 6900 5900
AR Path="/5D7BD0EA/5DF2BBDD" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DF2BBDD" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0C74/5DF2BBDD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6900 5650 50  0001 C CNN
F 1 "GND" H 6905 5727 50  0000 C CNN
F 2 "" H 6900 5900 50  0001 C CNN
F 3 "" H 6900 5900 50  0001 C CNN
	1    6900 5900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF2BBE3
P 5100 5900
AR Path="/5D7BD0EA/5DF2BBE3" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DF2BBE3" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0C74/5DF2BBE3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5100 5650 50  0001 C CNN
F 1 "GND" H 5105 5727 50  0000 C CNN
F 2 "" H 5100 5900 50  0001 C CNN
F 3 "" H 5100 5900 50  0001 C CNN
	1    5100 5900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 5DF2BBE9
P 6900 5100
AR Path="/5D2C0CA7/5DF2BBE9" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DF2BBE9" Ref="U?"  Part="1" 
AR Path="/5D2C0C74/5DF2BBE9" Ref="U?"  Part="1" 
F 0 "U?" H 6650 5900 50  0000 C CNN
F 1 "74LS245" H 6650 5800 50  0000 C CNN
F 2 "" H 6900 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 6900 5100 50  0001 C CNN
	1    6900 5100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DF2BBEF
P 5100 4300
AR Path="/5D2C0CA7/5DF2BBEF" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DF2BBEF" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0C74/5DF2BBEF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5100 4150 50  0001 C CNN
F 1 "VCC" H 5117 4473 50  0000 C CNN
F 2 "" H 5100 4300 50  0001 C CNN
F 3 "" H 5100 4300 50  0001 C CNN
	1    5100 4300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 U?
U 1 1 5DF2BBF5
P 5100 5100
AR Path="/5D2C0CA7/5DF2BBF5" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DF2BBF5" Ref="U?"  Part="1" 
AR Path="/5D2C0C74/5DF2BBF5" Ref="U?"  Part="1" 
F 0 "U?" H 4900 5900 50  0000 C CNN
F 1 "74F377" H 4850 5800 50  0000 C CNN
F 2 "" H 5100 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 5100 5100 50  0001 C CNN
	1    5100 5100
	1    0    0    -1  
$EndComp
Entry Wire Line
	4050 4600 4150 4700
Entry Wire Line
	4050 4700 4150 4800
Entry Wire Line
	4050 4800 4150 4900
Entry Wire Line
	4050 4900 4150 5000
Entry Wire Line
	4050 5000 4150 5100
Entry Wire Line
	4050 5100 4150 5200
Entry Wire Line
	4050 5200 4150 5300
Text GLabel 1200 4300 0    50   Input ~ 0
DataBus
Wire Bus Line
	1200 4300 4050 4300
Entry Wire Line
	4050 4500 4150 4600
Text Label 4550 4700 2    50   ~ 0
DataBus1
Text Label 4550 4800 2    50   ~ 0
DataBus2
Text Label 4550 4900 2    50   ~ 0
DataBus3
Text Label 4550 5000 2    50   ~ 0
DataBus4
Text Label 4550 5100 2    50   ~ 0
DataBus5
Text Label 4550 5200 2    50   ~ 0
DataBus6
Text Label 4550 5300 2    50   ~ 0
DataBus7
Text Label 4550 4600 2    50   ~ 0
DataBus0
Wire Wire Line
	4150 5300 4600 5300
Wire Wire Line
	4150 5200 4600 5200
Wire Wire Line
	4150 5100 4600 5100
Wire Wire Line
	4150 5000 4600 5000
Wire Wire Line
	4150 4900 4600 4900
Wire Wire Line
	4150 4800 4600 4800
Wire Wire Line
	4150 4700 4600 4700
Wire Wire Line
	4150 4600 4600 4600
Wire Wire Line
	6400 5600 6150 5600
Wire Wire Line
	6150 5600 6150 6500
$Comp
L power:VCC #PWR?
U 1 1 5DF2BC17
P 6400 5500
AR Path="/5D2C0CA7/5DF2BC17" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DF2BC17" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0C74/5DF2BC17" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6400 5350 50  0001 C CNN
F 1 "VCC" H 6417 5673 50  0000 C CNN
F 2 "" H 6400 5500 50  0001 C CNN
F 3 "" H 6400 5500 50  0001 C CNN
	1    6400 5500
	0    -1   1    0   
$EndComp
Entry Wire Line
	5950 4800 6050 4700
Entry Wire Line
	5950 4900 6050 4800
Entry Wire Line
	5950 5000 6050 4900
Entry Wire Line
	5950 5100 6050 5000
Entry Wire Line
	5950 5200 6050 5100
Entry Wire Line
	5950 5300 6050 5200
Entry Wire Line
	5950 4600 6050 4500
Entry Wire Line
	5950 4700 6050 4600
Text Label 5900 5300 2    50   ~ 0
Out7
Text Label 5900 5200 2    50   ~ 0
Out6
Text Label 5900 5100 2    50   ~ 0
Out5
Text Label 5900 5000 2    50   ~ 0
Out4
Text Label 5900 4900 2    50   ~ 0
Out3
Text Label 5900 4800 2    50   ~ 0
Out2
Text Label 5900 4700 2    50   ~ 0
Out1
Text Label 5900 4600 2    50   ~ 0
Out0
Wire Wire Line
	4600 5500 1200 5500
Text GLabel 1200 5500 0    50   Input ~ 0
RegisterClock
Text Label 7400 4900 0    50   ~ 0
DataBus3
Connection ~ 3700 1100
Wire Wire Line
	3700 1150 3650 1150
Wire Wire Line
	3700 1100 3700 1150
Wire Wire Line
	5300 1250 10300 1250
$Comp
L 74xx:74LS139 U?
U 1 1 5D2AA07C
P 4800 1050
F 0 "U?" H 4800 1417 50  0000 C CNN
F 1 "74LS139" H 4800 1326 50  0000 C CNN
F 2 "" H 4800 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS139" H 4800 1050 50  0001 C CNN
	1    4800 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1250 10300 2150
$Comp
L power:GND #PWR?
U 1 1 5DED0A85
P 4300 1250
F 0 "#PWR?" H 4300 1000 50  0001 C CNN
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
L 74xx:74LS393 U?
U 1 1 5D2AB003
P 3150 950
F 0 "U?" H 3150 1317 50  0000 C CNN
F 1 "74LS393" H 3150 1226 50  0000 C CNN
F 2 "" H 3150 950 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 3150 950 50  0001 C CNN
	1    3150 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 850  1200 850 
$Comp
L power:GND #PWR?
U 1 1 5DED13E2
P 2650 1150
F 0 "#PWR?" H 2650 900 50  0001 C CNN
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
Text Label 6500 2450 2    50   ~ 0
Out7
Text Label 6500 2350 2    50   ~ 0
Out6
Text Label 6500 2250 2    50   ~ 0
Out5
Text Label 6500 2150 2    50   ~ 0
Out4
Text Label 6500 2050 2    50   ~ 0
Out3
Text Label 6500 1950 2    50   ~ 0
Out2
Text Label 6500 1850 2    50   ~ 0
Out1
Text Label 6500 1750 2    50   ~ 0
Out0
Wire Wire Line
	6500 2450 6150 2450
Wire Wire Line
	6500 2350 6150 2350
Wire Wire Line
	6150 2250 6500 2250
Wire Wire Line
	6500 2150 6150 2150
Wire Wire Line
	6500 2050 6150 2050
Wire Wire Line
	6150 1950 6500 1950
Wire Wire Line
	6500 1850 6150 1850
Wire Wire Line
	6150 1750 6500 1750
Entry Wire Line
	6050 2550 6150 2450
Entry Wire Line
	6050 2450 6150 2350
Entry Wire Line
	6050 2350 6150 2250
Entry Wire Line
	6050 2250 6150 2150
Entry Wire Line
	6050 2150 6150 2050
Entry Wire Line
	6050 2050 6150 1950
Entry Wire Line
	6050 1950 6150 1850
Entry Wire Line
	6050 1850 6150 1750
Wire Wire Line
	6500 3350 6400 3350
Wire Wire Line
	6400 3500 6400 3550
Connection ~ 6400 3500
Wire Wire Line
	6400 3550 6500 3550
Wire Wire Line
	6400 3450 6400 3500
Wire Wire Line
	6500 3450 6400 3450
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
L power:GND #PWR?
U 1 1 5DEE8F73
P 6400 3500
F 0 "#PWR?" H 6400 3250 50  0001 C CNN
F 1 "GND" V 6405 3372 50  0000 R CNN
F 2 "" H 6400 3500 50  0001 C CNN
F 3 "" H 6400 3500 50  0001 C CNN
	1    6400 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 3050 6400 3150
Connection ~ 6400 3050
Wire Wire Line
	6500 3050 6400 3050
Wire Wire Line
	6400 2950 6400 3050
Connection ~ 6400 2950
Wire Wire Line
	6500 2950 6400 2950
Wire Wire Line
	6500 2850 6400 2850
Wire Wire Line
	6400 2750 6400 2850
Connection ~ 6400 2750
Wire Wire Line
	6500 2750 6400 2750
Wire Wire Line
	6400 2650 6400 2750
Connection ~ 6400 2650
Wire Wire Line
	6500 2650 6400 2650
Wire Wire Line
	6400 2850 6400 2950
Connection ~ 6400 2850
Wire Wire Line
	6400 3150 6500 3150
Wire Wire Line
	6400 2550 6400 2650
Wire Wire Line
	6500 2550 6400 2550
$Comp
L power:GND #PWR?
U 1 1 5DED6590
P 6400 2850
F 0 "#PWR?" H 6400 2600 50  0001 C CNN
F 1 "GND" V 6405 2722 50  0000 R CNN
F 2 "" H 6400 2850 50  0001 C CNN
F 3 "" H 6400 2850 50  0001 C CNN
	1    6400 2850
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DED18A8
P 6400 3350
F 0 "#PWR?" H 6400 3200 50  0001 C CNN
F 1 "VCC" V 6417 3477 50  0000 L CNN
F 2 "" H 6400 3350 50  0001 C CNN
F 3 "" H 6400 3350 50  0001 C CNN
	1    6400 3350
	0    -1   1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DECFDBB
P 3700 1100
F 0 "#PWR?" H 3700 950 50  0001 C CNN
F 1 "VCC" V 3717 1228 50  0000 L CNN
F 2 "" H 3700 1100 50  0001 C CNN
F 3 "" H 3700 1100 50  0001 C CNN
	1    3700 1100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DECB2CD
P 6900 3750
F 0 "#PWR?" H 6900 3500 50  0001 C CNN
F 1 "GND" H 6905 3577 50  0000 C CNN
F 2 "" H 6900 3750 50  0001 C CNN
F 3 "" H 6900 3750 50  0001 C CNN
	1    6900 3750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DEA93D8
P 6900 1550
F 0 "#PWR?" H 6900 1400 50  0001 C CNN
F 1 "VCC" H 6917 1723 50  0000 C CNN
F 2 "" H 6900 1550 50  0001 C CNN
F 3 "" H 6900 1550 50  0001 C CNN
	1    6900 1550
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
	7300 1950 7850 1950
Wire Wire Line
	7500 2350 7300 2350
Wire Wire Line
	7500 1500 7500 2350
Wire Wire Line
	8000 1850 8100 1850
Wire Wire Line
	8000 1550 8000 1850
Wire Wire Line
	7550 1550 8000 1550
Wire Wire Line
	7550 2250 7550 1550
Wire Wire Line
	7300 2250 7550 2250
Wire Wire Line
	7600 2150 7600 1600
Wire Wire Line
	7300 2150 7600 2150
Wire Wire Line
	7300 2050 8100 2050
Wire Wire Line
	7850 2150 8100 2150
Wire Wire Line
	7850 1950 7850 2150
Wire Wire Line
	7800 2250 8100 2250
Wire Wire Line
	7800 1850 7800 2250
Wire Wire Line
	7300 1850 7800 1850
Wire Wire Line
	7750 2350 8100 2350
Wire Wire Line
	7750 1750 7750 2350
Wire Wire Line
	7300 1750 7750 1750
Wire Wire Line
	7300 2450 8100 2450
Wire Wire Line
	3850 1050 3850 850 
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 5D2AC6ED
P 6900 2650
F 0 "U?" H 6600 3850 50  0000 C CNN
F 1 "28C256" H 6600 3750 50  0000 C CNN
F 2 "" H 6900 2650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 6900 2650 50  0001 C CNN
	1    6900 2650
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:CC56-12CGKWA U?
U 1 1 5D2A69C6
P 9200 2050
F 0 "U?" H 9200 2717 50  0000 C CNN
F 1 "CC56-12CGKWA" H 9200 2626 50  0000 C CNN
F 2 "Display_7Segment:CA56-12CGKWA" H 9200 1450 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/CC56-12CGKWA(Ver.8A).pdf" H 8770 2080 50  0001 C CNN
	1    9200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5600 4500 5600
Wire Wire Line
	4500 5600 4500 5900
Wire Wire Line
	4500 5900 4350 5900
Text GLabel 1200 6100 0    50   Input ~ 0
DeviceSelect
Text GLabel 1200 5800 0    50   Input ~ 0
~MI
$Comp
L Device:C C?
U 1 1 5E12C1FB
P 2100 7600
AR Path="/5D2C0720/5E12C1FB" Ref="C?"  Part="1" 
AR Path="/5D2C0C74/5E12C1FB" Ref="C?"  Part="1" 
F 0 "C?" H 2215 7646 50  0000 L CNN
F 1 "100nF" H 2215 7555 50  0000 L CNN
F 2 "" H 2138 7450 50  0001 C CNN
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
F 0 "C?" H 2715 7646 50  0000 L CNN
F 1 "100nF" H 2715 7555 50  0000 L CNN
F 2 "" H 2638 7450 50  0001 C CNN
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
F 0 "C?" H 3215 7646 50  0000 L CNN
F 1 "100nF" H 3215 7555 50  0000 L CNN
F 2 "" H 3138 7450 50  0001 C CNN
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
F 0 "C?" H 3715 7646 50  0000 L CNN
F 1 "100nF" H 3715 7555 50  0000 L CNN
F 2 "" H 3638 7450 50  0001 C CNN
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
F 0 "C?" H 4215 7646 50  0000 L CNN
F 1 "100nF" H 4215 7555 50  0000 L CNN
F 2 "" H 4138 7450 50  0001 C CNN
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
F 0 "#PWR?" H 2100 7500 50  0001 C CNN
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
F 0 "#PWR?" H 2100 7300 50  0001 C CNN
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
F 0 "C?" H 4715 7646 50  0000 L CNN
F 1 "100nF" H 4715 7555 50  0000 L CNN
F 2 "" H 4638 7450 50  0001 C CNN
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
L 74xx:74LS32 U?
U 1 1 5E142E05
P 4050 6500
F 0 "U?" H 4050 6825 50  0000 C CNN
F 1 "74LS32" H 4050 6734 50  0000 C CNN
F 2 "" H 4050 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4050 6500 50  0001 C CNN
	1    4050 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6500 6150 6500
Text GLabel 1200 6600 0    50   Input ~ 0
~MO
Wire Bus Line
	1200 6100 1250 6100
Text Label 1400 6200 0    50   ~ 0
DeviceSelect1
Entry Wire Line
	1250 6100 1350 6200
Wire Wire Line
	3600 6200 1350 6200
$Comp
L 74xx:74LS32 U?
U 1 1 5E0EAE0A
P 4050 5900
F 0 "U?" H 4050 6225 50  0000 C CNN
F 1 "74LS32" H 4050 6134 50  0000 C CNN
F 2 "" H 4050 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4050 5900 50  0001 C CNN
	1    4050 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5800 1200 5800
Wire Wire Line
	3750 6000 3600 6000
Wire Wire Line
	3600 6000 3600 6200
Wire Wire Line
	1200 6600 3750 6600
Wire Wire Line
	3600 6200 3600 6400
Wire Wire Line
	3600 6400 3750 6400
Connection ~ 3600 6200
Wire Wire Line
	5600 4700 6400 4700
Wire Wire Line
	5600 4600 6400 4600
Wire Wire Line
	5600 5300 6400 5300
Wire Wire Line
	5600 5200 6400 5200
Wire Wire Line
	5600 5100 6400 5100
Wire Wire Line
	5600 5000 6400 5000
Wire Wire Line
	5600 4900 6400 4900
Wire Wire Line
	5600 4800 6400 4800
Wire Bus Line
	6050 1850 6050 5200
Wire Bus Line
	4050 4300 4050 5200
Wire Bus Line
	7900 4200 7900 5200
$EndSCHEMATC
