EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 24
Title "Instruction RAM Address"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 "counter as we're running in Instruction RAM."
Comment3 "If the program counter is in the upper 32KB of the address space then use the program"
Comment4 "Instruction RAM uses an address from either the program counter or the address bus."
$EndDescr
$Comp
L 74xx:74LS157 U?
U 1 1 5D83DAAA
P 2600 3200
AR Path="/5D2C14C3/5D83DAAA" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DAAA" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DAAA" Ref="U28"  Part="1" 
F 0 "U28" H 2350 4100 50  0000 C CNN
F 1 "74F157" H 2350 4000 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2600 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 2600 3200 50  0001 C CNN
	1    2600 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D83DAB0
P 2600 4200
AR Path="/5D2C14C3/5D83DAB0" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DAB0" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DAB0" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 2600 3950 50  0001 C CNN
F 1 "GND" H 2605 4027 50  0000 C CNN
F 2 "" H 2600 4200 50  0001 C CNN
F 3 "" H 2600 4200 50  0001 C CNN
	1    2600 4200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D83DAB6
P 2600 2300
AR Path="/5D2C14C3/5D83DAB6" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DAB6" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DAB6" Ref="#PWR0163"  Part="1" 
F 0 "#PWR0163" H 2600 2150 50  0001 C CNN
F 1 "VCC" H 2617 2473 50  0000 C CNN
F 2 "" H 2600 2300 50  0001 C CNN
F 3 "" H 2600 2300 50  0001 C CNN
	1    2600 2300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D83DABC
P 4850 2300
AR Path="/5D2C14C3/5D83DABC" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DABC" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DABC" Ref="#PWR0164"  Part="1" 
F 0 "#PWR0164" H 4850 2150 50  0001 C CNN
F 1 "VCC" H 4867 2473 50  0000 C CNN
F 2 "" H 4850 2300 50  0001 C CNN
F 3 "" H 4850 2300 50  0001 C CNN
	1    4850 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D83DAC2
P 2100 3900
AR Path="/5D2C14C3/5D83DAC2" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DAC2" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DAC2" Ref="#PWR0165"  Part="1" 
F 0 "#PWR0165" H 2100 3650 50  0001 C CNN
F 1 "GND" H 2105 3727 50  0000 C CNN
F 2 "" H 2100 3900 50  0001 C CNN
F 3 "" H 2100 3900 50  0001 C CNN
	1    2100 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D83DAC8
P 4350 3900
AR Path="/5D2C14C3/5D83DAC8" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DAC8" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DAC8" Ref="#PWR0166"  Part="1" 
F 0 "#PWR0166" H 4350 3650 50  0001 C CNN
F 1 "GND" H 4355 3727 50  0000 C CNN
F 2 "" H 4350 3900 50  0001 C CNN
F 3 "" H 4350 3900 50  0001 C CNN
	1    4350 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D83DACE
P 4850 4200
AR Path="/5D2C14C3/5D83DACE" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DACE" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DACE" Ref="#PWR0167"  Part="1" 
F 0 "#PWR0167" H 4850 3950 50  0001 C CNN
F 1 "GND" H 4855 4027 50  0000 C CNN
F 2 "" H 4850 4200 50  0001 C CNN
F 3 "" H 4850 4200 50  0001 C CNN
	1    4850 4200
	1    0    0    -1  
$EndComp
Text GLabel 1100 1700 0    50   Input ~ 0
PC_IF
Text GLabel 1100 1850 0    50   Input ~ 0
AddressBus
Entry Wire Line
	1600 2600 1500 2500
Entry Wire Line
	1600 2900 1500 2800
Entry Wire Line
	1600 3200 1500 3100
Entry Wire Line
	1600 3500 1500 3400
Wire Wire Line
	1600 3500 2100 3500
Wire Wire Line
	2100 3200 1600 3200
Wire Wire Line
	1600 2900 2100 2900
Wire Wire Line
	2100 2600 1600 2600
Text Label 1600 2600 0    50   ~ 0
PC_IF00
Text Label 1600 2900 0    50   ~ 0
PC_IF01
Text Label 1600 3200 0    50   ~ 0
PC_IF02
Text Label 1600 3500 0    50   ~ 0
PC_IF03
Wire Bus Line
	1500 1700 1100 1700
Entry Wire Line
	1450 2600 1550 2700
Entry Wire Line
	1450 2900 1550 3000
