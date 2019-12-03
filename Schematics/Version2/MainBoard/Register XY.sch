EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 23
Title "Registers X and Y"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "The XY register pair sets the value on the sixteen-bit Address Bus."
$EndDescr
$Comp
L Device:C C?
U 1 1 5D84633A
P 750 7600
AR Path="/5D2C07CD/5D84633A" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5D84633A" Ref="C14"  Part="1" 
F 0 "C14" H 865 7646 50  0000 L CNN
F 1 "100nF" H 865 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 788 7450 50  0001 C CNN
F 3 "~" H 750 7600 50  0001 C CNN
	1    750  7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D846340
P 1250 7600
AR Path="/5D2C07CD/5D846340" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5D846340" Ref="C15"  Part="1" 
F 0 "C15" H 1365 7646 50  0000 L CNN
F 1 "100nF" H 1365 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1288 7450 50  0001 C CNN
F 3 "~" H 1250 7600 50  0001 C CNN
	1    1250 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D846346
P 1750 7600
AR Path="/5D2C07CD/5D846346" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5D846346" Ref="C16"  Part="1" 
F 0 "C16" H 1865 7646 50  0000 L CNN
F 1 "100nF" H 1865 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1788 7450 50  0001 C CNN
F 3 "~" H 1750 7600 50  0001 C CNN
	1    1750 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D84634C
P 2250 7600
AR Path="/5D2C07CD/5D84634C" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5D84634C" Ref="C17"  Part="1" 
F 0 "C17" H 2365 7646 50  0000 L CNN
F 1 "100nF" H 2365 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2288 7450 50  0001 C CNN
F 3 "~" H 2250 7600 50  0001 C CNN
	1    2250 7600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D846352
P 750 7750
AR Path="/5D2C07CD/5D846352" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5D846352" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 750 7500 50  0001 C CNN
F 1 "GND" H 755 7577 50  0000 C CNN
F 2 "" H 750 7750 50  0001 C CNN
F 3 "" H 750 7750 50  0001 C CNN
	1    750  7750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D846358
P 750 7450
AR Path="/5D2C07CD/5D846358" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5D846358" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 750 7300 50  0001 C CNN
F 1 "VCC" H 767 7623 50  0000 C CNN
F 2 "" H 750 7450 50  0001 C CNN
F 3 "" H 750 7450 50  0001 C CNN
	1    750  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  7450 1250 7450
Connection ~ 750  7450
Wire Wire Line
	1250 7450 1750 7450
Connection ~ 1250 7450
Wire Wire Line
	1750 7450 2250 7450
Connection ~ 1750 7450
Wire Wire Line
	2250 7750 1750 7750
Wire Wire Line
	1750 7750 1250 7750
Connection ~ 1750 7750
Wire Wire Line
	1250 7750 750  7750
Connection ~ 1250 7750
Connection ~ 750  7750
Text GLabel 1150 3600 0    50   Input ~ 0
~YI
$Comp
L 74xx:74LS161 U?
U 1 1 5DBCA966
P 2450 2100
AR Path="/5D2C07CD/5DBCA966" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DBCA966" Ref="U6"  Part="1" 
F 0 "U6" H 2200 2900 50  0000 C CNN
F 1 "74F161" H 2200 2800 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2450 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 2450 2100 50  0001 C CNN
	1    2450 2100
	1    0    0    -1  
$EndComp
Text GLabel 1150 3300 0    50   Input ~ 0
RegisterClock
Wire Wire Line
	1950 2400 1550 2400
Wire Wire Line
	1550 2400 1550 3300
Wire Wire Line
	1550 3300 1150 3300
$Comp
L power:GND #PWR?
U 1 1 5DBCA984
P 2450 2900
AR Path="/5D2C07CD/5DBCA984" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DBCA984" Ref="#PWR0166"  Part="1" 
F 0 "#PWR0166" H 2450 2650 50  0001 C CNN
F 1 "GND" H 2455 2727 50  0000 C CNN
F 2 "" H 2450 2900 50  0001 C CNN
F 3 "" H 2450 2900 50  0001 C CNN
	1    2450 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2100 1350 2100
Wire Wire Line
	1350 3600 1150 3600
Entry Wire Line
	1350 1500 1450 1600
Entry Wire Line
	1350 1600 1450 1700
