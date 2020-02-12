EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 21 21
Title "Registers X and Y"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "The XY register pair sets the value on the sixteen-bit Address Bus."
$EndDescr
Text GLabel 1150 3450 0    50   Input ~ 0
~YI
$Comp
L 74xx:74LS161 U?
U 1 1 5DBCA966
P 2450 1950
AR Path="/5D2C07CD/5DBCA966" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DBCA966" Ref="U6"  Part="1" 
F 0 "U6" H 2200 2750 50  0000 C CNN
F 1 "74F161" H 2200 2650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2450 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 2450 1950 50  0001 C CNN
	1    2450 1950
	1    0    0    -1  
$EndComp
Text GLabel 1150 3150 0    50   Input ~ 0
RegisterClock2
Wire Wire Line
	1950 2250 1550 2250
Wire Wire Line
	1550 2250 1550 3150
Wire Wire Line
	1550 3150 1150 3150
$Comp
L power:GND #PWR?
U 1 1 5DBCA984
P 2450 2750
AR Path="/5D2C07CD/5DBCA984" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DBCA984" Ref="#PWR0166"  Part="1" 
F 0 "#PWR0166" H 2450 2500 50  0001 C CNN
F 1 "GND" H 2455 2577 50  0000 C CNN
F 2 "" H 2450 2750 50  0001 C CNN
F 3 "" H 2450 2750 50  0001 C CNN
	1    2450 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1950 1350 1950
Wire Wire Line
	1350 3450 1150 3450
Entry Wire Line
	1350 1350 1450 1450
Entry Wire Line
	1350 1450 1450 1550
Entry Wire Line
	1350 1550 1450 1650
Entry Wire Line
	1350 1650 1450 1750
Entry Wire Line
	3400 1350 3500 1450
Entry Wire Line
	3400 1450 3500 1550
Entry Wire Line
	3400 1550 3500 1650
Entry Wire Line
	3400 1650 3500 1750
Wire Wire Line
	1450 1450 1950 1450
Wire Wire Line
	1950 1550 1450 1550
Wire Wire Line
	1450 1650 1950 1650
Wire Wire Line
	1950 1750 1450 1750
Entry Wire Line
	5500 1350 5600 1450
Entry Wire Line
	5500 1450 5600 1550
Entry Wire Line
	5500 1550 5600 1650
Entry Wire Line
	5500 1650 5600 1750
Entry Wire Line
	7600 1450 7700 1550
Entry Wire Line
	7600 1550 7700 1650
Entry Wire Line
	7600 1650 7700 1750
Text Label 1450 1450 0    50   ~ 0
DataBus0
Text Label 1450 1550 0    50   ~ 0
DataBus1
Text Label 1450 1650 0    50   ~ 0
DataBus2
Text Label 1450 1750 0    50   ~ 0
DataBus3
Text Label 3500 1650 0    50   ~ 0
DataBus6
Text Label 3500 1750 0    50   ~ 0
DataBus7
Text Label 5600 1450 0    50   ~ 0
DataBus0
Text Label 5600 1550 0    50   ~ 0
DataBus1
Text Label 5600 1650 0    50   ~ 0
DataBus2
Text Label 5600 1750 0    50   ~ 0
DataBus3
Entry Wire Line
	7600 1350 7700 1450
Text Label 7700 1450 0    50   ~ 0
DataBus4
Text Label 7700 1550 0    50   ~ 0
DataBus5
Text Label 7700 1650 0    50   ~ 0
DataBus6
Text Label 7700 1750 0    50   ~ 0
DataBus7
Entry Wire Line
	3150 1450 3250 1350
Entry Wire Line
	3150 1550 3250 1450
Entry Wire Line
	3150 1650 3250 1550
Entry Wire Line
	3150 1750 3250 1650
Wire Wire Line
	3150 1750 2950 1750
Wire Wire Line
	3150 1650 2950 1650
Wire Wire Line
	3150 1550 2950 1550
Wire Wire Line
	3150 1450 2950 1450
Text Label 2950 1450 0    50   ~ 0
XY0
Text Label 2950 1550 0    50   ~ 0
XY1
Wire Wire Line
	1350 3450 3600 3450
Connection ~ 1350 3450
Wire Wire Line
	1550 3150 3700 3150
