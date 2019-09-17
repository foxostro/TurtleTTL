EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 21 24
Title "Register A"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Register A is wired to the ALU's A operand."
$EndDescr
Entry Wire Line
	8300 2200 8200 2300
Entry Wire Line
	8300 2300 8200 2400
Entry Wire Line
	8300 2400 8200 2500
Entry Wire Line
	8300 2500 8200 2600
Entry Wire Line
	8300 2600 8200 2700
Entry Wire Line
	8300 2700 8200 2800
Entry Wire Line
	8300 2800 8200 2900
Text GLabel 8950 1800 2    50   Output ~ 0
DataBus
Wire Bus Line
	8950 1800 8300 1800
Entry Wire Line
	8300 2100 8200 2200
Text Label 7800 2300 0    50   ~ 0
DataBus1
Text Label 7800 2400 0    50   ~ 0
DataBus2
Text Label 7800 2500 0    50   ~ 0
DataBus3
Text Label 7800 2600 0    50   ~ 0
DataBus4
Text Label 7800 2700 0    50   ~ 0
DataBus5
Text Label 7800 2800 0    50   ~ 0
DataBus6
Text Label 7800 2900 0    50   ~ 0
DataBus7
Text Label 7800 2200 0    50   ~ 0
DataBus0
$Comp
L Device:C C?
U 1 1 5DD10F27
P 8000 5350
AR Path="/5D2C07CD/5DD10F27" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5DD10F27" Ref="C?"  Part="1" 
AR Path="/5D2C0CA7/5DD10F27" Ref="C75"  Part="1" 
F 0 "C75" H 8115 5396 50  0000 L CNN
F 1 "100nF" H 8115 5305 50  0000 L CNN
F 2 "" H 8038 5200 50  0001 C CNN
F 3 "~" H 8000 5350 50  0001 C CNN
	1    8000 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DD10F2D
P 8500 5350
AR Path="/5D2C07CD/5DD10F2D" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5DD10F2D" Ref="C?"  Part="1" 
AR Path="/5D2C0CA7/5DD10F2D" Ref="C76"  Part="1" 
F 0 "C76" H 8615 5396 50  0000 L CNN
F 1 "100nF" H 8615 5305 50  0000 L CNN
F 2 "" H 8538 5200 50  0001 C CNN
F 3 "~" H 8500 5350 50  0001 C CNN
	1    8500 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD10F3F
P 8000 5500
AR Path="/5D2C07CD/5DD10F3F" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DD10F3F" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DD10F3F" Ref="#PWR0269"  Part="1" 
F 0 "#PWR0269" H 8000 5250 50  0001 C CNN
F 1 "GND" H 8005 5327 50  0000 C CNN
F 2 "" H 8000 5500 50  0001 C CNN
F 3 "" H 8000 5500 50  0001 C CNN
	1    8000 5500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DD10F45
P 8000 5200
AR Path="/5D2C07CD/5DD10F45" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DD10F45" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DD10F45" Ref="#PWR0270"  Part="1" 
F 0 "#PWR0270" H 8000 5050 50  0001 C CNN
F 1 "VCC" H 8017 5373 50  0000 C CNN
F 2 "" H 8000 5200 50  0001 C CNN
F 3 "" H 8000 5200 50  0001 C CNN
	1    8000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5200 8500 5200
Connection ~ 8000 5200
Wire Wire Line
	8500 5500 8000 5500
Connection ~ 8000 5500
Wire Wire Line
	8200 2900 7250 2900
Wire Wire Line
	8200 2800 7250 2800
Wire Wire Line
	8200 2700 7250 2700
Wire Wire Line
	8200 2600 7250 2600
Wire Wire Line
	8200 2500 7250 2500
Wire Wire Line
	8200 2400 7250 2400
Wire Wire Line
	8200 2300 7250 2300
Wire Wire Line
	8200 2200 7250 2200
$Comp
L power:VCC #PWR0271
U 1 1 5DD10F5F
P 6750 1900
AR Path="/5D2C0CA7/5DD10F5F" Ref="#PWR0271"  Part="1" 
AR Path="/5D7BD0EA/5DD10F5F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0271" H 6750 1750 50  0001 C CNN
F 1 "VCC" H 6767 2073 50  0000 C CNN
F 2 "" H 6750 1900 50  0001 C CNN
F 3 "" H 6750 1900 50  0001 C CNN
	1    6750 1900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD10F65
