EESchema Schematic File Version 4
LIBS:RAMCard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "The MSB of the address selects between two 32KB SRAM ICs."
$EndDescr
$Comp
L Memory_RAM:IDT71256SA12TPG U3
U 1 1 5E1E9FA0
P 6850 2700
F 0 "U3" H 6400 3650 50  0000 C CNN
F 1 "IDT71256SA12TPG" H 6400 3550 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 6850 4700 50  0001 C CNN
F 3 "" H 6850 4700 50  0001 C CNN
	1    6850 2700
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:IDT71256SA12TPG U4
U 1 1 5E1EC273
P 6850 5000
F 0 "U4" H 6400 5950 50  0000 C CNN
F 1 "IDT71256SA12TPG" H 6400 5850 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 6850 7000 50  0001 C CNN
F 3 "" H 6850 7000 50  0001 C CNN
	1    6850 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5E1EE0BF
P 6850 3650
F 0 "#PWR04" H 6850 3400 50  0001 C CNN
F 1 "GND" H 6855 3477 50  0000 C CNN
F 2 "" H 6850 3650 50  0001 C CNN
F 3 "" H 6850 3650 50  0001 C CNN
	1    6850 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5E1EE650
P 6850 5950
F 0 "#PWR06" H 6850 5700 50  0001 C CNN
F 1 "GND" H 6855 5777 50  0000 C CNN
F 2 "" H 6850 5950 50  0001 C CNN
F 3 "" H 6850 5950 50  0001 C CNN
	1    6850 5950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5E1EEC64
P 6850 4150
F 0 "#PWR05" H 6850 4000 50  0001 C CNN
F 1 "VCC" H 6867 4323 50  0000 C CNN
F 2 "" H 6850 4150 50  0001 C CNN
F 3 "" H 6850 4150 50  0001 C CNN
	1    6850 4150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 5E1EF332
P 6850 1850
F 0 "#PWR03" H 6850 1700 50  0001 C CNN
F 1 "VCC" H 6867 2023 50  0000 C CNN
F 2 "" H 6850 1850 50  0001 C CNN
F 3 "" H 6850 1850 50  0001 C CNN
	1    6850 1850
	1    0    0    -1  
$EndComp
Entry Wire Line
	7950 2950 8050 2850
Entry Wire Line
	7950 3050 8050 2950
Entry Wire Line
	7950 3150 8050 3050
Entry Wire Line
	7950 3250 8050 3150
Entry Wire Line
	7950 3350 8050 3250
Entry Wire Line
	7950 3450 8050 3350
Wire Wire Line
	7950 2950 7350 2950
Wire Wire Line
	7350 3050 7950 3050
Wire Wire Line
	7950 3150 7350 3150
Wire Wire Line
	7350 3250 7950 3250
Wire Wire Line
	7950 3350 7350 3350
Wire Wire Line
	7350 3450 7950 3450
Text Label 7400 2050 0    50   ~ 0
AddressBus0
Wire Wire Line
	7950 2850 7350 2850
Wire Wire Line
	7350 2750 7950 2750
Entry Wire Line
	7950 2850 8050 2750
Entry Wire Line
	7950 2750 8050 2650
Wire Wire Line
	7950 2650 7350 2650
Wire Wire Line
	7350 2550 7950 2550
Entry Wire Line
	7950 2650 8050 2550
Entry Wire Line
	7950 2550 8050 2450
Wire Wire Line
	7950 2450 7350 2450
Entry Wire Line
	7950 2450 8050 2350
Wire Wire Line
	7350 2350 7950 2350
Entry Wire Line
	7950 2350 8050 2250
Wire Wire Line
	7950 2250 7350 2250
Entry Wire Line
	7950 2250 8050 2150
Wire Wire Line
	7350 2150 7950 2150
Entry Wire Line
	7950 2150 8050 2050
Wire Wire Line
	7950 2050 7350 2050
Entry Wire Line
	7950 2050 8050 1950
