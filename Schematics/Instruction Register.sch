EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 20 24
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
AR Path="/5D2C14C3/5D23E2DA" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D23E2DA" Ref="U?"  Part="1" 
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
AR Path="/5D2C14C3/5D25C885" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D25C885" Ref="U?"  Part="1" 
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
AR Path="/5D2C14C3/5D26023C" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D26023C" Ref="U?"  Part="1" 
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
AR Path="/5D2C14C3/5D268258" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D268258" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5D930BD4" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D930BD4" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5D930FC4" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D930FC4" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5D93F174" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D93F174" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5D944146" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D944146" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5D9520FE" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D9520FE" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5D956349" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D956349" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5D956707" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D956707" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5D95761A" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D95761A" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5D966870" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D966870" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5D972255" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D972255" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5D97CF13" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D97CF13" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5D24114A" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D24114A" Ref="U?"  Part="1" 
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
AR Path="/5D2C14C3/5DA1423D" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DA1423D" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5DA14243" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DA14243" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5DA14249" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DA14249" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5DA1424F" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DA1424F" Ref="U?"  Part="1" 
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
AR Path="/5D2C14C3/5DA1932D" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DA1932D" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5DA19333" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DA19333" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5DA19339" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DA19339" Ref="#PWR?"  Part="1" 
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
AR Path="/5D2C14C3/5DA1933F" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DA1933F" Ref="U?"  Part="1" 
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
P 3850 7750
AR Path="/5D2C14C3/5D80B024" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D80B024" Ref="C?"  Part="1" 
F 0 "C?" H 3965 7796 50  0000 L CNN
F 1 "100nF" H 3965 7705 50  0000 L CNN
F 2 "" H 3888 7600 50  0001 C CNN
F 3 "~" H 3850 7750 50  0001 C CNN
	1    3850 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D80B02A
P 3350 7750
AR Path="/5D2C14C3/5D80B02A" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D80B02A" Ref="C?"  Part="1" 
F 0 "C?" H 3465 7796 50  0000 L CNN
F 1 "100nF" H 3465 7705 50  0000 L CNN
F 2 "" H 3388 7600 50  0001 C CNN
F 3 "~" H 3350 7750 50  0001 C CNN
	1    3350 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D80B030
P 2850 7750
AR Path="/5D2C14C3/5D80B030" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D80B030" Ref="C?"  Part="1" 
F 0 "C?" H 2965 7796 50  0000 L CNN
F 1 "100nF" H 2965 7705 50  0000 L CNN
F 2 "" H 2888 7600 50  0001 C CNN
F 3 "~" H 2850 7750 50  0001 C CNN
	1    2850 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D80B036
P 2350 7750
AR Path="/5D2C14C3/5D80B036" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D80B036" Ref="C?"  Part="1" 
F 0 "C?" H 2465 7796 50  0000 L CNN
F 1 "100nF" H 2465 7705 50  0000 L CNN
F 2 "" H 2388 7600 50  0001 C CNN
F 3 "~" H 2350 7750 50  0001 C CNN
	1    2350 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D80B03C
P 1850 7750
AR Path="/5D2C14C3/5D80B03C" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D80B03C" Ref="C?"  Part="1" 
F 0 "C?" H 1965 7796 50  0000 L CNN
F 1 "100nF" H 1965 7705 50  0000 L CNN
F 2 "" H 1888 7600 50  0001 C CNN
F 3 "~" H 1850 7750 50  0001 C CNN
	1    1850 7750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D80B048
P 1850 7600
AR Path="/5D2C14C3/5D80B048" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D80B048" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 7450 50  0001 C CNN
F 1 "VCC" H 1867 7773 50  0000 C CNN
F 2 "" H 1850 7600 50  0001 C CNN
F 3 "" H 1850 7600 50  0001 C CNN
	1    1850 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 7600 1850 7600
Connection ~ 1850 7600
Wire Wire Line
	2350 7600 2850 7600
Connection ~ 2350 7600
Wire Wire Line
	2850 7600 3350 7600
Connection ~ 2850 7600
Wire Wire Line
	3350 7600 3850 7600
Connection ~ 3350 7600
Wire Wire Line
	3350 7900 3850 7900
