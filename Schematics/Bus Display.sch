EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 24 24
Title "Bus Display"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0198
U 1 1 5D7E5A44
P 2900 3550
F 0 "#PWR0198" H 2900 3300 50  0001 C CNN
F 1 "GND" H 2905 3377 50  0000 C CNN
F 2 "" H 2900 3550 50  0001 C CNN
F 3 "" H 2900 3550 50  0001 C CNN
	1    2900 3550
	1    0    0    -1  
$EndComp
Text GLabel 1600 1450 0    50   Input ~ 0
DataBus[0..7]
Entry Wire Line
	3800 1550 3700 1450
Entry Wire Line
	4150 1550 4050 1450
Entry Wire Line
	4500 1550 4400 1450
Entry Wire Line
	4850 1550 4750 1450
Entry Wire Line
	5200 1550 5100 1450
Entry Wire Line
	3450 1550 3350 1450
Entry Wire Line
	3100 1550 3000 1450
Entry Wire Line
	2750 1550 2650 1450
$Comp
L Device:R R118
U 1 1 5D7FC690
P 2750 3100
F 0 "R118" H 2820 3146 50  0000 L CNN
F 1 "1kΩ" H 2820 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2680 3100 50  0001 C CNN
F 3 "~" H 2750 3100 50  0001 C CNN
	1    2750 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R119
U 1 1 5D7FC696
P 3100 3100
F 0 "R119" H 3170 3146 50  0000 L CNN
F 1 "1kΩ" H 3170 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3030 3100 50  0001 C CNN
F 3 "~" H 3100 3100 50  0001 C CNN
	1    3100 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R120
U 1 1 5D7FC69E
P 3450 3100
F 0 "R120" H 3520 3146 50  0000 L CNN
F 1 "1kΩ" H 3520 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3380 3100 50  0001 C CNN
F 3 "~" H 3450 3100 50  0001 C CNN
	1    3450 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R130
U 1 1 5D7FC6A6
P 5200 3100
F 0 "R130" H 5270 3146 50  0000 L CNN
F 1 "1kΩ" H 5270 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5130 3100 50  0001 C CNN
F 3 "~" H 5200 3100 50  0001 C CNN
	1    5200 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R128
U 1 1 5D7FC6AC
P 4850 3100
F 0 "R128" H 4920 3146 50  0000 L CNN
F 1 "1kΩ" H 4920 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4780 3100 50  0001 C CNN
F 3 "~" H 4850 3100 50  0001 C CNN
	1    4850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R126
U 1 1 5D7FC6B3
P 4500 3100
F 0 "R126" H 4570 3146 50  0000 L CNN
F 1 "1kΩ" H 4570 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4430 3100 50  0001 C CNN
F 3 "~" H 4500 3100 50  0001 C CNN
	1    4500 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R124
U 1 1 5D7FC6BB
P 4150 3100
F 0 "R124" H 4220 3146 50  0000 L CNN
F 1 "1kΩ" H 4220 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4080 3100 50  0001 C CNN
F 3 "~" H 4150 3100 50  0001 C CNN
	1    4150 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R122
U 1 1 5D7FC6C3
P 3800 3100
F 0 "R122" H 3870 3146 50  0000 L CNN
F 1 "1kΩ" H 3870 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3730 3100 50  0001 C CNN
F 3 "~" H 3800 3100 50  0001 C CNN
	1    3800 3100
	1    0    0    -1  
$EndComp
Text Label 2750 1900 1    50   ~ 0
DataBus7
Text Label 3100 1900 1    50   ~ 0
DataBus6
Text Label 3450 1900 1    50   ~ 0
DataBus5
Text Label 3800 1900 1    50   ~ 0
DataBus4
Text Label 4150 1900 1    50   ~ 0
DataBus3
Text Label 4500 1900 1    50   ~ 0
DataBus2
Text Label 4850 1900 1    50   ~ 0
DataBus1
Text Label 5200 1900 1    50   ~ 0
DataBus0
Wire Wire Line
	2750 1550 2750 2950
Wire Wire Line
	3100 1550 3100 2950
Wire Wire Line
	3450 1550 3450 2950