Connection ~ 1550 3150
Entry Wire Line
	5250 1450 5350 1350
Entry Wire Line
	5250 1550 5350 1450
Entry Wire Line
	5250 1650 5350 1550
Entry Wire Line
	5250 1750 5350 1650
Text Label 5050 1450 0    50   ~ 0
XY4
Text Label 5050 1550 0    50   ~ 0
XY5
Text Label 5050 1650 0    50   ~ 0
XY6
Text Label 5050 1750 0    50   ~ 0
XY7
Entry Wire Line
	7350 1450 7450 1350
Entry Wire Line
	7350 1550 7450 1450
Entry Wire Line
	7350 1650 7450 1550
Entry Wire Line
	7350 1750 7450 1650
Text Label 7150 1450 0    50   ~ 0
XY8
Text Label 7150 1550 0    50   ~ 0
XY9
Text Label 7150 1650 0    50   ~ 0
XY10
Text Label 7150 1750 0    50   ~ 0
XY11
Entry Wire Line
	9500 1450 9600 1350
Entry Wire Line
	9500 1550 9600 1450
Entry Wire Line
	9500 1650 9600 1550
Entry Wire Line
	9500 1750 9600 1650
Text Label 9300 1450 0    50   ~ 0
XY12
Text Label 9300 1550 0    50   ~ 0
XY13
Text Label 9300 1650 0    50   ~ 0
XY14
Text Label 9300 1750 0    50   ~ 0
XY15
Wire Bus Line
	1150 950  1350 950 
Connection ~ 1350 950 
Wire Bus Line
	1350 950  3400 950 
Connection ~ 3400 950 
Wire Bus Line
	3400 950  5500 950 
Connection ~ 5500 950 
Wire Bus Line
	5500 950  7600 950 
Wire Bus Line
	3250 1050 5350 1050
Connection ~ 7450 1050
Connection ~ 5350 1050
Wire Bus Line
	5350 1050 7450 1050
Connection ~ 2450 2750
Text GLabel 10100 1050 2    50   Output ~ 0
XY[0..15]
Wire Wire Line
	8250 1750 7700 1750
Wire Wire Line
	7700 1650 8250 1650
Wire Wire Line
	8250 1550 7700 1550
Wire Wire Line
	7700 1450 8250 1450
Wire Wire Line
	9500 1450 9250 1450
Wire Wire Line
	9250 1550 9500 1550
Wire Wire Line
	9500 1650 9250 1650
Wire Wire Line
	9250 1750 9500 1750
$Comp
L 74xx:74LS161 U?
U 1 1 5DBCAA06
P 8750 1950
AR Path="/5D2C07CD/5DBCAA06" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DBCAA06" Ref="U11"  Part="1" 
F 0 "U11" H 8500 2750 50  0000 C CNN
F 1 "74F161" H 8500 2650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8750 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 8750 1950 50  0001 C CNN
	1    8750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2750 8750 2750
Connection ~ 6650 2750
Wire Wire Line
	6150 1750 5600 1750
Wire Wire Line
	5600 1650 6150 1650
Wire Wire Line
	6150 1550 5600 1550
Wire Wire Line
	7350 1450 7150 1450
Wire Wire Line
	7350 1550 7150 1550
Wire Wire Line
	7350 1650 7150 1650
Wire Wire Line
	7350 1750 7150 1750
$Comp
L 74xx:74LS161 U?
U 1 1 5DBCAA19
P 6650 1950
AR Path="/5D2C07CD/5DBCAA19" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DBCAA19" Ref="U10"  Part="1" 
F 0 "U10" H 6400 2750 50  0000 C CNN
F 1 "74F161" H 6400 2650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6650 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 6650 1950 50  0001 C CNN
	1    6650 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2750 4550 2750
Connection ~ 4550 2750
Wire Wire Line
	4550 2750 6650 2750
Wire Wire Line
	3500 1750 4050 1750
Wire Wire Line
	4050 1650 3500 1650
Wire Wire Line
	3500 1550 4050 1550
Wire Wire Line
	4050 1450 3500 1450
Wire Wire Line
	5250 1450 5050 1450
Wire Wire Line
	5250 1550 5050 1550
Wire Wire Line
	5250 1650 5050 1650
Wire Wire Line
	5250 1750 5050 1750