Entry Wire Line
	1350 1700 1450 1800
Entry Wire Line
	1350 1800 1450 1900
Entry Wire Line
	3400 1500 3500 1600
Entry Wire Line
	3400 1600 3500 1700
Entry Wire Line
	3400 1700 3500 1800
Entry Wire Line
	3400 1800 3500 1900
Wire Wire Line
	1450 1600 1950 1600
Wire Wire Line
	1950 1700 1450 1700
Wire Wire Line
	1450 1800 1950 1800
Wire Wire Line
	1950 1900 1450 1900
Entry Wire Line
	5500 1500 5600 1600
Entry Wire Line
	5500 1600 5600 1700
Entry Wire Line
	5500 1700 5600 1800
Entry Wire Line
	5500 1800 5600 1900
Entry Wire Line
	7600 1600 7700 1700
Entry Wire Line
	7600 1700 7700 1800
Entry Wire Line
	7600 1800 7700 1900
Text Label 1450 1600 0    50   ~ 0
DataBus0
Text Label 1450 1700 0    50   ~ 0
DataBus1
Text Label 1450 1800 0    50   ~ 0
DataBus2
Text Label 1450 1900 0    50   ~ 0
DataBus3
Text Label 3500 1800 0    50   ~ 0
DataBus6
Text Label 3500 1900 0    50   ~ 0
DataBus7
Text Label 5600 1600 0    50   ~ 0
DataBus0
Text Label 5600 1700 0    50   ~ 0
DataBus1
Text Label 5600 1800 0    50   ~ 0
DataBus2
Text Label 5600 1900 0    50   ~ 0
DataBus3
Entry Wire Line
	7600 1500 7700 1600
Text Label 7700 1600 0    50   ~ 0
DataBus4
Text Label 7700 1700 0    50   ~ 0
DataBus5
Text Label 7700 1800 0    50   ~ 0
DataBus6
Text Label 7700 1900 0    50   ~ 0
DataBus7
Entry Wire Line
	3150 1600 3250 1500
Entry Wire Line
	3150 1700 3250 1600
Entry Wire Line
	3150 1800 3250 1700
Entry Wire Line
	3150 1900 3250 1800
Wire Wire Line
	3150 1900 2950 1900
Wire Wire Line
	3150 1800 2950 1800
Wire Wire Line
	3150 1700 2950 1700
Wire Wire Line
	3150 1600 2950 1600
Text Label 2950 1600 0    50   ~ 0
XY0
Text Label 2950 1700 0    50   ~ 0
XY1
Wire Wire Line
	1350 3600 3600 3600
Connection ~ 1350 3600
Wire Wire Line
	1550 3300 3700 3300
Connection ~ 1550 3300
Entry Wire Line
	5250 1600 5350 1500
Entry Wire Line
	5250 1700 5350 1600
Entry Wire Line
	5250 1800 5350 1700
Entry Wire Line
	5250 1900 5350 1800
Text Label 5050 1600 0    50   ~ 0
XY4
Text Label 5050 1700 0    50   ~ 0
XY5
Text Label 5050 1800 0    50   ~ 0
XY6
Text Label 5050 1900 0    50   ~ 0
XY7
Entry Wire Line
	7350 1600 7450 1500
Entry Wire Line
	7350 1700 7450 1600
Entry Wire Line
	7350 1800 7450 1700
Entry Wire Line
	7350 1900 7450 1800
Text Label 7150 1600 0    50   ~ 0
XY8
Text Label 7150 1700 0    50   ~ 0
XY9
Text Label 7150 1800 0    50   ~ 0
XY10
Text Label 7150 1900 0    50   ~ 0
XY11
Entry Wire Line
	9500 1600 9600 1500
Entry Wire Line
	9500 1700 9600 1600
Entry Wire Line
	9500 1800 9600 1700
Entry Wire Line
	9500 1900 9600 1800
Text Label 9300 1600 0    50   ~ 0
XY12
Text Label 9300 1700 0    50   ~ 0
XY13
Text Label 9300 1800 0    50   ~ 0
XY14
Text Label 9300 1900 0    50   ~ 0
XY15
Wire Bus Line
	1150 1100 1350 1100
Connection ~ 1350 1100
Wire Bus Line
	1350 1100 3400 1100
