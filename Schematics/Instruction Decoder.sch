EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 7 20
Title "Instruction Decoder"
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
AR Path="/5D2C0B92/5DB5EC09" Ref="U?"  Part="1" 
F 0 "U?" H 2550 1450 50  0000 C CNN
F 1 "GLS29EE010" H 2550 1350 50  0000 C CNN
F 2 "" H 2900 1250 50  0001 C CNN
F 3 "" H 2900 1250 50  0001 C CNN
	1    2900 1250
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:GLS29EE010 U?
U 1 1 5DB5EC5B
P 2900 4200
AR Path="/5D2C0AA0/5DB5EC5B" Ref="U?"  Part="1" 
AR Path="/5D2C0B92/5DB5EC5B" Ref="U?"  Part="1" 
F 0 "U?" H 2550 4400 50  0000 C CNN
F 1 "GLS29EE010" H 2550 4300 50  0000 C CNN
F 2 "" H 2900 4200 50  0001 C CNN
F 3 "" H 2900 4200 50  0001 C CNN
	1    2900 4200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U?
U 1 1 5DB613F7
P 7200 4950
AR Path="/5D2C14C3/5DB613F7" Ref="U?"  Part="1" 
AR Path="/5D2C0B92/5DB613F7" Ref="U?"  Part="1" 
F 0 "U?" H 6950 5750 50  0000 C CNN
F 1 "74F574" H 6950 5650 50  0000 C CNN
F 2 "" H 7200 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 7200 4950 50  0001 C CNN
	1    7200 4950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 5DB66176
P 8750 4950
AR Path="/5D2C0CA7/5DB66176" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DB66176" Ref="U?"  Part="1" 
AR Path="/5D2C0B92/5DB66176" Ref="U?"  Part="1" 
F 0 "U?" H 8450 5750 50  0000 C CNN
F 1 "74LS245" H 8450 5650 50  0000 C CNN
F 2 "" H 8750 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 8750 4950 50  0001 C CNN
	1    8750 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DB6758A
P 7200 5750
F 0 "#PWR?" H 7200 5500 50  0001 C CNN
F 1 "GND" H 7205 5577 50  0000 C CNN
F 2 "" H 7200 5750 50  0001 C CNN
F 3 "" H 7200 5750 50  0001 C CNN
	1    7200 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DB67CBF
P 8750 5750
F 0 "#PWR?" H 8750 5500 50  0001 C CNN
F 1 "GND" H 8755 5577 50  0000 C CNN
F 2 "" H 8750 5750 50  0001 C CNN
F 3 "" H 8750 5750 50  0001 C CNN
	1    8750 5750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DB6804E
P 7200 4150
F 0 "#PWR?" H 7200 4000 50  0001 C CNN
F 1 "VCC" H 7217 4323 50  0000 C CNN
F 2 "" H 7200 4150 50  0001 C CNN
F 3 "" H 7200 4150 50  0001 C CNN
	1    7200 4150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DB68649
P 8750 4150
F 0 "#PWR?" H 8750 4000 50  0001 C CNN
F 1 "VCC" H 8767 4323 50  0000 C CNN
F 2 "" H 8750 4150 50  0001 C CNN
F 3 "" H 8750 4150 50  0001 C CNN
	1    8750 4150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DB68B45
P 8250 5350
F 0 "#PWR?" H 8250 5200 50  0001 C CNN
F 1 "VCC" V 8268 5477 50  0000 L CNN
F 2 "" H 8250 5350 50  0001 C CNN
F 3 "" H 8250 5350 50  0001 C CNN
	1    8250 5350
	0    -1   -1   0   
$EndComp
Entry Wire Line
	9650 4450 9750 4550
Entry Wire Line
	9650 4550 9750 4650
Entry Wire Line
	9650 4650 9750 4750
Entry Wire Line
	9650 4750 9750 4850
Entry Wire Line
	9650 4850 9750 4950
Entry Wire Line
	9650 4950 9750 5050
Entry Wire Line
	9650 5050 9750 5150