Entry Wire Line
	1450 3200 1550 3300
Entry Wire Line
	1450 3500 1550 3600
Wire Wire Line
	1550 3600 2100 3600
Wire Wire Line
	2100 3300 1550 3300
Wire Wire Line
	1550 3000 2100 3000
Wire Wire Line
	2100 2700 1550 2700
Wire Bus Line
	1100 1850 1450 1850
$Comp
L 74xx:74LS157 U?
U 1 1 5D83DAF0
P 4850 3200
AR Path="/5D2C14C3/5D83DAF0" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DAF0" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DAF0" Ref="U29"  Part="1" 
F 0 "U29" H 4600 4100 50  0000 C CNN
F 1 "74F157" H 4600 4000 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4850 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 4850 3200 50  0001 C CNN
	1    4850 3200
	1    0    0    -1  
$EndComp
Entry Wire Line
	1500 3700 1600 3800
Wire Wire Line
	1600 3800 2100 3800
Text Label 1600 3800 0    50   ~ 0
PC_IF15
Entry Wire Line
	3850 2600 3750 2500
Entry Wire Line
	3850 2900 3750 2800
Entry Wire Line
	3850 3200 3750 3100
Entry Wire Line
	3850 3500 3750 3400
Wire Wire Line
	3850 3500 4350 3500
Wire Wire Line
	4350 3200 3850 3200
Wire Wire Line
	3850 2900 4350 2900
Wire Wire Line
	4350 2600 3850 2600
Text Label 3850 2600 0    50   ~ 0
PC_IF04
Text Label 3850 2900 0    50   ~ 0
PC_IF05
Text Label 3850 3200 0    50   ~ 0
PC_IF06
Text Label 3850 3500 0    50   ~ 0
PC_IF07
Entry Wire Line
	3700 2600 3800 2700
Entry Wire Line
	3700 2900 3800 3000
Entry Wire Line
	3700 3200 3800 3300
Entry Wire Line
	3700 3500 3800 3600
Wire Wire Line
	3800 3600 4350 3600
Wire Wire Line
	4350 3300 3800 3300
Wire Wire Line
	3800 3000 4350 3000
Wire Wire Line
	4350 2700 3800 2700
Text Label 3850 3000 0    50   ~ 0
AddressBus05
Text Label 3850 3300 0    50   ~ 0
AddressBus06
Text Label 3850 3600 0    50   ~ 0
AddressBus07
Entry Wire Line
	3750 3700 3850 3800
Wire Wire Line
	3850 3800 4350 3800
Wire Bus Line
	1500 1700 3750 1700
Connection ~ 1500 1700
Wire Bus Line
	3700 1850 1450 1850
Connection ~ 1450 1850
Text Label 3850 3800 0    50   ~ 0
PC_IF15
$Comp
L power:VCC #PWR?
U 1 1 5D83DB1E
P 7150 2300
AR Path="/5D2C14C3/5D83DB1E" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DB1E" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DB1E" Ref="#PWR0168"  Part="1" 
F 0 "#PWR0168" H 7150 2150 50  0001 C CNN
F 1 "VCC" H 7167 2473 50  0000 C CNN
F 2 "" H 7150 2300 50  0001 C CNN
F 3 "" H 7150 2300 50  0001 C CNN
	1    7150 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D83DB24
P 6650 3900
AR Path="/5D2C14C3/5D83DB24" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DB24" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DB24" Ref="#PWR0169"  Part="1" 
F 0 "#PWR0169" H 6650 3650 50  0001 C CNN
F 1 "GND" H 6655 3727 50  0000 C CNN
F 2 "" H 6650 3900 50  0001 C CNN
F 3 "" H 6650 3900 50  0001 C CNN
	1    6650 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D83DB2A
P 7150 4200
AR Path="/5D2C14C3/5D83DB2A" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DB2A" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DB2A" Ref="#PWR0170"  Part="1" 
F 0 "#PWR0170" H 7150 3950 50  0001 C CNN
F 1 "GND" H 7155 4027 50  0000 C CNN
F 2 "" H 7150 4200 50  0001 C CNN
F 3 "" H 7150 4200 50  0001 C CNN
	1    7150 4200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 5D83DB30
P 7150 3200
AR Path="/5D2C14C3/5D83DB30" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DB30" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DB30" Ref="U30"  Part="1" 
F 0 "U30" H 6900 4100 50  0000 C CNN
F 1 "74F157" H 6900 4000 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7150 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 7150 3200 50  0001 C CNN
	1    7150 3200
	1    0    0    -1  
