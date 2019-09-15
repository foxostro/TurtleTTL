EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 16 21
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
U 1 1 5D23E2DA
P 2100 2100
F 0 "U?" H 1850 3000 50  0000 C CNN
F 1 "74F157" H 1850 2900 50  0000 C CNN
F 2 "" H 2100 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 2100 2100 50  0001 C CNN
	1    2100 2100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U?
U 1 1 5D25C885
P 4350 4600
F 0 "U?" H 4100 5400 50  0000 C CNN
F 1 "74F574" H 4100 5300 50  0000 C CNN
F 2 "" H 4350 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 4350 4600 50  0001 C CNN
	1    4350 4600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U?
U 1 1 5D26023C
P 8950 4600
F 0 "U?" H 8700 5400 50  0000 C CNN
F 1 "74F574" H 8700 5300 50  0000 C CNN
F 2 "" H 8950 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 8950 4600 50  0001 C CNN
	1    8950 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D268258
P 2100 3100
F 0 "#PWR?" H 2100 2850 50  0001 C CNN
F 1 "GND" H 2105 2927 50  0000 C CNN
F 2 "" H 2100 3100 50  0001 C CNN
F 3 "" H 2100 3100 50  0001 C CNN
	1    2100 3100
	1    0    0    -1  
$EndComp
Text GLabel 1050 5700 0    50   Input ~ 0
ControlClock
Wire Wire Line
	8450 5000 8200 5000
Wire Wire Line
	3600 5700 3600 5000
Wire Wire Line
	3600 5000 3850 5000
Wire Wire Line
	3600 5700 1050 5700
Entry Wire Line
	5050 4100 5150 4200
Entry Wire Line
	5050 4200 5150 4300
Entry Wire Line
	5050 4300 5150 4400
Entry Wire Line
	5050 4400 5150 4500
Entry Wire Line
	5050 4500 5150 4600
Entry Wire Line
	5050 4600 5150 4700
Entry Wire Line
	5050 4700 5150 4800
Entry Wire Line
	5050 4800 5150 4900
Entry Wire Line
	9650 4100 9750 4000
Entry Wire Line
	9650 4200 9750 4100
Entry Wire Line
	9650 4300 9750 4200
Entry Wire Line
	9650 4400 9750 4300
Entry Wire Line
	9650 4500 9750 4400
Entry Wire Line
	9650 4600 9750 4500
Entry Wire Line
	9650 4700 9750 4600
Entry Wire Line
	9650 4800 9750 4700
Wire Wire Line
	4850 4100 5050 4100
Wire Wire Line
	5050 4200 4850 4200
Wire Wire Line
	4850 4300 5050 4300
Wire Wire Line
	5050 4400 4850 4400
Wire Wire Line
	4850 4500 5050 4500
Wire Wire Line
	5050 4600 4850 4600
Wire Wire Line
	4850 4700 5050 4700
Wire Wire Line
	5050 4800 4850 4800
Wire Wire Line
	9450 4100 9650 4100
Wire Wire Line
	9650 4200 9450 4200
Wire Wire Line
	9450 4300 9650 4300
Wire Wire Line
	9650 4400 9450 4400
Wire Wire Line
	9450 4500 9650 4500
Wire Wire Line
	9650 4600 9450 4600
Wire Wire Line
	9450 4700 9650 4700
Wire Wire Line
	9650 4800 9450 4800
Wire Bus Line
	9750 3900 10300 3900
Text Label 5000 4100 2    50   ~ 0
IR00
Text Label 5000 4200 2    50   ~ 0
IR01
Text Label 5000 4300 2    50   ~ 0
IR02
Text Label 5000 4400 2    50   ~ 0
IR03
Text Label 5000 4500 2    50   ~ 0
IR04
Text Label 5000 4600 2    50   ~ 0
IR05
Text Label 5000 4700 2    50   ~ 0
IR06
Text Label 5000 4800 2    50   ~ 0
IR07
Text Label 9600 4100 2    50   ~ 0
IR08
Text Label 9600 4200 2    50   ~ 0
IR09
Text Label 9600 4300 2    50   ~ 0
IR10
Text Label 9600 4400 2    50   ~ 0
IR11
Text Label 9600 4500 2    50   ~ 0
IR12
Text Label 9600 4600 2    50   ~ 0
IR13
Text Label 9600 4700 2    50   ~ 0
IR14
Text Label 9600 4800 2    50   ~ 0
IR15
$Comp
L power:GND #PWR?
U 1 1 5D930BD4
P 4350 5400
F 0 "#PWR?" H 4350 5150 50  0001 C CNN
F 1 "GND" H 4355 5227 50  0000 C CNN
F 2 "" H 4350 5400 50  0001 C CNN
F 3 "" H 4350 5400 50  0001 C CNN
	1    4350 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D930FC4