Entry Wire Line
	9650 5150 9750 5250
Wire Wire Line
	9250 4450 9650 4450
Wire Wire Line
	9650 4550 9250 4550
Wire Wire Line
	9250 4650 9650 4650
Wire Wire Line
	9650 4750 9250 4750
Wire Wire Line
	9250 4850 9650 4850
Wire Wire Line
	9650 4950 9250 4950
Wire Wire Line
	9250 5050 9650 5050
Wire Wire Line
	9650 5150 9250 5150
Text GLabel 10100 5550 2    50   Output ~ 0
DataBus
Wire Bus Line
	10100 5550 9750 5550
Text Label 9250 4450 0    50   ~ 0
DataBus0
Text Label 9250 4550 0    50   ~ 0
DataBus1
Text Label 9250 4650 0    50   ~ 0
DataBus2
Text Label 9250 4750 0    50   ~ 0
DataBus3
Text Label 9250 4850 0    50   ~ 0
DataBus4
Text Label 9250 4950 0    50   ~ 0
DataBus5
Text Label 9250 5050 0    50   ~ 0
DataBus6
Text Label 9250 5150 0    50   ~ 0
DataBus7
Entry Wire Line
	6200 5250 6300 5150
Entry Wire Line
	6200 5150 6300 5050
Entry Wire Line
	6200 4550 6300 4450
Entry Wire Line
	6200 4650 6300 4550
Entry Wire Line
	6200 4750 6300 4650
Entry Wire Line
	6200 4850 6300 4750
Entry Wire Line
	6200 4950 6300 4850
Entry Wire Line
	6200 5050 6300 4950
Wire Wire Line
	6300 5150 6700 5150
Wire Wire Line
	6700 5050 6300 5050
Wire Wire Line
	6300 4950 6700 4950
Wire Wire Line
	6700 4850 6300 4850
Wire Wire Line
	6300 4750 6700 4750
Wire Wire Line
	6700 4650 6300 4650
Wire Wire Line
	6300 4550 6700 4550
Wire Wire Line
	6700 4450 6300 4450
Text GLabel 1100 7250 0    50   Input ~ 0
IR
Text Label 6350 4450 0    50   ~ 0
IR00
Text Label 6350 4550 0    50   ~ 0
IR01
Text Label 6350 4650 0    50   ~ 0
IR02
Text Label 6350 4750 0    50   ~ 0
IR03
Text Label 6350 4850 0    50   ~ 0
IR04
Text Label 6350 4950 0    50   ~ 0
IR05
Text Label 6350 5050 0    50   ~ 0
IR06
Text Label 6350 5150 0    50   ~ 0
IR07
Text GLabel 1100 7400 0    50   Input ~ 0
ControlClock
Wire Wire Line
	5800 5350 6700 5350
$Comp
L power:GND #PWR?
U 1 1 5DB73C30
P 6700 5450
F 0 "#PWR?" H 6700 5200 50  0001 C CNN
F 1 "GND" V 6705 5322 50  0000 R CNN
F 2 "" H 6700 5450 50  0001 C CNN
F 3 "" H 6700 5450 50  0001 C CNN
	1    6700 5450
	0    1    1    0   
$EndComp
Text GLabel 1100 7550 0    50   Input ~ 0
~CO
Wire Wire Line
	8250 5450 7950 5450
$Comp
L 74xx:74LS574 U?
U 1 1 5DB75B66
P 4400 1850
AR Path="/5D2C14C3/5DB75B66" Ref="U?"  Part="1" 
AR Path="/5D2C0B92/5DB75B66" Ref="U?"  Part="1" 
F 0 "U?" H 4150 2650 50  0000 C CNN
F 1 "74F574" H 4150 2550 50  0000 C CNN
F 2 "" H 4400 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 4400 1850 50  0001 C CNN
	1    4400 1850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U?