$Comp
L 74xx:74LS161 U?
U 1 1 5DBCAA2E
P 4550 1950
AR Path="/5D2C07CD/5DBCAA2E" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DBCAA2E" Ref="U8"  Part="1" 
F 0 "U8" H 4300 2750 50  0000 C CNN
F 1 "74F161" H 4300 2650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4550 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 4550 1950 50  0001 C CNN
	1    4550 1950
	1    0    0    -1  
$EndComp
Text Label 2950 1750 0    50   ~ 0
XY3
Text Label 2950 1650 0    50   ~ 0
XY2
Wire Wire Line
	7550 2150 7550 1950
Wire Wire Line
	7550 1950 7150 1950
Wire Wire Line
	7550 2150 8250 2150
Wire Wire Line
	5050 1950 5450 1950
Wire Wire Line
	5450 1950 5450 2150
Wire Wire Line
	5450 2150 6150 2150
Wire Wire Line
	2950 1950 3350 1950
Wire Wire Line
	3350 1950 3350 2150
Wire Wire Line
	3350 2150 4050 2150
Wire Wire Line
	6150 1450 5600 1450
Wire Wire Line
	1350 1950 1350 3450
$Comp
L power:VCC #PWR?
U 1 1 5DBCAA86
P 8250 2050
AR Path="/5D2C07CD/5DBCAA86" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DBCAA86" Ref="#PWR0174"  Part="1" 
F 0 "#PWR0174" H 8250 1900 50  0001 C CNN
F 1 "VCC" V 8268 2177 50  0000 L CNN
F 2 "" H 8250 2050 50  0001 C CNN
F 3 "" H 8250 2050 50  0001 C CNN
	1    8250 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DBCAA8C
P 6150 2050
AR Path="/5D2C07CD/5DBCAA8C" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DBCAA8C" Ref="#PWR0254"  Part="1" 
F 0 "#PWR0254" H 6150 1900 50  0001 C CNN
F 1 "VCC" V 6168 2177 50  0000 L CNN
F 2 "" H 6150 2050 50  0001 C CNN
F 3 "" H 6150 2050 50  0001 C CNN
	1    6150 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DBCAA92
P 4050 2050
AR Path="/5D2C07CD/5DBCAA92" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DBCAA92" Ref="#PWR0255"  Part="1" 
F 0 "#PWR0255" H 4050 1900 50  0001 C CNN
F 1 "VCC" V 4068 2177 50  0000 L CNN
F 2 "" H 4050 2050 50  0001 C CNN
F 3 "" H 4050 2050 50  0001 C CNN
	1    4050 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 2050 1850 2050
Wire Wire Line
	1850 2050 1850 2100
Wire Wire Line
	1850 2150 1950 2150
Connection ~ 1850 2100
Wire Wire Line
	1850 2100 1850 2150
Wire Bus Line
	7450 1050 9600 1050
Connection ~ 9600 1050
Text GLabel 1150 950  0    50   Input ~ 0
DataBus[0..7]
Wire Wire Line
	4550 1150 4550 850 
Wire Wire Line
	6650 1150 6650 850 
Wire Wire Line
	8750 850  8750 1150
Wire Wire Line
	6650 850  8750 850 
Connection ~ 6650 850 
Wire Wire Line
	4550 850  6650 850 
Connection ~ 4550 850 
Wire Wire Line
	2450 850  4550 850 
Wire Wire Line
	2450 1150 2450 850 
Text Label 3500 1550 0    50   ~ 0
DataBus5
Text Label 3500 1450 0    50   ~ 0
DataBus4
$Comp
L power:VCC #PWR?
U 1 1 5DCD1593
P 1950 2450
AR Path="/5D2C07CD/5DCD1593" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DCD1593" Ref="#PWR0257"  Part="1" 
F 0 "#PWR0257" H 1950 2300 50  0001 C CNN
F 1 "VCC" V 1968 2577 50  0000 L CNN
F 2 "" H 1950 2450 50  0001 C CNN
F 3 "" H 1950 2450 50  0001 C CNN
	1    1950 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DCDF546
P 4050 2450
AR Path="/5D2C07CD/5DCDF546" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DCDF546" Ref="#PWR0258"  Part="1" 
F 0 "#PWR0258" H 4050 2300 50  0001 C CNN
F 1 "VCC" V 4068 2577 50  0000 L CNN
F 2 "" H 4050 2450 50  0001 C CNN
F 3 "" H 4050 2450 50  0001 C CNN
	1    4050 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 2250 3700 3150
