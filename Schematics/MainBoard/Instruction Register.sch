EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 13 19
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
AR Path="/5D8005AF/5D833E49/5D23E2DA" Ref="U37"  Part="1" 
F 0 "U37" H 1850 3000 50  0000 C CNN
F 1 "74F157" H 1850 2900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2100 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 2100 2100 50  0001 C CNN
	1    2100 2100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U?
U 1 1 5D25C885
P 4350 4600
AR Path="/5D2C14C3/5D25C885" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D25C885" Ref="U39"  Part="1" 
F 0 "U39" H 4100 5400 50  0000 C CNN
F 1 "74F574" H 4100 5300 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4350 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 4350 4600 50  0001 C CNN
	1    4350 4600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U?
U 1 1 5D26023C
P 8950 4600
AR Path="/5D2C14C3/5D26023C" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D26023C" Ref="U42"  Part="1" 
F 0 "U42" H 8700 5400 50  0000 C CNN
F 1 "74F574" H 8700 5300 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 8950 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 8950 4600 50  0001 C CNN
	1    8950 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D268258
P 2100 3100
AR Path="/5D2C14C3/5D268258" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D268258" Ref="#PWR094"  Part="1" 
F 0 "#PWR094" H 2100 2850 50  0001 C CNN
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
	9750 3900 10100 3900
Text Label 5000 4100 2    50   ~ 0
IR0
Text Label 5000 4200 2    50   ~ 0
IR1
Text Label 5000 4300 2    50   ~ 0
IR2
Text Label 5000 4400 2    50   ~ 0
IR3
Text Label 5000 4500 2    50   ~ 0
IR4
Text Label 5000 4600 2    50   ~ 0
IR5
Text Label 5000 4700 2    50   ~ 0
IR6
Text Label 5000 4800 2    50   ~ 0
IR7
Text Label 9600 4100 2    50   ~ 0
IR8
Text Label 9600 4200 2    50   ~ 0
IR9
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
AR Path="/5D8005AF/5D833E49/5D930BD4" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 4350 5150 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5D930FC4" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 8950 5150 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5D93F174" Ref="#PWR097"  Part="1" 
F 0 "#PWR097" H 3850 4850 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5D944146" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 8450 4850 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5D9520FE" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 8950 3650 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5D956349" Ref="#PWR093"  Part="1" 
F 0 "#PWR093" H 2100 1050 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5D956707" Ref="#PWR098"  Part="1" 
F 0 "#PWR098" H 4350 1050 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5D95761A" Ref="#PWR0100"  Part="1" 
F 0 "#PWR0100" H 4350 3650 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5D966870" Ref="#PWR090"  Part="1" 
F 0 "#PWR090" H 1600 2550 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5D972255" Ref="#PWR096"  Part="1" 
F 0 "#PWR096" H 3850 2550 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5D97CF13" Ref="#PWR099"  Part="1" 
F 0 "#PWR099" H 4350 2850 50  0001 C CNN
F 1 "GND" H 4355 2927 50  0000 C CNN
F 2 "" H 4350 3100 50  0001 C CNN
F 3 "" H 4350 3100 50  0001 C CNN
	1    4350 3100
	1    0    0    -1  
$EndComp
Text GLabel 10100 3900 2    50   Output ~ 0
IR[0..15]
Text GLabel 1000 600  0    50   Input ~ 0
IROM[0..15]
Text GLabel 1000 750  0    50   Input ~ 0
IRAM[0..15]
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
IROM0
Text Label 1300 1800 0    50   ~ 0
IROM1
Text Label 1300 2100 0    50   ~ 0
IROM2
Text Label 1300 2400 0    50   ~ 0
IROM3
Wire Bus Line
	1200 600  1000 600 
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
IRAM0
Text Label 1300 1900 0    50   ~ 0
IRAM1
Text Label 1300 2200 0    50   ~ 0
IRAM2
Text Label 1300 2500 0    50   ~ 0
IRAM3
Wire Bus Line
	1000 750  1050 750 
$Comp
L 74xx:74LS157 U?
U 1 1 5D24114A
P 4350 2100
AR Path="/5D2C14C3/5D24114A" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D24114A" Ref="U38"  Part="1" 
F 0 "U38" H 4100 3000 50  0000 C CNN
F 1 "74F157" H 4100 2900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4350 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 4350 2100 50  0001 C CNN
	1    4350 2100
	1    0    0    -1  