U 1 1 5DB7864A
P 4400 4800
AR Path="/5D2C14C3/5DB7864A" Ref="U?"  Part="1" 
AR Path="/5D2C0B92/5DB7864A" Ref="U?"  Part="1" 
F 0 "U?" H 4150 5600 50  0000 C CNN
F 1 "74F574" H 4150 5500 50  0000 C CNN
F 2 "" H 4400 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 4400 4800 50  0001 C CNN
	1    4400 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DB796AD
P 4400 5600
F 0 "#PWR?" H 4400 5350 50  0001 C CNN
F 1 "GND" H 4405 5427 50  0000 C CNN
F 2 "" H 4400 5600 50  0001 C CNN
F 3 "" H 4400 5600 50  0001 C CNN
	1    4400 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DB79B03
P 4400 2650
F 0 "#PWR?" H 4400 2400 50  0001 C CNN
F 1 "GND" H 4405 2477 50  0000 C CNN
F 2 "" H 4400 2650 50  0001 C CNN
F 3 "" H 4400 2650 50  0001 C CNN
	1    4400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DB7A069
P 4400 1050
F 0 "#PWR?" H 4400 900 50  0001 C CNN
F 1 "VCC" H 4417 1223 50  0000 C CNN
F 2 "" H 4400 1050 50  0001 C CNN
F 3 "" H 4400 1050 50  0001 C CNN
	1    4400 1050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DB7A788
P 4400 4000
F 0 "#PWR?" H 4400 3850 50  0001 C CNN
F 1 "VCC" H 4417 4173 50  0000 C CNN
F 2 "" H 4400 4000 50  0001 C CNN
F 3 "" H 4400 4000 50  0001 C CNN
	1    4400 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DB7ADC3
P 2900 4100
F 0 "#PWR?" H 2900 3950 50  0001 C CNN
F 1 "VCC" H 2917 4273 50  0000 C CNN
F 2 "" H 2900 4100 50  0001 C CNN
F 3 "" H 2900 4100 50  0001 C CNN
	1    2900 4100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DB7B2F7
P 2900 1150
F 0 "#PWR?" H 2900 1000 50  0001 C CNN
F 1 "VCC" H 2917 1323 50  0000 C CNN
F 2 "" H 2900 1150 50  0001 C CNN
F 3 "" H 2900 1150 50  0001 C CNN
	1    2900 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DB7B91A
P 2900 6500
F 0 "#PWR?" H 2900 6250 50  0001 C CNN
F 1 "GND" H 2905 6327 50  0000 C CNN
F 2 "" H 2900 6500 50  0001 C CNN
F 3 "" H 2900 6500 50  0001 C CNN
	1    2900 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5350 5800 7400
Wire Wire Line
	5800 7400 3600 7400
Wire Wire Line
	7950 5450 7950 6000
Wire Wire Line
	7950 6000 5900 6000
Wire Wire Line
	5900 6000 5900 7550
Wire Wire Line
	1100 7550 5900 7550
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
L power:GND #PWR?
U 1 1 5DB80A57
P 3900 5300
F 0 "#PWR?" H 3900 5050 50  0001 C CNN
F 1 "GND" V 3905 5172 50  0000 R CNN
F 2 "" H 3900 5300 50  0001 C CNN
F 3 "" H 3900 5300 50  0001 C CNN
	1    3900 5300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DB8100B
P 3900 2350
F 0 "#PWR?" H 3900 2100 50  0001 C CNN
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
	6200 5250 5700 5250
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
IR08
Text Label 1950 4400 0    50   ~ 0
IR09
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
IR08
Text Label 1950 1450 0    50   ~ 0
IR09
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
L power:GND #PWR?
U 1 1 5DBD4428
P 2200 6250
F 0 "#PWR?" H 2200 6000 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5DBE64D4
P 2200 3300
F 0 "#PWR?" H 2200 3050 50  0001 C CNN
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
L power:VCC #PWR?
U 1 1 5DBEAA53
P 2200 6100
F 0 "#PWR?" H 2200 5950 50  0001 C CNN
F 1 "VCC" V 2218 6227 50  0000 L CNN
F 2 "" H 2200 6100 50  0001 C CNN
F 3 "" H 2200 6100 50  0001 C CNN
	1    2200 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 6100 2200 6100
