EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 12 24
Title "Instruction RAM"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 "from the data bus."
Comment4 "The Instruction RAM module allows a portion of Instruction Memory to be accessed"
$EndDescr
$Comp
L Device:C C?
U 1 1 5D8D004F
P 850 7600
AR Path="/5D2C07CD/5D8D004F" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5D8D004F" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D800744/5D8D004F" Ref="C29"  Part="1" 
F 0 "C29" H 965 7646 50  0000 L CNN
F 1 "100nF" H 965 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 888 7450 50  0001 C CNN
F 3 "~" H 850 7600 50  0001 C CNN
	1    850  7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D8D0055
P 1350 7600
AR Path="/5D2C07CD/5D8D0055" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5D8D0055" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D800744/5D8D0055" Ref="C30"  Part="1" 
F 0 "C30" H 1465 7646 50  0000 L CNN
F 1 "100nF" H 1465 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1388 7450 50  0001 C CNN
F 3 "~" H 1350 7600 50  0001 C CNN
	1    1350 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D8D005B
P 1850 7600
AR Path="/5D2C07CD/5D8D005B" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5D8D005B" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D800744/5D8D005B" Ref="C31"  Part="1" 
F 0 "C31" H 1965 7646 50  0000 L CNN
F 1 "100nF" H 1965 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1888 7450 50  0001 C CNN
F 3 "~" H 1850 7600 50  0001 C CNN
	1    1850 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D8D0061
P 2350 7600
AR Path="/5D2C07CD/5D8D0061" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5D8D0061" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D800744/5D8D0061" Ref="C32"  Part="1" 
F 0 "C32" H 2465 7646 50  0000 L CNN
F 1 "100nF" H 2465 7555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2388 7450 50  0001 C CNN
F 3 "~" H 2350 7600 50  0001 C CNN
	1    2350 7600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8D0067
P 850 7750
AR Path="/5D2C07CD/5D8D0067" Ref="#PWR?"  Part="1" 
AR Path="/5D2C1188/5D8D0067" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D800744/5D8D0067" Ref="#PWR0176"  Part="1" 
F 0 "#PWR0176" H 850 7500 50  0001 C CNN
F 1 "GND" H 855 7577 50  0000 C CNN
F 2 "" H 850 7750 50  0001 C CNN
F 3 "" H 850 7750 50  0001 C CNN
	1    850  7750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D8D006D
P 850 7450
AR Path="/5D2C07CD/5D8D006D" Ref="#PWR?"  Part="1" 
AR Path="/5D2C1188/5D8D006D" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D800744/5D8D006D" Ref="#PWR0177"  Part="1" 
F 0 "#PWR0177" H 850 7300 50  0001 C CNN
F 1 "VCC" H 867 7623 50  0000 C CNN
F 2 "" H 850 7450 50  0001 C CNN
F 3 "" H 850 7450 50  0001 C CNN
	1    850  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  7450 1350 7450
Connection ~ 850  7450
Wire Wire Line
	1350 7450 1850 7450
Connection ~ 1350 7450
Wire Wire Line
	1850 7450 2350 7450
Connection ~ 1850 7450
Wire Wire Line
	2350 7750 1850 7750
Wire Wire Line
	1850 7750 1350 7750
Connection ~ 1850 7750
Wire Wire Line
	1350 7750 850  7750
Connection ~ 1350 7750
Connection ~ 850  7750
$Comp
L power:VCC #PWR0178
U 1 1 5D8D3093
P 5300 1250
F 0 "#PWR0178" H 5300 1100 50  0001 C CNN
F 1 "VCC" H 5317 1423 50  0000 C CNN
F 2 "" H 5300 1250 50  0001 C CNN
F 3 "" H 5300 1250 50  0001 C CNN
	1    5300 1250
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:IDT71256SA12TPG U?
U 1 1 5D8D099F
P 5300 2100
AR Path="/5D2C1188/5D8D099F" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D800744/5D8D099F" Ref="U32"  Part="1" 
F 0 "U32" H 5750 3050 50  0000 C CNN
F 1 "IDT71256SA12TPG" H 5750 2950 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 5300 4100 50  0001 C CNN
F 3 "" H 5300 4100 50  0001 C CNN
	1    5300 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0179
