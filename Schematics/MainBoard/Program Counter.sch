EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 7 22
Title "Program Counter"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1050 4250 0    50   Input ~ 0
~J
$Comp
L 74xx:74LS161 U18
U 1 1 5D21151D
P 3000 2600
F 0 "U18" H 2750 3400 50  0000 C CNN
F 1 "74F161" H 2750 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3000 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 3000 2600 50  0001 C CNN
	1    3000 2600
	1    0    0    -1  
$EndComp
Text GLabel 1050 3950 0    50   Input ~ 0
~RST
Text GLabel 1050 4100 0    50   Input ~ 0
CE
Wire Wire Line
	2500 3100 2200 3100
Wire Wire Line
	2200 3100 2200 3950
Wire Wire Line
	4500 3950 4500 3100
Wire Wire Line
	6550 3100 6550 3950
Wire Wire Line
	8700 3100 8700 3950
Wire Wire Line
	2200 3950 1050 3950
Text GLabel 1050 3800 0    50   Input ~ 0
ControlClock
Wire Wire Line
	2500 2900 2100 2900
Wire Wire Line
	2100 2900 2100 3800
Wire Wire Line
	2100 3800 1050 3800
Wire Wire Line
	4400 2900 4400 3800
Wire Wire Line
	6450 2900 6450 3800
Wire Wire Line
	8600 2900 8600 3800
Wire Wire Line
	2000 2700 2000 2800
Wire Wire Line
	2000 4100 1050 4100
Wire Wire Line
	4300 2700 4300 4100
Wire Wire Line
	6350 2700 6350 4100
Wire Wire Line
	8500 2700 8500 4100
Wire Wire Line
	2000 2700 2500 2700
Wire Wire Line
	2000 2800 2500 2800
Connection ~ 2000 2800
Wire Wire Line
	2000 2800 2000 4100
$Comp
L power:VCC #PWR049
U 1 1 5D22033E
P 3000 1450
F 0 "#PWR049" H 3000 1300 50  0001 C CNN
F 1 "VCC" H 3017 1623 50  0000 C CNN
F 2 "" H 3000 1450 50  0001 C CNN
F 3 "" H 3000 1450 50  0001 C CNN
	1    3000 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1450 3000 1500
Wire Wire Line
	3000 1800 3000 1500
Wire Wire Line
	10250 1500 9300 1500
Connection ~ 9300 1500
$Comp
L power:GND #PWR050
U 1 1 5D228832
P 3000 3400
F 0 "#PWR050" H 3000 3150 50  0001 C CNN
F 1 "GND" H 3005 3227 50  0000 C CNN
F 2 "" H 3000 3400 50  0001 C CNN
F 3 "" H 3000 3400 50  0001 C CNN
	1    3000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2600 1900 2600
Wire Wire Line
	1900 2600 1900 4250
Wire Wire Line
	1900 4250 1050 4250
Wire Wire Line
	4200 2600 4200 4250
Wire Wire Line
	6250 2600 6250 4250
Wire Wire Line
	8400 2600 8400 4250
Entry Wire Line
	1900 2000 2000 2100
Entry Wire Line
	1900 2100 2000 2200
Entry Wire Line
	1900 2200 2000 2300
Entry Wire Line
	1900 2300 2000 2400
Entry Wire Line
	3950 2000 4050 2100
Entry Wire Line
	3950 2100 4050 2200
Entry Wire Line
	3950 2200 4050 2300
Entry Wire Line
	3950 2300 4050 2400
Wire Wire Line
	2000 2100 2500 2100
Wire Wire Line
	2500 2200 2000 2200
Wire Wire Line
	2000 2300 2500 2300
Wire Wire Line
	2500 2400 2000 2400
Entry Wire Line
	6050 2000 6150 2100
Entry Wire Line
	6050 2100 6150 2200
Entry Wire Line
	6050 2200 6150 2300
Entry Wire Line
	6050 2300 6150 2400
Entry Wire Line
	8150 2100 8250 2200
Entry Wire Line
	8150 2200 8250 2300
Entry Wire Line
	8150 2300 8250 2400
