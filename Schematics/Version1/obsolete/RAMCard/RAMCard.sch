EESchema Schematic File Version 4
LIBS:RAMCard-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "RAM Card"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "The MSB of the address selects between two 32KB SRAM ICs."
$EndDescr
$Comp
L Memory_RAM:IDT71256SA12TPG U6
U 1 1 5E1E9FA0
P 7700 2250
F 0 "U6" H 7250 3200 50  0000 C CNN
F 1 "IDT71256SA12TPG" H 7250 3100 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 7700 4250 50  0001 C CNN
F 3 "" H 7700 4250 50  0001 C CNN
	1    7700 2250
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:IDT71256SA12TPG U7
U 1 1 5E1EC273
P 7700 4550
F 0 "U7" H 7250 5500 50  0000 C CNN
F 1 "IDT71256SA12TPG" H 7250 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 7700 6550 50  0001 C CNN
F 3 "" H 7700 6550 50  0001 C CNN
	1    7700 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E1EE0BF
P 7700 3200
F 0 "#PWR08" H 7700 2950 50  0001 C CNN
F 1 "GND" H 7705 3027 50  0000 C CNN
F 2 "" H 7700 3200 50  0001 C CNN
F 3 "" H 7700 3200 50  0001 C CNN
	1    7700 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E1EE650
P 7700 5500
F 0 "#PWR010" H 7700 5250 50  0001 C CNN
F 1 "GND" H 7705 5327 50  0000 C CNN
F 2 "" H 7700 5500 50  0001 C CNN
F 3 "" H 7700 5500 50  0001 C CNN
	1    7700 5500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5E1EEC64
P 7700 3700
F 0 "#PWR09" H 7700 3550 50  0001 C CNN
F 1 "VCC" H 7717 3873 50  0000 C CNN
F 2 "" H 7700 3700 50  0001 C CNN
F 3 "" H 7700 3700 50  0001 C CNN
	1    7700 3700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5E1EF332
P 7700 1400
F 0 "#PWR07" H 7700 1250 50  0001 C CNN
F 1 "VCC" H 7717 1573 50  0000 C CNN
F 2 "" H 7700 1400 50  0001 C CNN
F 3 "" H 7700 1400 50  0001 C CNN
	1    7700 1400
	1    0    0    -1  
$EndComp
Entry Wire Line
	8900 2500 8800 2400
Entry Wire Line
	8900 2600 8800 2500
Entry Wire Line
	8900 2700 8800 2600
Entry Wire Line
	8900 2800 8800 2700
Entry Wire Line
	8900 2900 8800 2800
Entry Wire Line
	8900 3000 8800 2900
Wire Wire Line
	8800 2500 8200 2500
Wire Wire Line
	8200 2600 8800 2600
Wire Wire Line
	8800 2700 8200 2700
Wire Wire Line
	8200 2800 8800 2800
Wire Wire Line
	8800 2900 8200 2900
Wire Wire Line
	8200 3000 8800 3000
Text Label 8250 1600 0    50   ~ 0
AddressBus0
Wire Wire Line
	8800 2400 8200 2400
Wire Wire Line
	8200 2300 8800 2300
Entry Wire Line
	8900 2400 8800 2300
Entry Wire Line
	8900 2300 8800 2200
Wire Wire Line
	8800 2200 8200 2200
Wire Wire Line
	8200 2100 8800 2100
Entry Wire Line
	8900 2200 8800 2100
Entry Wire Line
	8900 2100 8800 2000
Wire Wire Line
	8800 2000 8200 2000
Entry Wire Line
	8900 2000 8800 1900
Wire Wire Line
	8200 1900 8800 1900
Entry Wire Line
	8900 1900 8800 1800
Wire Wire Line
	8800 1800 8200 1800
Entry Wire Line
	8900 1800 8800 1700
Wire Wire Line
	8200 1700 8800 1700
Entry Wire Line
	8900 1700 8800 1600
Wire Wire Line
	8800 1600 8200 1600
Entry Wire Line
	8900 3100 8800 3000