Connection ~ 3400 1100
Wire Bus Line
	3400 1100 5500 1100
Connection ~ 5500 1100
Wire Bus Line
	5500 1100 7600 1100
Wire Bus Line
	3250 1200 5350 1200
Connection ~ 7450 1200
Connection ~ 5350 1200
Wire Bus Line
	5350 1200 7450 1200
Connection ~ 2450 2900
Text GLabel 10100 1200 2    50   Output ~ 0
XY[0..15]
Wire Wire Line
	8250 1900 7700 1900
Wire Wire Line
	7700 1800 8250 1800
Wire Wire Line
	8250 1700 7700 1700
Wire Wire Line
	7700 1600 8250 1600
Wire Wire Line
	9500 1600 9250 1600
Wire Wire Line
	9250 1700 9500 1700
Wire Wire Line
	9500 1800 9250 1800
Wire Wire Line
	9250 1900 9500 1900
$Comp
L 74xx:74LS161 U?
U 1 1 5DBCAA06
P 8750 2100
AR Path="/5D2C07CD/5DBCAA06" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DBCAA06" Ref="U11"  Part="1" 
F 0 "U11" H 8500 2900 50  0000 C CNN
F 1 "74F161" H 8500 2800 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8750 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 8750 2100 50  0001 C CNN
	1    8750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2900 8750 2900
Connection ~ 6650 2900
Wire Wire Line
	6150 1900 5600 1900
Wire Wire Line
	5600 1800 6150 1800
Wire Wire Line
	6150 1700 5600 1700
Wire Wire Line
	7350 1600 7150 1600
Wire Wire Line
	7350 1700 7150 1700
Wire Wire Line
	7350 1800 7150 1800
Wire Wire Line
	7350 1900 7150 1900
$Comp
L 74xx:74LS161 U?
U 1 1 5DBCAA19
P 6650 2100
AR Path="/5D2C07CD/5DBCAA19" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DBCAA19" Ref="U10"  Part="1" 
F 0 "U10" H 6400 2900 50  0000 C CNN
F 1 "74F161" H 6400 2800 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6650 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 6650 2100 50  0001 C CNN
	1    6650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2900 4550 2900
Connection ~ 4550 2900
Wire Wire Line
	4550 2900 6650 2900
Wire Wire Line
	3500 1900 4050 1900
Wire Wire Line
	4050 1800 3500 1800
Wire Wire Line
	3500 1700 4050 1700
Wire Wire Line
	4050 1600 3500 1600
Wire Wire Line
	5250 1600 5050 1600
Wire Wire Line
	5250 1700 5050 1700
Wire Wire Line
	5250 1800 5050 1800
Wire Wire Line
	5250 1900 5050 1900
$Comp
L 74xx:74LS161 U?
U 1 1 5DBCAA2E
P 4550 2100
AR Path="/5D2C07CD/5DBCAA2E" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DBCAA2E" Ref="U8"  Part="1" 
F 0 "U8" H 4300 2900 50  0000 C CNN
F 1 "74F161" H 4300 2800 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4550 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 4550 2100 50  0001 C CNN
	1    4550 2100
	1    0    0    -1  
$EndComp
Text Label 2950 1900 0    50   ~ 0
XY3
Text Label 2950 1800 0    50   ~ 0
XY2
Wire Wire Line
	7550 2300 7550 2100
Wire Wire Line
	7550 2100 7150 2100
Wire Wire Line
	7550 2300 8250 2300
Wire Wire Line
	5050 2100 5450 2100
Wire Wire Line
	5450 2100 5450 2300
Wire Wire Line
	5450 2300 6150 2300
Wire Wire Line
	2950 2100 3350 2100
Wire Wire Line
	3350 2100 3350 2300
Wire Wire Line
	3350 2300 4050 2300
Wire Wire Line
	6150 1600 5600 1600
Wire Wire Line
	1350 2100 1350 3600
$Comp
L power:VCC #PWR?
U 1 1 5DBCAA86
P 8250 2200
AR Path="/5D2C07CD/5DBCAA86" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DBCAA86" Ref="#PWR0174"  Part="1" 
F 0 "#PWR0174" H 8250 2050 50  0001 C CNN
F 1 "VCC" V 8268 2327 50  0000 L CNN
F 2 "" H 8250 2200 50  0001 C CNN
F 3 "" H 8250 2200 50  0001 C CNN
	1    8250 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DBCAA8C