Text Label 2000 2100 0    50   ~ 0
AddressBus0
Text Label 2000 2200 0    50   ~ 0
AddressBus1
Text Label 2000 2300 0    50   ~ 0
AddressBus2
Text Label 2000 2400 0    50   ~ 0
AddressBus3
Text Label 4050 2100 0    50   ~ 0
AddressBus4
Text Label 4050 2200 0    50   ~ 0
AddressBus5
Text Label 4050 2300 0    50   ~ 0
AddressBus6
Text Label 4050 2400 0    50   ~ 0
AddressBus7
Text Label 6150 2100 0    50   ~ 0
AddressBus8
Text Label 6150 2200 0    50   ~ 0
AddressBus9
Text Label 6150 2300 0    50   ~ 0
AddressBus10
Text Label 6150 2400 0    50   ~ 0
AddressBus11
Entry Wire Line
	8150 2000 8250 2100
Text Label 8250 2100 0    50   ~ 0
AddressBus12
Text Label 8250 2200 0    50   ~ 0
AddressBus13
Text Label 8250 2300 0    50   ~ 0
AddressBus14
Text Label 8250 2400 0    50   ~ 0
AddressBus15
Entry Wire Line
	3700 2100 3800 2000
Entry Wire Line
	3700 2200 3800 2100
Entry Wire Line
	3700 2300 3800 2200
Entry Wire Line
	3700 2400 3800 2300
Wire Wire Line
	3700 2400 3500 2400
Wire Wire Line
	3700 2300 3500 2300
Wire Wire Line
	3700 2200 3500 2200
Wire Wire Line
	3700 2100 3500 2100
Text Label 3500 2100 0    50   ~ 0
PC0
Text Label 3500 2200 0    50   ~ 0
PC1
Wire Wire Line
	1900 4250 4200 4250
Connection ~ 1900 4250
Wire Wire Line
	2000 4100 4300 4100
Connection ~ 2000 4100
Wire Wire Line
	2200 3950 4500 3950
Connection ~ 2200 3950
Wire Wire Line
	2100 3800 4400 3800
Connection ~ 2100 3800
Wire Wire Line
	10250 2600 10250 1500
Wire Wire Line
	3000 1500 5100 1500
Connection ~ 3000 1500
Entry Wire Line
	5800 2100 5900 2000
Entry Wire Line
	5800 2200 5900 2100
Entry Wire Line
	5800 2300 5900 2200
Entry Wire Line
	5800 2400 5900 2300
Text Label 5600 2100 0    50   ~ 0
PC4
Text Label 5600 2200 0    50   ~ 0
PC5
Text Label 5600 2300 0    50   ~ 0
PC6
Text Label 5600 2400 0    50   ~ 0
PC7
Wire Wire Line
	4200 4250 6250 4250
Connection ~ 4200 4250
Wire Wire Line
	4300 4100 6350 4100
Connection ~ 4300 4100
Wire Wire Line
	4500 3950 6550 3950
Connection ~ 4500 3950
Wire Wire Line
	4400 3800 6450 3800
Connection ~ 4400 3800
Wire Wire Line
	5100 1500 7200 1500
Connection ~ 5100 1500
Entry Wire Line
	7900 2100 8000 2000
Entry Wire Line
	7900 2200 8000 2100
Entry Wire Line
	7900 2300 8000 2200
Entry Wire Line
	7900 2400 8000 2300
Text Label 7700 2100 0    50   ~ 0
PC8
Text Label 7700 2200 0    50   ~ 0
PC9
Text Label 7700 2300 0    50   ~ 0
PC10
Text Label 7700 2400 0    50   ~ 0
PC11
Wire Wire Line
	6250 4250 8400 4250
Connection ~ 6250 4250
Wire Wire Line
	6350 4100 8500 4100
Connection ~ 6350 4100
Wire Wire Line
	6550 3950 8700 3950
Connection ~ 6550 3950
Wire Wire Line
	6450 3800 8600 3800
Connection ~ 6450 3800
Wire Wire Line
	7200 1500 9300 1500