$Comp
L power:VCC #PWR?
U 1 1 5DBEFE69
P 2200 3150
F 0 "#PWR?" H 2200 3000 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5DC141C5
P 2200 2850
F 0 "#PWR?" H 2200 2600 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5DC266E6
P 2200 5800
F 0 "#PWR?" H 2200 5550 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5DC7501F
P 2900 3550
F 0 "#PWR?" H 2900 3300 50  0001 C CNN
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
Text Notes 6500 6350 0    50   ~ 0
The lower eight bits of the instruction\ncan be expressed onto the bus as a\nconstant value.
Text Notes 4150 650  0    50   ~ 0
ID/EX registers
Text Notes 2600 700  0    50   ~ 0
Microcode ROMs
Text Label 4950 1350 0    50   ~ 0
ControlWord00
Text Label 4950 1450 0    50   ~ 0
ControlWord01
Text Label 4950 1550 0    50   ~ 0
ControlWord02
Text Label 4950 1650 0    50   ~ 0
ControlWord03
Text Label 4950 1750 0    50   ~ 0
ControlWord04
Text Label 4950 1850 0    50   ~ 0
ControlWord05
Text Label 4950 1950 0    50   ~ 0
ControlWord06
Text Label 4950 2050 0    50   ~ 0
ControlWord07
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
ControlWord08
Text Label 4950 4400 0    50   ~ 0
ControlWord09
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
Connection ~ 9150 1100
Connection ~ 9150 800 
Wire Wire Line
	9650 1100 9150 1100
Wire Wire Line
	9150 800  9650 800 
$Comp
L Device:C C?
U 1 1 5DC65624
P 9650 950
AR Path="/5D2C0761/5DC65624" Ref="C?"  Part="1" 
AR Path="/5D2C0B92/5DC65624" Ref="C?"  Part="1" 
F 0 "C?" H 9765 996 50  0000 L CNN
F 1 "100nF" H 9765 905 50  0000 L CNN
F 2 "" H 9688 800 50  0001 C CNN
F 3 "~" H 9650 950 50  0001 C CNN
	1    9650 950 
	1    0    0    -1  
$EndComp
Connection ~ 7150 1100
Connection ~ 7650 1100
Wire Wire Line
	7650 1100 7150 1100
Connection ~ 8150 1100
Wire Wire Line
	8150 1100 7650 1100
Connection ~ 8650 1100
Wire Wire Line
	8650 1100 8150 1100
Wire Wire Line
	9150 1100 8650 1100
Connection ~ 8650 800 
Wire Wire Line
	8650 800  9150 800 
Connection ~ 8150 800 
Wire Wire Line
	8150 800  8650 800 
Connection ~ 7650 800 
Wire Wire Line
	7650 800  8150 800 
Connection ~ 7150 800 
Wire Wire Line
	7150 800  7650 800 
$Comp
L power:VCC #PWR?
U 1 1 5DC56D8C
P 7150 800
AR Path="/5D2C0761/5DC56D8C" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0B92/5DC56D8C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7150 650 50  0001 C CNN
F 1 "VCC" H 7167 973 50  0000 C CNN
F 2 "" H 7150 800 50  0001 C CNN
F 3 "" H 7150 800 50  0001 C CNN
	1    7150 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC56D86
P 7150 1100
AR Path="/5D2C0761/5DC56D86" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0B92/5DC56D86" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7150 850 50  0001 C CNN
F 1 "GND" H 7155 927 50  0000 C CNN
F 2 "" H 7150 1100 50  0001 C CNN
F 3 "" H 7150 1100 50  0001 C CNN
	1    7150 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC56D80
P 9150 950
AR Path="/5D2C0761/5DC56D80" Ref="C?"  Part="1" 
AR Path="/5D2C0B92/5DC56D80" Ref="C?"  Part="1" 
F 0 "C?" H 9265 996 50  0000 L CNN
F 1 "100nF" H 9265 905 50  0000 L CNN
F 2 "" H 9188 800 50  0001 C CNN
F 3 "~" H 9150 950 50  0001 C CNN
	1    9150 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC56D7A