P 6150 2200
AR Path="/5D2C07CD/5DBCAA8C" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DBCAA8C" Ref="#PWR0254"  Part="1" 
F 0 "#PWR0254" H 6150 2050 50  0001 C CNN
F 1 "VCC" V 6168 2327 50  0000 L CNN
F 2 "" H 6150 2200 50  0001 C CNN
F 3 "" H 6150 2200 50  0001 C CNN
	1    6150 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DBCAA92
P 4050 2200
AR Path="/5D2C07CD/5DBCAA92" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DBCAA92" Ref="#PWR0255"  Part="1" 
F 0 "#PWR0255" H 4050 2050 50  0001 C CNN
F 1 "VCC" V 4068 2327 50  0000 L CNN
F 2 "" H 4050 2200 50  0001 C CNN
F 3 "" H 4050 2200 50  0001 C CNN
	1    4050 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 2200 1850 2200
Wire Wire Line
	1850 2200 1850 2250
Wire Wire Line
	1850 2300 1950 2300
Connection ~ 1850 2250
Wire Wire Line
	1850 2250 1850 2300
Wire Bus Line
	7450 1200 9600 1200
Connection ~ 9600 1200
Text GLabel 1150 1100 0    50   Input ~ 0
DataBus[0..7]
Wire Wire Line
	4550 1300 4550 1000
Wire Wire Line
	6650 1300 6650 1000
Wire Wire Line
	8750 1000 8750 1300
Wire Wire Line
	6650 1000 8750 1000
Connection ~ 6650 1000
Wire Wire Line
	4550 1000 6650 1000
Connection ~ 4550 1000
Wire Wire Line
	2450 1000 4550 1000
Wire Wire Line
	2450 1300 2450 1000
Text Label 3500 1700 0    50   ~ 0
DataBus5
Text Label 3500 1600 0    50   ~ 0
DataBus4
$Comp
L power:VCC #PWR?
U 1 1 5DCD1593
P 1950 2600
AR Path="/5D2C07CD/5DCD1593" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DCD1593" Ref="#PWR0257"  Part="1" 
F 0 "#PWR0257" H 1950 2450 50  0001 C CNN
F 1 "VCC" V 1968 2727 50  0000 L CNN
F 2 "" H 1950 2600 50  0001 C CNN
F 3 "" H 1950 2600 50  0001 C CNN
	1    1950 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DCDF546
P 4050 2600
AR Path="/5D2C07CD/5DCDF546" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DCDF546" Ref="#PWR0258"  Part="1" 
F 0 "#PWR0258" H 4050 2450 50  0001 C CNN
F 1 "VCC" V 4068 2727 50  0000 L CNN
F 2 "" H 4050 2600 50  0001 C CNN
F 3 "" H 4050 2600 50  0001 C CNN
	1    4050 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 2400 3700 3300
Connection ~ 3700 3300
Wire Wire Line
	3700 3300 5750 3300
Wire Wire Line
	3700 2400 4050 2400
$Comp
L power:VCC #PWR?
U 1 1 5DCFA511
P 6150 2600
AR Path="/5D2C07CD/5DCFA511" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DCFA511" Ref="#PWR0259"  Part="1" 
F 0 "#PWR0259" H 6150 2450 50  0001 C CNN
F 1 "VCC" V 6168 2727 50  0000 L CNN
F 2 "" H 6150 2600 50  0001 C CNN
F 3 "" H 6150 2600 50  0001 C CNN
	1    6150 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 2400 5750 3300
Connection ~ 5750 3300
Wire Wire Line
	5750 2400 6150 2400
Wire Wire Line
	5750 3300 7900 3300
$Comp
L power:VCC #PWR?
U 1 1 5DD07A43
P 8250 2600
AR Path="/5D2C07CD/5DD07A43" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DD07A43" Ref="#PWR0260"  Part="1" 
F 0 "#PWR0260" H 8250 2450 50  0001 C CNN
F 1 "VCC" V 8268 2727 50  0000 L CNN
F 2 "" H 8250 2600 50  0001 C CNN
F 3 "" H 8250 2600 50  0001 C CNN
	1    8250 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7900 2400 7900 3300
Wire Wire Line
	7900 2400 8250 2400