Text Label 8250 1700 0    50   ~ 0
AddressBus1
Text Label 8250 1800 0    50   ~ 0
AddressBus2
Text Label 8250 1900 0    50   ~ 0
AddressBus3
Text Label 8250 2000 0    50   ~ 0
AddressBus4
Text Label 8250 2100 0    50   ~ 0
AddressBus5
Text Label 8250 2200 0    50   ~ 0
AddressBus6
Text Label 8250 2300 0    50   ~ 0
AddressBus7
Text Label 8250 2400 0    50   ~ 0
AddressBus8
Text Label 8250 2500 0    50   ~ 0
AddressBus9
Text Label 8250 2600 0    50   ~ 0
AddressBus10
Text Label 8250 2700 0    50   ~ 0
AddressBus11
Text Label 8250 2800 0    50   ~ 0
AddressBus12
Text Label 8250 2900 0    50   ~ 0
AddressBus13
Text Label 8250 3000 0    50   ~ 0
AddressBus14
Entry Wire Line
	8900 4800 8800 4700
Entry Wire Line
	8900 4900 8800 4800
Entry Wire Line
	8900 5000 8800 4900
Entry Wire Line
	8900 5100 8800 5000
Entry Wire Line
	8900 5200 8800 5100
Entry Wire Line
	8900 5300 8800 5200
Wire Wire Line
	8800 4800 8200 4800
Wire Wire Line
	8200 4900 8800 4900
Wire Wire Line
	8800 5000 8200 5000
Wire Wire Line
	8200 5100 8800 5100
Wire Wire Line
	8800 5200 8200 5200
Wire Wire Line
	8200 5300 8800 5300
Text Label 8250 3900 0    50   ~ 0
AddressBus0
Wire Wire Line
	8800 4700 8200 4700
Wire Wire Line
	8200 4600 8800 4600
Entry Wire Line
	8900 4700 8800 4600
Entry Wire Line
	8900 4600 8800 4500
Wire Wire Line
	8800 4500 8200 4500
Wire Wire Line
	8200 4400 8800 4400
Entry Wire Line
	8900 4500 8800 4400
Entry Wire Line
	8900 4400 8800 4300
Wire Wire Line
	8800 4300 8200 4300
Entry Wire Line
	8900 4300 8800 4200
Wire Wire Line
	8200 4200 8800 4200
Entry Wire Line
	8900 4200 8800 4100
Wire Wire Line
	8800 4100 8200 4100
Entry Wire Line
	8900 4100 8800 4000
Wire Wire Line
	8200 4000 8800 4000
Entry Wire Line
	8900 4000 8800 3900
Wire Wire Line
	8800 3900 8200 3900
Entry Wire Line
	8900 5400 8800 5300
Text Label 8250 4000 0    50   ~ 0
AddressBus1
Text Label 8250 4100 0    50   ~ 0
AddressBus2
Text Label 8250 4200 0    50   ~ 0
AddressBus3
Text Label 8250 4300 0    50   ~ 0
AddressBus4
Text Label 8250 4400 0    50   ~ 0
AddressBus5
Text Label 8250 4500 0    50   ~ 0
AddressBus6
Text Label 8250 4600 0    50   ~ 0
AddressBus7
Text Label 8250 4700 0    50   ~ 0
AddressBus8
Text Label 8250 4800 0    50   ~ 0
AddressBus9
Text Label 8250 4900 0    50   ~ 0
AddressBus10
Text Label 8250 5000 0    50   ~ 0
AddressBus11
Text Label 8250 5100 0    50   ~ 0
AddressBus12
Text Label 8250 5200 0    50   ~ 0
AddressBus13
Text Label 8250 5300 0    50   ~ 0
AddressBus14
Entry Wire Line
	6800 2000 6700 1900
Wire Wire Line
	6800 2000 7200 2000
Text Label 6800 2000 0    50   ~ 0
DataBus0
Entry Wire Line
	6800 2100 6700 2000
Wire Wire Line
	6800 2100 7200 2100
Text Label 6800 2100 0    50   ~ 0
DataBus1
Entry Wire Line
	6800 2200 6700 2100
Wire Wire Line
	6800 2200 7200 2200