Text Label 7400 2150 0    50   ~ 0
AddressBus1
Text Label 7400 2250 0    50   ~ 0
AddressBus2
Text Label 7400 2350 0    50   ~ 0
AddressBus3
Text Label 7400 2450 0    50   ~ 0
AddressBus4
Text Label 7400 2550 0    50   ~ 0
AddressBus5
Text Label 7400 2650 0    50   ~ 0
AddressBus6
Text Label 7400 2750 0    50   ~ 0
AddressBus7
Text Label 7400 2850 0    50   ~ 0
AddressBus8
Text Label 7400 2950 0    50   ~ 0
AddressBus9
Text Label 7400 3050 0    50   ~ 0
AddressBus10
Text Label 7400 3150 0    50   ~ 0
AddressBus11
Text Label 7400 3250 0    50   ~ 0
AddressBus12
Text Label 7400 3350 0    50   ~ 0
AddressBus13
Text Label 7400 3450 0    50   ~ 0
AddressBus14
Entry Wire Line
	7950 5250 8050 5150
Entry Wire Line
	7950 5350 8050 5250
Entry Wire Line
	7950 5450 8050 5350
Entry Wire Line
	7950 5550 8050 5450
Entry Wire Line
	7950 5650 8050 5550
Entry Wire Line
	7950 5750 8050 5650
Wire Wire Line
	7950 5250 7350 5250
Wire Wire Line
	7350 5350 7950 5350
Wire Wire Line
	7950 5450 7350 5450
Wire Wire Line
	7350 5550 7950 5550
Wire Wire Line
	7950 5650 7350 5650
Wire Wire Line
	7350 5750 7950 5750
Text Label 7400 4350 0    50   ~ 0
AddressBus0
Wire Wire Line
	7950 5150 7350 5150
Wire Wire Line
	7350 5050 7950 5050
Entry Wire Line
	7950 5150 8050 5050
Entry Wire Line
	7950 5050 8050 4950
Wire Wire Line
	7950 4950 7350 4950
Wire Wire Line
	7350 4850 7950 4850
Entry Wire Line
	7950 4950 8050 4850
Entry Wire Line
	7950 4850 8050 4750
Wire Wire Line
	7950 4750 7350 4750
Entry Wire Line
	7950 4750 8050 4650
Wire Wire Line
	7350 4650 7950 4650
Entry Wire Line
	7950 4650 8050 4550
Wire Wire Line
	7950 4550 7350 4550
Entry Wire Line
	7950 4550 8050 4450
Wire Wire Line
	7350 4450 7950 4450
Entry Wire Line
	7950 4450 8050 4350
Wire Wire Line
	7950 4350 7350 4350
Entry Wire Line
	7950 4350 8050 4250
Text Label 7400 4450 0    50   ~ 0
AddressBus1
Text Label 7400 4550 0    50   ~ 0
AddressBus2
Text Label 7400 4650 0    50   ~ 0
AddressBus3
Text Label 7400 4750 0    50   ~ 0
AddressBus4
Text Label 7400 4850 0    50   ~ 0
AddressBus5
Text Label 7400 4950 0    50   ~ 0
AddressBus6
Text Label 7400 5050 0    50   ~ 0
AddressBus7
Text Label 7400 5150 0    50   ~ 0
AddressBus8
Text Label 7400 5250 0    50   ~ 0
AddressBus9
Text Label 7400 5350 0    50   ~ 0
AddressBus10
Text Label 7400 5450 0    50   ~ 0
AddressBus11
Text Label 7400 5550 0    50   ~ 0
AddressBus12
Text Label 7400 5650 0    50   ~ 0
AddressBus13
Text Label 7400 5750 0    50   ~ 0
AddressBus14
Text GLabel 1900 900  0    50   Input ~ 0
AddressBus[0..15]
Wire Bus Line
	8050 900  1900 900 
Entry Wire Line
	5950 2450 5850 2350
Wire Wire Line
	5950 2450 6350 2450
Text Label 5950 2450 0    50   ~ 0
DataBus0
Entry Wire Line
	5950 2550 5850 2450
Wire Wire Line
	5950 2550 6350 2550
Text Label 5950 2550 0    50   ~ 0
DataBus1
Entry Wire Line
	5950 2650 5850 2550