Text GLabel 1150 3750 0    50   Input ~ 0
~XI
Wire Wire Line
	1150 3750 5650 3750
Wire Wire Line
	3600 2100 3600 3600
Wire Wire Line
	3600 2100 4050 2100
Wire Wire Line
	5650 2100 5650 3750
Connection ~ 5650 3750
Wire Wire Line
	5650 2100 6150 2100
Wire Wire Line
	5650 3750 7800 3750
Wire Wire Line
	7800 2100 7800 3750
Wire Wire Line
	7800 2100 8250 2100
Text GLabel 1150 3450 0    50   Input ~ 0
XYInc
Wire Wire Line
	1450 2250 1450 3450
Wire Wire Line
	1450 3450 1150 3450
Wire Wire Line
	1450 2250 1850 2250
$Comp
L 74xx:74LS245 U?
U 1 1 5DDC9F0A
P 3250 4950
AR Path="/5D2C0CA7/5DDC9F0A" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DDC9F0A" Ref="U7"  Part="1" 
F 0 "U7" H 3000 5750 50  0000 C CNN
F 1 "74AHCT245" H 3000 5650 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 3250 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn54ahct245.pdf" H 3250 4950 50  0001 C CNN
	1    3250 4950
	0    1    1    0   
$EndComp
Text Label 3450 4450 1    50   ~ 0
XY11
Text Label 3550 4450 1    50   ~ 0
XY10
Text Label 3750 4450 1    50   ~ 0
XY8
Text Label 3650 4450 1    50   ~ 0
XY9
Wire Wire Line
	3450 4250 3450 4450
Wire Wire Line
	3550 4250 3550 4450
Wire Wire Line
	3650 4250 3650 4450
Wire Wire Line
	3750 4250 3750 4450
Entry Wire Line
	3750 4250 3650 4150
Entry Wire Line
	3650 4250 3550 4150
Entry Wire Line
	3550 4250 3450 4150
Entry Wire Line
	3450 4250 3350 4150
Entry Wire Line
	3050 4250 2950 4150
Entry Wire Line
	3150 4250 3050 4150
Entry Wire Line
	3250 4250 3150 4150
Entry Wire Line
	3350 4250 3250 4150
Text Label 3050 4450 1    50   ~ 0
XY15
Text Label 3150 4450 1    50   ~ 0
XY14
Text Label 3250 4450 1    50   ~ 0
XY13
Text Label 3350 4450 1    50   ~ 0
XY12
Wire Wire Line
	3050 4250 3050 4450
Wire Wire Line
	3150 4250 3150 4450
Wire Wire Line
	3250 4250 3250 4450
Wire Wire Line
	3350 4250 3350 4450
Text Label 5700 4450 1    50   ~ 0
XY3
Text Label 5800 4450 1    50   ~ 0
XY2
Text Label 6000 4450 1    50   ~ 0
XY0
Text Label 5900 4450 1    50   ~ 0
XY1
Wire Wire Line
	5700 4250 5700 4450
Wire Wire Line
	5800 4250 5800 4450
Wire Wire Line
	5900 4250 5900 4450
Wire Wire Line
	6000 4250 6000 4450
Entry Wire Line
	6000 4250 5900 4150
Entry Wire Line
	5900 4250 5800 4150
Entry Wire Line
	5800 4250 5700 4150
Entry Wire Line
	5700 4250 5600 4150
Entry Wire Line
	5300 4250 5200 4150
Entry Wire Line
	5400 4250 5300 4150
Entry Wire Line
	5500 4250 5400 4150
Entry Wire Line
	5600 4250 5500 4150
Text Label 5300 4450 1    50   ~ 0
XY7
Text Label 5400 4450 1    50   ~ 0
XY6
Text Label 5500 4450 1    50   ~ 0
XY5
Text Label 5600 4450 1    50   ~ 0
XY4
Wire Wire Line
	5300 4250 5300 4450
Wire Wire Line
	5400 4250 5400 4450
Wire Wire Line
	5500 4250 5500 4450
Wire Wire Line
	5600 4250 5600 4450
Entry Wire Line
	6000 6500 5900 6400
Entry Wire Line
	5900 6500 5800 6400
Entry Wire Line
	5800 6500 5700 6400
Entry Wire Line
	5700 6500 5600 6400