$EndComp
Text Label 6150 2600 0    50   ~ 0
PC_IF08
Text Label 6150 2900 0    50   ~ 0
PC_IF09
Text Label 6150 3200 0    50   ~ 0
PC_IF10
Text Label 6150 3500 0    50   ~ 0
PC_IF11
Text Label 6150 2700 0    50   ~ 0
AddressBus08
Text Label 6150 3000 0    50   ~ 0
AddressBus09
Text Label 6150 3300 0    50   ~ 0
AddressBus10
Text Label 6150 3600 0    50   ~ 0
AddressBus11
Text Label 6150 3800 0    50   ~ 0
PC_IF15
$Comp
L power:VCC #PWR?
U 1 1 5D83DB52
P 9450 2300
AR Path="/5D2C14C3/5D83DB52" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DB52" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DB52" Ref="#PWR0171"  Part="1" 
F 0 "#PWR0171" H 9450 2150 50  0001 C CNN
F 1 "VCC" H 9467 2473 50  0000 C CNN
F 2 "" H 9450 2300 50  0001 C CNN
F 3 "" H 9450 2300 50  0001 C CNN
	1    9450 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D83DB58
P 8950 3900
AR Path="/5D2C14C3/5D83DB58" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DB58" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DB58" Ref="#PWR0172"  Part="1" 
F 0 "#PWR0172" H 8950 3650 50  0001 C CNN
F 1 "GND" H 8955 3727 50  0000 C CNN
F 2 "" H 8950 3900 50  0001 C CNN
F 3 "" H 8950 3900 50  0001 C CNN
	1    8950 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D83DB5E
P 9450 4200
AR Path="/5D2C14C3/5D83DB5E" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DB5E" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DB5E" Ref="#PWR0173"  Part="1" 
F 0 "#PWR0173" H 9450 3950 50  0001 C CNN
F 1 "GND" H 9455 4027 50  0000 C CNN
F 2 "" H 9450 4200 50  0001 C CNN
F 3 "" H 9450 4200 50  0001 C CNN
	1    9450 4200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 5D83DB64
P 9450 3200
AR Path="/5D2C14C3/5D83DB64" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D833E49/5D83DB64" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D83DB64" Ref="U31"  Part="1" 
F 0 "U31" H 9200 4100 50  0000 C CNN
F 1 "74F157" H 9200 4000 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9450 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 9450 3200 50  0001 C CNN
	1    9450 3200
	1    0    0    -1  
$EndComp
Entry Wire Line
	8450 2600 8350 2500
Entry Wire Line
	8450 2900 8350 2800
Entry Wire Line
	8450 3200 8350 3100
Entry Wire Line
	8450 3500 8350 3400
Wire Wire Line
	8450 3500 8950 3500
Wire Wire Line
	8950 3200 8450 3200
Wire Wire Line
	8450 2900 8950 2900
Wire Wire Line
	8950 2600 8450 2600
Text Label 8450 2600 0    50   ~ 0
PC_IF12
Text Label 8450 2900 0    50   ~ 0
PC_IF13
Text Label 8450 3200 0    50   ~ 0
PC_IF14
Text Label 8450 3500 0    50   ~ 0
PC_IF15
Entry Wire Line
	8300 2600 8400 2700
Entry Wire Line
	8300 2900 8400 3000
Entry Wire Line
	8300 3200 8400 3300
Entry Wire Line
	8300 3500 8400 3600
Wire Wire Line
	8400 3600 8950 3600
Wire Wire Line
	8950 3300 8400 3300
Wire Wire Line
	8400 3000 8950 3000
Wire Wire Line
	8950 2700 8400 2700
Text Label 8450 2700 0    50   ~ 0
AddressBus12
Text Label 8450 3000 0    50   ~ 0
AddressBus13
Text Label 8450 3300 0    50   ~ 0
AddressBus14
Text Label 8450 3600 0    50   ~ 0
AddressBus15
Entry Wire Line
	8350 3700 8450 3800
Wire Wire Line
	8450 3800 8950 3800