P 8650 950
AR Path="/5D2C0761/5DC56D7A" Ref="C?"  Part="1" 
AR Path="/5D2C0B92/5DC56D7A" Ref="C?"  Part="1" 
F 0 "C?" H 8765 996 50  0000 L CNN
F 1 "100nF" H 8765 905 50  0000 L CNN
F 2 "" H 8688 800 50  0001 C CNN
F 3 "~" H 8650 950 50  0001 C CNN
	1    8650 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC56D74
P 8150 950
AR Path="/5D2C0761/5DC56D74" Ref="C?"  Part="1" 
AR Path="/5D2C0B92/5DC56D74" Ref="C?"  Part="1" 
F 0 "C?" H 8265 996 50  0000 L CNN
F 1 "100nF" H 8265 905 50  0000 L CNN
F 2 "" H 8188 800 50  0001 C CNN
F 3 "~" H 8150 950 50  0001 C CNN
	1    8150 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC56D6E
P 7650 950
AR Path="/5D2C0761/5DC56D6E" Ref="C?"  Part="1" 
AR Path="/5D2C0B92/5DC56D6E" Ref="C?"  Part="1" 
F 0 "C?" H 7765 996 50  0000 L CNN
F 1 "100nF" H 7765 905 50  0000 L CNN
F 2 "" H 7688 800 50  0001 C CNN
F 3 "~" H 7650 950 50  0001 C CNN
	1    7650 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC56D68
P 7150 950
AR Path="/5D2C0761/5DC56D68" Ref="C?"  Part="1" 
AR Path="/5D2C0B92/5DC56D68" Ref="C?"  Part="1" 
F 0 "C?" H 7265 996 50  0000 L CNN
F 1 "100nF" H 7265 905 50  0000 L CNN
F 2 "" H 7188 800 50  0001 C CNN
F 3 "~" H 7150 950 50  0001 C CNN
	1    7150 950 
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
Text GLabel 9950 1450 2    50   Output ~ 0
ControlWord
Wire Bus Line
	5650 1450 9950 1450
Entry Wire Line
	7750 5150 7850 5050
Entry Wire Line
	7750 5050 7850 4950
Entry Wire Line
	7750 4950 7850 4850
Entry Wire Line
	7750 4850 7850 4750
Entry Wire Line
	7750 4750 7850 4650
Entry Wire Line
	7750 4650 7850 4550
Entry Wire Line
	7750 4550 7850 4450
Entry Wire Line
	7750 4450 7850 4350
Text GLabel 9950 1600 2    50   Output ~ 0
C
Wire Bus Line
	7850 5050 7850 3850
Wire Bus Line
	7850 3850 5750 3850
Wire Bus Line
	5750 3850 5750 1600
Text Label 8050 4450 2    50   ~ 0
C0
Text Label 8050 4550 2    50   ~ 0
C1
Text Label 8050 4650 2    50   ~ 0
C2
Text Label 8050 4750 2    50   ~ 0
C3
Text Label 8050 4850 2    50   ~ 0
C4
Text Label 8050 4950 2    50   ~ 0
C5
Text Label 8050 5050 2    50   ~ 0
C6
Text Label 8050 5150 2    50   ~ 0
C7
$Comp
L Device:LED D?
U 1 1 5DDA0930
P 8200 1950
AR Path="/5D2C07CD/5DDA0930" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DDA0930" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DDA0930" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DDA0930" Ref="D?"  Part="1" 
AR Path="/5D2C0B92/5DDA0930" Ref="D?"  Part="1" 
F 0 "D?" V 8239 1833 50  0000 R CNN
F 1 "LED" V 8148 1833 50  0000 R CNN
F 2 "" H 8200 1950 50  0001 C CNN
F 3 "~" H 8200 1950 50  0001 C CNN
	1    8200 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DDA0936
