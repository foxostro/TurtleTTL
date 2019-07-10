EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 18 19
Title "Instruction Register"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "The Instruction Register receives input from either Instruction ROM or Instruction RAM."
$EndDescr
$Comp
L 74xx:74LS157 U?
U 1 1 5D244FD4
P 6900 2350
F 0 "U?" H 6650 3250 50  0000 C CNN
F 1 "74F157" H 6650 3150 50  0000 C CNN
F 2 "" H 6900 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 6900 2350 50  0001 C CNN
	1    6900 2350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 5D2425FC
P 5200 2350
F 0 "U?" H 4950 3250 50  0000 C CNN
F 1 "74F157" H 4950 3150 50  0000 C CNN
F 2 "" H 5200 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 5200 2350 50  0001 C CNN
	1    5200 2350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 5D24114A
P 3650 2350
F 0 "U?" H 3400 3250 50  0000 C CNN
F 1 "74F157" H 3400 3150 50  0000 C CNN
F 2 "" H 3650 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 3650 2350 50  0001 C CNN
	1    3650 2350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 5D23E2DA
P 2100 2350
F 0 "U?" H 1850 3250 50  0000 C CNN
F 1 "74F157" H 1850 3150 50  0000 C CNN
F 2 "" H 2100 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 2100 2350 50  0001 C CNN
	1    2100 2350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U?
U 1 1 5D25C885
P 4850 4450
F 0 "U?" H 4600 5250 50  0000 C CNN
F 1 "74F574" H 4600 5150 50  0000 C CNN
F 2 "" H 4850 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 4850 4450 50  0001 C CNN
	1    4850 4450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U?
U 1 1 5D26023C
P 8150 4450
F 0 "U?" H 7900 5250 50  0000 C CNN
F 1 "74F574" H 7900 5150 50  0000 C CNN
F 2 "" H 8150 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 8150 4450 50  0001 C CNN
	1    8150 4450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D265B00
P 2100 850
F 0 "#PWR?" H 2100 700 50  0001 C CNN
F 1 "VCC" H 2117 1023 50  0000 C CNN
F 2 "" H 2100 850 50  0001 C CNN
F 3 "" H 2100 850 50  0001 C CNN
	1    2100 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 850  2100 1350
Wire Wire Line
	6900 1450 6900 1350
Wire Wire Line
	6900 1350 5200 1350
Connection ~ 2100 1350
Wire Wire Line
	2100 1350 2100 1450
Wire Wire Line
	3650 1450 3650 1350
Connection ~ 3650 1350
Wire Wire Line
	3650 1350 2100 1350
Wire Wire Line
	5200 1450 5200 1350
Connection ~ 5200 1350
Wire Wire Line
	5200 1350 3650 1350
Wire Wire Line
	6900 3350 6400 3350
Connection ~ 2100 3350
Connection ~ 3650 3350
Wire Wire Line
	3650 3350 3150 3350
Connection ~ 5200 3350
Wire Wire Line
	5200 3350 4700 3350
Wire Wire Line
	6900 1350 8150 1350
Wire Wire Line
	8150 1350 8150 3550
Connection ~ 6900 1350
Connection ~ 8150 3550
Wire Wire Line
	8150 3550 8150 3650
$Comp
L power:GND #PWR?
U 1 1 5D268258
P 1600 5600
F 0 "#PWR?" H 1600 5350 50  0001 C CNN
F 1 "GND" H 1605 5427 50  0000 C CNN
F 2 "" H 1600 5600 50  0001 C CNN
F 3 "" H 1600 5600 50  0001 C CNN
	1    1600 5600
	1    0    0    -1  
$EndComp
Text GLabel 1300 5350 0    50   Input ~ 0
InvertedClock0
Wire Wire Line
	7650 4850 7550 4850
Wire Wire Line
	7550 4850 7550 5350
Wire Wire Line
	7550 5350 4250 5350
Wire Wire Line
	4250 5350 4250 4850
Wire Wire Line
	4250 4850 4350 4850
Wire Wire Line
	4250 5350 1300 5350
Connection ~ 4250 5350
Wire Wire Line
	4350 4950 4350 5550
Connection ~ 4350 5550
Wire Wire Line
	7650 4950 7650 5550
Wire Wire Line
	8150 5250 8150 5550
Wire Wire Line
	8150 5550 7650 5550
Connection ~ 7650 5550
Wire Wire Line
	1600 3050 1600 3350
Wire Wire Line
	1600 3350 2100 3350
Wire Wire Line
	3150 3050 3150 3350
Connection ~ 3150 3350
Wire Wire Line
	3150 3350 2100 3350