Connection ~ 3700 3150
Wire Wire Line
	3700 3150 5750 3150
Wire Wire Line
	3700 2250 4050 2250
$Comp
L power:VCC #PWR?
U 1 1 5DCFA511
P 6150 2450
AR Path="/5D2C07CD/5DCFA511" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DCFA511" Ref="#PWR0259"  Part="1" 
F 0 "#PWR0259" H 6150 2300 50  0001 C CNN
F 1 "VCC" V 6168 2577 50  0000 L CNN
F 2 "" H 6150 2450 50  0001 C CNN
F 3 "" H 6150 2450 50  0001 C CNN
	1    6150 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 2250 5750 3150
Connection ~ 5750 3150
Wire Wire Line
	5750 2250 6150 2250
Wire Wire Line
	5750 3150 7900 3150
$Comp
L power:VCC #PWR?
U 1 1 5DD07A43
P 8250 2450
AR Path="/5D2C07CD/5DD07A43" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DD07A43" Ref="#PWR0260"  Part="1" 
F 0 "#PWR0260" H 8250 2300 50  0001 C CNN
F 1 "VCC" V 8268 2577 50  0000 L CNN
F 2 "" H 8250 2450 50  0001 C CNN
F 3 "" H 8250 2450 50  0001 C CNN
	1    8250 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7900 2250 7900 3150
Wire Wire Line
	7900 2250 8250 2250
Text GLabel 1150 3600 0    50   Input ~ 0
~XI
Wire Wire Line
	1150 3600 5650 3600
Wire Wire Line
	3600 1950 3600 3450
Wire Wire Line
	3600 1950 4050 1950
Wire Wire Line
	5650 1950 5650 3600
Connection ~ 5650 3600
Wire Wire Line
	5650 1950 6150 1950
Wire Wire Line
	5650 3600 7800 3600
Wire Wire Line
	7800 1950 7800 3600
Wire Wire Line
	7800 1950 8250 1950
Text GLabel 1150 3300 0    50   Input ~ 0
XYInc
Wire Wire Line
	1450 2100 1450 3300
Wire Wire Line
	1450 3300 1150 3300
Wire Wire Line
	1450 2100 1850 2100
$Comp
L 74xx:74LS245 U?
U 1 1 5DDC9F0A
P 3250 4800
AR Path="/5D2C0CA7/5DDC9F0A" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DDC9F0A" Ref="U7"  Part="1" 
F 0 "U7" H 3000 5600 50  0000 C CNN
F 1 "74AHCT245" H 3000 5500 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 3250 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn54ahct245.pdf" H 3250 4800 50  0001 C CNN
	1    3250 4800
	0    1    1    0   
$EndComp
Text Label 3450 4300 1    50   ~ 0
XY11
Text Label 3550 4300 1    50   ~ 0
XY10
Text Label 3750 4300 1    50   ~ 0
XY8
Text Label 3650 4300 1    50   ~ 0
XY9
Wire Wire Line
	3450 4100 3450 4300
Wire Wire Line
	3550 4100 3550 4300
Wire Wire Line
	3650 4100 3650 4300
Wire Wire Line
	3750 4100 3750 4300
Entry Wire Line
	3750 4100 3650 4000
Entry Wire Line
	3650 4100 3550 4000
Entry Wire Line
	3550 4100 3450 4000
Entry Wire Line
	3450 4100 3350 4000
Entry Wire Line
	3050 4100 2950 4000
Entry Wire Line
	3150 4100 3050 4000
Entry Wire Line
	3250 4100 3150 4000
Entry Wire Line
	3350 4100 3250 4000
Text Label 3050 4300 1    50   ~ 0
XY15
Text Label 3150 4300 1    50   ~ 0
XY14
Text Label 3250 4300 1    50   ~ 0
XY13
Text Label 3350 4300 1    50   ~ 0
XY12
Wire Wire Line
	3050 4100 3050 4300
Wire Wire Line
	3150 4100 3150 4300
Wire Wire Line
	3250 4100 3250 4300
Wire Wire Line
	3350 4100 3350 4300