Wire Wire Line
	5950 2650 6350 2650
Text Label 5950 2650 0    50   ~ 0
DataBus2
Entry Wire Line
	5950 2750 5850 2650
Wire Wire Line
	5950 2750 6350 2750
Text Label 5950 2750 0    50   ~ 0
DataBus3
Entry Wire Line
	5950 2850 5850 2750
Wire Wire Line
	5950 2850 6350 2850
Text Label 5950 2850 0    50   ~ 0
DataBus4
Entry Wire Line
	5950 2950 5850 2850
Wire Wire Line
	5950 2950 6350 2950
Text Label 5950 2950 0    50   ~ 0
DataBus5
Entry Wire Line
	5950 3050 5850 2950
Wire Wire Line
	5950 3050 6350 3050
Text Label 5950 3050 0    50   ~ 0
DataBus6
Entry Wire Line
	5950 3150 5850 3050
Wire Wire Line
	5950 3150 6350 3150
Text Label 5950 3150 0    50   ~ 0
DataBus7
Entry Wire Line
	5950 4750 5850 4650
Wire Wire Line
	5950 4750 6350 4750
Text Label 5950 4750 0    50   ~ 0
DataBus0
Entry Wire Line
	5950 4850 5850 4750
Wire Wire Line
	5950 4850 6350 4850
Text Label 5950 4850 0    50   ~ 0
DataBus1
Entry Wire Line
	5950 4950 5850 4850
Wire Wire Line
	5950 4950 6350 4950
Text Label 5950 4950 0    50   ~ 0
DataBus2
Entry Wire Line
	5950 5050 5850 4950
Wire Wire Line
	5950 5050 6350 5050
Text Label 5950 5050 0    50   ~ 0
DataBus3
Entry Wire Line
	5950 5150 5850 5050
Wire Wire Line
	5950 5150 6350 5150
Text Label 5950 5150 0    50   ~ 0
DataBus4
Entry Wire Line
	5950 5250 5850 5150
Wire Wire Line
	5950 5250 6350 5250
Text Label 5950 5250 0    50   ~ 0
DataBus5
Entry Wire Line
	5950 5350 5850 5250
Wire Wire Line
	5950 5350 6350 5350
Text Label 5950 5350 0    50   ~ 0
DataBus6
Entry Wire Line
	5950 5450 5850 5350
Wire Wire Line
	5950 5450 6350 5450
Text Label 5950 5450 0    50   ~ 0
DataBus7
Text GLabel 1900 1250 0    50   BiDi ~ 0
DataBus[0..7]
Wire Bus Line
	5850 1250 1900 1250
Text GLabel 1850 2000 0    50   Input ~ 0
DeviceSelect[0..7]
Text GLabel 1850 1700 0    50   Input ~ 0
~MI
$Comp
L 74xx:74LS32 U?
U 2 1 5E2163C3
P 4700 2400
AR Path="/5D2C0C74/5E2163C3" Ref="U?"  Part="1" 
AR Path="/5D2C1188/5E2163C3" Ref="U?"  Part="2" 
AR Path="/5E2163C3" Ref="U1"  Part="2" 
F 0 "U1" H 4700 2725 50  0000 C CNN
F 1 "74LS32" H 4700 2634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4700 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4700 2400 50  0001 C CNN
	2    4700 2400
	1    0    0    -1  
$EndComp
Text GLabel 1850 2500 0    50   Input ~ 0
~MO
Wire Bus Line
	1850 2000 1900 2000
Text Label 2050 2100 0    50   ~ 0
DeviceSelect5
Entry Wire Line
	1900 2000 2000 2100
Wire Wire Line
	4250 2100 2000 2100
$Comp
L 74xx:74LS32 U?
U 1 1 5E2163CE
P 4700 1800
AR Path="/5D2C0C74/5E2163CE" Ref="U?"  Part="1" 
AR Path="/5D2C1188/5E2163CE" Ref="U?"  Part="1" 
AR Path="/5E2163CE" Ref="U1"  Part="1" 
F 0 "U1" H 4700 2125 50  0000 C CNN
F 1 "74LS32" H 4700 2034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4700 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4700 1800 50  0001 C CNN
	1    4700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1700 1850 1700
