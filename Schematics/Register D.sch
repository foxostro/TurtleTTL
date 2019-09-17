EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 5 24
Title "Register D"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Register D controls the device select lines for peripherals and memory."
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5D2A25FE
P 4450 3900
AR Path="/5D2C0CA7/5D2A25FE" Ref="#PWR?"  Part="1" 
AR Path="/5D29E36D/5D2A25FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 3650 50  0001 C CNN
F 1 "GND" H 4455 3727 50  0000 C CNN
F 2 "" H 4450 3900 50  0001 C CNN
F 3 "" H 4450 3900 50  0001 C CNN
	1    4450 3900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DD39690
P 4450 2300
F 0 "#PWR?" H 4450 2150 50  0001 C CNN
F 1 "VCC" H 4467 2473 50  0000 C CNN
F 2 "" H 4450 2300 50  0001 C CNN
F 3 "" H 4450 2300 50  0001 C CNN
	1    4450 2300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 U?
U 1 1 5D2A25F1
P 4450 3100
AR Path="/5D2C0CA7/5D2A25F1" Ref="U?"  Part="1" 
AR Path="/5D29E36D/5D2A25F1" Ref="U?"  Part="1" 
F 0 "U?" H 4150 3900 50  0000 C CNN
F 1 "74F377" H 4150 3800 50  0000 C CNN
F 2 "" H 4450 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 4450 3100 50  0001 C CNN
	1    4450 3100
	1    0    0    -1  
$EndComp
Text GLabel 1650 2550 0    50   Input ~ 0
RegisterClock
Text GLabel 1650 2700 0    50   Input ~ 0
~DI
Entry Wire Line
	3450 3300 3350 3200
Entry Wire Line
	3450 3200 3350 3100
Entry Wire Line
	3450 2700 3350 2600
Entry Wire Line
	3450 2800 3350 2700
Entry Wire Line
	3450 2900 3350 2800
Entry Wire Line
	3450 3000 3350 2900
Entry Wire Line
	3450 3100 3350 3000
Wire Wire Line
	3450 3300 3950 3300
Wire Wire Line
	3950 3200 3450 3200
Wire Wire Line
	3450 3100 3950 3100
Wire Wire Line
	3950 3000 3450 3000
Wire Wire Line
	3450 2900 3950 2900
Wire Wire Line
	3950 2800 3450 2800
Wire Wire Line
	3450 2700 3950 2700
Wire Wire Line
	3950 2600 3450 2600
Entry Wire Line
	3450 2600 3350 2500
Text GLabel 1650 2400 0    50   Input ~ 0
DataBus
Wire Bus Line
	3350 2400 1650 2400
Text Label 3500 2600 0    50   ~ 0
DataBus0
Text Label 3500 2700 0    50   ~ 0
DataBus1
Text Label 3500 2800 0    50   ~ 0
DataBus2
Text Label 3500 2900 0    50   ~ 0
DataBus3
Text Label 3500 3000 0    50   ~ 0
DataBus4
Text Label 3500 3100 0    50   ~ 0
DataBus5
Text Label 3500 3200 0    50   ~ 0
DataBus6
Text Label 3500 3300 0    50   ~ 0
DataBus7
Wire Wire Line
	3950 3500 3250 3500
Wire Wire Line
	3250 3500 3250 2550
Wire Wire Line
	3250 2550 1650 2550
Wire Wire Line
	1650 2700 3150 2700
Wire Wire Line
	3150 2700 3150 3600
Wire Wire Line
	3150 3600 3950 3600
NoConn ~ 4950 2900
NoConn ~ 4950 3000
NoConn ~ 4950 3100
NoConn ~ 4950 3200
NoConn ~ 4950 3300
$Comp
L 74xx:74LS138 U?
U 1 1 5DD40EA8
P 6250 2900
F 0 "U?" H 5950 3500 50  0000 C CNN
F 1 "74LS138" H 5950 3400 50  0000 C CNN
F 2 "" H 6250 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 6250 2900 50  0001 C CNN
	1    6250 2900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DD42017
P 6250 2300
F 0 "#PWR?" H 6250 2150 50  0001 C CNN
F 1 "VCC" H 6267 2473 50  0000 C CNN
F 2 "" H 6250 2300 50  0001 C CNN
F 3 "" H 6250 2300 50  0001 C CNN
	1    6250 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD42551