Wire Wire Line
	4700 3050 4700 3350
Connection ~ 4700 3350
Wire Wire Line
	4700 3350 3650 3350
Wire Wire Line
	6400 3050 6400 3350
Connection ~ 6400 3350
Wire Wire Line
	6400 3350 5200 3350
Wire Wire Line
	1600 3350 1600 5550
Connection ~ 1600 3350
Wire Wire Line
	1600 5550 4350 5550
Connection ~ 1600 5550
Wire Wire Line
	1600 5550 1600 5600
Wire Wire Line
	4150 2650 4150 4650
Wire Wire Line
	4150 4650 4350 4650
Wire Wire Line
	4150 2350 4200 2350
Wire Wire Line
	4200 2350 4200 4550
Wire Wire Line
	4200 4550 4350 4550
Wire Wire Line
	4150 2050 4250 2050
Wire Wire Line
	4250 2050 4250 4450
Wire Wire Line
	4250 4450 4350 4450
Wire Wire Line
	4350 4350 4300 4350
Wire Wire Line
	4300 4350 4300 1750
Wire Wire Line
	4300 1750 4150 1750
Wire Wire Line
	4350 4250 2600 4250
Wire Wire Line
	2600 4250 2600 2650
Wire Wire Line
	2600 2350 2650 2350
Wire Wire Line
	2650 2350 2650 4150
Wire Wire Line
	2650 4150 4350 4150
Wire Wire Line
	4350 4050 2700 4050
Wire Wire Line
	2700 4050 2700 2050
Wire Wire Line
	2700 2050 2600 2050
Wire Wire Line
	2600 1750 2750 1750
Wire Wire Line
	2750 1750 2750 3950
Wire Wire Line
	2750 3950 4350 3950
Wire Wire Line
	7650 4250 5850 4250
Wire Wire Line
	5850 4250 5850 2650
Wire Wire Line
	5850 2650 5700 2650
Wire Wire Line
	7650 4150 5900 4150
Wire Wire Line
	5900 4150 5900 2350
Wire Wire Line
	5900 2350 5700 2350
Wire Wire Line
	5700 2050 5950 2050
Wire Wire Line
	5950 2050 5950 4050
Wire Wire Line
	5950 4050 7650 4050
Wire Wire Line
	7650 3950 6000 3950
Wire Wire Line
	6000 3950 6000 1750
Wire Wire Line
	6000 1750 5700 1750
Wire Wire Line
	7650 4650 7450 4650
Wire Wire Line
	7650 4550 7500 4550
Wire Wire Line
	7500 4550 7500 2350
Wire Wire Line
	7500 2350 7400 2350
Wire Wire Line
	7400 2050 7550 2050
Wire Wire Line
	7550 2050 7550 4450
Wire Wire Line
	7550 4450 7650 4450
Wire Wire Line
	7650 4350 7600 4350
Wire Wire Line
	7600 4350 7600 1750
Wire Wire Line
	7600 1750 7400 1750
Text GLabel 1600 1750 0    50   Input ~ 0
IROM00
Text GLabel 1600 2050 0    50   Input ~ 0
IROM01
Text GLabel 1600 2350 0    50   Input ~ 0
IROM02
Text GLabel 1600 2650 0    50   Input ~ 0
IROM03
Text GLabel 3150 1750 0    50   Input ~ 0
IROM04
Text GLabel 3150 2050 0    50   Input ~ 0
IROM05
Text GLabel 3150 2350 0    50   Input ~ 0
IROM06
Text GLabel 3150 2650 0    50   Input ~ 0
IROM07
Text GLabel 4700 1750 0    50   Input ~ 0
IROM08
Text GLabel 4700 2050 0    50   Input ~ 0
IROM09
Text GLabel 4700 2350 0    50   Input ~ 0
IROM10
Text GLabel 4700 2650 0    50   Input ~ 0
IROM11
Text GLabel 6400 1750 0    50   Input ~ 0
IROM12
Text GLabel 6400 2050 0    50   Input ~ 0
IROM13
Text GLabel 6400 2350 0    50   Input ~ 0
IROM14
Text GLabel 6400 2650 0    50   Input ~ 0
IROM15
Wire Wire Line
	7400 2650 7450 2650
Wire Wire Line
	7450 2650 7450 4650
Wire Wire Line
	4350 5550 4850 5550
Wire Wire Line
	4850 5250 4850 5550
Connection ~ 4850 5550
Wire Wire Line
	4850 5550 7650 5550
Wire Wire Line
	4850 3550 4850 3650
Wire Wire Line
	4850 3550 8150 3550