$EndComp
Text GLabel 950  3050 0    50   Input ~ 0
PC[0..15]
Entry Wire Line
	950  2600 1050 2700
Wire Wire Line
	1050 2700 1600 2700
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
IROM4
Text Label 3550 1800 0    50   ~ 0
IROM5
Text Label 3550 2100 0    50   ~ 0
IROM6
Text Label 3550 2400 0    50   ~ 0
IROM7
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
IRAM4
Text Label 3550 1900 0    50   ~ 0
IRAM5
Text Label 3550 2200 0    50   ~ 0
IRAM6
Text Label 3550 2500 0    50   ~ 0
IRAM7
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
	3150 900  950  900 
Text Label 3650 2700 0    50   ~ 0
PC15
$Comp
L power:VCC #PWR?
U 1 1 5DA1423D
P 6650 1200
AR Path="/5D2C14C3/5DA1423D" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DA1423D" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 6650 1050 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5DA14243" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 6150 2550 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5DA14249" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 6650 2850 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5DA1424F" Ref="U40"  Part="1" 
F 0 "U40" H 6400 3000 50  0000 C CNN
F 1 "74F157" H 6400 2900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6650 2100 50  0001 C CNN
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
IROM8
Text Label 5850 1800 0    50   ~ 0
IROM9
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
IRAM8
Text Label 5850 1900 0    50   ~ 0
IRAM9
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
AR Path="/5D8005AF/5D833E49/5DA1932D" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 8950 1050 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5DA19333" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 8450 2550 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5DA19339" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 8950 2850 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5DA1933F" Ref="U41"  Part="1" 
F 0 "U41" H 8700 3000 50  0000 C CNN
F 1 "74F157" H 8700 2900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8950 2100 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5D80B024" Ref="C41"  Part="1" 
F 0 "C41" H 3965 7796 50  0000 L CNN
F 1 "100nF" H 3965 7705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3888 7600 50  0001 C CNN
F 3 "~" H 3850 7750 50  0001 C CNN
	1    3850 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D80B02A
P 3350 7750
AR Path="/5D2C14C3/5D80B02A" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D80B02A" Ref="C40"  Part="1" 
F 0 "C40" H 3465 7796 50  0000 L CNN
F 1 "100nF" H 3465 7705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3388 7600 50  0001 C CNN
F 3 "~" H 3350 7750 50  0001 C CNN
	1    3350 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D80B030
P 2850 7750
AR Path="/5D2C14C3/5D80B030" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D80B030" Ref="C39"  Part="1" 
F 0 "C39" H 2965 7796 50  0000 L CNN
F 1 "100nF" H 2965 7705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2888 7600 50  0001 C CNN
F 3 "~" H 2850 7750 50  0001 C CNN
	1    2850 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D80B036
P 2350 7750
AR Path="/5D2C14C3/5D80B036" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D80B036" Ref="C38"  Part="1" 
F 0 "C38" H 2465 7796 50  0000 L CNN
F 1 "100nF" H 2465 7705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2388 7600 50  0001 C CNN
F 3 "~" H 2350 7750 50  0001 C CNN
	1    2350 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D80B03C
P 1850 7750
AR Path="/5D2C14C3/5D80B03C" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D80B03C" Ref="C37"  Part="1" 
F 0 "C37" H 1965 7796 50  0000 L CNN
F 1 "100nF" H 1965 7705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1888 7600 50  0001 C CNN
F 3 "~" H 1850 7750 50  0001 C CNN
	1    1850 7750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D80B048
P 1850 7600
AR Path="/5D2C14C3/5D80B048" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D80B048" Ref="#PWR091"  Part="1" 
F 0 "#PWR091" H 1850 7450 50  0001 C CNN
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
AR Path="/5D8005AF/5D833E49/5D813D35" Ref="C42"  Part="1" 
F 0 "C42" H 4465 7796 50  0000 L CNN
F 1 "100nF" H 4465 7705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4388 7600 50  0001 C CNN
F 3 "~" H 4350 7750 50  0001 C CNN
	1    4350 7750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D813D3B
P 1850 7900
AR Path="/5D2C14C3/5D813D3B" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D813D3B" Ref="#PWR092"  Part="1" 
F 0 "#PWR092" H 1850 7650 50  0001 C CNN
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
Connection ~ 1850 7900
Wire Bus Line
	950  2850 1100 2850