Text Label 6800 2200 0    50   ~ 0
DataBus2
Entry Wire Line
	6800 2300 6700 2200
Wire Wire Line
	6800 2300 7200 2300
Text Label 6800 2300 0    50   ~ 0
DataBus3
Entry Wire Line
	6800 2400 6700 2300
Wire Wire Line
	6800 2400 7200 2400
Text Label 6800 2400 0    50   ~ 0
DataBus4
Entry Wire Line
	6800 2500 6700 2400
Wire Wire Line
	6800 2500 7200 2500
Text Label 6800 2500 0    50   ~ 0
DataBus5
Entry Wire Line
	6800 2600 6700 2500
Wire Wire Line
	6800 2600 7200 2600
Text Label 6800 2600 0    50   ~ 0
DataBus6
Entry Wire Line
	6800 2700 6700 2600
Wire Wire Line
	6800 2700 7200 2700
Text Label 6800 2700 0    50   ~ 0
DataBus7
Entry Wire Line
	6800 4300 6700 4200
Wire Wire Line
	6800 4300 7200 4300
Text Label 6800 4300 0    50   ~ 0
DataBus0
Entry Wire Line
	6800 4400 6700 4300
Wire Wire Line
	6800 4400 7200 4400
Text Label 6800 4400 0    50   ~ 0
DataBus1
Entry Wire Line
	6800 4500 6700 4400
Wire Wire Line
	6800 4500 7200 4500
Text Label 6800 4500 0    50   ~ 0
DataBus2
Entry Wire Line
	6800 4600 6700 4500
Wire Wire Line
	6800 4600 7200 4600
Text Label 6800 4600 0    50   ~ 0
DataBus3
Entry Wire Line
	6800 4700 6700 4600
Wire Wire Line
	6800 4700 7200 4700
Text Label 6800 4700 0    50   ~ 0
DataBus4
Entry Wire Line
	6800 4800 6700 4700
Wire Wire Line
	6800 4800 7200 4800
Text Label 6800 4800 0    50   ~ 0
DataBus5
Entry Wire Line
	6800 4900 6700 4800
Wire Wire Line
	6800 4900 7200 4900
Text Label 6800 4900 0    50   ~ 0
DataBus6
Entry Wire Line
	6800 5000 6700 4900
Wire Wire Line
	6800 5000 7200 5000
Text Label 6800 5000 0    50   ~ 0
DataBus7
Wire Wire Line
	6550 1350 6550 1600
Wire Wire Line
	6550 1600 7200 1600
Wire Wire Line
	7200 3900 6550 3900
Wire Wire Line
	6550 3900 6550 1600
Connection ~ 6550 1600
Wire Wire Line
	6450 1950 6450 4000
Wire Wire Line
	6450 4000 7200 4000
Wire Wire Line
	7200 1700 6450 1700
Wire Wire Line
	6450 1700 6450 1950
Connection ~ 6450 1950
$Comp
L 74xx:74LS04 U1
U 1 1 5E2339CC
P 5600 4100
F 0 "U1" H 5600 4417 50  0000 C CNN
F 1 "74LS04" H 5600 4326 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5600 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5600 4100 50  0001 C CNN
	1    5600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4100 5900 4100
Wire Wire Line
	7200 1800 6350 1800
Wire Wire Line
	6350 1800 6350 3650
Wire Wire Line
	6350 3650 5100 3650
Wire Wire Line
	5100 3650 5100 4100
Wire Wire Line
	5100 4100 5300 4100
Entry Wire Line
	4450 3650 4350 3750
Wire Wire Line
	4450 3650 5100 3650
Connection ~ 5100 3650
Text Label 4500 3650 0    50   ~ 0
AddressBus15
Wire Bus Line
	4350 3750 4350 5950
Wire Bus Line
	4350 5950 8900 5950
$Comp
L Device:C C?
U 1 1 5E262247
P 800 7450
AR Path="/5D2C07CD/5E262247" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5E262247" Ref="C?"  Part="1" 
AR Path="/5E262247" Ref="C1"  Part="1" 
F 0 "C1" H 915 7496 50  0000 L CNN
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
AR Path="/5E26224D" Ref="C2"  Part="1" 
F 0 "C2" H 1415 7496 50  0000 L CNN
F 1 "100nF" H 1415 7405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1338 7300 50  0001 C CNN
F 3 "~" H 1300 7450 50  0001 C CNN
	1    1300 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E262253