U 1 1 5D8D5629
P 7300 1550
F 0 "#PWR0179" H 7300 1400 50  0001 C CNN
F 1 "VCC" H 7317 1723 50  0000 C CNN
F 2 "" H 7300 1550 50  0001 C CNN
F 3 "" H 7300 1550 50  0001 C CNN
	1    7300 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U34
U 1 1 5D8D3D15
P 7300 2350
F 0 "U34" H 7000 3150 50  0000 C CNN
F 1 "74LS245" H 7000 3050 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 7300 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 7300 2350 50  0001 C CNN
	1    7300 2350
	1    0    0    -1  
$EndComp
Entry Wire Line
	8200 1850 8300 1950
Entry Wire Line
	8200 1950 8300 2050
Entry Wire Line
	8200 2050 8300 2150
Entry Wire Line
	8200 2150 8300 2250
Entry Wire Line
	8200 2250 8300 2350
Entry Wire Line
	8200 2350 8300 2450
Entry Wire Line
	8200 2450 8300 2550
Entry Wire Line
	8200 2550 8300 2650
Wire Wire Line
	8200 1850 7800 1850
Wire Wire Line
	8200 1950 7800 1950
Wire Wire Line
	7800 2050 8200 2050
Wire Wire Line
	8200 2150 7800 2150
Wire Wire Line
	7800 2250 8200 2250
Wire Wire Line
	8200 2350 7800 2350
Wire Wire Line
	7800 2450 8200 2450
Wire Wire Line
	8200 2550 7800 2550
Text Label 8150 1850 2    50   ~ 0
DataBus0
Text Label 8150 1950 2    50   ~ 0
DataBus1
Text Label 8150 2050 2    50   ~ 0
DataBus2
Text Label 8150 2150 2    50   ~ 0
DataBus3
Text Label 8150 2250 2    50   ~ 0
DataBus4
Text Label 8150 2350 2    50   ~ 0
DataBus5
Text Label 8150 2450 2    50   ~ 0
DataBus6
Text Label 8150 2550 2    50   ~ 0
DataBus7
$Comp
L power:VCC #PWR0180
U 1 1 5D8E2F10
P 7300 4900
F 0 "#PWR0180" H 7300 4750 50  0001 C CNN
F 1 "VCC" H 7317 5073 50  0000 C CNN
F 2 "" H 7300 4900 50  0001 C CNN
F 3 "" H 7300 4900 50  0001 C CNN
	1    7300 4900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U35
U 1 1 5D8E2F16
P 7300 5700
F 0 "U35" H 7000 6500 50  0000 C CNN
F 1 "74LS245" H 7000 6400 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 7300 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 7300 5700 50  0001 C CNN
	1    7300 5700
	1    0    0    -1  
$EndComp
Text Label 8150 5200 2    50   ~ 0
DataBus0
Text Label 8150 5300 2    50   ~ 0
DataBus1
Text Label 8150 5400 2    50   ~ 0
DataBus2
Text Label 8150 5500 2    50   ~ 0
DataBus3
Text Label 8150 5600 2    50   ~ 0
DataBus4
Text Label 8150 5700 2    50   ~ 0
DataBus5
Text Label 8150 5800 2    50   ~ 0
DataBus6
Text Label 8150 5900 2    50   ~ 0
DataBus7
Wire Wire Line
	8200 5900 7800 5900
Wire Wire Line
	7800 5800 8200 5800
Wire Wire Line
	8200 5700 7800 5700
Wire Wire Line
	7800 5600 8200 5600
Wire Wire Line
	8200 5500 7800 5500
Wire Wire Line
	7800 5400 8200 5400
Wire Wire Line
	8200 5300 7800 5300