Text Label 5700 4300 1    50   ~ 0
XY3
Text Label 5800 4300 1    50   ~ 0
XY2
Text Label 6000 4300 1    50   ~ 0
XY0
Text Label 5900 4300 1    50   ~ 0
XY1
Wire Wire Line
	5700 4100 5700 4300
Wire Wire Line
	5800 4100 5800 4300
Wire Wire Line
	5900 4100 5900 4300
Wire Wire Line
	6000 4100 6000 4300
Entry Wire Line
	6000 4100 5900 4000
Entry Wire Line
	5900 4100 5800 4000
Entry Wire Line
	5800 4100 5700 4000
Entry Wire Line
	5700 4100 5600 4000
Entry Wire Line
	5300 4100 5200 4000
Entry Wire Line
	5400 4100 5300 4000
Entry Wire Line
	5500 4100 5400 4000
Entry Wire Line
	5600 4100 5500 4000
Text Label 5300 4300 1    50   ~ 0
XY7
Text Label 5400 4300 1    50   ~ 0
XY6
Text Label 5500 4300 1    50   ~ 0
XY5
Text Label 5600 4300 1    50   ~ 0
XY4
Wire Wire Line
	5300 4100 5300 4300
Wire Wire Line
	5400 4100 5400 4300
Wire Wire Line
	5500 4100 5500 4300
Wire Wire Line
	5600 4100 5600 4300
Entry Wire Line
	6000 6350 5900 6250
Entry Wire Line
	5900 6350 5800 6250
Entry Wire Line
	5800 6350 5700 6250
Entry Wire Line
	5700 6350 5600 6250
Entry Wire Line
	5600 6350 5500 6250
Entry Wire Line
	5500 6350 5400 6250
Entry Wire Line
	5400 6350 5300 6250
Text GLabel 9900 6350 2    50   Output ~ 0
DataBus[0..7]
Entry Wire Line
	6100 6350 6000 6250
Text Label 5900 5850 3    50   ~ 0
DataBus1
Text Label 5800 5850 3    50   ~ 0
DataBus2
Text Label 5700 5850 3    50   ~ 0
DataBus3
Text Label 5600 5850 3    50   ~ 0
DataBus4
Text Label 5500 5850 3    50   ~ 0
DataBus5
Text Label 5400 5850 3    50   ~ 0
DataBus6
Text Label 5300 5850 3    50   ~ 0
DataBus7
Text Label 6000 5850 3    50   ~ 0
DataBus0
Wire Wire Line
	5300 6250 5300 5300
Wire Wire Line
	5400 6250 5400 5300
Wire Wire Line
	5500 6250 5500 5300
Wire Wire Line
	5600 6250 5600 5300
Wire Wire Line
	5700 6250 5700 5300
Wire Wire Line
	5800 6250 5800 5300
Wire Wire Line
	5900 6250 5900 5300
Wire Wire Line
	6000 6250 6000 5300
Entry Wire Line
	3750 6350 3650 6250
Entry Wire Line
	3650 6350 3550 6250
Entry Wire Line
	3550 6350 3450 6250
Entry Wire Line
	3450 6350 3350 6250
Entry Wire Line
	3350 6350 3250 6250
Entry Wire Line
	3250 6350 3150 6250
Entry Wire Line
	3150 6350 3050 6250
Entry Wire Line
	3850 6350 3750 6250
Text Label 3650 5850 3    50   ~ 0
DataBus1
Text Label 3550 5850 3    50   ~ 0
DataBus2
Text Label 3450 5850 3    50   ~ 0
DataBus3
Text Label 3350 5850 3    50   ~ 0
DataBus4
Text Label 3250 5850 3    50   ~ 0
DataBus5
Text Label 3150 5850 3    50   ~ 0
DataBus6
Text Label 3050 5850 3    50   ~ 0
DataBus7
Text Label 3750 5850 3    50   ~ 0
DataBus0
Wire Wire Line
	3050 6250 3050 5300
Wire Wire Line
	3150 6250 3150 5300
Wire Wire Line
	3250 6250 3250 5300
Wire Wire Line
	3350 6250 3350 5300
Wire Wire Line
	3450 6250 3450 5300
Wire Wire Line
	3550 6250 3550 5300
Wire Wire Line
	3650 6250 3650 5300