P 8550 1950
AR Path="/5D2C07CD/5DDA0936" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DDA0936" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DDA0936" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DDA0936" Ref="D?"  Part="1" 
AR Path="/5D2C0B92/5DDA0936" Ref="D?"  Part="1" 
F 0 "D?" V 8589 1833 50  0000 R CNN
F 1 "LED" V 8498 1833 50  0000 R CNN
F 2 "" H 8550 1950 50  0001 C CNN
F 3 "~" H 8550 1950 50  0001 C CNN
	1    8550 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DDA093C
P 8900 1950
AR Path="/5D2C07CD/5DDA093C" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DDA093C" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DDA093C" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DDA093C" Ref="D?"  Part="1" 
AR Path="/5D2C0B92/5DDA093C" Ref="D?"  Part="1" 
F 0 "D?" V 8939 1833 50  0000 R CNN
F 1 "LED" V 8848 1833 50  0000 R CNN
F 2 "" H 8900 1950 50  0001 C CNN
F 3 "~" H 8900 1950 50  0001 C CNN
	1    8900 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DDA0942
P 9250 1950
AR Path="/5D2C07CD/5DDA0942" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DDA0942" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DDA0942" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DDA0942" Ref="D?"  Part="1" 
AR Path="/5D2C0B92/5DDA0942" Ref="D?"  Part="1" 
F 0 "D?" V 9289 1833 50  0000 R CNN
F 1 "LED" V 9198 1833 50  0000 R CNN
F 2 "" H 9250 1950 50  0001 C CNN
F 3 "~" H 9250 1950 50  0001 C CNN
	1    9250 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DDA0948
P 7850 1950
AR Path="/5D2C07CD/5DDA0948" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DDA0948" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DDA0948" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DDA0948" Ref="D?"  Part="1" 
AR Path="/5D2C0B92/5DDA0948" Ref="D?"  Part="1" 
F 0 "D?" V 7889 1833 50  0000 R CNN
F 1 "LED" V 7798 1833 50  0000 R CNN
F 2 "" H 7850 1950 50  0001 C CNN
F 3 "~" H 7850 1950 50  0001 C CNN
	1    7850 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DDA094E
P 7500 1950
AR Path="/5D2C07CD/5DDA094E" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DDA094E" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DDA094E" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DDA094E" Ref="D?"  Part="1" 
AR Path="/5D2C0B92/5DDA094E" Ref="D?"  Part="1" 
F 0 "D?" V 7539 1833 50  0000 R CNN
F 1 "LED" V 7448 1833 50  0000 R CNN
F 2 "" H 7500 1950 50  0001 C CNN
F 3 "~" H 7500 1950 50  0001 C CNN
	1    7500 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DDA0954
P 7150 1950
AR Path="/5D2C07CD/5DDA0954" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DDA0954" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DDA0954" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DDA0954" Ref="D?"  Part="1" 
AR Path="/5D2C0B92/5DDA0954" Ref="D?"  Part="1" 
F 0 "D?" V 7189 1833 50  0000 R CNN
F 1 "LED" V 7098 1833 50  0000 R CNN
F 2 "" H 7150 1950 50  0001 C CNN
F 3 "~" H 7150 1950 50  0001 C CNN
	1    7150 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DDA095A
P 6800 1950
AR Path="/5D2C07CD/5DDA095A" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DDA095A" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DDA095A" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DDA095A" Ref="D?"  Part="1" 
AR Path="/5D2C0B92/5DDA095A" Ref="D?"  Part="1" 
F 0 "D?" V 6839 1833 50  0000 R CNN
F 1 "LED" V 6748 1833 50  0000 R CNN
F 2 "" H 6800 1950 50  0001 C CNN
F 3 "~" H 6800 1950 50  0001 C CNN
	1    6800 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 2500 6800 2550
Wire Wire Line
	6800 2550 7150 2550
Wire Wire Line
	7150 2500 7150 2550
Connection ~ 7150 2550
Wire Wire Line
	7150 2550 7500 2550