Wire Wire Line
	8200 5200 7800 5200
Entry Wire Line
	8300 5800 8200 5900
Entry Wire Line
	8300 5700 8200 5800
Entry Wire Line
	8300 5600 8200 5700
Entry Wire Line
	8300 5500 8200 5600
Entry Wire Line
	8300 5400 8200 5500
Entry Wire Line
	8300 5300 8200 5400
Entry Wire Line
	8300 5200 8200 5300
Entry Wire Line
	8300 5100 8200 5200
Wire Bus Line
	8300 3450 9900 3450
Text GLabel 9900 3450 2    50   Output ~ 0
DataBus[0..7]
Entry Wire Line
	6200 1850 6300 1950
Entry Wire Line
	6200 1950 6300 2050
Entry Wire Line
	6200 2050 6300 2150
Entry Wire Line
	6200 2150 6300 2250
Entry Wire Line
	6200 2250 6300 2350
Entry Wire Line
	6200 2350 6300 2450
Entry Wire Line
	6200 2450 6300 2550
Entry Wire Line
	6200 2550 6300 2650
Text GLabel 9900 3600 2    50   Output ~ 0
IRAM[0..15]
Wire Bus Line
	9900 3600 6300 3600
Entry Wire Line
	6200 5300 6300 5200
Entry Wire Line
	6200 5400 6300 5300
Entry Wire Line
	6200 5500 6300 5400
Entry Wire Line
	6200 5600 6300 5500
Entry Wire Line
	6200 5700 6300 5600
Entry Wire Line
	6200 5900 6300 5800
Entry Wire Line
	6200 5200 6300 5100
Entry Wire Line
	6200 5800 6300 5700
Text Label 6650 5200 2    50   ~ 0
IRAM0
Text Label 6650 5300 2    50   ~ 0
IRAM1
Text Label 6650 5400 2    50   ~ 0
IRAM2
Text Label 6650 5500 2    50   ~ 0
IRAM3
Text Label 6650 5600 2    50   ~ 0
IRAM4
Text Label 6650 5700 2    50   ~ 0
IRAM5
Text Label 6650 5800 2    50   ~ 0
IRAM6
Text Label 6650 5900 2    50   ~ 0
IRAM7
Text Label 6650 1850 2    50   ~ 0
IRAM8
Text Label 6650 1950 2    50   ~ 0
IRAM9
Text Label 6650 2050 2    50   ~ 0
IRAM10
Text Label 6650 2150 2    50   ~ 0
IRAM11
Text Label 6650 2250 2    50   ~ 0
IRAM12
Text Label 6650 2350 2    50   ~ 0
IRAM13
Text Label 6650 2450 2    50   ~ 0
IRAM14
Text Label 6650 2550 2    50   ~ 0
IRAM15
Text GLabel 1250 2450 0    50   Input ~ 0
DeviceSelect[0..7]
Text Label 1400 2250 0    50   ~ 0
DeviceSelect3
Entry Wire Line
	1300 2350 1400 2250
Text Label 1400 2650 0    50   ~ 0
DeviceSelect4
Entry Wire Line
	1300 2550 1400 2650
Wire Bus Line
	1300 2350 1300 2450
Connection ~ 8300 3450
Connection ~ 6300 3600
Wire Wire Line
	1400 2650 2100 2650
Text GLabel 6800 2750 0    50   Input ~ 0
~MI
Text GLabel 6800 6100 0    50   Input ~ 0
~MI
$Sheet
S 2200 3900 1500 500 
U 5DA74300
F0 "Lower Instruction RAM Control" 50
F1 "Instruction RAM Control.sch" 50
F2 "~OE" O R 3700 4100 50 
F3 "~WE" O R 3700 4200 50 
F4 "~OutToBus" O R 3700 4000 50 
F5 "Select" I L 2200 4000 50 
$EndSheet
$Sheet
S 2200 650  1500 500 
U 5DA75946
F0 "Upper Instruction RAM Control" 50
F1 "Instruction RAM Control.sch" 50
F2 "~OE" O R 3700 850 50 
F3 "~WE" O R 3700 950 50 
F4 "~OutToBus" O R 3700 750 50 
F5 "Select" I L 2200 750 50 
$EndSheet
Wire Wire Line
	2100 2650 2100 4000
