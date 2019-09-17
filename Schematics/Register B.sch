EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 22 24
Title "Register B"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Register B is wired to the ALU's B operand."
$EndDescr
Entry Wire Line
	8200 2200 8100 2300
Entry Wire Line
	8200 2300 8100 2400
Entry Wire Line
	8200 2400 8100 2500
Entry Wire Line
	8200 2500 8100 2600
Entry Wire Line
	8200 2600 8100 2700
Entry Wire Line
	8200 2700 8100 2800
Entry Wire Line
	8200 2800 8100 2900
Text GLabel 8850 1800 2    50   Output ~ 0
DataBus
Wire Bus Line
	8850 1800 8200 1800
Entry Wire Line
	8200 2100 8100 2200
Text Label 7700 2300 0    50   ~ 0
DataBus1
Text Label 7700 2400 0    50   ~ 0
DataBus2
Text Label 7700 2500 0    50   ~ 0
DataBus3
Text Label 7700 2600 0    50   ~ 0
DataBus4
Text Label 7700 2700 0    50   ~ 0
DataBus5
Text Label 7700 2800 0    50   ~ 0
DataBus6
Text Label 7700 2900 0    50   ~ 0
DataBus7
Text Label 7700 2200 0    50   ~ 0
DataBus0
$Comp
L Device:C C?
U 1 1 5DD6C85F
P 7900 5350
AR Path="/5D2C07CD/5DD6C85F" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C85F" Ref="C?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C85F" Ref="C?"  Part="1" 
AR Path="/5D2C0D13/5DD6C85F" Ref="C?"  Part="1" 
F 0 "C?" H 8015 5396 50  0000 L CNN
F 1 "100nF" H 8015 5305 50  0000 L CNN
F 2 "" H 7938 5200 50  0001 C CNN
F 3 "~" H 7900 5350 50  0001 C CNN
	1    7900 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DD6C865
P 8400 5350
AR Path="/5D2C07CD/5DD6C865" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C865" Ref="C?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C865" Ref="C?"  Part="1" 
AR Path="/5D2C0D13/5DD6C865" Ref="C?"  Part="1" 
F 0 "C?" H 8515 5396 50  0000 L CNN
F 1 "100nF" H 8515 5305 50  0000 L CNN
F 2 "" H 8438 5200 50  0001 C CNN
F 3 "~" H 8400 5350 50  0001 C CNN
	1    8400 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD6C86B
P 7900 5500
AR Path="/5D2C07CD/5DD6C86B" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C86B" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C86B" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0D13/5DD6C86B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7900 5250 50  0001 C CNN
F 1 "GND" H 7905 5327 50  0000 C CNN
F 2 "" H 7900 5500 50  0001 C CNN
F 3 "" H 7900 5500 50  0001 C CNN
	1    7900 5500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DD6C871
P 7900 5200
AR Path="/5D2C07CD/5DD6C871" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C871" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C871" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0D13/5DD6C871" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7900 5050 50  0001 C CNN
F 1 "VCC" H 7917 5373 50  0000 C CNN
F 2 "" H 7900 5200 50  0001 C CNN
F 3 "" H 7900 5200 50  0001 C CNN
	1    7900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5200 8400 5200
Connection ~ 7900 5200
Wire Wire Line
	8400 5500 7900 5500
Connection ~ 7900 5500
Wire Wire Line
	8100 2900 7150 2900
Wire Wire Line
	8100 2800 7150 2800
Wire Wire Line
	8100 2700 7150 2700
Wire Wire Line
	8100 2600 7150 2600
Wire Wire Line
	8100 2500 7150 2500
Wire Wire Line
	8100 2400 7150 2400
Wire Wire Line
	8100 2300 7150 2300
Wire Wire Line
	8100 2200 7150 2200
$Comp
L power:VCC #PWR?
U 1 1 5DD6C883
P 6650 1900
AR Path="/5D2C0CA7/5DD6C883" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C883" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0D13/5DD6C883" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6650 1750 50  0001 C CNN
F 1 "VCC" H 6667 2073 50  0000 C CNN
F 2 "" H 6650 1900 50  0001 C CNN
F 3 "" H 6650 1900 50  0001 C CNN
	1    6650 1900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD6C889