Wire Wire Line
	3800 1550 3800 2950
Wire Wire Line
	4150 1550 4150 2950
Wire Wire Line
	4500 1550 4500 2950
Wire Wire Line
	4850 1550 4850 2950
Wire Wire Line
	5200 1550 5200 2950
Wire Wire Line
	2750 3250 2750 3450
Wire Wire Line
	2750 3450 2900 3450
Wire Wire Line
	3100 3250 3100 3450
Connection ~ 3100 3450
Wire Wire Line
	3100 3450 3450 3450
Wire Wire Line
	3450 3250 3450 3450
Connection ~ 3450 3450
Wire Wire Line
	3450 3450 3800 3450
Wire Wire Line
	3800 3250 3800 3450
Connection ~ 3800 3450
Wire Wire Line
	3800 3450 4150 3450
Wire Wire Line
	4150 3250 4150 3450
Connection ~ 4150 3450
Wire Wire Line
	4150 3450 4500 3450
Wire Wire Line
	4500 3250 4500 3450
Connection ~ 4500 3450
Wire Wire Line
	4500 3450 4850 3450
Wire Wire Line
	4850 3250 4850 3450
Connection ~ 4850 3450
Wire Wire Line
	4850 3450 5200 3450
Wire Wire Line
	5200 3250 5200 3450
Text Notes 3600 3650 0    50   ~ 0
Data Bus Pull-down Resistors
$Comp
L power:GND #PWR?
U 1 1 5DCD04AD
P 6700 5500
AR Path="/5D2C07CD/5DCD04AD" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5DCD04AD" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DCD04AD" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5DCD04AD" Ref="#PWR0199"  Part="1" 
F 0 "#PWR0199" H 6700 5250 50  0001 C CNN
F 1 "GND" H 6705 5327 50  0000 C CNN
F 2 "" H 6700 5500 50  0001 C CNN
F 3 "" H 6700 5500 50  0001 C CNN
	1    6700 5500
	-1   0    0    1   
$EndComp
Entry Wire Line
	5100 5000 5000 4900
Entry Wire Line
	5300 5000 5200 4900
Entry Wire Line
	5400 5000 5300 4900
Entry Wire Line
	5500 5000 5400 4900
Entry Wire Line
	5600 5000 5500 4900
Entry Wire Line
	5700 5000 5600 4900
Entry Wire Line
	5800 5000 5700 4900
Entry Wire Line
	5900 5000 5800 4900
Entry Wire Line
	6000 5000 5900 4900
Entry Wire Line
	6100 5000 6000 4900
Entry Wire Line
	6200 5000 6100 4900
Entry Wire Line
	6300 5000 6200 4900
Entry Wire Line
	6400 5000 6300 4900
Entry Wire Line
	6500 5000 6400 4900
Entry Wire Line
	6600 5000 6500 4900
Text GLabel 4700 4900 0    50   Input ~ 0
AddressBus[0..15]
Text Label 5100 5550 1    50   ~ 0
AddressBus15
Text Label 5300 5550 1    50   ~ 0
AddressBus13
Text Label 5400 5550 1    50   ~ 0
AddressBus12
Text Label 5500 5550 1    50   ~ 0
AddressBus11
Text Label 5600 5550 1    50   ~ 0
AddressBus10
Text Label 5700 5550 1    50   ~ 0
AddressBus9
Text Label 5800 5550 1    50   ~ 0
AddressBus8
Text Label 5900 5550 1    50   ~ 0
AddressBus7
Text Label 6000 5550 1    50   ~ 0
AddressBus6
Text Label 6100 5550 1    50   ~ 0
AddressBus5
Text Label 6200 5550 1    50   ~ 0
AddressBus4
Text Label 6300 5550 1    50   ~ 0
AddressBus3
Text Label 6400 5550 1    50   ~ 0
AddressBus2
Text Label 6500 5550 1    50   ~ 0
AddressBus1
Text Label 6600 5550 1    50   ~ 0
AddressBus0
Wire Wire Line
	5100 5000 5100 5600
Wire Wire Line
	5300 5000 5300 5600
Wire Wire Line
	5400 5000 5400 5600
