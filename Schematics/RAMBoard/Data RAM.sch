EESchema Schematic File Version 4
LIBS:RAMBoard-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 21 3
Title "Data RAM"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 "The MSB of the address selects between two 32KB SRAM ICs."
Comment4 "64KB Data RAM"
$EndDescr
$Comp
L Memory_RAM:IDT71256SA12TPG U73
U 1 1 5E1E9FA0
P 6850 2350
F 0 "U73" H 6400 3300 50  0000 C CNN
F 1 "IDT71256SA12TPG" H 6400 3200 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 6850 4350 50  0001 C CNN
F 3 "" H 6850 4350 50  0001 C CNN
	1    6850 2350
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:IDT71256SA12TPG U74
U 1 1 5E1EC273
P 6850 4650
F 0 "U74" H 6400 5600 50  0000 C CNN
F 1 "IDT71256SA12TPG" H 6400 5500 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 6850 6650 50  0001 C CNN
F 3 "" H 6850 6650 50  0001 C CNN
	1    6850 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0285
U 1 1 5E1EE0BF
P 6850 3300
F 0 "#PWR0285" H 6850 3050 50  0001 C CNN
F 1 "GND" H 6855 3127 50  0000 C CNN
F 2 "" H 6850 3300 50  0001 C CNN
F 3 "" H 6850 3300 50  0001 C CNN
	1    6850 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0286
U 1 1 5E1EE650
P 6850 5600
F 0 "#PWR0286" H 6850 5350 50  0001 C CNN
F 1 "GND" H 6855 5427 50  0000 C CNN
F 2 "" H 6850 5600 50  0001 C CNN
F 3 "" H 6850 5600 50  0001 C CNN
	1    6850 5600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0287
U 1 1 5E1EEC64
P 6850 3800
F 0 "#PWR0287" H 6850 3650 50  0001 C CNN
F 1 "VCC" H 6867 3973 50  0000 C CNN
F 2 "" H 6850 3800 50  0001 C CNN
F 3 "" H 6850 3800 50  0001 C CNN
	1    6850 3800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0288
U 1 1 5E1EF332
P 6850 1500
F 0 "#PWR0288" H 6850 1350 50  0001 C CNN
F 1 "VCC" H 6867 1673 50  0000 C CNN
F 2 "" H 6850 1500 50  0001 C CNN
F 3 "" H 6850 1500 50  0001 C CNN
	1    6850 1500
	1    0    0    -1  
$EndComp
Entry Wire Line
	8050 2600 7950 2500
Entry Wire Line
	8050 2700 7950 2600
Entry Wire Line
	8050 2800 7950 2700
Entry Wire Line
	8050 2900 7950 2800
Entry Wire Line
	8050 3000 7950 2900
Entry Wire Line
	8050 3100 7950 3000
Wire Wire Line
	7950 2600 7350 2600
Wire Wire Line
	7350 2700 7950 2700
Wire Wire Line
	7950 2800 7350 2800
Wire Wire Line
	7350 2900 7950 2900
Wire Wire Line
	7950 3000 7350 3000
Wire Wire Line
	7350 3100 7950 3100
Text Label 7400 1700 0    50   ~ 0
UV0
Wire Wire Line
	7950 2500 7350 2500
Wire Wire Line
	7350 2400 7950 2400
Entry Wire Line
	8050 2500 7950 2400
Entry Wire Line
	8050 2400 7950 2300
Wire Wire Line
	7950 2300 7350 2300
Wire Wire Line
	7350 2200 7950 2200
Entry Wire Line
	8050 2300 7950 2200
Entry Wire Line
	8050 2200 7950 2100
Wire Wire Line
	7950 2100 7350 2100
Entry Wire Line
	8050 2100 7950 2000
Wire Wire Line
	7350 2000 7950 2000
Entry Wire Line
	8050 2000 7950 1900
Wire Wire Line
	7950 1900 7350 1900
Entry Wire Line
	8050 1900 7950 1800
Wire Wire Line
	7350 1800 7950 1800
Entry Wire Line
	8050 1800 7950 1700
Wire Wire Line
	7950 1700 7350 1700
Entry Wire Line
	8050 3200 7950 3100
Text Label 7400 1800 0    50   ~ 0
UV1
Text Label 7400 1900 0    50   ~ 0
UV2
Text Label 7400 2000 0    50   ~ 0
UV3
Text Label 7400 2100 0    50   ~ 0
UV4
Text Label 7400 2200 0    50   ~ 0
UV5
Text Label 7400 2300 0    50   ~ 0
UV6
Text Label 7400 2400 0    50   ~ 0
UV7
Text Label 7400 2500 0    50   ~ 0
UV8
Text Label 7400 2600 0    50   ~ 0
UV9
Text Label 7400 2700 0    50   ~ 0
UV10
Text Label 7400 2800 0    50   ~ 0
UV11
Text Label 7400 2900 0    50   ~ 0
UV12
Text Label 7400 3000 0    50   ~ 0
UV13
Text Label 7400 3100 0    50   ~ 0
UV14
Entry Wire Line
	5950 2100 5850 2000