Wire Wire Line
	2100 4000 2200 4000
Wire Wire Line
	2100 2250 2100 750 
Wire Wire Line
	2100 750  2200 750 
Wire Wire Line
	1400 2250 2100 2250
Wire Wire Line
	3700 950  6000 950 
Wire Wire Line
	6000 950  6000 1450
Wire Wire Line
	6000 1450 5800 1450
Wire Wire Line
	3700 850  6050 850 
Wire Wire Line
	6050 850  6050 1550
Wire Wire Line
	6050 1550 5800 1550
Wire Wire Line
	3700 750  6100 750 
Wire Wire Line
	6100 750  6100 2850
Wire Wire Line
	6100 2850 6800 2850
$Comp
L power:GND #PWR0181
U 1 1 5D91FAFA
P 5800 1650
F 0 "#PWR0181" H 5800 1400 50  0001 C CNN
F 1 "GND" V 5805 1522 50  0000 R CNN
F 2 "" H 5800 1650 50  0001 C CNN
F 3 "" H 5800 1650 50  0001 C CNN
	1    5800 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 4200 6000 4200
Wire Wire Line
	6000 4200 6000 4800
Wire Wire Line
	3700 4100 6050 4100
Wire Wire Line
	6050 4100 6050 4900
Wire Wire Line
	6800 6200 6100 6200
Wire Wire Line
	6100 6200 6100 4000
Wire Bus Line
	1300 2450 1250 2450
Connection ~ 1300 2450
Wire Bus Line
	1300 2450 1300 2550
Entry Wire Line
	4200 1450 4100 1550
Wire Wire Line
	4200 1450 4800 1450
Text Label 4750 1450 2    50   ~ 0
AddressBus0
Entry Wire Line
	4200 1550 4100 1650
Wire Wire Line
	4200 1550 4800 1550
Text Label 4750 1550 2    50   ~ 0
AddressBus1
Entry Wire Line
	4200 1650 4100 1750
Wire Wire Line
	4200 1650 4800 1650
Text Label 4750 1650 2    50   ~ 0
AddressBus2
Entry Wire Line
	4200 1750 4100 1850
Wire Wire Line
	4200 1750 4800 1750
Text Label 4750 1750 2    50   ~ 0
AddressBus3
Entry Wire Line
	4200 1850 4100 1950
Wire Wire Line
	4200 1850 4800 1850
Text Label 4750 1850 2    50   ~ 0
AddressBus4
Entry Wire Line
	4200 1950 4100 2050
Wire Wire Line
	4200 1950 4800 1950
Text Label 4750 1950 2    50   ~ 0
AddressBus5
Entry Wire Line
	4200 2050 4100 2150
Wire Wire Line
	4200 2050 4800 2050
Text Label 4750 2050 2    50   ~ 0
AddressBus6
Entry Wire Line
	4200 2150 4100 2250
Wire Wire Line
	4200 2150 4800 2150
Text Label 4750 2150 2    50   ~ 0
AddressBus7
Entry Wire Line
	4200 2250 4100 2350
Wire Wire Line
	4200 2250 4800 2250
Text Label 4750 2250 2    50   ~ 0
AddressBus8
Entry Wire Line
	4200 2350 4100 2450
Wire Wire Line
	4200 2350 4800 2350
Text Label 4750 2350 2    50   ~ 0
AddressBus9
Entry Wire Line
	4200 2450 4100 2550
Wire Wire Line
	4200 2450 4800 2450
Text Label 4750 2450 2    50   ~ 0
AddressBus10
Entry Wire Line
	4200 2550 4100 2650
Wire Wire Line
	4200 2550 4800 2550