P 6250 3600
AR Path="/5D2C0CA7/5DD42551" Ref="#PWR?"  Part="1" 
AR Path="/5D29E36D/5DD42551" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6250 3350 50  0001 C CNN
F 1 "GND" H 6255 3427 50  0000 C CNN
F 2 "" H 6250 3600 50  0001 C CNN
F 3 "" H 6250 3600 50  0001 C CNN
	1    6250 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2600 5750 2600
Wire Wire Line
	4950 2700 5750 2700
Wire Wire Line
	4950 2800 5750 2800
$Comp
L power:VCC #PWR?
U 1 1 5DD4525E
P 5700 3100
F 0 "#PWR?" H 5700 2950 50  0001 C CNN
F 1 "VCC" V 5718 3227 50  0000 L CNN
F 2 "" H 5700 3100 50  0001 C CNN
F 3 "" H 5700 3100 50  0001 C CNN
	1    5700 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD46C58
P 5700 3250
F 0 "#PWR?" H 5700 3000 50  0001 C CNN
F 1 "GND" V 5705 3122 50  0000 R CNN
F 2 "" H 5700 3250 50  0001 C CNN
F 3 "" H 5700 3250 50  0001 C CNN
	1    5700 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 3200 5700 3200
Wire Wire Line
	5700 3200 5700 3250
Wire Wire Line
	5700 3300 5750 3300
Connection ~ 5700 3250
Wire Wire Line
	5700 3250 5700 3300
Wire Wire Line
	5750 3100 5700 3100
Entry Wire Line
	7300 2600 7400 2700
Entry Wire Line
	7300 2700 7400 2800
Entry Wire Line
	7300 2800 7400 2900
Entry Wire Line
	7300 2900 7400 3000
Entry Wire Line
	7300 3000 7400 3100
Entry Wire Line
	7300 3100 7400 3200
Entry Wire Line
	7300 3200 7400 3300
Entry Wire Line
	7300 3300 7400 3400
Wire Wire Line
	7300 2600 6750 2600
Wire Wire Line
	6750 2700 7300 2700
Wire Wire Line
	7300 2800 6750 2800
Wire Wire Line
	6750 2900 7300 2900
Wire Wire Line
	7300 3000 6750 3000
Wire Wire Line
	6750 3100 7300 3100
Wire Wire Line
	7300 3200 6750 3200
Wire Wire Line
	6750 3300 7300 3300
Text GLabel 9450 4100 2    50   Output ~ 0
DeviceSelect
Wire Bus Line
	9450 4100 7400 4100
Text Label 7300 2600 2    50   ~ 0
DeviceSelect0
Text Label 7300 2700 2    50   ~ 0
DeviceSelect1
Text Label 7300 2800 2    50   ~ 0
DeviceSelect2
Text Label 7300 2900 2    50   ~ 0
DeviceSelect3
Text Label 7300 3000 2    50   ~ 0
DeviceSelect4
Text Label 7300 3100 2    50   ~ 0
DeviceSelect5
Text Label 7300 3200 2    50   ~ 0
DeviceSelect6
Text Label 7300 3300 2    50   ~ 0
DeviceSelect7
$Comp
L Device:LED D?
U 1 1 5DCE3688
P 4050 5450
AR Path="/5D2C07CD/5DCE3688" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DCE3688" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DCE3688" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DCE3688" Ref="D?"  Part="1" 
AR Path="/5D29E36D/5DCE3688" Ref="D?"  Part="1" 
F 0 "D?" V 4089 5333 50  0000 R CNN
F 1 "LED" V 3998 5333 50  0000 R CNN
F 2 "" H 4050 5450 50  0001 C CNN
F 3 "~" H 4050 5450 50  0001 C CNN
	1    4050 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DCE368E
P 4400 5450
AR Path="/5D2C07CD/5DCE368E" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DCE368E" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DCE368E" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DCE368E" Ref="D?"  Part="1" 
AR Path="/5D29E36D/5DCE368E" Ref="D?"  Part="1" 
F 0 "D?" V 4439 5333 50  0000 R CNN
F 1 "LED" V 4348 5333 50  0000 R CNN
F 2 "" H 4400 5450 50  0001 C CNN
F 3 "~" H 4400 5450 50  0001 C CNN
	1    4400 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DCE3694
P 4750 5450
AR Path="/5D2C07CD/5DCE3694" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DCE3694" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DCE3694" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DCE3694" Ref="D?"  Part="1" 
AR Path="/5D29E36D/5DCE3694" Ref="D?"  Part="1" 
F 0 "D?" V 4789 5333 50  0000 R CNN
F 1 "LED" V 4698 5333 50  0000 R CNN
F 2 "" H 4750 5450 50  0001 C CNN
F 3 "~" H 4750 5450 50  0001 C CNN
	1    4750 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DCE369A