Connection ~ 3850 7900
Wire Wire Line
	3350 7900 2850 7900
Connection ~ 3350 7900
Wire Wire Line
	2850 7900 2350 7900
Connection ~ 2850 7900
Wire Wire Line
	2350 7900 1850 7900
Connection ~ 2350 7900
$Comp
L Device:C C?
U 1 1 5D813D35
P 4350 7750
AR Path="/5D2C14C3/5D813D35" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D813D35" Ref="C?"  Part="1" 
F 0 "C?" H 4465 7796 50  0000 L CNN
F 1 "100nF" H 4465 7705 50  0000 L CNN
F 2 "" H 4388 7600 50  0001 C CNN
F 3 "~" H 4350 7750 50  0001 C CNN
	1    4350 7750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D813D3B
P 1850 7900
AR Path="/5D2C14C3/5D813D3B" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D813D3B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 7650 50  0001 C CNN
F 1 "GND" H 1855 7727 50  0000 C CNN
F 2 "" H 1850 7900 50  0001 C CNN
F 3 "" H 1850 7900 50  0001 C CNN
	1    1850 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 7600 4350 7600
Wire Wire Line
	4350 7900 3850 7900
Connection ~ 3850 7600
$Comp
L Device:LED D?
U 1 1 5DD45D17
P 2100 6600
AR Path="/5D2C14C3/5DD45D17" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D17" Ref="D?"  Part="1" 
F 0 "D?" V 2139 6483 50  0000 R CNN
F 1 "LED" V 2048 6483 50  0000 R CNN
F 2 "" H 2100 6600 50  0001 C CNN
F 3 "~" H 2100 6600 50  0001 C CNN
	1    2100 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D1D
P 2450 6600
AR Path="/5D2C14C3/5DD45D1D" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D1D" Ref="D?"  Part="1" 
F 0 "D?" V 2489 6483 50  0000 R CNN
F 1 "LED" V 2398 6483 50  0000 R CNN
F 2 "" H 2450 6600 50  0001 C CNN
F 3 "~" H 2450 6600 50  0001 C CNN
	1    2450 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D23
P 2800 6600
AR Path="/5D2C14C3/5DD45D23" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D23" Ref="D?"  Part="1" 
F 0 "D?" V 2839 6483 50  0000 R CNN
F 1 "LED" V 2748 6483 50  0000 R CNN
F 2 "" H 2800 6600 50  0001 C CNN
F 3 "~" H 2800 6600 50  0001 C CNN
	1    2800 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D29
P 3150 6600
AR Path="/5D2C14C3/5DD45D29" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D29" Ref="D?"  Part="1" 
F 0 "D?" V 3189 6483 50  0000 R CNN
F 1 "LED" V 3098 6483 50  0000 R CNN
F 2 "" H 3150 6600 50  0001 C CNN
F 3 "~" H 3150 6600 50  0001 C CNN
	1    3150 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D2F
P 1750 6600
AR Path="/5D2C14C3/5DD45D2F" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D2F" Ref="D?"  Part="1" 
F 0 "D?" V 1789 6483 50  0000 R CNN
F 1 "LED" V 1698 6483 50  0000 R CNN
F 2 "" H 1750 6600 50  0001 C CNN
F 3 "~" H 1750 6600 50  0001 C CNN
	1    1750 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D35
P 1400 6600
AR Path="/5D2C14C3/5DD45D35" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D35" Ref="D?"  Part="1" 
F 0 "D?" V 1439 6483 50  0000 R CNN
F 1 "LED" V 1348 6483 50  0000 R CNN
F 2 "" H 1400 6600 50  0001 C CNN
F 3 "~" H 1400 6600 50  0001 C CNN
	1    1400 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D3B
P 1050 6600
AR Path="/5D2C14C3/5DD45D3B" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D3B" Ref="D?"  Part="1" 
F 0 "D?" V 1089 6483 50  0000 R CNN
F 1 "LED" V 998 6483 50  0000 R CNN
F 2 "" H 1050 6600 50  0001 C CNN
F 3 "~" H 1050 6600 50  0001 C CNN
	1    1050 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D41