Entry Wire Line
	5600 6500 5500 6400
Entry Wire Line
	5500 6500 5400 6400
Entry Wire Line
	5400 6500 5300 6400
Text GLabel 9900 6500 2    50   Output ~ 0
DataBus[0..7]
Entry Wire Line
	6100 6500 6000 6400
Text Label 5900 6000 3    50   ~ 0
DataBus1
Text Label 5800 6000 3    50   ~ 0
DataBus2
Text Label 5700 6000 3    50   ~ 0
DataBus3
Text Label 5600 6000 3    50   ~ 0
DataBus4
Text Label 5500 6000 3    50   ~ 0
DataBus5
Text Label 5400 6000 3    50   ~ 0
DataBus6
Text Label 5300 6000 3    50   ~ 0
DataBus7
Text Label 6000 6000 3    50   ~ 0
DataBus0
Wire Wire Line
	5300 6400 5300 5450
Wire Wire Line
	5400 6400 5400 5450
Wire Wire Line
	5500 6400 5500 5450
Wire Wire Line
	5600 6400 5600 5450
Wire Wire Line
	5700 6400 5700 5450
Wire Wire Line
	5800 6400 5800 5450
Wire Wire Line
	5900 6400 5900 5450
Wire Wire Line
	6000 6400 6000 5450
Entry Wire Line
	3750 6500 3650 6400
Entry Wire Line
	3650 6500 3550 6400
Entry Wire Line
	3550 6500 3450 6400
Entry Wire Line
	3450 6500 3350 6400
Entry Wire Line
	3350 6500 3250 6400
Entry Wire Line
	3250 6500 3150 6400
Entry Wire Line
	3150 6500 3050 6400
Entry Wire Line
	3850 6500 3750 6400
Text Label 3650 6000 3    50   ~ 0
DataBus1
Text Label 3550 6000 3    50   ~ 0
DataBus2
Text Label 3450 6000 3    50   ~ 0
DataBus3
Text Label 3350 6000 3    50   ~ 0
DataBus4
Text Label 3250 6000 3    50   ~ 0
DataBus5
Text Label 3150 6000 3    50   ~ 0
DataBus6
Text Label 3050 6000 3    50   ~ 0
DataBus7
Text Label 3750 6000 3    50   ~ 0
DataBus0
Wire Wire Line
	3050 6400 3050 5450
Wire Wire Line
	3150 6400 3150 5450
Wire Wire Line
	3250 6400 3250 5450
Wire Wire Line
	3350 6400 3350 5450
Wire Wire Line
	3450 6400 3450 5450
Wire Wire Line
	3550 6400 3550 5450
Wire Wire Line
	3650 6400 3650 5450
Wire Wire Line
	3750 6400 3750 5450
$Comp
L power:VCC #PWR?
U 1 1 5DFB2225
P 6300 4950
AR Path="/5D2C07CD/5DFB2225" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DFB2225" Ref="#PWR0263"  Part="1" 
F 0 "#PWR0263" H 6300 4800 50  0001 C CNN
F 1 "VCC" V 6318 5077 50  0000 L CNN
F 2 "" H 6300 4950 50  0001 C CNN
F 3 "" H 6300 4950 50  0001 C CNN
	1    6300 4950
	0    1    -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DFDF322
P 4050 4950
AR Path="/5D2C07CD/5DFDF322" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DFDF322" Ref="#PWR0264"  Part="1" 
F 0 "#PWR0264" H 4050 4800 50  0001 C CNN
F 1 "VCC" V 4068 5077 50  0000 L CNN
F 2 "" H 4050 4950 50  0001 C CNN
F 3 "" H 4050 4950 50  0001 C CNN
	1    4050 4950
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0265
U 1 1 5DFDFB67
P 4700 4950
F 0 "#PWR0265" H 4700 4700 50  0001 C CNN
F 1 "GND" V 4705 4822 50  0000 R CNN
F 2 "" H 4700 4950 50  0001 C CNN
F 3 "" H 4700 4950 50  0001 C CNN
	1    4700 4950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0266
U 1 1 5DFE034C
P 2450 4950
F 0 "#PWR0266" H 2450 4700 50  0001 C CNN
F 1 "GND" V 2455 4822 50  0000 R CNN
F 2 "" H 2450 4950 50  0001 C CNN
F 3 "" H 2450 4950 50  0001 C CNN
	1    2450 4950
	0    1    1    0   