P 6750 3500
AR Path="/5D7BD0EA/5DD10F65" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DD10F65" Ref="#PWR0272"  Part="1" 
F 0 "#PWR0272" H 6750 3250 50  0001 C CNN
F 1 "GND" H 6755 3327 50  0000 C CNN
F 2 "" H 6750 3500 50  0001 C CNN
F 3 "" H 6750 3500 50  0001 C CNN
	1    6750 3500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD10F6B
P 4650 3500
AR Path="/5D7BD0EA/5DD10F6B" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DD10F6B" Ref="#PWR0273"  Part="1" 
F 0 "#PWR0273" H 4650 3250 50  0001 C CNN
F 1 "GND" H 4655 3327 50  0000 C CNN
F 2 "" H 4650 3500 50  0001 C CNN
F 3 "" H 4650 3500 50  0001 C CNN
	1    4650 3500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U81
U 1 1 5DD10F71
P 6750 2700
AR Path="/5D2C0CA7/5DD10F71" Ref="U81"  Part="1" 
AR Path="/5D7BD0EA/5DD10F71" Ref="U?"  Part="1" 
F 0 "U81" H 6500 3500 50  0000 C CNN
F 1 "74LS245" H 6500 3400 50  0000 C CNN
F 2 "" H 6750 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 6750 2700 50  0001 C CNN
	1    6750 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0274
U 1 1 5DD10F77
P 4650 1900
AR Path="/5D2C0CA7/5DD10F77" Ref="#PWR0274"  Part="1" 
AR Path="/5D7BD0EA/5DD10F77" Ref="#PWR?"  Part="1" 
F 0 "#PWR0274" H 4650 1750 50  0001 C CNN
F 1 "VCC" H 4667 2073 50  0000 C CNN
F 2 "" H 4650 1900 50  0001 C CNN
F 3 "" H 4650 1900 50  0001 C CNN
	1    4650 1900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 U80
U 1 1 5DD10F7D
P 4650 2700
AR Path="/5D2C0CA7/5DD10F7D" Ref="U80"  Part="1" 
AR Path="/5D7BD0EA/5DD10F7D" Ref="U?"  Part="1" 
F 0 "U80" H 4450 3500 50  0000 C CNN
F 1 "74F377" H 4400 3400 50  0000 C CNN
F 2 "" H 4650 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 4650 2700 50  0001 C CNN
	1    4650 2700
	1    0    0    -1  
$EndComp
Entry Wire Line
	3100 2200 3200 2300
Entry Wire Line
	3100 2300 3200 2400
Entry Wire Line
	3100 2400 3200 2500
Entry Wire Line
	3100 2500 3200 2600
Entry Wire Line
	3100 2600 3200 2700
Entry Wire Line
	3100 2700 3200 2800
Entry Wire Line
	3100 2800 3200 2900
Text GLabel 2450 1900 0    50   Input ~ 0
DataBus
Wire Bus Line
	2450 1900 3100 1900
Entry Wire Line
	3100 2100 3200 2200
Text Label 3600 2300 2    50   ~ 0
DataBus1
Text Label 3600 2400 2    50   ~ 0
DataBus2
Text Label 3600 2500 2    50   ~ 0
DataBus3
Text Label 3600 2600 2    50   ~ 0
DataBus4
Text Label 3600 2700 2    50   ~ 0
DataBus5
Text Label 3600 2800 2    50   ~ 0
DataBus6
Text Label 3600 2900 2    50   ~ 0
DataBus7
Text Label 3600 2200 2    50   ~ 0
DataBus0
Wire Wire Line
	3200 2900 4150 2900
Wire Wire Line
	3200 2800 4150 2800
Wire Wire Line
	3200 2700 4150 2700
Wire Wire Line
	3200 2600 4150 2600
Wire Wire Line
	3200 2500 4150 2500
Wire Wire Line
	3200 2400 4150 2400
Wire Wire Line
	3200 2300 4150 2300
Wire Wire Line
	3200 2200 4150 2200
Wire Wire Line
	6250 3200 6000 3200
Wire Wire Line
	6000 3200 6000 3800