P 3500 6600
AR Path="/5D2C14C3/5DD45D41" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D41" Ref="D?"  Part="1" 
F 0 "D?" V 3539 6483 50  0000 R CNN
F 1 "LED" V 3448 6483 50  0000 R CNN
F 2 "" H 3500 6600 50  0001 C CNN
F 3 "~" H 3500 6600 50  0001 C CNN
	1    3500 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D47
P 3850 6600
AR Path="/5D2C14C3/5DD45D47" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D47" Ref="D?"  Part="1" 
F 0 "D?" V 3889 6483 50  0000 R CNN
F 1 "LED" V 3798 6483 50  0000 R CNN
F 2 "" H 3850 6600 50  0001 C CNN
F 3 "~" H 3850 6600 50  0001 C CNN
	1    3850 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D4D
P 4200 6600
AR Path="/5D2C14C3/5DD45D4D" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D4D" Ref="D?"  Part="1" 
F 0 "D?" V 4239 6483 50  0000 R CNN
F 1 "LED" V 4148 6483 50  0000 R CNN
F 2 "" H 4200 6600 50  0001 C CNN
F 3 "~" H 4200 6600 50  0001 C CNN
	1    4200 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D53
P 4550 6600
AR Path="/5D2C14C3/5DD45D53" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D53" Ref="D?"  Part="1" 
F 0 "D?" V 4589 6483 50  0000 R CNN
F 1 "LED" V 4498 6483 50  0000 R CNN
F 2 "" H 4550 6600 50  0001 C CNN
F 3 "~" H 4550 6600 50  0001 C CNN
	1    4550 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D59
P 4900 6600
AR Path="/5D2C14C3/5DD45D59" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D59" Ref="D?"  Part="1" 
F 0 "D?" V 4939 6483 50  0000 R CNN
F 1 "LED" V 4848 6483 50  0000 R CNN
F 2 "" H 4900 6600 50  0001 C CNN
F 3 "~" H 4900 6600 50  0001 C CNN
	1    4900 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D5F
P 5250 6600
AR Path="/5D2C14C3/5DD45D5F" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D5F" Ref="D?"  Part="1" 
F 0 "D?" V 5289 6483 50  0000 R CNN
F 1 "LED" V 5198 6483 50  0000 R CNN
F 2 "" H 5250 6600 50  0001 C CNN
F 3 "~" H 5250 6600 50  0001 C CNN
	1    5250 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D65
P 5600 6600
AR Path="/5D2C14C3/5DD45D65" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D65" Ref="D?"  Part="1" 
F 0 "D?" V 5639 6483 50  0000 R CNN
F 1 "LED" V 5548 6483 50  0000 R CNN
F 2 "" H 5600 6600 50  0001 C CNN
F 3 "~" H 5600 6600 50  0001 C CNN
	1    5600 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DD45D6B
P 5950 6600
AR Path="/5D2C14C3/5DD45D6B" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D6B" Ref="D?"  Part="1" 
F 0 "D?" V 5989 6483 50  0000 R CNN
F 1 "LED" V 5898 6483 50  0000 R CNN
F 2 "" H 5950 6600 50  0001 C CNN
F 3 "~" H 5950 6600 50  0001 C CNN
	1    5950 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45D71
P 700 7050
AR Path="/5D2C14C3/5DD45D71" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D71" Ref="R?"  Part="1" 
F 0 "R?" H 768 7096 50  0000 L CNN
F 1 "220Ω" H 768 7005 50  0000 L CNN
F 2 "" V 740 7040 50  0001 C CNN
F 3 "~" H 700 7050 50  0001 C CNN
	1    700  7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45D77
P 1050 7050
AR Path="/5D2C14C3/5DD45D77" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D77" Ref="R?"  Part="1" 
F 0 "R?" H 1118 7096 50  0000 L CNN
F 1 "220Ω" H 1118 7005 50  0000 L CNN
F 2 "" V 1090 7040 50  0001 C CNN
F 3 "~" H 1050 7050 50  0001 C CNN
	1    1050 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45D7D