P 8950 5400
F 0 "#PWR?" H 8950 5150 50  0001 C CNN
F 1 "GND" H 8955 5227 50  0000 C CNN
F 2 "" H 8950 5400 50  0001 C CNN
F 3 "" H 8950 5400 50  0001 C CNN
	1    8950 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D93F174
P 3850 5100
F 0 "#PWR?" H 3850 4850 50  0001 C CNN
F 1 "GND" H 3855 4927 50  0000 C CNN
F 2 "" H 3850 5100 50  0001 C CNN
F 3 "" H 3850 5100 50  0001 C CNN
	1    3850 5100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D944146
P 8450 5100
F 0 "#PWR?" H 8450 4850 50  0001 C CNN
F 1 "GND" H 8455 4927 50  0000 C CNN
F 2 "" H 8450 5100 50  0001 C CNN
F 3 "" H 8450 5100 50  0001 C CNN
	1    8450 5100
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D9520FE
P 8950 3800
F 0 "#PWR?" H 8950 3650 50  0001 C CNN
F 1 "VCC" H 8967 3973 50  0000 C CNN
F 2 "" H 8950 3800 50  0001 C CNN
F 3 "" H 8950 3800 50  0001 C CNN
	1    8950 3800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D956349
P 2100 1200
F 0 "#PWR?" H 2100 1050 50  0001 C CNN
F 1 "VCC" H 2117 1373 50  0000 C CNN
F 2 "" H 2100 1200 50  0001 C CNN
F 3 "" H 2100 1200 50  0001 C CNN
	1    2100 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D956707
P 4350 1200
F 0 "#PWR?" H 4350 1050 50  0001 C CNN
F 1 "VCC" H 4367 1373 50  0000 C CNN
F 2 "" H 4350 1200 50  0001 C CNN
F 3 "" H 4350 1200 50  0001 C CNN
	1    4350 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D95761A
P 4350 3800
F 0 "#PWR?" H 4350 3650 50  0001 C CNN
F 1 "VCC" H 4367 3973 50  0000 C CNN
F 2 "" H 4350 3800 50  0001 C CNN
F 3 "" H 4350 3800 50  0001 C CNN
	1    4350 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D966870
P 1600 2800
F 0 "#PWR?" H 1600 2550 50  0001 C CNN
F 1 "GND" H 1605 2627 50  0000 C CNN
F 2 "" H 1600 2800 50  0001 C CNN
F 3 "" H 1600 2800 50  0001 C CNN
	1    1600 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D972255
P 3850 2800
F 0 "#PWR?" H 3850 2550 50  0001 C CNN
F 1 "GND" H 3855 2627 50  0000 C CNN
F 2 "" H 3850 2800 50  0001 C CNN
F 3 "" H 3850 2800 50  0001 C CNN
	1    3850 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D97CF13
P 4350 3100
F 0 "#PWR?" H 4350 2850 50  0001 C CNN
F 1 "GND" H 4355 2927 50  0000 C CNN
F 2 "" H 4350 3100 50  0001 C CNN
F 3 "" H 4350 3100 50  0001 C CNN
	1    4350 3100
	1    0    0    -1  
$EndComp
Text GLabel 10300 3900 2    50   Output ~ 0
IR
Text GLabel 800  600  0    50   Input ~ 0
IROM
Text GLabel 800  750  0    50   Input ~ 0
IRAM
Entry Wire Line
	1300 1500 1200 1400
Entry Wire Line
	1300 1800 1200 1700
Entry Wire Line
	1300 2100 1200 2000
Entry Wire Line
	1300 2400 1200 2300
Wire Wire Line
	1300 2400 1600 2400
Wire Wire Line
	1600 2100 1300 2100
Wire Wire Line
	1300 1800 1600 1800
Wire Wire Line
	1600 1500 1300 1500
Text Label 1300 1500 0    50   ~ 0
IROM00
Text Label 1300 1800 0    50   ~ 0
IROM01
Text Label 1300 2100 0    50   ~ 0
IROM02
Text Label 1300 2400 0    50   ~ 0
IROM03
Wire Bus Line
	1200 600  800  600 