Wire Wire Line
	4400 1900 4250 1900
Wire Wire Line
	4250 1900 4250 2100
Wire Wire Line
	1850 2500 4400 2500
Wire Wire Line
	4250 2100 4250 2300
Wire Wire Line
	4250 2300 4400 2300
Connection ~ 4250 2100
Wire Wire Line
	5000 1800 5700 1800
Wire Wire Line
	5700 1800 5700 2050
Wire Wire Line
	5700 2050 6350 2050
Wire Wire Line
	6350 4350 5700 4350
Wire Wire Line
	5700 4350 5700 2050
Connection ~ 5700 2050
Wire Wire Line
	5000 2400 5600 2400
Wire Wire Line
	5600 2400 5600 4450
Wire Wire Line
	5600 4450 6350 4450
Wire Wire Line
	6350 2150 5600 2150
Wire Wire Line
	5600 2150 5600 2400
Connection ~ 5600 2400
$Comp
L 74xx:74LS04 U2
U 1 1 5E2339CC
P 4750 4550
F 0 "U2" H 4750 4867 50  0000 C CNN
F 1 "74LS04" H 4750 4776 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4750 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4750 4550 50  0001 C CNN
	1    4750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4550 5050 4550
Wire Wire Line
	6350 2250 5500 2250
Wire Wire Line
	5500 2250 5500 4100
Wire Wire Line
	5500 4100 4250 4100
Wire Wire Line
	4250 4100 4250 4550
Wire Wire Line
	4250 4550 4450 4550
Entry Wire Line
	3600 4100 3500 4200
Wire Wire Line
	3600 4100 4250 4100
Connection ~ 4250 4100
Text Label 3650 4100 0    50   ~ 0
AddressBus15
Wire Bus Line
	3500 4200 3500 6400
Wire Bus Line
	3500 6400 8050 6400
$Comp
L Device:C C?
U 1 1 5E262247
P 800 7600
AR Path="/5D2C07CD/5E262247" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5E262247" Ref="C?"  Part="1" 
AR Path="/5E262247" Ref="C1"  Part="1" 
F 0 "C1" H 915 7646 50  0000 L CNN
F 1 "100nF" H 915 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 838 7450 50  0001 C CNN
F 3 "~" H 800 7600 50  0001 C CNN
	1    800  7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E26224D
P 1300 7600
AR Path="/5D2C07CD/5E26224D" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5E26224D" Ref="C?"  Part="1" 
AR Path="/5E26224D" Ref="C2"  Part="1" 
F 0 "C2" H 1415 7646 50  0000 L CNN
F 1 "100nF" H 1415 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1338 7450 50  0001 C CNN
F 3 "~" H 1300 7600 50  0001 C CNN
	1    1300 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E262253
P 1800 7600
AR Path="/5D2C07CD/5E262253" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5E262253" Ref="C?"  Part="1" 
AR Path="/5E262253" Ref="C3"  Part="1" 
F 0 "C3" H 1915 7646 50  0000 L CNN
F 1 "100nF" H 1915 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1838 7450 50  0001 C CNN
F 3 "~" H 1800 7600 50  0001 C CNN
	1    1800 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E262259
P 2300 7600
AR Path="/5D2C07CD/5E262259" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5E262259" Ref="C?"  Part="1" 
AR Path="/5E262259" Ref="C4"  Part="1" 
F 0 "C4" H 2415 7646 50  0000 L CNN
F 1 "100nF" H 2415 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2338 7450 50  0001 C CNN
F 3 "~" H 2300 7600 50  0001 C CNN
	1    2300 7600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E26225F
P 800 7750
AR Path="/5D2C07CD/5E26225F" Ref="#PWR?"  Part="1" 
AR Path="/5D2C1188/5E26225F" Ref="#PWR?"  Part="1" 
AR Path="/5E26225F" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 800 7500 50  0001 C CNN
F 1 "GND" H 805 7577 50  0000 C CNN
F 2 "" H 800 7750 50  0001 C CNN
F 3 "" H 800 7750 50  0001 C CNN
	1    800  7750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E262265