$EndComp
Text GLabel 1150 3900 0    50   Input ~ 0
~YO
Text GLabel 1150 4050 0    50   Input ~ 0
~XO
Wire Wire Line
	1150 4050 2750 4050
Wire Wire Line
	2750 4050 2750 4450
Wire Wire Line
	1150 3900 5000 3900
Wire Wire Line
	5000 3900 5000 4450
$Comp
L Device:C C?
U 1 1 5E03EB1A
P 2750 7600
AR Path="/5D2C07CD/5E03EB1A" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5E03EB1A" Ref="C7"  Part="1" 
F 0 "C7" H 2865 7646 50  0000 L CNN
F 1 "100nF" H 2865 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2788 7450 50  0001 C CNN
F 3 "~" H 2750 7600 50  0001 C CNN
	1    2750 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E03EB20
P 3250 7600
AR Path="/5D2C07CD/5E03EB20" Ref="C?"  Part="1" 
AR Path="/5D7BD0EA/5E03EB20" Ref="C8"  Part="1" 
F 0 "C8" H 3365 7646 50  0000 L CNN
F 1 "100nF" H 3365 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3288 7450 50  0001 C CNN
F 3 "~" H 3250 7600 50  0001 C CNN
	1    3250 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 7450 2750 7450
Wire Wire Line
	2750 7450 3250 7450
Connection ~ 2750 7450
Wire Wire Line
	3250 7750 2750 7750
Wire Wire Line
	2750 7750 2250 7750
Connection ~ 2750 7750
Connection ~ 2250 7450
Connection ~ 2250 7750
$Comp
L Connector:Conn_01x17_Female J?
U 1 1 5DA4135C
P 8150 5050
AR Path="/5D2C12A5/5DA4135C" Ref="J?"  Part="1" 
AR Path="/5D7BD0EA/5DA4135C" Ref="J11"  Part="1" 
F 0 "J11" V 8223 5030 50  0000 C CNN
F 1 "XY LED Connector" V 8314 5030 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x17_P2.54mm_Vertical" H 8150 5050 50  0001 C CNN
F 3 "~" H 8150 5050 50  0001 C CNN
	1    8150 5050
	0    1    1    0   
$EndComp
Entry Wire Line
	7450 4250 7350 4150
Text Label 7450 4800 1    50   ~ 0
XY14
Wire Wire Line
	7450 4250 7450 4850
Wire Wire Line
	8950 4850 8950 4750
Wire Wire Line
	8850 4250 8850 4850
Wire Wire Line
	8750 4250 8750 4850
Wire Wire Line
	8650 4250 8650 4850
Wire Wire Line
	8550 4250 8550 4850
Wire Wire Line
	8450 4250 8450 4850
Wire Wire Line
	8350 4250 8350 4850
Wire Wire Line
	8250 4250 8250 4850
Wire Wire Line
	8150 4250 8150 4850
Wire Wire Line
	8050 4250 8050 4850
Wire Wire Line
	7950 4250 7950 4850
Wire Wire Line
	7850 4250 7850 4850
Wire Wire Line
	7750 4250 7750 4850
Wire Wire Line
	7650 4250 7650 4850
Wire Wire Line
	7550 4250 7550 4850
Wire Wire Line
	7350 4250 7350 4850
Text Label 8850 4800 1    50   ~ 0
XY0
Text Label 8750 4800 1    50   ~ 0
XY1
Text Label 8650 4800 1    50   ~ 0
XY2
Text Label 8550 4800 1    50   ~ 0
XY3
Text Label 8450 4800 1    50   ~ 0
XY4
Text Label 8350 4800 1    50   ~ 0
XY5
Text Label 8250 4800 1    50   ~ 0
XY6
Text Label 8150 4800 1    50   ~ 0
XY7
Text Label 8050 4800 1    50   ~ 0
XY8
Text Label 7950 4800 1    50   ~ 0
XY9
Text Label 7850 4800 1    50   ~ 0
XY10
Text Label 7750 4800 1    50   ~ 0
XY11
Text Label 7650 4800 1    50   ~ 0
XY12
Text Label 7550 4800 1    50   ~ 0
XY13
Text Label 7350 4800 1    50   ~ 0
XY15
Entry Wire Line
	8850 4250 8750 4150