Wire Wire Line
	3750 6250 3750 5300
$Comp
L power:VCC #PWR?
U 1 1 5DFB2225
P 6300 4800
AR Path="/5D2C07CD/5DFB2225" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DFB2225" Ref="#PWR0263"  Part="1" 
F 0 "#PWR0263" H 6300 4650 50  0001 C CNN
F 1 "VCC" V 6318 4927 50  0000 L CNN
F 2 "" H 6300 4800 50  0001 C CNN
F 3 "" H 6300 4800 50  0001 C CNN
	1    6300 4800
	0    1    -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DFDF322
P 4050 4800
AR Path="/5D2C07CD/5DFDF322" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DFDF322" Ref="#PWR0264"  Part="1" 
F 0 "#PWR0264" H 4050 4650 50  0001 C CNN
F 1 "VCC" V 4068 4927 50  0000 L CNN
F 2 "" H 4050 4800 50  0001 C CNN
F 3 "" H 4050 4800 50  0001 C CNN
	1    4050 4800
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0265
U 1 1 5DFDFB67
P 4700 4800
F 0 "#PWR0265" H 4700 4550 50  0001 C CNN
F 1 "GND" V 4705 4672 50  0000 R CNN
F 2 "" H 4700 4800 50  0001 C CNN
F 3 "" H 4700 4800 50  0001 C CNN
	1    4700 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0266
U 1 1 5DFE034C
P 2450 4800
F 0 "#PWR0266" H 2450 4550 50  0001 C CNN
F 1 "GND" V 2455 4672 50  0000 R CNN
F 2 "" H 2450 4800 50  0001 C CNN
F 3 "" H 2450 4800 50  0001 C CNN
	1    2450 4800
	0    1    1    0   
$EndComp
Text GLabel 1150 3750 0    50   Input ~ 0
~YO
Text GLabel 1150 3900 0    50   Input ~ 0
~XO
Wire Wire Line
	1150 3900 2750 3900
Wire Wire Line
	2750 3900 2750 4300
Wire Wire Line
	1150 3750 5000 3750
Wire Wire Line
	5000 3750 5000 4300
$Comp
L Connector:Conn_01x17_Female J?
U 1 1 5DA4135C
P 8150 4900
AR Path="/5D2C12A5/5DA4135C" Ref="J?"  Part="1" 
AR Path="/5D7BD0EA/5DA4135C" Ref="J11"  Part="1" 
F 0 "J11" V 8223 4880 50  0000 C CNN
F 1 "XY LED Connector" V 8314 4880 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x17_P2.54mm_Vertical" H 8150 4900 50  0001 C CNN
F 3 "~" H 8150 4900 50  0001 C CNN
	1    8150 4900
	0    1    1    0   
$EndComp
Entry Wire Line
	7450 4100 7350 4000
Text Label 7450 4650 1    50   ~ 0
XY14
Wire Wire Line
	7450 4100 7450 4700
Wire Wire Line
	8950 4700 8950 4600
Wire Wire Line
	8850 4100 8850 4700
Wire Wire Line
	8750 4100 8750 4700
Wire Wire Line
	8650 4100 8650 4700
Wire Wire Line
	8550 4100 8550 4700
Wire Wire Line
	8450 4100 8450 4700
Wire Wire Line
	8350 4100 8350 4700
Wire Wire Line
	8250 4100 8250 4700
Wire Wire Line
	8150 4100 8150 4700
Wire Wire Line
	8050 4100 8050 4700
Wire Wire Line
	7950 4100 7950 4700
Wire Wire Line
	7850 4100 7850 4700
Wire Wire Line
	7750 4100 7750 4700
Wire Wire Line
	7650 4100 7650 4700
Wire Wire Line
	7550 4100 7550 4700
Wire Wire Line
	7350 4100 7350 4700
Text Label 8850 4650 1    50   ~ 0
XY0
Text Label 8750 4650 1    50   ~ 0
XY1
Text Label 8650 4650 1    50   ~ 0
XY2
Text Label 8550 4650 1    50   ~ 0
XY3
Text Label 8450 4650 1    50   ~ 0
XY4
Text Label 8350 4650 1    50   ~ 0
XY5
Text Label 8250 4650 1    50   ~ 0
XY6
Text Label 8150 4650 1    50   ~ 0
XY7
Text Label 8050 4650 1    50   ~ 0
XY8
Text Label 7950 4650 1    50   ~ 0
XY9
Text Label 7850 4650 1    50   ~ 0
XY10
Text Label 7750 4650 1    50   ~ 0
XY11
Text Label 7650 4650 1    50   ~ 0
XY12
Text Label 7550 4650 1    50   ~ 0
XY13
Text Label 7350 4650 1    50   ~ 0
XY15
Entry Wire Line
	8850 4100 8750 4000