P 5100 5450
AR Path="/5D2C07CD/5DCE369A" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DCE369A" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DCE369A" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DCE369A" Ref="D?"  Part="1" 
AR Path="/5D29E36D/5DCE369A" Ref="D?"  Part="1" 
F 0 "D?" V 5139 5333 50  0000 R CNN
F 1 "LED" V 5048 5333 50  0000 R CNN
F 2 "" H 5100 5450 50  0001 C CNN
F 3 "~" H 5100 5450 50  0001 C CNN
	1    5100 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DCE36A0
P 3700 5450
AR Path="/5D2C07CD/5DCE36A0" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DCE36A0" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DCE36A0" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DCE36A0" Ref="D?"  Part="1" 
AR Path="/5D29E36D/5DCE36A0" Ref="D?"  Part="1" 
F 0 "D?" V 3739 5333 50  0000 R CNN
F 1 "LED" V 3648 5333 50  0000 R CNN
F 2 "" H 3700 5450 50  0001 C CNN
F 3 "~" H 3700 5450 50  0001 C CNN
	1    3700 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DCE36A6
P 3350 5450
AR Path="/5D2C07CD/5DCE36A6" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DCE36A6" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DCE36A6" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DCE36A6" Ref="D?"  Part="1" 
AR Path="/5D29E36D/5DCE36A6" Ref="D?"  Part="1" 
F 0 "D?" V 3389 5333 50  0000 R CNN
F 1 "LED" V 3298 5333 50  0000 R CNN
F 2 "" H 3350 5450 50  0001 C CNN
F 3 "~" H 3350 5450 50  0001 C CNN
	1    3350 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DCE36AC
P 3000 5450
AR Path="/5D2C07CD/5DCE36AC" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DCE36AC" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DCE36AC" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DCE36AC" Ref="D?"  Part="1" 
AR Path="/5D29E36D/5DCE36AC" Ref="D?"  Part="1" 
F 0 "D?" V 3039 5333 50  0000 R CNN
F 1 "LED" V 2948 5333 50  0000 R CNN
F 2 "" H 3000 5450 50  0001 C CNN
F 3 "~" H 3000 5450 50  0001 C CNN
	1    3000 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DCE36B2
P 2650 5450
AR Path="/5D2C07CD/5DCE36B2" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5DCE36B2" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5DCE36B2" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5DCE36B2" Ref="D?"  Part="1" 
AR Path="/5D29E36D/5DCE36B2" Ref="D?"  Part="1" 
F 0 "D?" V 2689 5333 50  0000 R CNN
F 1 "LED" V 2598 5333 50  0000 R CNN
F 2 "" H 2650 5450 50  0001 C CNN
F 3 "~" H 2650 5450 50  0001 C CNN
	1    2650 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 6050 2650 6150
Wire Wire Line
	2650 6150 3000 6150
Wire Wire Line
	3000 6050 3000 6150
Connection ~ 3000 6150
Wire Wire Line
	3000 6150 3350 6150
Wire Wire Line
	3350 6050 3350 6150
Connection ~ 3350 6150
Wire Wire Line
	3350 6150 3700 6150
Wire Wire Line
	3700 6050 3700 6150
Connection ~ 3700 6150
Wire Wire Line
	3700 6150 4050 6150
Wire Wire Line
	4050 6050 4050 6150
Connection ~ 4050 6150
Wire Wire Line
	4050 6150 4400 6150
Wire Wire Line
	4400 6050 4400 6150
Connection ~ 4400 6150
Wire Wire Line
	4400 6150 4750 6150
Wire Wire Line
	4750 6050 4750 6150
Connection ~ 4750 6150
Wire Wire Line
	4750 6150 4950 6150
Wire Wire Line
	5100 6050 5100 6150
$Comp
L power:GND #PWR?
U 1 1 5DCE36CD
P 4950 6250
AR Path="/5D2C07CD/5DCE36CD" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DCE36CD" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DCE36CD" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5DCE36CD" Ref="#PWR?"  Part="1" 
AR Path="/5D29E36D/5DCE36CD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4950 6000 50  0001 C CNN
F 1 "GND" H 4955 6077 50  0000 C CNN
F 2 "" H 4950 6250 50  0001 C CNN
F 3 "" H 4950 6250 50  0001 C CNN
	1    4950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 5600 2650 5750