Connection ~ 7200 1500
Entry Wire Line
	10050 2100 10150 2000
Entry Wire Line
	10050 2200 10150 2100
Entry Wire Line
	10050 2300 10150 2200
Entry Wire Line
	10050 2400 10150 2300
Text Label 9850 2100 0    50   ~ 0
PC12
Text Label 9850 2200 0    50   ~ 0
PC13
Text Label 9850 2300 0    50   ~ 0
PC14
Text Label 9850 2400 0    50   ~ 0
PC15
Wire Bus Line
	1350 1600 1900 1600
Connection ~ 1900 1600
Wire Bus Line
	1900 1600 3950 1600
Connection ~ 3950 1600
Wire Bus Line
	3950 1600 6050 1600
Connection ~ 6050 1600
Wire Bus Line
	6050 1600 8150 1600
Wire Bus Line
	3800 1700 5900 1700
Connection ~ 8000 1700
Wire Bus Line
	8000 1700 10150 1700
Connection ~ 5900 1700
Wire Bus Line
	5900 1700 8000 1700
Connection ~ 3000 3400
Text GLabel 10050 4900 2    50   Output ~ 0
PC[0..15]
Wire Wire Line
	8800 2600 8400 2600
Wire Wire Line
	8800 2700 8500 2700
Wire Wire Line
	8800 2400 8250 2400
Wire Wire Line
	8250 2300 8800 2300
Wire Wire Line
	8800 2200 8250 2200
Wire Wire Line
	8250 2100 8800 2100
Wire Wire Line
	8800 2900 8600 2900
Wire Wire Line
	9300 1500 9300 1800
Wire Wire Line
	9800 2600 10250 2600
Wire Wire Line
	10050 2100 9800 2100
Wire Wire Line
	9800 2200 10050 2200
Wire Wire Line
	10050 2300 9800 2300
Wire Wire Line
	9800 2400 10050 2400
Wire Wire Line
	8800 3100 8700 3100
$Comp
L 74xx:74LS161 U21
U 1 1 5D217C94
P 9300 2600
F 0 "U21" H 9050 3400 50  0000 C CNN
F 1 "74F161" H 9050 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9300 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 9300 2600 50  0001 C CNN
	1    9300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2600 6250 2600
Wire Wire Line
	7200 3400 9300 3400
Connection ~ 7200 3400
Wire Wire Line
	6700 2700 6350 2700
Wire Wire Line
	6700 2400 6150 2400
Wire Wire Line
	6150 2300 6700 2300
Wire Wire Line
	6700 2200 6150 2200
Wire Wire Line
	6700 2900 6450 2900
Wire Wire Line
	7200 1800 7200 1500
Wire Wire Line
	7900 2100 7700 2100
Wire Wire Line
	7900 2200 7700 2200
Wire Wire Line
	7900 2300 7700 2300
Wire Wire Line
	7900 2400 7700 2400
Wire Wire Line
	6700 3100 6550 3100
$Comp
L 74xx:74LS161 U20
U 1 1 5D21617C
P 7200 2600
F 0 "U20" H 6950 3400 50  0000 C CNN
F 1 "74F161" H 6950 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7200 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 7200 2600 50  0001 C CNN
	1    7200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2600 4200 2600
Wire Wire Line
	3000 3400 5100 3400
Connection ~ 5100 3400
Wire Wire Line
	5100 3400 7200 3400
Wire Wire Line
	4600 2700 4300 2700
Wire Wire Line
	4050 2400 4600 2400
Wire Wire Line
	4600 2300 4050 2300
Wire Wire Line
	4050 2200 4600 2200
Wire Wire Line
	4600 2100 4050 2100
Wire Wire Line
	4600 2900 4400 2900
Wire Wire Line
	5100 1800 5100 1500
Wire Wire Line
	5800 2100 5600 2100
Wire Wire Line
	5800 2200 5600 2200
Wire Wire Line
	5800 2300 5600 2300
Wire Wire Line
	5800 2400 5600 2400
Wire Wire Line
	4500 3100 4600 3100