P 6650 3500
AR Path="/5D7BD0EA/5DD6C889" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C889" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0D13/5DD6C889" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6650 3250 50  0001 C CNN
F 1 "GND" H 6655 3327 50  0000 C CNN
F 2 "" H 6650 3500 50  0001 C CNN
F 3 "" H 6650 3500 50  0001 C CNN
	1    6650 3500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD6C88F
P 4550 3500
AR Path="/5D7BD0EA/5DD6C88F" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C88F" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0D13/5DD6C88F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4550 3250 50  0001 C CNN
F 1 "GND" H 4555 3327 50  0000 C CNN
F 2 "" H 4550 3500 50  0001 C CNN
F 3 "" H 4550 3500 50  0001 C CNN
	1    4550 3500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 5DD6C895
P 6650 2700
AR Path="/5D2C0CA7/5DD6C895" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C895" Ref="U?"  Part="1" 
AR Path="/5D2C0D13/5DD6C895" Ref="U?"  Part="1" 
F 0 "U?" H 6400 3500 50  0000 C CNN
F 1 "74LS245" H 6400 3400 50  0000 C CNN
F 2 "" H 6650 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 6650 2700 50  0001 C CNN
	1    6650 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DD6C89B
P 4550 1900
AR Path="/5D2C0CA7/5DD6C89B" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C89B" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0D13/5DD6C89B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4550 1750 50  0001 C CNN
F 1 "VCC" H 4567 2073 50  0000 C CNN
F 2 "" H 4550 1900 50  0001 C CNN
F 3 "" H 4550 1900 50  0001 C CNN
	1    4550 1900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 U?
U 1 1 5DD6C8A1
P 4550 2700
AR Path="/5D2C0CA7/5DD6C8A1" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C8A1" Ref="U?"  Part="1" 
AR Path="/5D2C0D13/5DD6C8A1" Ref="U?"  Part="1" 
F 0 "U?" H 4350 3500 50  0000 C CNN
F 1 "74F377" H 4300 3400 50  0000 C CNN
F 2 "" H 4550 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 4550 2700 50  0001 C CNN
	1    4550 2700
	1    0    0    -1  
$EndComp
Entry Wire Line
	3000 2200 3100 2300
Entry Wire Line
	3000 2300 3100 2400
Entry Wire Line
	3000 2400 3100 2500
Entry Wire Line
	3000 2500 3100 2600
Entry Wire Line
	3000 2600 3100 2700
Entry Wire Line
	3000 2700 3100 2800
Entry Wire Line
	3000 2800 3100 2900
Text GLabel 2350 1900 0    50   Input ~ 0
DataBus
Wire Bus Line
	2350 1900 3000 1900
Entry Wire Line
	3000 2100 3100 2200
Text Label 3500 2300 2    50   ~ 0
DataBus1
Text Label 3500 2400 2    50   ~ 0
DataBus2
Text Label 3500 2500 2    50   ~ 0
DataBus3
Text Label 3500 2600 2    50   ~ 0
DataBus4
Text Label 3500 2700 2    50   ~ 0
DataBus5
Text Label 3500 2800 2    50   ~ 0
DataBus6
Text Label 3500 2900 2    50   ~ 0
DataBus7
Text Label 3500 2200 2    50   ~ 0
DataBus0
Wire Wire Line
	3100 2900 4050 2900
Wire Wire Line
	3100 2800 4050 2800
Wire Wire Line
	3100 2700 4050 2700
Wire Wire Line
	3100 2600 4050 2600
Wire Wire Line
	3100 2500 4050 2500
Wire Wire Line
	3100 2400 4050 2400
Wire Wire Line
	3100 2300 4050 2300
Wire Wire Line
	3100 2200 4050 2200
Wire Wire Line
	6150 3200 5900 3200
Wire Wire Line
	5900 3200 5900 3800
$Comp
L power:VCC #PWR?
U 1 1 5DD6C8C3
P 6150 3100
AR Path="/5D2C0CA7/5DD6C8C3" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C8C3" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0D13/5DD6C8C3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 2950 50  0001 C CNN
F 1 "VCC" H 6167 3273 50  0000 C CNN
F 2 "" H 6150 3100 50  0001 C CNN
F 3 "" H 6150 3100 50  0001 C CNN
	1    6150 3100
	0    -1   1    0   