Entry Wire Line
	1050 1500 1150 1600
Entry Wire Line
	1050 1800 1150 1900
Entry Wire Line
	1050 2100 1150 2200
Entry Wire Line
	1050 2400 1150 2500
Wire Wire Line
	1150 2500 1600 2500
Wire Wire Line
	1600 2200 1150 2200
Wire Wire Line
	1150 1900 1600 1900
Wire Wire Line
	1600 1600 1150 1600
Text Label 1300 1600 0    50   ~ 0
IRAM00
Text Label 1300 1900 0    50   ~ 0
IRAM01
Text Label 1300 2200 0    50   ~ 0
IRAM02
Text Label 1300 2500 0    50   ~ 0
IRAM03
Wire Bus Line
	800  750  1050 750 
$Comp
L 74xx:74LS157 U?
U 1 1 5D24114A
P 4350 2100
F 0 "U?" H 4100 3000 50  0000 C CNN
F 1 "74F157" H 4100 2900 50  0000 C CNN
F 2 "" H 4350 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 4350 2100 50  0001 C CNN
	1    4350 2100
	1    0    0    -1  
$EndComp
Text GLabel 800  900  0    50   Input ~ 0
PC
Wire Bus Line
	800  900  900  900 
Wire Bus Line
	900  900  900  2600
Entry Wire Line
	900  2600 1000 2700
Wire Wire Line
	1000 2700 1600 2700
Text Label 1400 2700 0    50   ~ 0
PC15
Entry Wire Line
	3550 1500 3450 1400
Entry Wire Line
	3550 1800 3450 1700
Entry Wire Line
	3550 2100 3450 2000
Entry Wire Line
	3550 2400 3450 2300
Wire Wire Line
	3550 2400 3850 2400
Wire Wire Line
	3850 2100 3550 2100
Wire Wire Line
	3550 1800 3850 1800
Wire Wire Line
	3850 1500 3550 1500
Text Label 3550 1500 0    50   ~ 0
IROM04
Text Label 3550 1800 0    50   ~ 0
IROM05
Text Label 3550 2100 0    50   ~ 0
IROM06
Text Label 3550 2400 0    50   ~ 0
IROM07
Entry Wire Line
	3300 1500 3400 1600
Entry Wire Line
	3300 1800 3400 1900
Entry Wire Line
	3300 2100 3400 2200
Entry Wire Line
	3300 2400 3400 2500
Wire Wire Line
	3400 2500 3850 2500
Wire Wire Line
	3850 2200 3400 2200
Wire Wire Line
	3400 1900 3850 1900
Wire Wire Line
	3850 1600 3400 1600
Text Label 3550 1600 0    50   ~ 0
IRAM04
Text Label 3550 1900 0    50   ~ 0
IRAM05
Text Label 3550 2200 0    50   ~ 0
IRAM06
Text Label 3550 2500 0    50   ~ 0
IRAM07
Wire Bus Line
	3150 900  3150 2600
Entry Wire Line
	3150 2600 3250 2700
Wire Wire Line
	3250 2700 3850 2700
Wire Bus Line
	1200 600  3450 600 
Connection ~ 1200 600 
Wire Bus Line
	3300 750  1050 750 
Connection ~ 1050 750 
Wire Bus Line
	3150 900  900  900 
Connection ~ 900  900 
Text Label 3650 2700 0    50   ~ 0
PC15
$Comp
L power:VCC #PWR?
U 1 1 5DA1423D
P 6650 1200
F 0 "#PWR?" H 6650 1050 50  0001 C CNN
F 1 "VCC" H 6667 1373 50  0000 C CNN
F 2 "" H 6650 1200 50  0001 C CNN
F 3 "" H 6650 1200 50  0001 C CNN
	1    6650 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA14243
P 6150 2800
F 0 "#PWR?" H 6150 2550 50  0001 C CNN
F 1 "GND" H 6155 2627 50  0000 C CNN
F 2 "" H 6150 2800 50  0001 C CNN
F 3 "" H 6150 2800 50  0001 C CNN
	1    6150 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA14249
P 6650 3100
F 0 "#PWR?" H 6650 2850 50  0001 C CNN
F 1 "GND" H 6655 2927 50  0000 C CNN
F 2 "" H 6650 3100 50  0001 C CNN
F 3 "" H 6650 3100 50  0001 C CNN
	1    6650 3100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 5DA1424F