$Comp
L 74xx:74LS161 U19
U 1 1 5D214E57
P 5100 2600
F 0 "U19" H 4850 3400 50  0000 C CNN
F 1 "74F161" H 4850 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5100 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 5100 2600 50  0001 C CNN
	1    5100 2600
	1    0    0    -1  
$EndComp
Text Label 3500 2400 0    50   ~ 0
PC3
Text Label 3500 2300 0    50   ~ 0
PC2
Text GLabel 1350 1600 0    50   Input ~ 0
AddressBus[0..15]
Wire Wire Line
	8100 2800 8100 2600
Wire Wire Line
	8100 2600 7700 2600
Wire Wire Line
	8100 2800 8800 2800
Wire Wire Line
	5600 2600 6000 2600
Wire Wire Line
	6000 2600 6000 2800
Wire Wire Line
	6000 2800 6700 2800
Wire Wire Line
	3500 2600 3900 2600
Wire Wire Line
	3900 2600 3900 2800
Wire Wire Line
	3900 2800 4600 2800
Wire Bus Line
	9000 4900 9000 3850
Wire Bus Line
	9000 3850 10150 3850
Wire Bus Line
	9000 4900 10050 4900
$Comp
L Device:C C18
U 1 1 5DCB8122
P 850 7500
F 0 "C18" H 965 7546 50  0000 L CNN
F 1 "100nF" H 965 7455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 888 7350 50  0001 C CNN
F 3 "~" H 850 7500 50  0001 C CNN
	1    850  7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5DCB8128
P 1350 7500
F 0 "C19" H 1465 7546 50  0000 L CNN
F 1 "100nF" H 1465 7455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1388 7350 50  0001 C CNN
F 3 "~" H 1350 7500 50  0001 C CNN
	1    1350 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5DCB812E
P 1850 7500
F 0 "C20" H 1965 7546 50  0000 L CNN
F 1 "100nF" H 1965 7455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1888 7350 50  0001 C CNN
F 3 "~" H 1850 7500 50  0001 C CNN
	1    1850 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 5DCB8134
P 2350 7500
F 0 "C21" H 2465 7546 50  0000 L CNN
F 1 "100nF" H 2465 7455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2388 7350 50  0001 C CNN
F 3 "~" H 2350 7500 50  0001 C CNN
	1    2350 7500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 5DCB8140
P 850 7650
F 0 "#PWR048" H 850 7400 50  0001 C CNN
F 1 "GND" H 855 7477 50  0000 C CNN
F 2 "" H 850 7650 50  0001 C CNN
F 3 "" H 850 7650 50  0001 C CNN
	1    850  7650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR047
U 1 1 5DCB8146
P 850 7350
F 0 "#PWR047" H 850 7200 50  0001 C CNN
F 1 "VCC" H 867 7523 50  0000 C CNN
F 2 "" H 850 7350 50  0001 C CNN
F 3 "" H 850 7350 50  0001 C CNN
	1    850  7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  7350 1350 7350
Connection ~ 850  7350
Wire Wire Line
	1350 7350 1850 7350
Connection ~ 1350 7350
Wire Wire Line
	1850 7350 2350 7350
Connection ~ 1850 7350
Wire Wire Line
	2350 7650 1850 7650
Wire Wire Line
	1850 7650 1350 7650
Connection ~ 1850 7650
Wire Wire Line
	1350 7650 850  7650
Connection ~ 1350 7650
Connection ~ 850  7650
Wire Wire Line
	6700 2100 6150 2100
$Comp
L power:GND #PWR051
U 1 1 5DB34FC7
P 4800 5500
AR Path="/5D2C07CD/5DB34FC7" Ref="#PWR051"  Part="1" 
AR Path="/5D2C0CA7/5DB34FC7" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DB34FC7" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5DB34FC7" Ref="#PWR?"  Part="1" 
F 0 "#PWR051" H 4800 5250 50  0001 C CNN
F 1 "GND" H 4805 5327 50  0000 C CNN
F 2 "" H 4800 5500 50  0001 C CNN
F 3 "" H 4800 5500 50  0001 C CNN
	1    4800 5500
	-1   0    0    1   