Text Label 4750 2550 2    50   ~ 0
AddressBus11
Entry Wire Line
	4200 2650 4100 2750
Wire Wire Line
	4200 2650 4800 2650
Text Label 4750 2650 2    50   ~ 0
AddressBus12
Entry Wire Line
	4200 2750 4100 2850
Wire Wire Line
	4200 2750 4800 2750
Text Label 4750 2750 2    50   ~ 0
AddressBus13
Entry Wire Line
	4200 2850 4100 2950
Wire Wire Line
	4200 2850 4800 2850
Text Label 4750 2850 2    50   ~ 0
AddressBus14
$Comp
L Memory_RAM:IDT71256SA12TPG U?
U 1 1 5D8E2F04
P 5300 5450
AR Path="/5D2C1188/5D8E2F04" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D800744/5D8E2F04" Ref="U33"  Part="1" 
F 0 "U33" H 5750 6400 50  0000 C CNN
F 1 "IDT71256SA12TPG" H 5750 6300 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 5300 7450 50  0001 C CNN
F 3 "" H 5300 7450 50  0001 C CNN
	1    5300 5450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0182
U 1 1 5D92041C
P 5800 5000
F 0 "#PWR0182" H 5800 4750 50  0001 C CNN
F 1 "GND" V 5805 4872 50  0000 R CNN
F 2 "" H 5800 5000 50  0001 C CNN
F 3 "" H 5800 5000 50  0001 C CNN
	1    5800 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 4900 5800 4900
Wire Wire Line
	6000 4800 5800 4800
$Comp
L power:VCC #PWR0183
U 1 1 5D8E2EF8
P 5300 4600
F 0 "#PWR0183" H 5300 4450 50  0001 C CNN
F 1 "VCC" H 5317 4773 50  0000 C CNN
F 2 "" H 5300 4600 50  0001 C CNN
F 3 "" H 5300 4600 50  0001 C CNN
	1    5300 4600
	1    0    0    -1  
$EndComp
Entry Wire Line
	4200 4800 4100 4900
Wire Wire Line
	4200 4800 4800 4800
Text Label 4750 4800 2    50   ~ 0
AddressBus0
Entry Wire Line
	4200 4900 4100 5000
Wire Wire Line
	4200 4900 4800 4900
Text Label 4750 4900 2    50   ~ 0
AddressBus1
Entry Wire Line
	4200 5000 4100 5100
Wire Wire Line
	4200 5000 4800 5000
Text Label 4750 5000 2    50   ~ 0
AddressBus2
Entry Wire Line
	4200 5100 4100 5200
Wire Wire Line
	4200 5100 4800 5100
Text Label 4750 5100 2    50   ~ 0
AddressBus3
Entry Wire Line
	4200 5200 4100 5300
Wire Wire Line
	4200 5200 4800 5200
Text Label 4750 5200 2    50   ~ 0
AddressBus4
Entry Wire Line
	4200 5300 4100 5400
Wire Wire Line
	4200 5300 4800 5300
Text Label 4750 5300 2    50   ~ 0
AddressBus5
Entry Wire Line
	4200 5400 4100 5500
Wire Wire Line
	4200 5400 4800 5400
Text Label 4750 5400 2    50   ~ 0
AddressBus6
Entry Wire Line
	4200 5500 4100 5600
Wire Wire Line
	4200 5500 4800 5500
Text Label 4750 5500 2    50   ~ 0
AddressBus7
Entry Wire Line
	4200 5600 4100 5700
Wire Wire Line
	4200 5600 4800 5600
Text Label 4750 5600 2    50   ~ 0
AddressBus8
Entry Wire Line
	4200 5700 4100 5800
Wire Wire Line
	4200 5700 4800 5700
Text Label 4750 5700 2    50   ~ 0
AddressBus9
Entry Wire Line
	4200 5800 4100 5900
Wire Wire Line
	4200 5800 4800 5800
Text Label 4750 5800 2    50   ~ 0
AddressBus10
Entry Wire Line
	4200 5900 4100 6000