P 6650 2100
F 0 "U?" H 6400 3000 50  0000 C CNN
F 1 "74F157" H 6400 2900 50  0000 C CNN
F 2 "" H 6650 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 6650 2100 50  0001 C CNN
	1    6650 2100
	1    0    0    -1  
$EndComp
Entry Wire Line
	5850 1500 5750 1400
Entry Wire Line
	5850 1800 5750 1700
Entry Wire Line
	5850 2100 5750 2000
Entry Wire Line
	5850 2400 5750 2300
Wire Wire Line
	5850 2400 6150 2400
Wire Wire Line
	6150 2100 5850 2100
Wire Wire Line
	5850 1800 6150 1800
Wire Wire Line
	6150 1500 5850 1500
Text Label 5850 1500 0    50   ~ 0
IROM08
Text Label 5850 1800 0    50   ~ 0
IROM09
Text Label 5850 2100 0    50   ~ 0
IROM10
Text Label 5850 2400 0    50   ~ 0
IROM11
Entry Wire Line
	5600 1500 5700 1600
Entry Wire Line
	5600 1800 5700 1900
Entry Wire Line
	5600 2100 5700 2200
Entry Wire Line
	5600 2400 5700 2500
Wire Wire Line
	5700 2500 6150 2500
Wire Wire Line
	6150 2200 5700 2200
Wire Wire Line
	5700 1900 6150 1900
Wire Wire Line
	6150 1600 5700 1600
Text Label 5850 1600 0    50   ~ 0
IRAM08
Text Label 5850 1900 0    50   ~ 0
IRAM09
Text Label 5850 2200 0    50   ~ 0
IRAM10
Text Label 5850 2500 0    50   ~ 0
IRAM11
Wire Bus Line
	5450 900  5450 2600
Entry Wire Line
	5450 2600 5550 2700
Wire Wire Line
	5550 2700 6150 2700
Text Label 5950 2700 0    50   ~ 0
PC15
$Comp
L power:VCC #PWR?
U 1 1 5DA1932D
P 8950 1200
F 0 "#PWR?" H 8950 1050 50  0001 C CNN
F 1 "VCC" H 8967 1373 50  0000 C CNN
F 2 "" H 8950 1200 50  0001 C CNN
F 3 "" H 8950 1200 50  0001 C CNN
	1    8950 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA19333
P 8450 2800
F 0 "#PWR?" H 8450 2550 50  0001 C CNN
F 1 "GND" H 8455 2627 50  0000 C CNN
F 2 "" H 8450 2800 50  0001 C CNN
F 3 "" H 8450 2800 50  0001 C CNN
	1    8450 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA19339
P 8950 3100
F 0 "#PWR?" H 8950 2850 50  0001 C CNN
F 1 "GND" H 8955 2927 50  0000 C CNN
F 2 "" H 8950 3100 50  0001 C CNN
F 3 "" H 8950 3100 50  0001 C CNN
	1    8950 3100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 5DA1933F
P 8950 2100
F 0 "U?" H 8700 3000 50  0000 C CNN
F 1 "74F157" H 8700 2900 50  0000 C CNN
F 2 "" H 8950 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 8950 2100 50  0001 C CNN
	1    8950 2100
	1    0    0    -1  
$EndComp
Entry Wire Line
	8150 1500 8050 1400
Entry Wire Line
	8150 1800 8050 1700
Entry Wire Line
	8150 2100 8050 2000
Entry Wire Line
	8150 2400 8050 2300
Wire Wire Line
	8150 2400 8450 2400
Wire Wire Line
	8450 2100 8150 2100
Wire Wire Line
	8150 1800 8450 1800
Wire Wire Line
	8450 1500 8150 1500
Text Label 8150 1500 0    50   ~ 0
IROM12
Text Label 8150 1800 0    50   ~ 0
IROM13
Text Label 8150 2100 0    50   ~ 0
IROM14
Text Label 8150 2400 0    50   ~ 0
IROM15
Entry Wire Line
	7900 1500 8000 1600
Entry Wire Line
	7900 1800 8000 1900
Entry Wire Line
	7900 2100 8000 2200
Entry Wire Line
	7900 2400 8000 2500
Wire Wire Line
	8000 2500 8450 2500
Wire Wire Line
	8450 2200 8000 2200
Wire Wire Line
	8000 1900 8450 1900
Wire Wire Line
	8450 1600 8000 1600
Text Label 8150 1600 0    50   ~ 0
IRAM12
Text Label 8150 1900 0    50   ~ 0
IRAM13
Text Label 8150 2200 0    50   ~ 0
IRAM14
Text Label 8150 2500 0    50   ~ 0
IRAM15
Wire Bus Line
	7750 900  7750 2600