Wire Wire Line
	7500 2500 7500 2550
Connection ~ 7500 2550
Wire Wire Line
	7500 2550 7850 2550
Wire Wire Line
	7850 2500 7850 2550
Connection ~ 7850 2550
Wire Wire Line
	7850 2550 8200 2550
Wire Wire Line
	8200 2500 8200 2550
Connection ~ 8200 2550
Wire Wire Line
	8200 2550 8550 2550
Wire Wire Line
	8550 2500 8550 2550
Connection ~ 8550 2550
Wire Wire Line
	8550 2550 8900 2550
Wire Wire Line
	8900 2500 8900 2550
Connection ~ 8900 2550
Wire Wire Line
	8900 2550 9100 2550
$Comp
L power:GND #PWR?
U 1 1 5DDA0975
P 9100 2600
AR Path="/5D2C07CD/5DDA0975" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DDA0975" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DDA0975" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5DDA0975" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0B92/5DDA0975" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9100 2350 50  0001 C CNN
F 1 "GND" H 9105 2427 50  0000 C CNN
F 2 "" H 9100 2600 50  0001 C CNN
F 3 "" H 9100 2600 50  0001 C CNN
	1    9100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2100 6800 2200
Wire Wire Line
	7150 2100 7150 2200
Wire Wire Line
	7500 2200 7500 2100
Wire Wire Line
	7850 2100 7850 2200
Wire Wire Line
	8200 2200 8200 2100
Wire Wire Line
	8550 2100 8550 2200
Wire Wire Line
	8900 2200 8900 2100
Wire Wire Line
	9250 2100 9250 2200
$Comp
L Device:R R?
U 1 1 5DDA0983
P 6800 2350
AR Path="/5D2C0CA7/5DDA0983" Ref="R?"  Part="1" 
AR Path="/5D2C0B92/5DDA0983" Ref="R?"  Part="1" 
F 0 "R?" H 6870 2396 50  0000 L CNN
F 1 "220Ω" H 6870 2305 50  0000 L CNN
F 2 "" V 6730 2350 50  0001 C CNN
F 3 "~" H 6800 2350 50  0001 C CNN
	1    6800 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DDA0989
P 7150 2350
AR Path="/5D2C0CA7/5DDA0989" Ref="R?"  Part="1" 
AR Path="/5D2C0B92/5DDA0989" Ref="R?"  Part="1" 
F 0 "R?" H 7220 2396 50  0000 L CNN
F 1 "220Ω" H 7220 2305 50  0000 L CNN
F 2 "" V 7080 2350 50  0001 C CNN
F 3 "~" H 7150 2350 50  0001 C CNN
	1    7150 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DDA098F
P 7500 2350
AR Path="/5D2C0CA7/5DDA098F" Ref="R?"  Part="1" 
AR Path="/5D2C0B92/5DDA098F" Ref="R?"  Part="1" 
F 0 "R?" H 7570 2396 50  0000 L CNN
F 1 "220Ω" H 7570 2305 50  0000 L CNN
F 2 "" V 7430 2350 50  0001 C CNN
F 3 "~" H 7500 2350 50  0001 C CNN
	1    7500 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DDA0995
P 7850 2350
AR Path="/5D2C0CA7/5DDA0995" Ref="R?"  Part="1" 
AR Path="/5D2C0B92/5DDA0995" Ref="R?"  Part="1" 
F 0 "R?" H 7920 2396 50  0000 L CNN
F 1 "220Ω" H 7920 2305 50  0000 L CNN
F 2 "" V 7780 2350 50  0001 C CNN
F 3 "~" H 7850 2350 50  0001 C CNN
	1    7850 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DDA099B
P 8200 2350
AR Path="/5D2C0CA7/5DDA099B" Ref="R?"  Part="1" 
AR Path="/5D2C0B92/5DDA099B" Ref="R?"  Part="1" 
F 0 "R?" H 8270 2396 50  0000 L CNN
F 1 "220Ω" H 8270 2305 50  0000 L CNN
F 2 "" V 8130 2350 50  0001 C CNN
F 3 "~" H 8200 2350 50  0001 C CNN
	1    8200 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DDA09A1