Entry Wire Line
	8750 4100 8650 4000
Entry Wire Line
	8650 4100 8550 4000
Entry Wire Line
	8550 4100 8450 4000
Entry Wire Line
	8450 4100 8350 4000
Entry Wire Line
	8350 4100 8250 4000
Entry Wire Line
	8250 4100 8150 4000
Entry Wire Line
	8150 4100 8050 4000
Entry Wire Line
	8050 4100 7950 4000
Entry Wire Line
	7950 4100 7850 4000
Entry Wire Line
	7850 4100 7750 4000
Entry Wire Line
	7750 4100 7650 4000
Entry Wire Line
	7650 4100 7550 4000
Entry Wire Line
	7550 4100 7450 4000
Entry Wire Line
	7350 4100 7250 4000
$Comp
L power:GND #PWR?
U 1 1 5DA41394
P 8950 4600
AR Path="/5D2C07CD/5DA41394" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DA41394" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DA41394" Ref="#PWR0194"  Part="1" 
AR Path="/5D2C12A5/5DA41394" Ref="#PWR?"  Part="1" 
F 0 "#PWR0194" H 8950 4350 50  0001 C CNN
F 1 "GND" H 8955 4427 50  0000 C CNN
F 2 "" H 8950 4600 50  0001 C CNN
F 3 "" H 8950 4600 50  0001 C CNN
	1    8950 4600
	-1   0    0    1   
$EndComp
Wire Bus Line
	9600 1050 10100 1050
NoConn ~ 9250 1950
$Comp
L 74xx:74LS245 U?
U 1 1 5DDD930F
P 5500 4800
AR Path="/5D2C0CA7/5DDD930F" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DDD930F" Ref="U9"  Part="1" 
F 0 "U9" H 5250 5600 50  0000 C CNN
F 1 "74AHCT245" H 5250 5500 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 5500 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn54ahct245.pdf" H 5500 4800 50  0001 C CNN
	1    5500 4800
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DFB1E6C
P 2850 4300
AR Path="/5D2C0CA7/5DFB1E6C" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DFB1E6C" Ref="#PWR0262"  Part="1" 
F 0 "#PWR0262" H 2850 4150 50  0001 C CNN
F 1 "VCC" H 2867 4473 50  0000 C CNN
F 2 "" H 2850 4300 50  0001 C CNN
F 3 "" H 2850 4300 50  0001 C CNN
	1    2850 4300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DFB16B9
P 5100 4300
AR Path="/5D2C0CA7/5DFB16B9" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DFB16B9" Ref="#PWR0261"  Part="1" 
F 0 "#PWR0261" H 5100 4150 50  0001 C CNN
F 1 "VCC" H 5117 4473 50  0000 C CNN
F 2 "" H 5100 4300 50  0001 C CNN
F 3 "" H 5100 4300 50  0001 C CNN
	1    5100 4300
	1    0    0    -1  
$EndComp
Text GLabel 7950 5250 0    50   Input ~ 0
XY[0..15]
Text GLabel 8200 5250 2    50   Output ~ 0
AddressBus[0..15]
Wire Bus Line
	8200 5250 7950 5250
$Comp
L power:VCC #PWR0240
U 1 1 5E1BD4C2
P 2450 750
F 0 "#PWR0240" H 2450 600 50  0001 C CNN
F 1 "VCC" H 2467 923 50  0000 C CNN
F 2 "" H 2450 750 50  0001 C CNN
F 3 "" H 2450 750 50  0001 C CNN
	1    2450 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 750  2450 850 
Connection ~ 2450 850 
Connection ~ 8400 6000
Connection ~ 8400 5700
Connection ~ 8900 6000
Wire Wire Line
	8900 6000 8400 6000
Wire Wire Line
	9400 6000 8900 6000