Wire Wire Line
	5500 5000 5500 5600
Wire Wire Line
	5600 5000 5600 5600
Wire Wire Line
	5700 5000 5700 5600
Wire Wire Line
	5800 5000 5800 5600
Wire Wire Line
	5900 5000 5900 5600
Wire Wire Line
	6000 5000 6000 5600
Wire Wire Line
	6100 5000 6100 5600
Wire Wire Line
	6200 5000 6200 5600
Wire Wire Line
	6300 5000 6300 5600
Wire Wire Line
	6400 5000 6400 5600
Wire Wire Line
	6500 5000 6500 5600
Wire Wire Line
	6600 5000 6600 5600
Wire Wire Line
	6700 5600 6700 5500
Wire Wire Line
	2900 3450 2900 3550
Connection ~ 2900 3450
Wire Wire Line
	2900 3450 3100 3450
Wire Wire Line
	5200 5000 5200 5600
Text Label 5200 5550 1    50   ~ 0
AddressBus14
Entry Wire Line
	5200 5000 5100 4900
Wire Wire Line
	8850 1700 8850 1900
$Comp
L power:GND #PWR0179
U 1 1 5D8AA8B4
P 8850 1700
F 0 "#PWR0179" H 8850 1450 50  0001 C CNN
F 1 "GND" H 8855 1527 50  0000 C CNN
F 2 "" H 8850 1700 50  0001 C CNN
F 3 "" H 8850 1700 50  0001 C CNN
	1    8850 1700
	-1   0    0    1   
$EndComp
Entry Wire Line
	8150 1550 8050 1450
Wire Wire Line
	8150 1550 8150 1900
Text Label 8150 1900 1    50   ~ 0
DataBus6
Wire Wire Line
	8350 1550 8350 1900
Text Label 8350 1900 1    50   ~ 0
DataBus4
$Comp
L Connector:Conn_01x09_Female J?
U 1 1 5D870367
P 8450 2100
AR Path="/5D29E36D/5D870367" Ref="J?"  Part="1" 
AR Path="/5D2C12A5/5D870367" Ref="J12"  Part="1" 
F 0 "J12" V 8600 2050 50  0000 C CNN
F 1 "Data Bus LED Connector" V 8700 2050 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 8450 2100 50  0001 C CNN
F 3 "~" H 8450 2100 50  0001 C CNN
	1    8450 2100
	0    1    1    0   
$EndComp
Text Label 8750 1900 1    50   ~ 0
DataBus0
Text Label 8650 1900 1    50   ~ 0
DataBus1
Text Label 8550 1900 1    50   ~ 0
DataBus2
Text Label 8450 1900 1    50   ~ 0
DataBus3
Text Label 8250 1900 1    50   ~ 0
DataBus5
Text Label 8050 1900 1    50   ~ 0
DataBus7
Wire Wire Line
	8050 1550 8050 1900
Wire Wire Line
	8250 1550 8250 1900
Wire Wire Line
	8450 1550 8450 1900
Wire Wire Line
	8550 1550 8550 1900
Wire Wire Line
	8650 1550 8650 1900
Wire Wire Line
	8750 1550 8750 1900
Entry Wire Line
	8050 1550 7950 1450
Entry Wire Line
	8250 1550 8150 1450
Entry Wire Line
	8750 1550 8650 1450
Entry Wire Line
	8650 1550 8550 1450
Entry Wire Line
	8550 1550 8450 1450
Entry Wire Line
	8450 1550 8350 1450
Entry Wire Line
	8350 1550 8250 1450
$Comp
L Connector:Conn_01x17_Female J11
U 1 1 5D8D33D7
P 5900 5800
F 0 "J11" V 5973 5780 50  0000 C CNN
F 1 "Address Bus LED Connector" V 6064 5780 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x17_P2.54mm_Vertical" H 5900 5800 50  0001 C CNN
F 3 "~" H 5900 5800 50  0001 C CNN
	1    5900 5800
	0    1    1    0   
$EndComp
Wire Bus Line
	4700 4900 6500 4900
Wire Bus Line
	1600 1450 8650 1450
$EndSCHEMATC