$EndComp
Entry Wire Line
	5400 2400 5500 2300
Entry Wire Line
	5400 2500 5500 2400
Entry Wire Line
	5400 2600 5500 2500
Entry Wire Line
	5400 2700 5500 2600
Entry Wire Line
	5400 2800 5500 2700
Entry Wire Line
	5400 2900 5500 2800
Entry Wire Line
	5400 2200 5500 2100
Entry Wire Line
	5400 2300 5500 2200
Text GLabel 8850 1650 2    50   Output ~ 0
B
Wire Bus Line
	8850 1650 5500 1650
Text Label 5350 2900 2    50   ~ 0
B7
Text Label 5350 2800 2    50   ~ 0
B6
Text Label 5350 2700 2    50   ~ 0
B5
Text Label 5350 2600 2    50   ~ 0
B4
Text Label 5350 2500 2    50   ~ 0
B3
Text Label 5350 2400 2    50   ~ 0
B2
Text Label 5350 2300 2    50   ~ 0
B1
Text Label 5350 2200 2    50   ~ 0
B0
Wire Wire Line
	2600 3800 5900 3800
Wire Wire Line
	2600 3500 2600 3800
Text GLabel 2350 3500 0    50   Input ~ 0
~BO
Wire Wire Line
	2350 3500 2600 3500
Wire Wire Line
	4050 3200 2600 3200
Wire Wire Line
	2600 3200 2600 3300
Text GLabel 2350 3300 0    50   Input ~ 0
~BI
Wire Wire Line
	2600 3300 2350 3300
Wire Wire Line
	4050 3100 2350 3100
Text GLabel 2350 3100 0    50   Input ~ 0
RegisterClock
$Comp
L Device:LED D?
U 1 1 5DD6C8E6
P 4950 5400
AR Path="/5D2C07CD/5DD6C8E6" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C8E6" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C8E6" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD6C8E6" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5DD6C8E6" Ref="D?"  Part="1" 
F 0 "D?" V 4989 5283 50  0000 R CNN
F 1 "LED" V 4898 5283 50  0000 R CNN
F 2 "" H 4950 5400 50  0001 C CNN
F 3 "~" H 4950 5400 50  0001 C CNN
	1    4950 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD6C8EC
P 5300 5400
AR Path="/5D2C07CD/5DD6C8EC" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C8EC" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C8EC" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD6C8EC" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5DD6C8EC" Ref="D?"  Part="1" 
F 0 "D?" V 5339 5283 50  0000 R CNN
F 1 "LED" V 5248 5283 50  0000 R CNN
F 2 "" H 5300 5400 50  0001 C CNN
F 3 "~" H 5300 5400 50  0001 C CNN
	1    5300 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD6C8F2
P 5650 5400
AR Path="/5D2C07CD/5DD6C8F2" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C8F2" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C8F2" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD6C8F2" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5DD6C8F2" Ref="D?"  Part="1" 
F 0 "D?" V 5689 5283 50  0000 R CNN
F 1 "LED" V 5598 5283 50  0000 R CNN
F 2 "" H 5650 5400 50  0001 C CNN
F 3 "~" H 5650 5400 50  0001 C CNN
	1    5650 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD6C8F8
P 6000 5400
AR Path="/5D2C07CD/5DD6C8F8" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C8F8" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C8F8" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD6C8F8" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5DD6C8F8" Ref="D?"  Part="1" 
F 0 "D?" V 6039 5283 50  0000 R CNN
F 1 "LED" V 5948 5283 50  0000 R CNN
F 2 "" H 6000 5400 50  0001 C CNN
F 3 "~" H 6000 5400 50  0001 C CNN
	1    6000 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD6C8FE
P 4600 5400
AR Path="/5D2C07CD/5DD6C8FE" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C8FE" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C8FE" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD6C8FE" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5DD6C8FE" Ref="D?"  Part="1" 
F 0 "D?" V 4639 5283 50  0000 R CNN
F 1 "LED" V 4548 5283 50  0000 R CNN
F 2 "" H 4600 5400 50  0001 C CNN
F 3 "~" H 4600 5400 50  0001 C CNN
	1    4600 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD6C904