Wire Bus Line
	1100 2850 1100 3050
Wire Bus Line
	950  3050 1100 3050
$Comp
L power:GND #PWR?
U 1 1 5DBD46BA
P 3500 6750
AR Path="/5D2C07CD/5DBD46BA" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DBD46BA" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DBD46BA" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5DBD46BA" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DBD46BA" Ref="#PWR095"  Part="1" 
F 0 "#PWR095" H 3500 6500 50  0001 C CNN
F 1 "GND" H 3505 6577 50  0000 C CNN
F 2 "" H 3500 6750 50  0001 C CNN
F 3 "" H 3500 6750 50  0001 C CNN
	1    3500 6750
	-1   0    0    1   
$EndComp
Entry Wire Line
	2000 6150 1900 6250
Entry Wire Line
	2200 6150 2100 6250
Entry Wire Line
	2300 6150 2200 6250
Entry Wire Line
	2400 6150 2300 6250
Entry Wire Line
	2500 6150 2400 6250
Entry Wire Line
	2600 6150 2500 6250
Entry Wire Line
	2700 6150 2600 6250
Entry Wire Line
	2800 6150 2700 6250
Entry Wire Line
	2900 6150 2800 6250
Entry Wire Line
	3000 6150 2900 6250
Entry Wire Line
	3100 6150 3000 6250
Entry Wire Line
	3200 6150 3100 6250
Entry Wire Line
	3300 6150 3200 6250
Entry Wire Line
	3400 6150 3300 6250
Entry Wire Line
	3500 6150 3400 6250
Text Label 1900 6800 1    50   ~ 0
IR15
Text Label 2100 6800 1    50   ~ 0
IR13
Text Label 2200 6800 1    50   ~ 0
IR12
Text Label 2300 6800 1    50   ~ 0
IR11
Text Label 2400 6800 1    50   ~ 0
IR10
Text Label 2500 6800 1    50   ~ 0
IR9
Text Label 2600 6800 1    50   ~ 0
IR8
Text Label 2700 6800 1    50   ~ 0
IR7
Text Label 2800 6800 1    50   ~ 0
IR6
Text Label 2900 6800 1    50   ~ 0
IR5
Text Label 3000 6800 1    50   ~ 0
IR4
Text Label 3100 6800 1    50   ~ 0
IR3
Text Label 3200 6800 1    50   ~ 0
IR2
Text Label 3300 6800 1    50   ~ 0
IR1
Text Label 3400 6800 1    50   ~ 0
IR0
Wire Wire Line
	1900 6250 1900 6850
Wire Wire Line
	2100 6250 2100 6850
Wire Wire Line
	2200 6250 2200 6850
Wire Wire Line
	2300 6250 2300 6850
Wire Wire Line
	2400 6250 2400 6850
Wire Wire Line
	2500 6250 2500 6850
Wire Wire Line
	2600 6250 2600 6850
Wire Wire Line
	2700 6250 2700 6850
Wire Wire Line
	2800 6250 2800 6850
Wire Wire Line
	2900 6250 2900 6850
Wire Wire Line
	3000 6250 3000 6850
Wire Wire Line
	3100 6250 3100 6850
Wire Wire Line
	3200 6250 3200 6850
Wire Wire Line
	3300 6250 3300 6850
Wire Wire Line
	3400 6250 3400 6850
Wire Wire Line
	3500 6850 3500 6750
Wire Wire Line
	2000 6250 2000 6850
Text Label 2000 6800 1    50   ~ 0
IR14
Entry Wire Line
	2100 6150 2000 6250
$Comp
L Connector:Conn_01x17_Female J?
U 1 1 5DBD46F1
P 2700 7050
AR Path="/5D2C12A5/5DBD46F1" Ref="J?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5DBD46F1" Ref="J4"  Part="1" 
F 0 "J4" V 2773 7030 50  0000 C CNN
F 1 "Instruction Register LED Connector" V 2864 7030 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x17_P2.54mm_Vertical" H 2700 7050 50  0001 C CNN
F 3 "~" H 2700 7050 50  0001 C CNN
	1    2700 7050
	0    1    1    0   
$EndComp
Connection ~ 5150 6150
Wire Bus Line
	5150 6150 9750 6150
Wire Bus Line
	950  900  950  2850
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
	2000 6150 5150 6150
$EndSCHEMATC