Wire Wire Line
	4200 5900 4800 5900
Text Label 4750 5900 2    50   ~ 0
AddressBus11
Entry Wire Line
	4200 6000 4100 6100
Wire Wire Line
	4200 6000 4800 6000
Text Label 4750 6000 2    50   ~ 0
AddressBus12
Entry Wire Line
	4200 6100 4100 6200
Wire Wire Line
	4200 6100 4800 6100
Text Label 4750 6100 2    50   ~ 0
AddressBus13
Entry Wire Line
	4200 6200 4100 6300
Wire Wire Line
	4200 6200 4800 6200
Text Label 4750 6200 2    50   ~ 0
AddressBus14
Wire Bus Line
	4100 6500 1250 6500
Text GLabel 1250 6500 0    50   Input ~ 0
AddressBus[0..15]
$Comp
L power:GND #PWR0184
U 1 1 5DBCC3A9
P 7300 6500
F 0 "#PWR0184" H 7300 6250 50  0001 C CNN
F 1 "GND" H 7305 6327 50  0000 C CNN
F 2 "" H 7300 6500 50  0001 C CNN
F 3 "" H 7300 6500 50  0001 C CNN
	1    7300 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0185
U 1 1 5DBCC424
P 5300 6400
F 0 "#PWR0185" H 5300 6150 50  0001 C CNN
F 1 "GND" H 5305 6227 50  0000 C CNN
F 2 "" H 5300 6400 50  0001 C CNN
F 3 "" H 5300 6400 50  0001 C CNN
	1    5300 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0186
U 1 1 5DBCCD1B
P 7300 3150
F 0 "#PWR0186" H 7300 2900 50  0001 C CNN
F 1 "GND" H 7305 2977 50  0000 C CNN
F 2 "" H 7300 3150 50  0001 C CNN
F 3 "" H 7300 3150 50  0001 C CNN
	1    7300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0187
U 1 1 5DBCD74B
P 5300 3050
F 0 "#PWR0187" H 5300 2800 50  0001 C CNN
F 1 "GND" H 5305 2877 50  0000 C CNN
F 2 "" H 5300 3050 50  0001 C CNN
F 3 "" H 5300 3050 50  0001 C CNN
	1    5300 3050
	1    0    0    -1  
$EndComp
Text Notes 3800 7150 0    50   ~ 0
For purposes of reading and writing, Instruction RAM\nis mapped to both the lower and upper halves of the\naddress space. Though, the control unit only\nexecutes code in the upper half.
Text Notes 7600 1000 0    50   ~ 0
Programs must take care to never read or write to Instruction RAM\nwhile the program counter is in the upper half of the address space.\nThis will surely lead to unexpected and incorrect operation.
Wire Wire Line
	6100 4000 3700 4000
Wire Bus Line
	6300 1950 6300 3600
Wire Bus Line
	6300 3600 6300 5800
Wire Wire Line
	5800 5900 6800 5900
Wire Wire Line
	5800 1850 6800 1850
Wire Wire Line
	5800 1950 6800 1950
Wire Wire Line
	5800 2050 6800 2050
Wire Wire Line
	5800 2150 6800 2150
Wire Wire Line
	5800 2250 6800 2250
Wire Wire Line
	5800 2350 6800 2350
Wire Wire Line
	5800 2450 6800 2450
Wire Wire Line
	5800 2550 6800 2550
Wire Wire Line
	5800 5200 6800 5200
Wire Wire Line
	5800 5300 6800 5300
Wire Wire Line
	5800 5400 6800 5400
Wire Wire Line
	5800 5500 6800 5500
Wire Wire Line
	5800 5600 6800 5600
Wire Wire Line
	5800 5800 6800 5800
Wire Wire Line
	5800 5700 6800 5700
Wire Bus Line
	8300 3450 8300 5800
Wire Bus Line
	8300 1950 8300 3450
Wire Bus Line
	4100 1550 4100 6500
$EndSCHEMATC