P 4250 5400
AR Path="/5D2C07CD/5DD6C904" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C904" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C904" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD6C904" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5DD6C904" Ref="D?"  Part="1" 
F 0 "D?" V 4289 5283 50  0000 R CNN
F 1 "LED" V 4198 5283 50  0000 R CNN
F 2 "" H 4250 5400 50  0001 C CNN
F 3 "~" H 4250 5400 50  0001 C CNN
	1    4250 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD6C90A
P 3900 5400
AR Path="/5D2C07CD/5DD6C90A" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C90A" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C90A" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD6C90A" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5DD6C90A" Ref="D?"  Part="1" 
F 0 "D?" V 3939 5283 50  0000 R CNN
F 1 "LED" V 3848 5283 50  0000 R CNN
F 2 "" H 3900 5400 50  0001 C CNN
F 3 "~" H 3900 5400 50  0001 C CNN
	1    3900 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD6C910
P 3550 5400
AR Path="/5D2C07CD/5DD6C910" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C910" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C910" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DD6C910" Ref="D?"  Part="1" 
AR Path="/5D2C0D13/5DD6C910" Ref="D?"  Part="1" 
F 0 "D?" V 3589 5283 50  0000 R CNN
F 1 "LED" V 3498 5283 50  0000 R CNN
F 2 "" H 3550 5400 50  0001 C CNN
F 3 "~" H 3550 5400 50  0001 C CNN
	1    3550 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 6000 3550 6100
Wire Wire Line
	3550 6100 3900 6100
Wire Wire Line
	3900 6000 3900 6100
Connection ~ 3900 6100
Wire Wire Line
	3900 6100 4250 6100
Wire Wire Line
	4250 6000 4250 6100
Connection ~ 4250 6100
Wire Wire Line
	4250 6100 4600 6100
Wire Wire Line
	4600 6000 4600 6100
Connection ~ 4600 6100
Wire Wire Line
	4600 6100 4950 6100
Wire Wire Line
	4950 6000 4950 6100
Connection ~ 4950 6100
Wire Wire Line
	4950 6100 5300 6100
Wire Wire Line
	5300 6000 5300 6100
Connection ~ 5300 6100
Wire Wire Line
	5300 6100 5650 6100
Wire Wire Line
	5650 6000 5650 6100
Connection ~ 5650 6100
Wire Wire Line
	5650 6100 5850 6100
Wire Wire Line
	6000 6000 6000 6100
$Comp
L power:GND #PWR?
U 1 1 5DD6C92B
P 5850 6200
AR Path="/5D2C07CD/5DD6C92B" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DD6C92B" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DD6C92B" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5DD6C92B" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0D13/5DD6C92B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5850 5950 50  0001 C CNN
F 1 "GND" H 5855 6027 50  0000 C CNN
F 2 "" H 5850 6200 50  0001 C CNN
F 3 "" H 5850 6200 50  0001 C CNN
	1    5850 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5550 3550 5700
Wire Wire Line
	3900 5550 3900 5700
Wire Wire Line
	4250 5700 4250 5550
Wire Wire Line
	4600 5550 4600 5700
Wire Wire Line
	4950 5700 4950 5550
Wire Wire Line
	5300 5550 5300 5700
Wire Wire Line
	5650 5700 5650 5550
Wire Wire Line
	6000 5550 6000 5700
$Comp
L Device:R R?
U 1 1 5DD6C939
P 3550 5850
F 0 "R?" H 3620 5896 50  0000 L CNN
F 1 "220Ω" H 3620 5805 50  0000 L CNN
F 2 "" V 3480 5850 50  0001 C CNN
F 3 "~" H 3550 5850 50  0001 C CNN
	1    3550 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD6C93F
P 3900 5850
F 0 "R?" H 3970 5896 50  0000 L CNN
F 1 "220Ω" H 3970 5805 50  0000 L CNN
F 2 "" V 3830 5850 50  0001 C CNN
F 3 "~" H 3900 5850 50  0001 C CNN
	1    3900 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD6C945