$Comp
L power:VCC #PWR0275
U 1 1 5DD11004
P 6250 3100
AR Path="/5D2C0CA7/5DD11004" Ref="#PWR0275"  Part="1" 
AR Path="/5D7BD0EA/5DD11004" Ref="#PWR?"  Part="1" 
F 0 "#PWR0275" H 6250 2950 50  0001 C CNN
F 1 "VCC" H 6267 3273 50  0000 C CNN
F 2 "" H 6250 3100 50  0001 C CNN
F 3 "" H 6250 3100 50  0001 C CNN
	1    6250 3100
	0    -1   1    0   
$EndComp
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
	5500 2200 5600 2100
Entry Wire Line
	5500 2300 5600 2200
Text GLabel 8950 1650 2    50   Output ~ 0
A
Wire Bus Line
	8950 1650 5600 1650
Text Label 5450 2900 2    50   ~ 0
A7
Text Label 5450 2800 2    50   ~ 0
A6
Text Label 5450 2700 2    50   ~ 0
A5
Text Label 5450 2600 2    50   ~ 0
A4
Text Label 5450 2500 2    50   ~ 0
A3
Text Label 5450 2400 2    50   ~ 0
A2
Text Label 5450 2300 2    50   ~ 0
A1
Text Label 5450 2200 2    50   ~ 0
A0
Wire Wire Line
	2700 3800 6000 3800
Wire Wire Line
	2700 3500 2700 3800
Text GLabel 2450 3500 0    50   Input ~ 0
~AO
Wire Wire Line
	2450 3500 2700 3500
Wire Wire Line
	4150 3200 2700 3200
Wire Wire Line
	2700 3200 2700 3300
Text GLabel 2450 3300 0    50   Input ~ 0
~AI
Wire Wire Line
	2700 3300 2450 3300
Wire Wire Line
	4150 3100 2450 3100
Text GLabel 2450 3100 0    50   Input ~ 0
RegisterClock
$Comp
L Device:LED D?
U 1 1 5DD41542
P 5050 5400
AR Path="/5D2C07CD/5DD41542" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD41542" Ref="D78"  Part="1" 
AR Path="/5D7BD0EA/5DD41542" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD41542" Ref="D?"  Part="1" 
F 0 "D78" V 5089 5283 50  0000 R CNN
F 1 "LED" V 4998 5283 50  0000 R CNN
F 2 "" H 5050 5400 50  0001 C CNN
F 3 "~" H 5050 5400 50  0001 C CNN
	1    5050 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD41548
P 5400 5400
AR Path="/5D2C07CD/5DD41548" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD41548" Ref="D79"  Part="1" 
AR Path="/5D7BD0EA/5DD41548" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD41548" Ref="D?"  Part="1" 
F 0 "D79" V 5439 5283 50  0000 R CNN
F 1 "LED" V 5348 5283 50  0000 R CNN
F 2 "" H 5400 5400 50  0001 C CNN
F 3 "~" H 5400 5400 50  0001 C CNN
	1    5400 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD4154E
P 5750 5400
AR Path="/5D2C07CD/5DD4154E" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD4154E" Ref="D80"  Part="1" 
AR Path="/5D7BD0EA/5DD4154E" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD4154E" Ref="D?"  Part="1" 
F 0 "D80" V 5789 5283 50  0000 R CNN
F 1 "LED" V 5698 5283 50  0000 R CNN
F 2 "" H 5750 5400 50  0001 C CNN
F 3 "~" H 5750 5400 50  0001 C CNN
	1    5750 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD41554
P 6100 5400
AR Path="/5D2C07CD/5DD41554" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD41554" Ref="D81"  Part="1" 
AR Path="/5D7BD0EA/5DD41554" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD41554" Ref="D?"  Part="1" 
F 0 "D81" V 6139 5283 50  0000 R CNN
F 1 "LED" V 6048 5283 50  0000 R CNN
F 2 "" H 6100 5400 50  0001 C CNN
F 3 "~" H 6100 5400 50  0001 C CNN
	1    6100 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD4155A
P 4700 5400
AR Path="/5D2C07CD/5DD4155A" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD4155A" Ref="D77"  Part="1" 
AR Path="/5D7BD0EA/5DD4155A" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD4155A" Ref="D?"  Part="1" 
F 0 "D77" V 4739 5283 50  0000 R CNN
F 1 "LED" V 4648 5283 50  0000 R CNN
F 2 "" H 4700 5400 50  0001 C CNN
F 3 "~" H 4700 5400 50  0001 C CNN
	1    4700 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD41560