P 800 7450
AR Path="/5D2C07CD/5E262265" Ref="#PWR?"  Part="1" 
AR Path="/5D2C1188/5E262265" Ref="#PWR?"  Part="1" 
AR Path="/5E262265" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 800 7300 50  0001 C CNN
F 1 "VCC" H 817 7623 50  0000 C CNN
F 2 "" H 800 7450 50  0001 C CNN
F 3 "" H 800 7450 50  0001 C CNN
	1    800  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7450 1300 7450
Connection ~ 800  7450
Wire Wire Line
	1300 7450 1800 7450
Connection ~ 1300 7450
Wire Wire Line
	1800 7450 2300 7450
Connection ~ 1800 7450
Wire Wire Line
	2300 7750 1800 7750
Wire Wire Line
	1800 7750 1300 7750
Connection ~ 1800 7750
Wire Wire Line
	1300 7750 800  7750
Connection ~ 1300 7750
Connection ~ 800  7750
$Comp
L 74xx:74LS32 U?
U 3 1 5DB5AC2C
P -1250 3150
AR Path="/5D2C0C74/5DB5AC2C" Ref="U?"  Part="1" 
AR Path="/5D2C1188/5DB5AC2C" Ref="U?"  Part="3" 
AR Path="/5DB5AC2C" Ref="U1"  Part="3" 
F 0 "U1" H -1250 3475 50  0000 C CNN
F 1 "74LS32" H -1250 3384 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H -1250 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H -1250 3150 50  0001 C CNN
	3    -1250 3150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 4 1 5DB5BEE6
P -1250 3700
AR Path="/5D2C0C74/5DB5BEE6" Ref="U?"  Part="1" 
AR Path="/5D2C1188/5DB5BEE6" Ref="U?"  Part="4" 
AR Path="/5DB5BEE6" Ref="U1"  Part="4" 
F 0 "U1" H -1250 4025 50  0000 C CNN
F 1 "74LS32" H -1250 3934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H -1250 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H -1250 3700 50  0001 C CNN
	4    -1250 3700
	1    0    0    -1  
$EndComp
NoConn ~ -1550 3050
NoConn ~ -1550 3250
NoConn ~ -1550 3600
NoConn ~ -1550 3800
NoConn ~ -950 3700
NoConn ~ -950 3150
$Comp
L 74xx:74LS04 U2
U 4 1 5DB73163
P -1250 4850
F 0 "U2" H -1250 5167 50  0000 C CNN
F 1 "74LS04" H -1250 5076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H -1250 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H -1250 4850 50  0001 C CNN
	4    -1250 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 3 1 5DB74AE3
P -550 4350
F 0 "U2" H -550 4667 50  0000 C CNN
F 1 "74LS04" H -550 4576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H -550 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H -550 4350 50  0001 C CNN
	3    -550 4350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 5 1 5DB758F0
P -550 4850
F 0 "U2" H -550 5167 50  0000 C CNN
F 1 "74LS04" H -550 5076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H -550 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H -550 4850 50  0001 C CNN
	5    -550 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 6 1 5DB7656E
P -1250 5400
F 0 "U2" H -1250 5717 50  0000 C CNN
F 1 "74LS04" H -1250 5626 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H -1250 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H -1250 5400 50  0001 C CNN
	6    -1250 5400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 2 1 5DB72272
P -1250 4350
F 0 "U2" H -1250 4667 50  0000 C CNN
F 1 "74LS04" H -1250 4576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H -1250 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H -1250 4350 50  0001 C CNN
	2    -1250 4350
	1    0    0    -1  
$EndComp
NoConn ~ -1550 4350
NoConn ~ -1550 4850
NoConn ~ -1550 5400
NoConn ~ -950 5400
NoConn ~ -950 4850
NoConn ~ -950 4350
NoConn ~ -850 4350
NoConn ~ -850 4850
NoConn ~ -250 4850
NoConn ~ -250 4350
Wire Bus Line
	5850 1250 5850 5350
Wire Bus Line
	8050 900  8050 6400
$EndSCHEMATC