P 4250 5850
F 0 "R?" H 4320 5896 50  0000 L CNN
F 1 "220Ω" H 4320 5805 50  0000 L CNN
F 2 "" V 4180 5850 50  0001 C CNN
F 3 "~" H 4250 5850 50  0001 C CNN
	1    4250 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD6C94B
P 4600 5850
F 0 "R?" H 4670 5896 50  0000 L CNN
F 1 "220Ω" H 4670 5805 50  0000 L CNN
F 2 "" V 4530 5850 50  0001 C CNN
F 3 "~" H 4600 5850 50  0001 C CNN
	1    4600 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD6C951
P 4950 5850
F 0 "R?" H 5020 5896 50  0000 L CNN
F 1 "220Ω" H 5020 5805 50  0000 L CNN
F 2 "" V 4880 5850 50  0001 C CNN
F 3 "~" H 4950 5850 50  0001 C CNN
	1    4950 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD6C957
P 5300 5850
F 0 "R?" H 5370 5896 50  0000 L CNN
F 1 "220Ω" H 5370 5805 50  0000 L CNN
F 2 "" V 5230 5850 50  0001 C CNN
F 3 "~" H 5300 5850 50  0001 C CNN
	1    5300 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD6C95D
P 5650 5850
F 0 "R?" H 5720 5896 50  0000 L CNN
F 1 "220Ω" H 5720 5805 50  0000 L CNN
F 2 "" V 5580 5850 50  0001 C CNN
F 3 "~" H 5650 5850 50  0001 C CNN
	1    5650 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD6C963
P 6000 5850
F 0 "R?" H 6070 5896 50  0000 L CNN
F 1 "220Ω" H 6070 5805 50  0000 L CNN
F 2 "" V 5930 5850 50  0001 C CNN
F 3 "~" H 6000 5850 50  0001 C CNN
	1    6000 5850
	1    0    0    -1  
$EndComp
Entry Wire Line
	3550 4650 3450 4550
Entry Wire Line
	3900 4650 3800 4550
Entry Wire Line
	4250 4650 4150 4550
Entry Wire Line
	4600 4650 4500 4550
Entry Wire Line
	4950 4650 4850 4550
Entry Wire Line
	5300 4650 5200 4550
Entry Wire Line
	5650 4650 5550 4550
Entry Wire Line
	6000 4650 5900 4550
Text GLabel 2350 4550 0    50   Input ~ 0
B
Text Label 3550 4750 1    50   ~ 0
B7
Text Label 3900 4750 1    50   ~ 0
B6
Text Label 4250 4750 1    50   ~ 0
B5
Text Label 4600 4750 1    50   ~ 0
B4
Text Label 4950 4750 1    50   ~ 0
B3
Text Label 5300 4750 1    50   ~ 0
B2
Text Label 5650 4750 1    50   ~ 0
B1
Text Label 6000 4750 1    50   ~ 0
B0
Wire Wire Line
	3550 4650 3550 5250
Wire Wire Line
	3900 4650 3900 5250
Wire Wire Line
	4250 4650 4250 5250
Wire Wire Line
	4600 4650 4600 5250
Wire Wire Line
	4950 4650 4950 5250
Wire Wire Line
	5300 4650 5300 5250
Wire Wire Line
	5650 4650 5650 5250
Wire Wire Line
	6000 4650 6000 5250
Wire Wire Line
	5850 6200 5850 6100
Connection ~ 5850 6100
Wire Wire Line
	5850 6100 6000 6100
Wire Wire Line
	5050 2900 6150 2900
Wire Wire Line
	5050 2300 6150 2300
Wire Wire Line
	5050 2400 6150 2400
Wire Wire Line
	5050 2500 6150 2500
Wire Wire Line
	5050 2600 6150 2600
Wire Wire Line
	5050 2700 6150 2700
Wire Wire Line
	5050 2800 6150 2800
Wire Wire Line
	5050 2200 6150 2200
Wire Bus Line
	5500 1650 5500 2800
Wire Bus Line
	3000 1900 3000 2800
Wire Bus Line
	8200 1800 8200 2800
Wire Bus Line
	2350 4550 5900 4550
$EndSCHEMATC