Wire Wire Line
	3000 5600 3000 5750
Wire Wire Line
	3350 5750 3350 5600
Wire Wire Line
	3700 5600 3700 5750
Wire Wire Line
	4050 5750 4050 5600
Wire Wire Line
	4400 5600 4400 5750
Wire Wire Line
	4750 5750 4750 5600
Wire Wire Line
	5100 5600 5100 5750
$Comp
L Device:R R?
U 1 1 5DCE36DB
P 2650 5900
AR Path="/5D2C0CA7/5DCE36DB" Ref="R?"  Part="1" 
AR Path="/5D29E36D/5DCE36DB" Ref="R?"  Part="1" 
F 0 "R?" H 2720 5946 50  0000 L CNN
F 1 "220Ω" H 2720 5855 50  0000 L CNN
F 2 "" V 2580 5900 50  0001 C CNN
F 3 "~" H 2650 5900 50  0001 C CNN
	1    2650 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DCE36E1
P 3000 5900
AR Path="/5D2C0CA7/5DCE36E1" Ref="R?"  Part="1" 
AR Path="/5D29E36D/5DCE36E1" Ref="R?"  Part="1" 
F 0 "R?" H 3070 5946 50  0000 L CNN
F 1 "220Ω" H 3070 5855 50  0000 L CNN
F 2 "" V 2930 5900 50  0001 C CNN
F 3 "~" H 3000 5900 50  0001 C CNN
	1    3000 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DCE36E7
P 3350 5900
AR Path="/5D2C0CA7/5DCE36E7" Ref="R?"  Part="1" 
AR Path="/5D29E36D/5DCE36E7" Ref="R?"  Part="1" 
F 0 "R?" H 3420 5946 50  0000 L CNN
F 1 "220Ω" H 3420 5855 50  0000 L CNN
F 2 "" V 3280 5900 50  0001 C CNN
F 3 "~" H 3350 5900 50  0001 C CNN
	1    3350 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DCE36ED
P 3700 5900
AR Path="/5D2C0CA7/5DCE36ED" Ref="R?"  Part="1" 
AR Path="/5D29E36D/5DCE36ED" Ref="R?"  Part="1" 
F 0 "R?" H 3770 5946 50  0000 L CNN
F 1 "220Ω" H 3770 5855 50  0000 L CNN
F 2 "" V 3630 5900 50  0001 C CNN
F 3 "~" H 3700 5900 50  0001 C CNN
	1    3700 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DCE36F3
P 4050 5900
AR Path="/5D2C0CA7/5DCE36F3" Ref="R?"  Part="1" 
AR Path="/5D29E36D/5DCE36F3" Ref="R?"  Part="1" 
F 0 "R?" H 4120 5946 50  0000 L CNN
F 1 "220Ω" H 4120 5855 50  0000 L CNN
F 2 "" V 3980 5900 50  0001 C CNN
F 3 "~" H 4050 5900 50  0001 C CNN
	1    4050 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DCE36F9
P 4400 5900
AR Path="/5D2C0CA7/5DCE36F9" Ref="R?"  Part="1" 
AR Path="/5D29E36D/5DCE36F9" Ref="R?"  Part="1" 
F 0 "R?" H 4470 5946 50  0000 L CNN
F 1 "220Ω" H 4470 5855 50  0000 L CNN
F 2 "" V 4330 5900 50  0001 C CNN
F 3 "~" H 4400 5900 50  0001 C CNN
	1    4400 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DCE36FF
P 4750 5900
AR Path="/5D2C0CA7/5DCE36FF" Ref="R?"  Part="1" 
AR Path="/5D29E36D/5DCE36FF" Ref="R?"  Part="1" 
F 0 "R?" H 4820 5946 50  0000 L CNN
F 1 "220Ω" H 4820 5855 50  0000 L CNN
F 2 "" V 4680 5900 50  0001 C CNN
F 3 "~" H 4750 5900 50  0001 C CNN
	1    4750 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DCE3705
P 5100 5900
AR Path="/5D2C0CA7/5DCE3705" Ref="R?"  Part="1" 
AR Path="/5D29E36D/5DCE3705" Ref="R?"  Part="1" 
F 0 "R?" H 5170 5946 50  0000 L CNN
F 1 "220Ω" H 5170 5855 50  0000 L CNN
F 2 "" V 5030 5900 50  0001 C CNN
F 3 "~" H 5100 5900 50  0001 C CNN
	1    5100 5900
	1    0    0    -1  