Entry Wire Line
	7750 2600 7850 2700
Wire Wire Line
	7850 2700 8450 2700
Text Label 8250 2700 0    50   ~ 0
PC15
Wire Bus Line
	8050 600  5750 600 
Connection ~ 3450 600 
Connection ~ 5750 600 
Wire Bus Line
	5750 600  3450 600 
Wire Bus Line
	7900 750  5600 750 
Connection ~ 3300 750 
Connection ~ 5600 750 
Wire Bus Line
	5600 750  3300 750 
Wire Bus Line
	7750 900  5450 900 
Connection ~ 3150 900 
Connection ~ 5450 900 
Wire Bus Line
	5450 900  3150 900 
Wire Bus Line
	5150 6150 9750 6150
Wire Wire Line
	3600 5700 8200 5700
Wire Wire Line
	8200 5700 8200 5000
Connection ~ 3600 5700
Wire Wire Line
	2600 2400 2700 2400
Wire Wire Line
	2700 2400 2700 4400
Wire Wire Line
	2700 4400 3850 4400
Wire Wire Line
	3850 4300 2800 4300
Wire Wire Line
	2800 4300 2800 2100
Wire Wire Line
	2800 2100 2600 2100
Wire Wire Line
	2600 1800 2900 1800
Wire Wire Line
	2900 1800 2900 4200
Wire Wire Line
	2900 4200 3850 4200
Wire Wire Line
	3850 4100 3000 4100
Wire Wire Line
	3000 4100 3000 1500
Wire Wire Line
	3000 1500 2600 1500
Wire Wire Line
	4850 2400 5250 2400
Wire Wire Line
	5250 2400 5250 3500
Wire Wire Line
	3100 3500 3100 4800
Wire Wire Line
	3100 4800 3850 4800
Wire Wire Line
	5150 3450 5150 2100
Wire Wire Line
	5150 2100 4850 2100
Wire Wire Line
	5050 1800 5050 3400
Wire Wire Line
	5050 3400 3300 3400
Wire Wire Line
	3300 3400 3300 4600
Wire Wire Line
	3300 4600 3850 4600
Wire Wire Line
	3850 4500 3400 4500
Wire Wire Line
	3400 4500 3400 3350
Wire Wire Line
	3400 3350 4950 3350
Wire Wire Line
	4950 3350 4950 1500
Wire Wire Line
	4950 1500 4850 1500
Wire Wire Line
	4850 1800 5050 1800
Wire Wire Line
	5250 3500 3100 3500
Wire Wire Line
	3200 3450 5150 3450
Wire Wire Line
	3850 4700 3200 4700
Wire Wire Line
	3200 4700 3200 3450
Wire Wire Line
	7150 2400 7250 2400
Wire Wire Line
	7250 2400 7250 4400
Wire Wire Line
	7250 4400 8450 4400
Wire Wire Line
	8450 4300 7350 4300
Wire Wire Line
	7350 4300 7350 2100
Wire Wire Line
	7350 2100 7150 2100
Wire Wire Line
	7150 1800 7450 1800
Wire Wire Line
	7450 1800 7450 4200
Wire Wire Line
	7450 4200 8450 4200
Wire Wire Line
	8450 4100 7550 4100
Wire Wire Line
	7550 4100 7550 1500
Wire Wire Line
	7550 1500 7150 1500
Wire Wire Line
	9450 1500 9600 1500
Wire Wire Line
	9600 1500 9600 3350
Wire Wire Line
	9600 3350 7650 3350
Wire Wire Line
	7650 3350 7650 4500
Wire Wire Line
	7650 4500 8450 4500
Wire Wire Line
	9450 1800 9700 1800
Wire Wire Line
	9700 1800 9700 3400
Wire Wire Line
	9700 3400 7750 3400
Wire Wire Line
	7750 3400 7750 4600
Wire Wire Line
	7750 4600 8450 4600
Wire Wire Line
	8450 4700 7850 4700
Wire Wire Line
	7850 4700 7850 3450
Wire Wire Line
	7850 3450 9800 3450
Wire Wire Line
	9800 3450 9800 2100
Wire Wire Line
	9800 2100 9450 2100
Wire Wire Line
	9450 2400 9850 2400
Wire Wire Line
	9850 2400 9850 3500
Wire Wire Line
	9850 3500 7950 3500