Entry Wire Line
	8750 4250 8650 4150
Entry Wire Line
	8650 4250 8550 4150
Entry Wire Line
	8550 4250 8450 4150
Entry Wire Line
	8450 4250 8350 4150
Entry Wire Line
	8350 4250 8250 4150
Entry Wire Line
	8250 4250 8150 4150
Entry Wire Line
	8150 4250 8050 4150
Entry Wire Line
	8050 4250 7950 4150
Entry Wire Line
	7950 4250 7850 4150
Entry Wire Line
	7850 4250 7750 4150
Entry Wire Line
	7750 4250 7650 4150
Entry Wire Line
	7650 4250 7550 4150
Entry Wire Line
	7550 4250 7450 4150
Entry Wire Line
	7350 4250 7250 4150
$Comp
L power:GND #PWR?
U 1 1 5DA41394
P 8950 4750
AR Path="/5D2C07CD/5DA41394" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DA41394" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DA41394" Ref="#PWR0194"  Part="1" 
AR Path="/5D2C12A5/5DA41394" Ref="#PWR?"  Part="1" 
F 0 "#PWR0194" H 8950 4500 50  0001 C CNN
F 1 "GND" H 8955 4577 50  0000 C CNN
F 2 "" H 8950 4750 50  0001 C CNN
F 3 "" H 8950 4750 50  0001 C CNN
	1    8950 4750
	-1   0    0    1   
$EndComp
Wire Bus Line
	9600 1200 10100 1200
NoConn ~ 9250 2100
$Comp
L 74xx:74LS245 U?
U 1 1 5DDD930F
P 5500 4950
AR Path="/5D2C0CA7/5DDD930F" Ref="U?"  Part="1" 
AR Path="/5D7BD0EA/5DDD930F" Ref="U9"  Part="1" 
F 0 "U9" H 5250 5750 50  0000 C CNN
F 1 "74AHCT245" H 5250 5650 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 5500 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn54ahct245.pdf" H 5500 4950 50  0001 C CNN
	1    5500 4950
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DFB1E6C
P 2850 4450
AR Path="/5D2C0CA7/5DFB1E6C" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DFB1E6C" Ref="#PWR0262"  Part="1" 
F 0 "#PWR0262" H 2850 4300 50  0001 C CNN
F 1 "VCC" H 2867 4623 50  0000 C CNN
F 2 "" H 2850 4450 50  0001 C CNN
F 3 "" H 2850 4450 50  0001 C CNN
	1    2850 4450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DFB16B9
P 5100 4450
AR Path="/5D2C0CA7/5DFB16B9" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DFB16B9" Ref="#PWR0261"  Part="1" 
F 0 "#PWR0261" H 5100 4300 50  0001 C CNN
F 1 "VCC" H 5117 4623 50  0000 C CNN
F 2 "" H 5100 4450 50  0001 C CNN
F 3 "" H 5100 4450 50  0001 C CNN
	1    5100 4450
	1    0    0    -1  
$EndComp
Text GLabel 1400 6550 0    50   Input ~ 0
XY[0..15]
Text GLabel 1650 6550 2    50   Output ~ 0
AddressBus[0..15]
Wire Bus Line
	1650 6550 1400 6550
$Comp
L power:VCC #PWR0240
U 1 1 5E1BD4C2
P 2450 900
F 0 "#PWR0240" H 2450 750 50  0001 C CNN
F 1 "VCC" H 2467 1073 50  0000 C CNN
F 2 "" H 2450 900 50  0001 C CNN
F 3 "" H 2450 900 50  0001 C CNN
	1    2450 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 900  2450 1000
Connection ~ 2450 1000
Wire Bus Line
	9600 1200 9600 4150
Wire Bus Line
	7450 1200 7450 1800
Wire Bus Line
	5350 1200 5350 1800
Wire Bus Line
	3250 1200 3250 1800
Wire Bus Line
	7600 1100 7600 1800
Wire Bus Line
	5500 1100 5500 1800
Wire Bus Line
	3400 1100 3400 1800
Wire Bus Line
	1350 1100 1350 1800
Wire Bus Line
	3150 6500 9900 6500
Wire Bus Line
	2950 4150 9600 4150
$EndSCHEMATC