P 4350 5400
AR Path="/5D2C07CD/5DD41560" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD41560" Ref="D76"  Part="1" 
AR Path="/5D7BD0EA/5DD41560" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD41560" Ref="D?"  Part="1" 
F 0 "D76" V 4389 5283 50  0000 R CNN
F 1 "LED" V 4298 5283 50  0000 R CNN
F 2 "" H 4350 5400 50  0001 C CNN
F 3 "~" H 4350 5400 50  0001 C CNN
	1    4350 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD41566
P 4000 5400
AR Path="/5D2C07CD/5DD41566" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD41566" Ref="D75"  Part="1" 
AR Path="/5D7BD0EA/5DD41566" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD41566" Ref="D?"  Part="1" 
F 0 "D75" V 4039 5283 50  0000 R CNN
F 1 "LED" V 3948 5283 50  0000 R CNN
F 2 "" H 4000 5400 50  0001 C CNN
F 3 "~" H 4000 5400 50  0001 C CNN
	1    4000 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD4156C
P 3650 5400
AR Path="/5D2C07CD/5DD4156C" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD4156C" Ref="D74"  Part="1" 
AR Path="/5D7BD0EA/5DD4156C" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD4156C" Ref="D?"  Part="1" 
F 0 "D74" V 3689 5283 50  0000 R CNN
F 1 "LED" V 3598 5283 50  0000 R CNN
F 2 "" H 3650 5400 50  0001 C CNN
F 3 "~" H 3650 5400 50  0001 C CNN
	1    3650 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 6000 3650 6100
Wire Wire Line
	3650 6100 4000 6100
Wire Wire Line
	4000 6000 4000 6100
Connection ~ 4000 6100
Wire Wire Line
	4000 6100 4350 6100
Wire Wire Line
	4350 6000 4350 6100
Connection ~ 4350 6100
Wire Wire Line
	4350 6100 4700 6100
Wire Wire Line
	4700 6000 4700 6100
Connection ~ 4700 6100
Wire Wire Line
	4700 6100 5050 6100
Wire Wire Line
	5050 6000 5050 6100
Connection ~ 5050 6100
Wire Wire Line
	5050 6100 5400 6100
Wire Wire Line
	5400 6000 5400 6100
Connection ~ 5400 6100
Wire Wire Line
	5400 6100 5750 6100
Wire Wire Line
	5750 6000 5750 6100
Connection ~ 5750 6100
Wire Wire Line
	5750 6100 5950 6100
Wire Wire Line
	6100 6000 6100 6100
$Comp
L power:GND #PWR?
U 1 1 5DD41587
P 5950 6200
AR Path="/5D2C07CD/5DD41587" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DD41587" Ref="#PWR0276"  Part="1" 
AR Path="/5D7BD0EA/5DD41587" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5DD41587" Ref="#PWR?"  Part="1" 
F 0 "#PWR0276" H 5950 5950 50  0001 C CNN
F 1 "GND" H 5955 6027 50  0000 C CNN
F 2 "" H 5950 6200 50  0001 C CNN
F 3 "" H 5950 6200 50  0001 C CNN
	1    5950 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5550 3650 5700
Wire Wire Line
	4000 5550 4000 5700
Wire Wire Line
	4350 5700 4350 5550
Wire Wire Line
	4700 5550 4700 5700
Wire Wire Line
	5050 5700 5050 5550
Wire Wire Line
	5400 5550 5400 5700
Wire Wire Line
	5750 5700 5750 5550
Wire Wire Line
	6100 5550 6100 5700
$Comp
L Device:R R92
U 1 1 5DD41595
P 3650 5850
F 0 "R92" H 3720 5896 50  0000 L CNN
F 1 "220Ω" H 3720 5805 50  0000 L CNN
F 2 "" V 3580 5850 50  0001 C CNN
F 3 "~" H 3650 5850 50  0001 C CNN
	1    3650 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R93
U 1 1 5DD4159B
P 4000 5850
F 0 "R93" H 4070 5896 50  0000 L CNN
F 1 "220Ω" H 4070 5805 50  0000 L CNN
F 2 "" V 3930 5850 50  0001 C CNN
F 3 "~" H 4000 5850 50  0001 C CNN
	1    4000 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R94