P 1800 7450
AR Path="/5D2C07CD/5E262253" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5E262253" Ref="C?"  Part="1" 
AR Path="/5E262253" Ref="C3"  Part="1" 
F 0 "C3" H 1915 7496 50  0000 L CNN
F 1 "100nF" H 1915 7405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1838 7300 50  0001 C CNN
F 3 "~" H 1800 7450 50  0001 C CNN
	1    1800 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E26225F
P 800 7700
AR Path="/5D2C07CD/5E26225F" Ref="#PWR?"  Part="1" 
AR Path="/5D2C1188/5E26225F" Ref="#PWR?"  Part="1" 
AR Path="/5E26225F" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 800 7450 50  0001 C CNN
F 1 "GND" H 805 7527 50  0000 C CNN
F 2 "" H 800 7700 50  0001 C CNN
F 3 "" H 800 7700 50  0001 C CNN
	1    800  7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7300 1300 7300
Wire Wire Line
	1300 7300 1800 7300
Connection ~ 1300 7300
Wire Wire Line
	1800 7600 1300 7600
Wire Wire Line
	1300 7600 800  7600
Connection ~ 1300 7600
Entry Wire Line
	2250 4250 2350 4150
Entry Wire Line
	2250 2750 2350 2650
Entry Wire Line
	2250 2850 2350 2750
Entry Wire Line
	2250 2950 2350 2850
Entry Wire Line
	2250 3050 2350 2950
Entry Wire Line
	2250 3150 2350 3050
Entry Wire Line
	2250 3250 2350 3150
Entry Wire Line
	2250 3350 2350 3250
Entry Wire Line
	2250 3450 2350 3350
Entry Wire Line
	2250 3550 2350 3450
Entry Wire Line
	2250 3650 2350 3550
Entry Wire Line
	2250 3750 2350 3650
Entry Wire Line
	2250 3850 2350 3750
Entry Wire Line
	2250 3950 2350 3850
Entry Wire Line
	2250 4050 2350 3950
Entry Wire Line
	2250 4150 2350 4050
Entry Wire Line
	4050 2350 3950 2450
Entry Wire Line
	4050 2450 3950 2550
Entry Wire Line
	4050 2550 3950 2650
Entry Wire Line
	4050 2650 3950 2750
Entry Wire Line
	4050 2750 3950 2850
Entry Wire Line
	4050 2850 3950 2950
Entry Wire Line
	4050 2950 3950 3050
Entry Wire Line
	4050 3050 3950 3150
Wire Wire Line
	3450 2450 3950 2450
Wire Wire Line
	3950 2550 3450 2550
Wire Wire Line
	3450 2650 3950 2650
Wire Wire Line
	3950 2750 3450 2750
Wire Wire Line
	3450 2850 3950 2850
Wire Wire Line
	3950 2950 3450 2950
Wire Wire Line
	3450 3050 3950 3050
Wire Wire Line
	3950 3150 3450 3150
$Comp
L Connector_Generic:Conn_02x20_Top_Bottom J1
U 1 1 5DA1F396
P 3150 3350
F 0 "J1" H 3200 4467 50  0000 C CNN
F 1 "Device 2" H 3200 4376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Horizontal" H 3150 3350 50  0001 C CNN
F 3 "~" H 3150 3350 50  0001 C CNN
	1    3150 3350
	1    0    0    -1  