Text Label 8450 3800 0    50   ~ 0
PC_IF15
Connection ~ 3750 1700
Connection ~ 3700 1850
Text Label 3850 2700 0    50   ~ 0
AddressBus04
Text Label 1600 3600 0    50   ~ 0
AddressBus03
Text Label 1600 3300 0    50   ~ 0
AddressBus02
Text Label 1600 3000 0    50   ~ 0
AddressBus01
Text Label 1600 2700 0    50   ~ 0
AddressBus00
Entry Wire Line
	3550 2600 3650 2700
Entry Wire Line
	3550 2900 3650 3000
Entry Wire Line
	3550 3200 3650 3300
Entry Wire Line
	3550 3500 3650 3600
Wire Wire Line
	3550 3500 3100 3500
Wire Wire Line
	3100 3200 3550 3200
Wire Wire Line
	3550 2900 3100 2900
Wire Wire Line
	3100 2600 3550 2600
Text GLabel 10700 4950 2    50   Output ~ 0
IRAMAddr
Entry Wire Line
	8150 2600 8250 2700
Entry Wire Line
	8150 2900 8250 3000
Entry Wire Line
	8150 3200 8250 3300
Entry Wire Line
	8150 3500 8250 3600
Wire Wire Line
	8150 3500 7650 3500
Wire Wire Line
	7650 3200 8150 3200
Wire Wire Line
	8150 2900 7650 2900
Wire Wire Line
	7650 2600 8150 2600
Entry Wire Line
	10400 2600 10500 2700
Entry Wire Line
	10400 2900 10500 3000
Entry Wire Line
	10400 3200 10500 3300
Entry Wire Line
	10400 3500 10500 3600
Wire Wire Line
	10400 3500 9950 3500
Wire Wire Line
	9950 3200 10400 3200
Wire Wire Line
	10400 2900 9950 2900
Wire Wire Line
	9950 2600 10400 2600
Connection ~ 8250 4950
Wire Bus Line
	8250 4950 10500 4950
Connection ~ 10500 4950
Wire Bus Line
	10500 4950 10700 4950
Text Label 3500 2600 2    50   ~ 0
IRAMAddr00
Text Label 3500 2900 2    50   ~ 0
IRAMAddr01
Text Label 3500 3200 2    50   ~ 0
IRAMAddr02
Text Label 3500 3500 2    50   ~ 0
IRAMAddr03
Text Label 5750 2600 2    50   ~ 0
IRAMAddr04
Wire Wire Line
	6650 2700 6050 2700
Wire Wire Line
	6050 3000 6650 3000
Wire Wire Line
	6650 3300 6050 3300
Wire Wire Line
	6050 3600 6650 3600
Entry Wire Line
	5950 2900 6050 3000
Entry Wire Line
	5950 3200 6050 3300
Entry Wire Line
	5950 3500 6050 3600
Wire Bus Line
	8300 1850 5950 1850
Connection ~ 5950 1850
Wire Bus Line
	5950 1850 3700 1850
Wire Wire Line
	5800 3500 5350 3500
Wire Wire Line
	5350 3200 5800 3200
Wire Wire Line
	5800 2900 5350 2900
Wire Wire Line
	5350 2600 5800 2600
Wire Bus Line
	5900 4950 8250 4950
Wire Bus Line
	3650 4950 5900 4950
Connection ~ 5900 4950
Entry Wire Line
	5800 3500 5900 3600
Entry Wire Line
	5800 3200 5900 3300
Entry Wire Line
	5800 2900 5900 3000
Entry Wire Line
	5800 2600 5900 2700
Entry Wire Line
	5950 2600 6050 2700
Wire Wire Line
	6650 2600 6100 2600
Wire Wire Line
	6100 2900 6650 2900
Wire Wire Line
	6650 3200 6100 3200
Wire Wire Line
	6100 3500 6650 3500
Wire Wire Line
	6100 3800 6650 3800
Entry Wire Line
	6100 2600 6000 2500
Entry Wire Line
	6100 2900 6000 2800
Entry Wire Line
	6100 3200 6000 3100
Entry Wire Line
	6100 3500 6000 3400
Entry Wire Line
	6000 3700 6100 3800
Wire Bus Line
	8350 1700 6000 1700
Connection ~ 6000 1700
Wire Bus Line
	6000 1700 3750 1700