P 1400 7050
AR Path="/5D2C14C3/5DD45D7D" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D7D" Ref="R?"  Part="1" 
F 0 "R?" H 1468 7096 50  0000 L CNN
F 1 "220Ω" H 1468 7005 50  0000 L CNN
F 2 "" V 1440 7040 50  0001 C CNN
F 3 "~" H 1400 7050 50  0001 C CNN
	1    1400 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45D83
P 1750 7050
AR Path="/5D2C14C3/5DD45D83" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D83" Ref="R?"  Part="1" 
F 0 "R?" H 1818 7096 50  0000 L CNN
F 1 "220Ω" H 1818 7005 50  0000 L CNN
F 2 "" V 1790 7040 50  0001 C CNN
F 3 "~" H 1750 7050 50  0001 C CNN
	1    1750 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45D89
P 2100 7050
AR Path="/5D2C14C3/5DD45D89" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D89" Ref="R?"  Part="1" 
F 0 "R?" H 2168 7096 50  0000 L CNN
F 1 "220Ω" H 2168 7005 50  0000 L CNN
F 2 "" V 2140 7040 50  0001 C CNN
F 3 "~" H 2100 7050 50  0001 C CNN
	1    2100 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45D8F
P 2450 7050
AR Path="/5D2C14C3/5DD45D8F" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D8F" Ref="R?"  Part="1" 
F 0 "R?" H 2518 7096 50  0000 L CNN
F 1 "220Ω" H 2518 7005 50  0000 L CNN
F 2 "" V 2490 7040 50  0001 C CNN
F 3 "~" H 2450 7050 50  0001 C CNN
	1    2450 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45D95
P 2800 7050
AR Path="/5D2C14C3/5DD45D95" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D95" Ref="R?"  Part="1" 
F 0 "R?" H 2868 7096 50  0000 L CNN
F 1 "220Ω" H 2868 7005 50  0000 L CNN
F 2 "" V 2840 7040 50  0001 C CNN
F 3 "~" H 2800 7050 50  0001 C CNN
	1    2800 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45D9B
P 3150 7050
AR Path="/5D2C14C3/5DD45D9B" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45D9B" Ref="R?"  Part="1" 
F 0 "R?" H 3218 7096 50  0000 L CNN
F 1 "220Ω" H 3218 7005 50  0000 L CNN
F 2 "" V 3190 7040 50  0001 C CNN
F 3 "~" H 3150 7050 50  0001 C CNN
	1    3150 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45DA1
P 3500 7050
AR Path="/5D2C14C3/5DD45DA1" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45DA1" Ref="R?"  Part="1" 
F 0 "R?" H 3568 7096 50  0000 L CNN
F 1 "220Ω" H 3568 7005 50  0000 L CNN
F 2 "" V 3540 7040 50  0001 C CNN
F 3 "~" H 3500 7050 50  0001 C CNN
	1    3500 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45DA7
P 3850 7050
AR Path="/5D2C14C3/5DD45DA7" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45DA7" Ref="R?"  Part="1" 
F 0 "R?" H 3918 7096 50  0000 L CNN
F 1 "220Ω" H 3918 7005 50  0000 L CNN
F 2 "" V 3890 7040 50  0001 C CNN
F 3 "~" H 3850 7050 50  0001 C CNN
	1    3850 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45DAD
P 4200 7050
AR Path="/5D2C14C3/5DD45DAD" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45DAD" Ref="R?"  Part="1" 
F 0 "R?" H 4268 7096 50  0000 L CNN
F 1 "220Ω" H 4268 7005 50  0000 L CNN
F 2 "" V 4240 7040 50  0001 C CNN
F 3 "~" H 4200 7050 50  0001 C CNN
	1    4200 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45DB3
P 4550 7050
AR Path="/5D2C14C3/5DD45DB3" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45DB3" Ref="R?"  Part="1" 
F 0 "R?" H 4618 7096 50  0000 L CNN
F 1 "220Ω" H 4618 7005 50  0000 L CNN
F 2 "" V 4590 7040 50  0001 C CNN
F 3 "~" H 4550 7050 50  0001 C CNN
	1    4550 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45DB9