Wire Wire Line
	7950 3500 7950 4800
Wire Wire Line
	7950 4800 8450 4800
$Comp
L Device:C C?
U 1 1 5D80B024
P 2900 7350
F 0 "C?" H 3015 7396 50  0000 L CNN
F 1 "100nF" H 3015 7305 50  0000 L CNN
F 2 "" H 2938 7200 50  0001 C CNN
F 3 "~" H 2900 7350 50  0001 C CNN
	1    2900 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D80B02A
P 2400 7350
F 0 "C?" H 2515 7396 50  0000 L CNN
F 1 "100nF" H 2515 7305 50  0000 L CNN
F 2 "" H 2438 7200 50  0001 C CNN
F 3 "~" H 2400 7350 50  0001 C CNN
	1    2400 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D80B030
P 1900 7350
F 0 "C?" H 2015 7396 50  0000 L CNN
F 1 "100nF" H 2015 7305 50  0000 L CNN
F 2 "" H 1938 7200 50  0001 C CNN
F 3 "~" H 1900 7350 50  0001 C CNN
	1    1900 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D80B036
P 1400 7350
F 0 "C?" H 1515 7396 50  0000 L CNN
F 1 "100nF" H 1515 7305 50  0000 L CNN
F 2 "" H 1438 7200 50  0001 C CNN
F 3 "~" H 1400 7350 50  0001 C CNN
	1    1400 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D80B03C
P 900 7350
F 0 "C?" H 1015 7396 50  0000 L CNN
F 1 "100nF" H 1015 7305 50  0000 L CNN
F 2 "" H 938 7200 50  0001 C CNN
F 3 "~" H 900 7350 50  0001 C CNN
	1    900  7350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D80B048
P 900 7200
F 0 "#PWR?" H 900 7050 50  0001 C CNN
F 1 "VCC" H 917 7373 50  0000 C CNN
F 2 "" H 900 7200 50  0001 C CNN
F 3 "" H 900 7200 50  0001 C CNN
	1    900  7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 7200 900  7200
Connection ~ 900  7200
Wire Wire Line
	1400 7200 1900 7200
Connection ~ 1400 7200
Wire Wire Line
	1900 7200 2400 7200
Connection ~ 1900 7200
Wire Wire Line
	2400 7200 2900 7200
Connection ~ 2400 7200
Wire Wire Line
	2400 7500 2900 7500
Connection ~ 2900 7500
Wire Wire Line
	2400 7500 1900 7500
Connection ~ 2400 7500
Wire Wire Line
	1900 7500 1400 7500
Connection ~ 1900 7500
Wire Wire Line
	1400 7500 900  7500
Connection ~ 1400 7500
$Comp
L Device:C C?
U 1 1 5D813D2F
P 3900 7350
F 0 "C?" H 4015 7396 50  0000 L CNN
F 1 "100nF" H 4015 7305 50  0000 L CNN
F 2 "" H 3938 7200 50  0001 C CNN
F 3 "~" H 3900 7350 50  0001 C CNN
	1    3900 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D813D35
P 3400 7350
F 0 "C?" H 3515 7396 50  0000 L CNN
F 1 "100nF" H 3515 7305 50  0000 L CNN
F 2 "" H 3438 7200 50  0001 C CNN
F 3 "~" H 3400 7350 50  0001 C CNN
	1    3400 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D813D3B
P 3900 7500
F 0 "#PWR?" H 3900 7250 50  0001 C CNN
F 1 "GND" H 3905 7327 50  0000 C CNN
F 2 "" H 3900 7500 50  0001 C CNN
F 3 "" H 3900 7500 50  0001 C CNN
	1    3900 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 7200 3400 7200
Wire Wire Line
	3400 7200 3900 7200
Connection ~ 3400 7200
Wire Wire Line
	3400 7500 3900 7500
Connection ~ 3900 7500
Wire Wire Line
	3400 7500 2900 7500
Connection ~ 3400 7500
Wire Bus Line
	7900 750  7900 2400
Wire Bus Line
	8050 600  8050 2300
Wire Bus Line
	5600 750  5600 2400
Wire Bus Line
	5750 600  5750 2300
Wire Bus Line
	3300 750  3300 2400
Wire Bus Line
	3450 600  3450 2300
Wire Bus Line
	1050 750  1050 2400
Wire Bus Line
	1200 600  1200 2300
Wire Bus Line
	9750 3900 9750 6150
Wire Bus Line
	5150 4200 5150 6150
$EndSCHEMATC