$EndComp
Text Label 2350 2650 0    50   ~ 0
AddressBus0
Text Label 2350 2750 0    50   ~ 0
AddressBus1
Text Label 2350 2850 0    50   ~ 0
AddressBus2
Text Label 2350 2950 0    50   ~ 0
AddressBus3
Text Label 2350 3050 0    50   ~ 0
AddressBus4
Text Label 2350 3150 0    50   ~ 0
AddressBus5
Text Label 2350 3250 0    50   ~ 0
AddressBus6
Text Label 2350 3350 0    50   ~ 0
AddressBus7
Text Label 2350 3450 0    50   ~ 0
AddressBus8
Text Label 2350 3550 0    50   ~ 0
AddressBus9
Text Label 2350 3650 0    50   ~ 0
AddressBus10
Text Label 2350 3750 0    50   ~ 0
AddressBus11
Text Label 2350 3850 0    50   ~ 0
AddressBus12
Text Label 2350 3950 0    50   ~ 0
AddressBus13
Text Label 2350 4050 0    50   ~ 0
AddressBus14
Text Label 2350 4150 0    50   ~ 0
AddressBus15
Wire Wire Line
	2350 2650 2950 2650
Wire Wire Line
	2350 2750 2950 2750
Wire Wire Line
	2350 2850 2950 2850
Wire Wire Line
	2350 2950 2950 2950
Wire Wire Line
	2350 3050 2950 3050
Wire Wire Line
	2350 3150 2950 3150
Wire Wire Line
	2350 3250 2950 3250
Wire Wire Line
	2350 3350 2950 3350
Wire Wire Line
	2350 3450 2950 3450
Wire Wire Line
	2350 3550 2950 3550
Wire Wire Line
	2350 3650 2950 3650
Wire Wire Line
	2350 3750 2950 3750
Wire Wire Line
	2350 3850 2950 3850
Wire Wire Line
	2350 3950 2950 3950
Wire Wire Line
	2350 4050 2950 4050
Wire Wire Line
	2350 4150 2950 4150
Text Label 3500 2450 0    50   ~ 0
DataBus0
Text Label 3500 2550 0    50   ~ 0
DataBus1
Text Label 3500 2650 0    50   ~ 0
DataBus2
Text Label 3500 2750 0    50   ~ 0
DataBus3
Text Label 3500 2850 0    50   ~ 0
DataBus4
Text Label 3500 2950 0    50   ~ 0
DataBus5
Text Label 3500 3050 0    50   ~ 0
DataBus6
Text Label 3500 3150 0    50   ~ 0
DataBus7
Wire Wire Line
	3450 3650 3550 3650
Wire Wire Line
	3550 3650 3550 3750
Wire Wire Line
	3550 4350 3450 4350
Wire Wire Line
	3450 4250 3550 4250
Connection ~ 3550 4250
Wire Wire Line
	3550 4250 3550 4350
Wire Wire Line
	3450 4150 3550 4150
Connection ~ 3550 4150
Wire Wire Line
	3550 4150 3550 4250
Wire Wire Line
	3450 4050 3550 4050
Connection ~ 3550 4050
Wire Wire Line
	3550 4050 3550 4150
Wire Wire Line
	3450 3950 3550 3950
Connection ~ 3550 3950
Wire Wire Line
	3550 3950 3550 4050
Wire Wire Line
	3450 3850 3550 3850
Connection ~ 3550 3850
Wire Wire Line
	3550 3850 3550 3950
Wire Wire Line
	3450 3750 3550 3750
Connection ~ 3550 3750
Wire Wire Line
	3550 3750 3550 3850
$Comp
L power:GND #PWR05
U 1 1 5E55ACB0
P 3800 4050
F 0 "#PWR05" H 3800 3800 50  0001 C CNN
F 1 "GND" H 3805 3877 50  0000 C CNN
F 2 "" H 3800 4050 50  0001 C CNN
F 3 "" H 3800 4050 50  0001 C CNN
	1    3800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3950 3800 3950
Wire Wire Line
	3800 3950 3800 4050
$Comp
L power:GND #PWR04
U 1 1 5EB03C95
P 2850 2450
F 0 "#PWR04" H 2850 2200 50  0001 C CNN
F 1 "GND" H 2855 2277 50  0000 C CNN
F 2 "" H 2850 2450 50  0001 C CNN
F 3 "" H 2850 2450 50  0001 C CNN
	1    2850 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 2450 2950 2450
$Comp
L power:VCC #PWR03
U 1 1 5EB25931
P 2600 2450
F 0 "#PWR03" H 2600 2300 50  0001 C CNN
F 1 "VCC" H 2617 2623 50  0000 C CNN
F 2 "" H 2600 2450 50  0001 C CNN
F 3 "" H 2600 2450 50  0001 C CNN
	1    2600 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2450 2600 2550