Text Label 5750 2900 2    50   ~ 0
IRAMAddr05
Text Label 5750 3200 2    50   ~ 0
IRAMAddr06
Text Label 5750 3500 2    50   ~ 0
IRAMAddr07
Text Label 8100 2600 2    50   ~ 0
IRAMAddr08
Text Label 8100 2900 2    50   ~ 0
IRAMAddr09
Text Label 8100 3200 2    50   ~ 0
IRAMAddr10
Text Label 8100 3500 2    50   ~ 0
IRAMAddr11
Text Label 10350 2600 2    50   ~ 0
IRAMAddr12
Text Label 10350 2900 2    50   ~ 0
IRAMAddr13
Text Label 10350 3200 2    50   ~ 0
IRAMAddr14
Text Label 10350 3500 2    50   ~ 0
IRAMAddr15
$Comp
L Device:C C?
U 1 1 5D8C9992
P 750 7300
AR Path="/5D2C07CD/5D8C9992" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5D8C9992" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D8C9992" Ref="C25"  Part="1" 
F 0 "C25" H 865 7346 50  0000 L CNN
F 1 "100nF" H 865 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 788 7150 50  0001 C CNN
F 3 "~" H 750 7300 50  0001 C CNN
	1    750  7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D8C9998
P 1250 7300
AR Path="/5D2C07CD/5D8C9998" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5D8C9998" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D8C9998" Ref="C26"  Part="1" 
F 0 "C26" H 1365 7346 50  0000 L CNN
F 1 "100nF" H 1365 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1288 7150 50  0001 C CNN
F 3 "~" H 1250 7300 50  0001 C CNN
	1    1250 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D8C999E
P 1750 7300
AR Path="/5D2C07CD/5D8C999E" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5D8C999E" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D8C999E" Ref="C27"  Part="1" 
F 0 "C27" H 1865 7346 50  0000 L CNN
F 1 "100nF" H 1865 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1788 7150 50  0001 C CNN
F 3 "~" H 1750 7300 50  0001 C CNN
	1    1750 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D8C99A4
P 2250 7300
AR Path="/5D2C07CD/5D8C99A4" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5D8C99A4" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D8C99A4" Ref="C28"  Part="1" 
F 0 "C28" H 2365 7346 50  0000 L CNN
F 1 "100nF" H 2365 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2288 7150 50  0001 C CNN
F 3 "~" H 2250 7300 50  0001 C CNN
	1    2250 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8C99AA
P 750 7450
AR Path="/5D2C07CD/5D8C99AA" Ref="#PWR?"  Part="1" 
AR Path="/5D2C1188/5D8C99AA" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D8C99AA" Ref="#PWR0174"  Part="1" 
F 0 "#PWR0174" H 750 7200 50  0001 C CNN
F 1 "GND" H 755 7277 50  0000 C CNN
F 2 "" H 750 7450 50  0001 C CNN
F 3 "" H 750 7450 50  0001 C CNN
	1    750  7450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D8C99B0
P 750 7150
AR Path="/5D2C07CD/5D8C99B0" Ref="#PWR?"  Part="1" 
AR Path="/5D2C1188/5D8C99B0" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D83587F/5D8C99B0" Ref="#PWR0175"  Part="1" 
F 0 "#PWR0175" H 750 7000 50  0001 C CNN
F 1 "VCC" H 767 7323 50  0000 C CNN
F 2 "" H 750 7150 50  0001 C CNN
F 3 "" H 750 7150 50  0001 C CNN
	1    750  7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  7150 1250 7150
Connection ~ 750  7150
Wire Wire Line
	1250 7150 1750 7150
Connection ~ 1250 7150
Wire Wire Line
	1750 7150 2250 7150
Connection ~ 1750 7150
Wire Wire Line
	2250 7450 1750 7450
Wire Wire Line
	1750 7450 1250 7450
Connection ~ 1750 7450
Wire Wire Line
	1250 7450 750  7450
Connection ~ 1250 7450
Connection ~ 750  7450
Wire Bus Line
	5900 2700 5900 4950
Wire Bus Line
	5950 1850 5950 3500
Wire Bus Line
	10500 2700 10500 4950
Wire Bus Line
	8250 2700 8250 4950
Wire Bus Line
	3650 2700 3650 4950
Wire Bus Line
	8300 1850 8300 3500
Wire Bus Line
	8350 1700 8350 3700
Wire Bus Line
	3700 1850 3700 3500
Wire Bus Line
	3750 1700 3750 3700
Wire Bus Line
	1450 1850 1450 3500
Wire Bus Line
	1500 1700 1500 3700
Wire Bus Line
	6000 1700 6000 3700
$EndSCHEMATC