U 1 1 5DD415A1
P 4350 5850
F 0 "R94" H 4420 5896 50  0000 L CNN
F 1 "220Ω" H 4420 5805 50  0000 L CNN
F 2 "" V 4280 5850 50  0001 C CNN
F 3 "~" H 4350 5850 50  0001 C CNN
	1    4350 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R95
U 1 1 5DD415A7
P 4700 5850
F 0 "R95" H 4770 5896 50  0000 L CNN
F 1 "220Ω" H 4770 5805 50  0000 L CNN
F 2 "" V 4630 5850 50  0001 C CNN
F 3 "~" H 4700 5850 50  0001 C CNN
	1    4700 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R96
U 1 1 5DD415AD
P 5050 5850
F 0 "R96" H 5120 5896 50  0000 L CNN
F 1 "220Ω" H 5120 5805 50  0000 L CNN
F 2 "" V 4980 5850 50  0001 C CNN
F 3 "~" H 5050 5850 50  0001 C CNN
	1    5050 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R97
U 1 1 5DD415B3
P 5400 5850
F 0 "R97" H 5470 5896 50  0000 L CNN
F 1 "220Ω" H 5470 5805 50  0000 L CNN
F 2 "" V 5330 5850 50  0001 C CNN
F 3 "~" H 5400 5850 50  0001 C CNN
	1    5400 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R98
U 1 1 5DD415B9
P 5750 5850
F 0 "R98" H 5820 5896 50  0000 L CNN
F 1 "220Ω" H 5820 5805 50  0000 L CNN
F 2 "" V 5680 5850 50  0001 C CNN
F 3 "~" H 5750 5850 50  0001 C CNN
	1    5750 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R99
U 1 1 5DD415BF
P 6100 5850
F 0 "R99" H 6170 5896 50  0000 L CNN
F 1 "220Ω" H 6170 5805 50  0000 L CNN
F 2 "" V 6030 5850 50  0001 C CNN
F 3 "~" H 6100 5850 50  0001 C CNN
	1    6100 5850
	1    0    0    -1  
$EndComp
Entry Wire Line
	3650 4650 3550 4550
Entry Wire Line
	4000 4650 3900 4550
Entry Wire Line
	4350 4650 4250 4550
Entry Wire Line
	4700 4650 4600 4550
Entry Wire Line
	5050 4650 4950 4550
Entry Wire Line
	5400 4650 5300 4550
Entry Wire Line
	5750 4650 5650 4550
Entry Wire Line
	6100 4650 6000 4550
Text GLabel 2450 4550 0    50   Input ~ 0
A
Text Label 3650 4750 1    50   ~ 0
A7
Text Label 4000 4750 1    50   ~ 0
A6
Text Label 4350 4750 1    50   ~ 0
A5
Text Label 4700 4750 1    50   ~ 0
A4
Text Label 5050 4750 1    50   ~ 0
A3
Text Label 5400 4750 1    50   ~ 0
A2
Text Label 5750 4750 1    50   ~ 0
A1
Text Label 6100 4750 1    50   ~ 0
A0
Wire Wire Line
	3650 4650 3650 5250
Wire Wire Line
	4000 4650 4000 5250
Wire Wire Line
	4350 4650 4350 5250
Wire Wire Line
	4700 4650 4700 5250
Wire Wire Line
	5050 4650 5050 5250
Wire Wire Line
	5400 4650 5400 5250
Wire Wire Line
	5750 4650 5750 5250
Wire Wire Line
	6100 4650 6100 5250
Wire Wire Line
	5950 6200 5950 6100
Connection ~ 5950 6100
Wire Wire Line
	5950 6100 6100 6100
Wire Wire Line
	5150 2900 6250 2900
Wire Wire Line
	5150 2300 6250 2300
Wire Wire Line
	5150 2400 6250 2400
Wire Wire Line
	5150 2500 6250 2500
Wire Wire Line
	5150 2600 6250 2600
Wire Wire Line
	5150 2700 6250 2700
Wire Wire Line
	5150 2800 6250 2800
Wire Wire Line
	5150 2200 6250 2200
Wire Bus Line
	5600 1650 5600 2800
Wire Bus Line
	3100 1900 3100 2800
Wire Bus Line
	8300 1800 8300 2800
Wire Bus Line
	2450 4550 6000 4550
$EndSCHEMATC