Wire Wire Line
	5950 2100 6350 2100
Text Label 5950 2100 0    50   ~ 0
DataBus0
Entry Wire Line
	5950 2200 5850 2100
Wire Wire Line
	5950 2200 6350 2200
Text Label 5950 2200 0    50   ~ 0
DataBus1
Entry Wire Line
	5950 2300 5850 2200
Wire Wire Line
	5950 2300 6350 2300
Text Label 5950 2300 0    50   ~ 0
DataBus2
Entry Wire Line
	5950 2400 5850 2300
Wire Wire Line
	5950 2400 6350 2400
Text Label 5950 2400 0    50   ~ 0
DataBus3
Entry Wire Line
	5950 2500 5850 2400
Wire Wire Line
	5950 2500 6350 2500
Text Label 5950 2500 0    50   ~ 0
DataBus4
Entry Wire Line
	5950 2600 5850 2500
Wire Wire Line
	5950 2600 6350 2600
Text Label 5950 2600 0    50   ~ 0
DataBus5
Entry Wire Line
	5950 2700 5850 2600
Wire Wire Line
	5950 2700 6350 2700
Text Label 5950 2700 0    50   ~ 0
DataBus6
Entry Wire Line
	5950 2800 5850 2700
Wire Wire Line
	5950 2800 6350 2800
Text Label 5950 2800 0    50   ~ 0
DataBus7
Entry Wire Line
	5950 4400 5850 4300
Wire Wire Line
	5950 4400 6350 4400
Text Label 5950 4400 0    50   ~ 0
DataBus0
Entry Wire Line
	5950 4500 5850 4400
Wire Wire Line
	5950 4500 6350 4500
Text Label 5950 4500 0    50   ~ 0
DataBus1
Entry Wire Line
	5950 4600 5850 4500
Wire Wire Line
	5950 4600 6350 4600
Text Label 5950 4600 0    50   ~ 0
DataBus2
Entry Wire Line
	5950 4700 5850 4600
Wire Wire Line
	5950 4700 6350 4700
Text Label 5950 4700 0    50   ~ 0
DataBus3
Entry Wire Line
	5950 4800 5850 4700
Wire Wire Line
	5950 4800 6350 4800
Text Label 5950 4800 0    50   ~ 0
DataBus4
Entry Wire Line
	5950 4900 5850 4800
Wire Wire Line
	5950 4900 6350 4900
Text Label 5950 4900 0    50   ~ 0
DataBus5
Entry Wire Line
	5950 5000 5850 4900
Wire Wire Line
	5950 5000 6350 5000
Text Label 5950 5000 0    50   ~ 0
DataBus6
Entry Wire Line
	5950 5100 5850 5000
Wire Wire Line
	5950 5100 6350 5100
Text Label 5950 5100 0    50   ~ 0
DataBus7
Wire Wire Line
	5700 1450 5700 1700
Wire Wire Line
	5700 1700 6350 1700
Wire Wire Line
	6350 4000 5700 4000
Wire Wire Line
	5700 4000 5700 1700
Connection ~ 5700 1700
Wire Wire Line
	5600 4100 6350 4100
Wire Wire Line
	6350 1800 5600 1800
$Comp
L 74xx:74LS04 U62
U 2 1 5E2339CC
P 4750 4200
F 0 "U62" H 4750 4517 50  0000 C CNN
F 1 "74LS04" H 4750 4426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4750 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4750 4200 50  0001 C CNN
	2    4750 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4200 5050 4200
Wire Wire Line
	6350 1900 5500 1900
Wire Wire Line
	5500 1900 5500 3750
Wire Wire Line
	5500 3750 4250 3750
Wire Wire Line
	4250 3750 4250 4200
Wire Wire Line
	4250 4200 4450 4200
Entry Wire Line
	4000 3750 3900 3850
Wire Wire Line
	4000 3750 4250 3750
Connection ~ 4250 3750
Text Label 4050 3750 0    50   ~ 0
UV15
$Comp
L Device:C C?
U 1 1 5E262247
P 800 7450
AR Path="/5D2C07CD/5E262247" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5E262247" Ref="C?"  Part="1" 
AR Path="/5E262247" Ref="C?"  Part="1" 
AR Path="/5DAA13E6/5E262247" Ref="C69"  Part="1" 
F 0 "C69" H 915 7496 50  0000 L CNN
F 1 "100nF" H 915 7405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 838 7300 50  0001 C CNN
F 3 "~" H 800 7450 50  0001 C CNN
	1    800  7450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E26224D
P 1300 7450
AR Path="/5D2C07CD/5E26224D" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5E26224D" Ref="C?"  Part="1" 
AR Path="/5E26224D" Ref="C?"  Part="1" 
AR Path="/5DAA13E6/5E26224D" Ref="C78"  Part="1" 
F 0 "C78" H 1415 7496 50  0000 L CNN
F 1 "100nF" H 1415 7405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1338 7300 50  0001 C CNN
F 3 "~" H 1300 7450 50  0001 C CNN
	1    1300 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E26225F