P 4900 7050
AR Path="/5D2C14C3/5DD45DB9" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45DB9" Ref="R?"  Part="1" 
F 0 "R?" H 4968 7096 50  0000 L CNN
F 1 "220Ω" H 4968 7005 50  0000 L CNN
F 2 "" V 4940 7040 50  0001 C CNN
F 3 "~" H 4900 7050 50  0001 C CNN
	1    4900 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45DBF
P 5250 7050
AR Path="/5D2C14C3/5DD45DBF" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45DBF" Ref="R?"  Part="1" 
F 0 "R?" H 5318 7096 50  0000 L CNN
F 1 "220Ω" H 5318 7005 50  0000 L CNN
F 2 "" V 5290 7040 50  0001 C CNN
F 3 "~" H 5250 7050 50  0001 C CNN
	1    5250 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45DC5
P 5600 7050
AR Path="/5D2C14C3/5DD45DC5" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45DC5" Ref="R?"  Part="1" 
F 0 "R?" H 5668 7096 50  0000 L CNN
F 1 "220Ω" H 5668 7005 50  0000 L CNN
F 2 "" V 5640 7040 50  0001 C CNN
F 3 "~" H 5600 7050 50  0001 C CNN
	1    5600 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD45DCB
P 5950 7050
AR Path="/5D2C14C3/5DD45DCB" Ref="R?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45DCB" Ref="R?"  Part="1" 
F 0 "R?" H 6018 7096 50  0000 L CNN
F 1 "220Ω" H 6018 7005 50  0000 L CNN
F 2 "" V 5990 7040 50  0001 C CNN
F 3 "~" H 5950 7050 50  0001 C CNN
	1    5950 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  7200 700  7300
Wire Wire Line
	5950 7300 5950 7200
Wire Wire Line
	1050 7200 1050 7300
Connection ~ 1050 7300
Wire Wire Line
	1050 7300 1400 7300
Wire Wire Line
	1400 7200 1400 7300
Connection ~ 1400 7300
Wire Wire Line
	1400 7300 1750 7300
Wire Wire Line
	1750 7200 1750 7300
Connection ~ 1750 7300
Wire Wire Line
	1750 7300 2100 7300
Wire Wire Line
	2100 7200 2100 7300
Connection ~ 2100 7300
Wire Wire Line
	2100 7300 2450 7300
Wire Wire Line
	2450 7200 2450 7300
Connection ~ 2450 7300
Wire Wire Line
	2450 7300 2800 7300
Wire Wire Line
	2800 7200 2800 7300
Connection ~ 2800 7300
Wire Wire Line
	2800 7300 3150 7300
Wire Wire Line
	3150 7200 3150 7300
Connection ~ 3150 7300
Wire Wire Line
	3150 7300 3500 7300
Wire Wire Line
	3500 7200 3500 7300
Connection ~ 3500 7300
Wire Wire Line
	3500 7300 3850 7300
Wire Wire Line
	3850 7200 3850 7300
Connection ~ 3850 7300
Wire Wire Line
	3850 7300 4200 7300
Wire Wire Line
	4200 7200 4200 7300
Connection ~ 4200 7300
Wire Wire Line
	4200 7300 4550 7300
Wire Wire Line
	4550 7200 4550 7300
Connection ~ 4550 7300
Wire Wire Line
	4550 7300 4900 7300
Wire Wire Line
	4900 7200 4900 7300
Connection ~ 4900 7300
Wire Wire Line
	4900 7300 5250 7300
Wire Wire Line
	5250 7200 5250 7300
Connection ~ 5250 7300
Wire Wire Line
	5250 7300 5600 7300
Wire Wire Line
	5600 7200 5600 7300
Connection ~ 5600 7300
Wire Wire Line
	5600 7300 5950 7300
$Comp
L power:GND #PWR?
U 1 1 5DD45DFD
P 900 7300
AR Path="/5D2C14C3/5DD45DFD" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45DFD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 900 7050 50  0001 C CNN
F 1 "GND" H 905 7127 50  0000 C CNN
F 2 "" H 900 7300 50  0001 C CNN
F 3 "" H 900 7300 50  0001 C CNN
	1    900  7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6750 1050 6900
Wire Wire Line
	1400 6900 1400 6750
Wire Wire Line
	1750 6750 1750 6900