Text GLabel 1600 1850 0    50   Input ~ 0
IRAM00
Text GLabel 1600 2150 0    50   Input ~ 0
IRAM01
Text GLabel 1600 2450 0    50   Input ~ 0
IRAM02
Text GLabel 1600 2750 0    50   Input ~ 0
IRAM03
Text GLabel 3150 1850 0    50   Input ~ 0
IRAM04
Text GLabel 3150 2150 0    50   Input ~ 0
IRAM05
Text GLabel 3150 2450 0    50   Input ~ 0
IRAM06
Text GLabel 3150 2750 0    50   Input ~ 0
IRAM07
Text GLabel 4700 1850 0    50   Input ~ 0
IRAM08
Text GLabel 4700 2150 0    50   Input ~ 0
IRAM09
Text GLabel 4700 2450 0    50   Input ~ 0
IRAM10
Text GLabel 4700 2750 0    50   Input ~ 0
IRAM11
Text GLabel 6400 1850 0    50   Input ~ 0
IRAM12
Text GLabel 6400 2150 0    50   Input ~ 0
IRAM13
Text GLabel 6400 2450 0    50   Input ~ 0
IRAM14
Text GLabel 6400 2750 0    50   Input ~ 0
IRAM15
Text Notes 600  5200 0    50   ~ 0
TODO: The breadboard\nprototype uses the non-\ninverted clock. So, the\nschematic and prototype\nare out of sync. \nNeed to investigate.
Entry Wire Line
	5550 3950 5650 3850
Entry Wire Line
	5550 4050 5650 3950
Entry Wire Line
	5550 4150 5650 4050
Entry Wire Line
	5550 4250 5650 4150
Entry Wire Line
	5550 4350 5650 4250
Entry Wire Line
	5550 4450 5650 4350
Entry Wire Line
	5550 4550 5650 4450
Entry Wire Line
	5550 4650 5650 4550
Entry Wire Line
	8850 3950 8950 3850
Entry Wire Line
	8850 4050 8950 3950
Entry Wire Line
	8850 4150 8950 4050
Entry Wire Line
	8850 4250 8950 4150
Entry Wire Line
	8850 4350 8950 4250
Entry Wire Line
	8850 4450 8950 4350
Entry Wire Line
	8850 4550 8950 4450
Entry Wire Line
	8850 4650 8950 4550
Wire Bus Line
	5650 6000 8950 6000
Entry Wire Line
	9850 1500 9950 1600
Entry Wire Line
	9850 1600 9950 1700
Entry Wire Line
	9850 1700 9950 1800
Entry Wire Line
	9850 1800 9950 1900
Entry Wire Line
	9850 1900 9950 2000
Entry Wire Line
	9850 2000 9950 2100
Entry Wire Line
	9850 2100 9950 2200
Entry Wire Line
	9850 2200 9950 2300
Entry Wire Line
	9850 2300 9950 2400
Entry Wire Line
	9850 2400 9950 2500
Entry Wire Line
	9850 2500 9950 2600
Entry Wire Line
	9850 2600 9950 2700
Entry Wire Line
	9850 2700 9950 2800
Entry Wire Line
	9850 2800 9950 2900
Entry Wire Line
	9850 2900 9950 3000
Entry Wire Line
	9850 3000 9950 3100
Text GLabel 10200 1600 2    50   Output ~ 0
IR00
Text GLabel 10200 1700 2    50   Output ~ 0
IR01
Text GLabel 10200 1800 2    50   Output ~ 0
IR02
Text GLabel 10200 1900 2    50   Output ~ 0
IR03
Text GLabel 10200 2000 2    50   Output ~ 0
IR04
Text GLabel 10200 2100 2    50   Output ~ 0
IR05
Text GLabel 10200 2200 2    50   Output ~ 0
IR06
Text GLabel 10200 2300 2    50   Output ~ 0
IR07
Text GLabel 10200 2400 2    50   Output ~ 0
IR08
Text GLabel 10200 2500 2    50   Output ~ 0
IR09
Text GLabel 10200 2600 2    50   Output ~ 0
IR10
Text GLabel 10200 2700 2    50   Output ~ 0
IR11
Text GLabel 10200 2800 2    50   Output ~ 0
IR12
Text GLabel 10200 2900 2    50   Output ~ 0
IR13
Text GLabel 10200 3000 2    50   Output ~ 0
IR14
Text GLabel 10200 3100 2    50   Output ~ 0
IR15
Wire Wire Line
	9950 1600 10200 1600
Wire Wire Line
	10200 1700 9950 1700
Wire Wire Line
	9950 1800 10200 1800
Wire Wire Line
	10200 1900 9950 1900