Connection ~ 8900 5700
Wire Wire Line
	8900 5700 9400 5700
Wire Wire Line
	8400 5700 8900 5700
$Comp
L Device:C C?
U 1 1 5E03EB20
P 9400 5850
AR Path="/5D2C07CD/5E03EB20" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5E03EB20" Ref="C8"  Part="1" 
F 0 "C8" H 9515 5896 50  0000 L CNN
F 1 "100nF" H 9515 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9438 5700 50  0001 C CNN
F 3 "~" H 9400 5850 50  0001 C CNN
	1    9400 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E03EB1A
P 8900 5850
AR Path="/5D2C07CD/5E03EB1A" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5E03EB1A" Ref="C7"  Part="1" 
F 0 "C7" H 9015 5896 50  0000 L CNN
F 1 "100nF" H 9015 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8938 5700 50  0001 C CNN
F 3 "~" H 8900 5850 50  0001 C CNN
	1    8900 5850
	1    0    0    -1  
$EndComp
Connection ~ 6900 6000
Connection ~ 7400 6000
Wire Wire Line
	7400 6000 6900 6000
Connection ~ 7900 6000
Wire Wire Line
	7900 6000 7400 6000
Wire Wire Line
	8400 6000 7900 6000
Connection ~ 7900 5700
Wire Wire Line
	7900 5700 8400 5700
Connection ~ 7400 5700
Wire Wire Line
	7400 5700 7900 5700
Connection ~ 6900 5700
Wire Wire Line
	6900 5700 7400 5700
$Comp
L power:VCC #PWR?
U 1 1 5D846358
P 6900 5700
AR Path="/5D2C07CD/5D846358" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5D846358" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 6900 5550 50  0001 C CNN
F 1 "VCC" H 6917 5873 50  0000 C CNN
F 2 "" H 6900 5700 50  0001 C CNN
F 3 "" H 6900 5700 50  0001 C CNN
	1    6900 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D846352
P 6900 6000
AR Path="/5D2C07CD/5D846352" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5D846352" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 6900 5750 50  0001 C CNN
F 1 "GND" H 6905 5827 50  0000 C CNN
F 2 "" H 6900 6000 50  0001 C CNN
F 3 "" H 6900 6000 50  0001 C CNN
	1    6900 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D84634C
P 8400 5850
AR Path="/5D2C07CD/5D84634C" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5D84634C" Ref="C17"  Part="1" 
F 0 "C17" H 8515 5896 50  0000 L CNN
F 1 "100nF" H 8515 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8438 5700 50  0001 C CNN
F 3 "~" H 8400 5850 50  0001 C CNN
	1    8400 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D846346
P 7900 5850
AR Path="/5D2C07CD/5D846346" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5D846346" Ref="C16"  Part="1" 
F 0 "C16" H 8015 5896 50  0000 L CNN
F 1 "100nF" H 8015 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7938 5700 50  0001 C CNN
F 3 "~" H 7900 5850 50  0001 C CNN
	1    7900 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D846340
P 7400 5850
AR Path="/5D2C07CD/5D846340" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5D846340" Ref="C15"  Part="1" 
F 0 "C15" H 7515 5896 50  0000 L CNN
F 1 "100nF" H 7515 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7438 5700 50  0001 C CNN
F 3 "~" H 7400 5850 50  0001 C CNN
	1    7400 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D84633A
P 6900 5850
AR Path="/5D2C07CD/5D84633A" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5D84633A" Ref="C14"  Part="1" 
F 0 "C14" H 7015 5896 50  0000 L CNN
F 1 "100nF" H 7015 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6938 5700 50  0001 C CNN
F 3 "~" H 6900 5850 50  0001 C CNN
	1    6900 5850
	1    0    0    -1  
$EndComp
Wire Bus Line
	9600 1050 9600 4000
Wire Bus Line
	7450 1050 7450 1650
Wire Bus Line
	5350 1050 5350 1650
Wire Bus Line
	3250 1050 3250 1650
Wire Bus Line
	7600 950  7600 1650
Wire Bus Line
	5500 950  5500 1650
Wire Bus Line
	3400 950  3400 1650
Wire Bus Line
	1350 950  1350 1650
Wire Bus Line
	3150 6350 9900 6350
Wire Bus Line
	2950 4000 9600 4000
$EndSCHEMATC