Wire Wire Line
	2100 6900 2100 6750
Wire Wire Line
	2450 6750 2450 6900
Wire Wire Line
	2800 6900 2800 6750
Wire Wire Line
	3150 6750 3150 6900
Wire Wire Line
	3500 6900 3500 6750
Wire Wire Line
	3850 6750 3850 6900
Wire Wire Line
	4200 6900 4200 6750
Wire Wire Line
	4550 6750 4550 6900
Wire Wire Line
	4900 6900 4900 6750
Wire Wire Line
	5250 6750 5250 6900
Wire Wire Line
	5600 6900 5600 6750
Wire Wire Line
	5950 6750 5950 6900
Entry Wire Line
	1050 6250 1150 6150
Entry Wire Line
	1400 6250 1500 6150
Entry Wire Line
	1750 6250 1850 6150
Entry Wire Line
	2100 6250 2200 6150
Entry Wire Line
	2450 6250 2550 6150
Entry Wire Line
	2800 6250 2900 6150
Entry Wire Line
	3150 6250 3250 6150
Entry Wire Line
	3500 6250 3600 6150
Entry Wire Line
	3850 6250 3950 6150
Entry Wire Line
	4200 6250 4300 6150
Entry Wire Line
	4550 6250 4650 6150
Entry Wire Line
	4900 6250 5000 6150
Entry Wire Line
	5250 6250 5350 6150
Entry Wire Line
	5600 6250 5700 6150
Entry Wire Line
	5950 6250 6050 6150
Wire Wire Line
	1050 6450 1050 6250
Wire Wire Line
	1400 6450 1400 6250
Wire Wire Line
	1750 6450 1750 6250
Wire Wire Line
	2100 6450 2100 6250
Wire Wire Line
	2450 6450 2450 6250
Wire Wire Line
	2800 6450 2800 6250
Wire Wire Line
	3150 6450 3150 6250
Wire Wire Line
	3500 6250 3500 6450
Wire Wire Line
	3850 6450 3850 6250
Wire Wire Line
	4200 6450 4200 6250
Wire Wire Line
	4550 6450 4550 6250
Wire Wire Line
	4900 6450 4900 6250
Wire Wire Line
	5250 6450 5250 6250
Wire Wire Line
	5600 6450 5600 6250
Wire Wire Line
	5950 6450 5950 6250
Text Label 5950 6350 0    50   ~ 0
IR00
Text Label 5600 6350 0    50   ~ 0
IR01
Text Label 5250 6350 0    50   ~ 0
IR02
Text Label 4900 6350 0    50   ~ 0
IR03
Text Label 4550 6350 0    50   ~ 0
IR04
Text Label 4200 6350 0    50   ~ 0
IR05
Text Label 3850 6350 0    50   ~ 0
IR06
Text Label 3500 6350 0    50   ~ 0
IR07
Text Label 3150 6350 0    50   ~ 0
IR08
Text Label 2800 6350 0    50   ~ 0
IR09
Text Label 2450 6350 0    50   ~ 0
IR10
Text Label 2100 6350 0    50   ~ 0
IR11
Text Label 1750 6350 0    50   ~ 0
IR12
Text Label 1400 6350 0    50   ~ 0
IR13
Text Label 1050 6350 0    50   ~ 0
IR14
Wire Wire Line
	700  6750 700  6900
Entry Wire Line
	700  6250 800  6150
$Comp
L Device:LED D?
U 1 1 5DD45E41
P 700 6600
AR Path="/5D2C14C3/5DD45E41" Ref="D?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DD45E41" Ref="D?"  Part="1" 
F 0 "D?" V 739 6483 50  0000 R CNN
F 1 "LED" V 648 6483 50  0000 R CNN
F 2 "" H 700 6600 50  0001 C CNN
F 3 "~" H 700 6600 50  0001 C CNN
	1    700  6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	700  6250 700  6450
Text Label 700  6350 0    50   ~ 0
IR15
Connection ~ 900  7300
Wire Wire Line
	900  7300 1050 7300
Wire Wire Line
	700  7300 900  7300
Connection ~ 1850 7900
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
Wire Bus Line
	800  6150 9750 6150
$EndSCHEMATC