P 8550 2350
AR Path="/5D2C0CA7/5DDA09A1" Ref="R?"  Part="1" 
AR Path="/5D2C0B92/5DDA09A1" Ref="R?"  Part="1" 
F 0 "R?" H 8620 2396 50  0000 L CNN
F 1 "220Ω" H 8620 2305 50  0000 L CNN
F 2 "" V 8480 2350 50  0001 C CNN
F 3 "~" H 8550 2350 50  0001 C CNN
	1    8550 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DDA09A7
P 8900 2350
AR Path="/5D2C0CA7/5DDA09A7" Ref="R?"  Part="1" 
AR Path="/5D2C0B92/5DDA09A7" Ref="R?"  Part="1" 
F 0 "R?" H 8970 2396 50  0000 L CNN
F 1 "220Ω" H 8970 2305 50  0000 L CNN
F 2 "" V 8830 2350 50  0001 C CNN
F 3 "~" H 8900 2350 50  0001 C CNN
	1    8900 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DDA09AD
P 9250 2350
AR Path="/5D2C0CA7/5DDA09AD" Ref="R?"  Part="1" 
AR Path="/5D2C0B92/5DDA09AD" Ref="R?"  Part="1" 
F 0 "R?" H 9320 2396 50  0000 L CNN
F 1 "220Ω" H 9320 2305 50  0000 L CNN
F 2 "" V 9180 2350 50  0001 C CNN
F 3 "~" H 9250 2350 50  0001 C CNN
	1    9250 2350
	1    0    0    -1  
$EndComp
Entry Wire Line
	6800 1700 6700 1600
Entry Wire Line
	7150 1700 7050 1600
Entry Wire Line
	7500 1700 7400 1600
Entry Wire Line
	7850 1700 7750 1600
Entry Wire Line
	8200 1700 8100 1600
Entry Wire Line
	8550 1700 8450 1600
Entry Wire Line
	8900 1700 8800 1600
Entry Wire Line
	9250 1700 9150 1600
Text Label 6800 1800 1    50   ~ 0
C7
Text Label 7150 1800 1    50   ~ 0
C6
Text Label 7500 1800 1    50   ~ 0
C5
Text Label 7850 1800 1    50   ~ 0
C4
Text Label 8200 1800 1    50   ~ 0
C3
Text Label 8550 1800 1    50   ~ 0
C2
Text Label 8900 1800 1    50   ~ 0
C1
Text Label 9250 1800 1    50   ~ 0
C0
Wire Wire Line
	6800 1700 6800 1800
Wire Wire Line
	7150 1700 7150 1800
Wire Wire Line
	7500 1700 7500 1800
Wire Wire Line
	7850 1700 7850 1800
Wire Wire Line
	8200 1700 8200 1800
Wire Wire Line
	8550 1700 8550 1800
Wire Wire Line
	8900 1700 8900 1800
Wire Wire Line
	9250 1700 9250 1800
Wire Wire Line
	9100 2600 9100 2550
Wire Wire Line
	9250 2500 9250 2550
Wire Wire Line
	9250 2550 9100 2550
Connection ~ 9100 2550
Wire Wire Line
	7700 4450 8250 4450
Wire Wire Line
	7700 4550 8250 4550
Wire Wire Line
	7700 4650 8250 4650
Wire Wire Line
	7700 4750 8250 4750
Wire Wire Line
	7700 4850 8250 4850
Wire Wire Line
	7700 4950 8250 4950
Wire Wire Line
	7700 5050 8250 5050
Wire Wire Line
	7700 5150 8250 5150
Wire Bus Line
	6200 4550 6200 5250
Wire Bus Line
	5750 1600 9950 1600
Wire Bus Line
	9750 4550 9750 5550
Wire Bus Line
	1850 1250 1850 7250
Wire Bus Line
	5650 1450 5650 4900
$EndSCHEMATC