Wire Wire Line
	2600 2550 2950 2550
Wire Wire Line
	3450 3550 3550 3550
Wire Wire Line
	3550 3550 3550 3650
Connection ~ 3550 3650
Text Label 3500 3250 0    50   ~ 0
~PI
Text Label 3500 3350 0    50   ~ 0
~PO
Wire Wire Line
	3450 3350 4250 3350
Wire Wire Line
	3450 3450 3550 3450
Wire Wire Line
	3550 3450 3550 3550
Connection ~ 3550 3550
NoConn ~ 2950 4250
NoConn ~ 2950 4350
Wire Bus Line
	2250 5950 4350 5950
Connection ~ 4350 5950
Wire Wire Line
	4250 3350 4250 1950
Wire Wire Line
	4250 1950 6450 1950
Wire Wire Line
	4150 3250 4150 1350
Wire Wire Line
	3450 3250 4150 3250
Wire Wire Line
	4150 1350 6550 1350
Wire Bus Line
	6700 1200 4050 1200
$Comp
L power:VCC #PWR01
U 1 1 5D9DE32A
P 800 7200
F 0 "#PWR01" H 800 7050 50  0001 C CNN
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
$Comp
L 74xx:74LS04 U1
U 2 1 5D9F1673
P 4750 9450
F 0 "U1" H 4750 9767 50  0000 C CNN
F 1 "74LS04" H 4750 9676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4750 9450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4750 9450 50  0001 C CNN
	2    4750 9450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 3 1 5D9F27D4
P 5600 9450
F 0 "U1" H 5600 9767 50  0000 C CNN
F 1 "74LS04" H 5600 9676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5600 9450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5600 9450 50  0001 C CNN
	3    5600 9450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 5 1 5D9F469A
P 5600 10000
F 0 "U1" H 5600 10317 50  0000 C CNN
F 1 "74LS04" H 5600 10226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5600 10000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5600 10000 50  0001 C CNN
	5    5600 10000
	1    0    0    -1  
$EndComp
NoConn ~ 5050 9450
NoConn ~ 5900 9450
NoConn ~ 5900 10000
NoConn ~ 5050 10000
$Comp
L power:VCC #PWR06
U 1 1 5DA12FF5
P 5100 8850
F 0 "#PWR06" H 5100 8700 50  0001 C CNN
F 1 "VCC" H 5117 9023 50  0000 C CNN
F 2 "" H 5100 8850 50  0001 C CNN
F 3 "" H 5100 8850 50  0001 C CNN
	1    5100 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 10000 4450 9450
Wire Wire Line
	4450 9000 5100 9000
Wire Wire Line
	5100 9000 5100 8850
Connection ~ 4450 9450
Wire Wire Line
	4450 9450 4450 9000
Wire Wire Line
	5100 9000 5300 9000
Wire Wire Line
	5300 9000 5300 9450
Connection ~ 5100 9000
Connection ~ 5300 9450
Wire Wire Line
	5300 9450 5300 10000
$Comp
L 74xx:74LS04 U1
U 6 1 5DA23B9A
P 4750 10550
F 0 "U1" H 4750 10867 50  0000 C CNN
F 1 "74LS04" H 4750 10776 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4750 10550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4750 10550 50  0001 C CNN
	6    4750 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 10550 4450 10000
Connection ~ 4450 10000
$Comp
L 74xx:74LS04 U1
U 4 1 5D9F3A1C
P 4750 10000
F 0 "U1" H 4750 10317 50  0000 C CNN
F 1 "74LS04" H 4750 10226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4750 10000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4750 10000 50  0001 C CNN
	4    4750 10000
	1    0    0    -1  
$EndComp
NoConn ~ 5050 10550
Wire Bus Line
	4050 1200 4050 3050
Wire Bus Line
	2250 2750 2250 5950
Wire Bus Line
	6700 1200 6700 4900
Wire Bus Line
	8900 1700 8900 5950
$EndSCHEMATC