$EndComp
Entry Wire Line
	2650 4700 2550 4600
Entry Wire Line
	3000 4700 2900 4600
Entry Wire Line
	3350 4700 3250 4600
Entry Wire Line
	3700 4700 3600 4600
Entry Wire Line
	4050 4700 3950 4600
Entry Wire Line
	4400 4700 4300 4600
Entry Wire Line
	4750 4700 4650 4600
Entry Wire Line
	5100 4700 5000 4600
Text GLabel 1450 4600 0    50   Input ~ 0
DeviceSelect
Text Label 2650 5250 1    50   ~ 0
DeviceSelect7
Text Label 3000 5250 1    50   ~ 0
DeviceSelect6
Text Label 3350 5250 1    50   ~ 0
DeviceSelect5
Text Label 3700 5250 1    50   ~ 0
DeviceSelect4
Text Label 4050 5250 1    50   ~ 0
DeviceSelect3
Text Label 4400 5250 1    50   ~ 0
DeviceSelect2
Text Label 4750 5250 1    50   ~ 0
DeviceSelect1
Text Label 5100 5250 1    50   ~ 0
DeviceSelect0
Wire Wire Line
	2650 4700 2650 5300
Wire Wire Line
	3000 4700 3000 5300
Wire Wire Line
	3350 4700 3350 5300
Wire Wire Line
	3700 4700 3700 5300
Wire Wire Line
	4050 4700 4050 5300
Wire Wire Line
	4400 4700 4400 5300
Wire Wire Line
	4750 4700 4750 5300
Wire Wire Line
	5100 4700 5100 5300
Wire Wire Line
	4950 6250 4950 6150
Connection ~ 4950 6150
Wire Wire Line
	4950 6150 5100 6150
$Comp
L Device:C C?
U 1 1 5DCE5DE3
P 7350 5450
AR Path="/5D2C07CD/5DCE5DE3" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5DCE5DE3" Ref="C?"  Part="1" 
AR Path="/5D2C0CA7/5DCE5DE3" Ref="C?"  Part="1" 
AR Path="/5D29E36D/5DCE5DE3" Ref="C?"  Part="1" 
F 0 "C?" H 7465 5496 50  0000 L CNN
F 1 "100nF" H 7465 5405 50  0000 L CNN
F 2 "" H 7388 5300 50  0001 C CNN
F 3 "~" H 7350 5450 50  0001 C CNN
	1    7350 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DCE5DE9
P 7850 5450
AR Path="/5D2C07CD/5DCE5DE9" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5DCE5DE9" Ref="C?"  Part="1" 
AR Path="/5D2C0CA7/5DCE5DE9" Ref="C?"  Part="1" 
AR Path="/5D29E36D/5DCE5DE9" Ref="C?"  Part="1" 
F 0 "C?" H 7965 5496 50  0000 L CNN
F 1 "100nF" H 7965 5405 50  0000 L CNN
F 2 "" H 7888 5300 50  0001 C CNN
F 3 "~" H 7850 5450 50  0001 C CNN
	1    7850 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DCE5DEF
P 7350 5600
AR Path="/5D2C07CD/5DCE5DEF" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DCE5DEF" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DCE5DEF" Ref="#PWR?"  Part="1" 
AR Path="/5D29E36D/5DCE5DEF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 5350 50  0001 C CNN
F 1 "GND" H 7355 5427 50  0000 C CNN
F 2 "" H 7350 5600 50  0001 C CNN
F 3 "" H 7350 5600 50  0001 C CNN
	1    7350 5600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DCE5DF5
P 7350 5300
AR Path="/5D2C07CD/5DCE5DF5" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DCE5DF5" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DCE5DF5" Ref="#PWR?"  Part="1" 
AR Path="/5D29E36D/5DCE5DF5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 5150 50  0001 C CNN
F 1 "VCC" H 7367 5473 50  0000 C CNN
F 2 "" H 7350 5300 50  0001 C CNN
F 3 "" H 7350 5300 50  0001 C CNN
	1    7350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5300 7850 5300
Connection ~ 7350 5300
Wire Wire Line
	7850 5600 7350 5600
Connection ~ 7350 5600
Wire Bus Line
	3350 2400 3350 3200
Wire Bus Line
	7400 2700 7400 4100
Wire Bus Line
	1450 4600 5000 4600
$EndSCHEMATC