P 800 7700
AR Path="/5D2C07CD/5E26225F" Ref="#PWR?"  Part="1" 
AR Path="/5D2C1188/5E26225F" Ref="#PWR?"  Part="1" 
AR Path="/5E26225F" Ref="#PWR?"  Part="1" 
AR Path="/5DAA13E6/5E26225F" Ref="#PWR0289"  Part="1" 
F 0 "#PWR0289" H 800 7450 50  0001 C CNN
F 1 "GND" H 805 7527 50  0000 C CNN
F 2 "" H 800 7700 50  0001 C CNN
F 3 "" H 800 7700 50  0001 C CNN
	1    800  7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7300 1300 7300
Wire Wire Line
	1300 7600 800  7600
Wire Wire Line
	3200 1450 5700 1450
Wire Bus Line
	5850 1300 3200 1300
$Comp
L power:VCC #PWR0290
U 1 1 5D9DE32A
P 800 7200
F 0 "#PWR0290" H 800 7050 50  0001 C CNN
F 1 "VCC" H 817 7373 50  0000 C CNN
F 2 "" H 800 7200 50  0001 C CNN
F 3 "" H 800 7200 50  0001 C CNN
	1    800  7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7200 800  7300
Connection ~ 800  7300
Wire Wire Line
	800  7600 800  7700
Connection ~ 800  7600
Text GLabel 3200 1300 0    50   3State ~ 0
DataBus[0..7]
Text GLabel 3200 1600 0    50   Input ~ 0
~MO
Text GLabel 3200 1450 0    50   Input ~ 0
~MI
Wire Wire Line
	5600 1800 5600 1600
Wire Wire Line
	5600 1600 3200 1600
Connection ~ 5600 1800
Wire Wire Line
	5600 1800 5600 4100
Text GLabel 3200 1750 0    50   Input ~ 0
UV[0..15]
Wire Bus Line
	3900 6050 8050 6050
Wire Bus Line
	3900 1750 3200 1750
Entry Wire Line
	8050 4900 7950 4800
Entry Wire Line
	8050 5000 7950 4900
Entry Wire Line
	8050 5100 7950 5000
Entry Wire Line
	8050 5200 7950 5100
Entry Wire Line
	8050 5300 7950 5200
Entry Wire Line
	8050 5400 7950 5300
Wire Wire Line
	7950 4900 7350 4900
Wire Wire Line
	7350 5000 7950 5000
Wire Wire Line
	7950 5100 7350 5100
Wire Wire Line
	7350 5200 7950 5200
Wire Wire Line
	7950 5300 7350 5300
Wire Wire Line
	7350 5400 7950 5400
Text Label 7400 4000 0    50   ~ 0
UV0
Wire Wire Line
	7950 4800 7350 4800
Wire Wire Line
	7350 4700 7950 4700
Entry Wire Line
	8050 4800 7950 4700
Entry Wire Line
	8050 4700 7950 4600
Wire Wire Line
	7950 4600 7350 4600
Wire Wire Line
	7350 4500 7950 4500
Entry Wire Line
	8050 4600 7950 4500
Entry Wire Line
	8050 4500 7950 4400
Wire Wire Line
	7950 4400 7350 4400
Entry Wire Line
	8050 4400 7950 4300
Wire Wire Line
	7350 4300 7950 4300
Entry Wire Line
	8050 4300 7950 4200
Wire Wire Line
	7950 4200 7350 4200
Entry Wire Line
	8050 4200 7950 4100
Wire Wire Line
	7350 4100 7950 4100
Entry Wire Line
	8050 4100 7950 4000
Wire Wire Line
	7950 4000 7350 4000
Entry Wire Line
	8050 5500 7950 5400
Text Label 7400 4100 0    50   ~ 0
UV1
Text Label 7400 4200 0    50   ~ 0
UV2
Text Label 7400 4300 0    50   ~ 0
UV3
Text Label 7400 4400 0    50   ~ 0
UV4
Text Label 7400 4500 0    50   ~ 0
UV5
Text Label 7400 4600 0    50   ~ 0
UV6
Text Label 7400 4700 0    50   ~ 0
UV7
Text Label 7400 4800 0    50   ~ 0
UV8
Text Label 7400 4900 0    50   ~ 0
UV9
Text Label 7400 5000 0    50   ~ 0
UV10
Text Label 7400 5100 0    50   ~ 0
UV11
Text Label 7400 5200 0    50   ~ 0
UV12
Text Label 7400 5300 0    50   ~ 0
UV13
Text Label 7400 5400 0    50   ~ 0
UV14
Wire Bus Line
	3900 1750 3900 6050
Wire Bus Line
	5850 1300 5850 5000
Wire Bus Line
	8050 1800 8050 6050
$EndSCHEMATC