Wire Wire Line
	9950 2000 10200 2000
Wire Wire Line
	10200 2100 9950 2100
Wire Wire Line
	9950 2200 10200 2200
Wire Wire Line
	10200 2300 9950 2300
Wire Wire Line
	9950 2400 10200 2400
Wire Wire Line
	9950 2500 10200 2500
Wire Wire Line
	10200 2600 9950 2600
Wire Wire Line
	9950 2700 10200 2700
Wire Wire Line
	10200 2800 9950 2800
Wire Wire Line
	9950 2900 10200 2900
Wire Wire Line
	10200 3000 9950 3000
Wire Wire Line
	9950 3100 10200 3100
Wire Wire Line
	6400 2950 6300 2950
Wire Wire Line
	6300 2950 6300 3450
Wire Wire Line
	6300 3450 4600 3450
Wire Wire Line
	1500 3450 1500 2950
Wire Wire Line
	1500 2950 1600 2950
Wire Wire Line
	3150 2950 3050 2950
Wire Wire Line
	3050 2950 3050 3450
Connection ~ 3050 3450
Wire Wire Line
	3050 3450 1500 3450
Wire Wire Line
	4700 2950 4600 2950
Wire Wire Line
	4600 2950 4600 3450
Connection ~ 4600 3450
Wire Wire Line
	4600 3450 3050 3450
Text GLabel 1300 3450 0    50   Input ~ 0
PC15
Wire Wire Line
	1500 3450 1300 3450
Connection ~ 1500 3450
Wire Wire Line
	5350 3950 5550 3950
Wire Wire Line
	5550 4050 5350 4050
Wire Wire Line
	5350 4150 5550 4150
Wire Wire Line
	5550 4250 5350 4250
Wire Wire Line
	5350 4350 5550 4350
Wire Wire Line
	5550 4450 5350 4450
Wire Wire Line
	5350 4550 5550 4550
Wire Wire Line
	5550 4650 5350 4650
Wire Wire Line
	8650 3950 8850 3950
Wire Wire Line
	8850 4050 8650 4050
Wire Wire Line
	8650 4150 8850 4150
Wire Wire Line
	8850 4250 8650 4250
Wire Wire Line
	8650 4350 8850 4350
Wire Wire Line
	8850 4450 8650 4450
Wire Wire Line
	8650 4550 8850 4550
Wire Wire Line
	8850 4650 8650 4650
Wire Bus Line
	8950 1500 9850 1500
Wire Bus Line
	8950 1500 8950 6000
Wire Bus Line
	5650 3850 5650 6000
Wire Bus Line
	9850 1500 9850 3000
Text Label 10150 1600 2    50   ~ 0
IR00
Text Label 10150 1700 2    50   ~ 0
IR01
Text Label 10150 1800 2    50   ~ 0
IR02
Text Label 10150 1900 2    50   ~ 0
IR03
Text Label 10150 2000 2    50   ~ 0
IR04
Text Label 10150 2100 2    50   ~ 0
IR05
Text Label 10150 2200 2    50   ~ 0
IR06
Text Label 10150 2300 2    50   ~ 0
IR07
Text Label 10150 2400 2    50   ~ 0
IR08
Text Label 10150 2500 2    50   ~ 0
IR09
Text Label 10150 2600 2    50   ~ 0
IR10
Text Label 10150 2700 2    50   ~ 0
IR11
Text Label 10150 2800 2    50   ~ 0
IR12
Text Label 10150 2900 2    50   ~ 0
IR13
Text Label 10150 3000 2    50   ~ 0
IR14
Text Label 10150 3100 2    50   ~ 0
IR15
Text Label 5500 3950 2    50   ~ 0
IR00
Text Label 5500 4050 2    50   ~ 0
IR01
Text Label 5500 4150 2    50   ~ 0
IR02
Text Label 5500 4250 2    50   ~ 0
IR03
Text Label 5500 4350 2    50   ~ 0
IR04
Text Label 5500 4450 2    50   ~ 0
IR05
Text Label 5500 4550 2    50   ~ 0
IR06
Text Label 5500 4650 2    50   ~ 0
IR07
Text Label 8800 3950 2    50   ~ 0
IR08
Text Label 8800 4050 2    50   ~ 0
IR09
Text Label 8800 4150 2    50   ~ 0
IR10
Text Label 8800 4250 2    50   ~ 0
IR11
Text Label 8800 4350 2    50   ~ 0
IR12
Text Label 8800 4450 2    50   ~ 0
IR13
Text Label 8800 4550 2    50   ~ 0
IR14
Text Label 8800 4650 2    50   ~ 0
IR15
$EndSCHEMATC