$EndComp
Entry Wire Line
	4700 5000 4800 4900
Entry Wire Line
	4500 5000 4600 4900
Entry Wire Line
	4400 5000 4500 4900
Entry Wire Line
	4300 5000 4400 4900
Entry Wire Line
	4200 5000 4300 4900
Entry Wire Line
	4100 5000 4200 4900
Entry Wire Line
	4000 5000 4100 4900
Entry Wire Line
	3900 5000 4000 4900
Entry Wire Line
	3800 5000 3900 4900
Entry Wire Line
	3700 5000 3800 4900
Entry Wire Line
	3600 5000 3700 4900
Entry Wire Line
	3500 5000 3600 4900
Entry Wire Line
	3400 5000 3500 4900
Entry Wire Line
	3300 5000 3400 4900
Entry Wire Line
	3200 5000 3300 4900
Text Label 3700 5550 1    50   ~ 0
PC10
Text Label 3800 5550 1    50   ~ 0
PC9
Text Label 3900 5550 1    50   ~ 0
PC8
Text Label 4000 5550 1    50   ~ 0
PC7
Text Label 4100 5550 1    50   ~ 0
PC6
Text Label 4200 5550 1    50   ~ 0
PC5
Text Label 4300 5550 1    50   ~ 0
PC4
Text Label 4400 5550 1    50   ~ 0
PC3
Text Label 4500 5550 1    50   ~ 0
PC2
Text Label 4600 5550 1    50   ~ 0
PC1
Text Label 4700 5550 1    50   ~ 0
PC0
Wire Wire Line
	3200 5000 3200 5600
Wire Wire Line
	3400 5000 3400 5600
Wire Wire Line
	3500 5000 3500 5600
Wire Wire Line
	3600 5000 3600 5600
Wire Wire Line
	3700 5000 3700 5600
Wire Wire Line
	3800 5000 3800 5600
Wire Wire Line
	3900 5000 3900 5600
Wire Wire Line
	4000 5000 4000 5600
Wire Wire Line
	4100 5000 4100 5600
Wire Wire Line
	4200 5000 4200 5600
Wire Wire Line
	4300 5000 4300 5600
Wire Wire Line
	4400 5000 4400 5600
Wire Wire Line
	4500 5000 4500 5600
Wire Wire Line
	4600 5000 4600 5600
Wire Wire Line
	4700 5000 4700 5600
Wire Wire Line
	4800 5600 4800 5500
Wire Wire Line
	3300 5000 3300 5600
Entry Wire Line
	4600 5000 4700 4900
$Comp
L Connector:Conn_01x17_Female J?
U 1 1 5DB34FFE
P 4000 5800
AR Path="/5D2C12A5/5DB34FFE" Ref="J?"  Part="1" 
AR Path="/5D2C07CD/5DB34FFE" Ref="J3"  Part="1" 
F 0 "J3" V 4073 5780 50  0000 C CNN
F 1 "Program Counter LED Connector" V 4164 5780 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x17_P2.54mm_Vertical" H 4000 5800 50  0001 C CNN
F 3 "~" H 4000 5800 50  0001 C CNN
	1    4000 5800
	0    1    1    0   
$EndComp
Text Label 3600 5550 1    50   ~ 0
PC11
Text Label 3500 5550 1    50   ~ 0
PC12
Text Label 3400 5550 1    50   ~ 0
PC13
Text Label 3300 5550 1    50   ~ 0
PC14
Text Label 3200 5550 1    50   ~ 0
PC15
Connection ~ 9000 4900
Wire Bus Line
	10150 1700 10150 3850
Wire Bus Line
	8000 1700 8000 2300
Wire Bus Line
	5900 1700 5900 2300
Wire Bus Line
	3800 1700 3800 2300
Wire Bus Line
	8150 1600 8150 2300
Wire Bus Line
	6050 1600 6050 2300
Wire Bus Line
	3950 1600 3950 2300
Wire Bus Line
	1900 1600 1900 2300
Wire Bus Line
	3300 4900 9000 4900
$EndSCHEMATC