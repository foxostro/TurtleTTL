EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 3 21
Title "Power-on Reset"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 "During reset, the control clock is pulsed repeatedly to flush the pipeline."
Comment3 "A button is also provided to manually reset the machine."
Comment4 "The MCP100 provides Power-on Reset functionality."
$EndDescr
$Comp
L Power_Supervisor:MCP100-450D U?
U 1 1 5D20BFD7
P 2600 4300
F 0 "U?" H 2371 4346 50  0000 R CNN
F 1 "MCP100-450D" H 2371 4255 50  0000 R CNN
F 2 "" H 2200 4450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/11187f.pdf" H 2300 4550 50  0001 C CNN
	1    2600 4300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D2125BE
P 2500 3700
F 0 "#PWR?" H 2500 3550 50  0001 C CNN
F 1 "VCC" H 2517 3873 50  0000 C CNN
F 2 "" H 2500 3700 50  0001 C CNN
F 3 "" H 2500 3700 50  0001 C CNN
	1    2500 3700
	1    0    0    -1  
$EndComp
$Comp
L Timer:LM555 U?
U 1 1 5D9A05E3
P 2500 2100
AR Path="/5D2C0720/5D9A05E3" Ref="U?"  Part="1" 
AR Path="/5D2C0761/5D9A05E3" Ref="U?"  Part="1" 
F 0 "U?" H 2300 2600 50  0000 C CNN
F 1 "LM555" H 2300 2500 50  0000 C CNN
F 2 "" H 2500 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 2500 2100 50  0001 C CNN
	1    2500 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D9A05E9
P 3100 1300
AR Path="/5D2C0720/5D9A05E9" Ref="R?"  Part="1" 
AR Path="/5D2C0761/5D9A05E9" Ref="R?"  Part="1" 
F 0 "R?" H 3168 1346 50  0000 L CNN
F 1 "1MΩ" H 3168 1255 50  0000 L CNN
F 2 "" H 3100 1300 50  0001 C CNN
F 3 "~" H 3100 1300 50  0001 C CNN
	1    3100 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D9A05EF
P 1300 1300
AR Path="/5D2C0720/5D9A05EF" Ref="R?"  Part="1" 
AR Path="/5D2C0761/5D9A05EF" Ref="R?"  Part="1" 
F 0 "R?" H 1368 1346 50  0000 L CNN
F 1 "1kΩ" H 1368 1255 50  0000 L CNN
F 2 "" H 1300 1300 50  0001 C CNN
F 3 "~" H 1300 1300 50  0001 C CNN
	1    1300 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D9A05F5
P 1550 2550
AR Path="/5D2C0720/5D9A05F5" Ref="C?"  Part="1" 
AR Path="/5D2C0761/5D9A05F5" Ref="C?"  Part="1" 
F 0 "C?" H 1642 2596 50  0000 L CNN
F 1 "10nF" H 1642 2505 50  0000 L CNN
F 2 "" H 1550 2550 50  0001 C CNN
F 3 "~" H 1550 2550 50  0001 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D9A05FB
P 3100 2550
AR Path="/5D2C0720/5D9A05FB" Ref="C?"  Part="1" 
AR Path="/5D2C0761/5D9A05FB" Ref="C?"  Part="1" 
F 0 "C?" H 3192 2596 50  0000 L CNN
F 1 "100nF" H 3192 2505 50  0000 L CNN
F 2 "" H 3100 2550 50  0001 C CNN
F 3 "~" H 3100 2550 50  0001 C CNN
	1    3100 2550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5D9A0601
P 1300 1700
AR Path="/5D2C0720/5D9A0601" Ref="SW?"  Part="1" 
AR Path="/5D2C0761/5D9A0601" Ref="SW?"  Part="1" 
F 0 "SW?" V 1254 1798 50  0000 L CNN
F 1 "SW_SPST" V 1345 1798 50  0000 L CNN
F 2 "" H 1300 1700 50  0001 C CNN
F 3 "~" H 1300 1700 50  0001 C CNN
	1    1300 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 1900 2000 1900
Wire Wire Line
	1300 1100 1300 1200
Wire Wire Line
	1300 1400 1300 1500
Wire Wire Line
	2500 2500 2500 2700
Wire Wire Line
	2500 2700 3100 2700
Wire Wire Line
	3000 2100 3100 2100
Wire Wire Line
	3100 2100 3100 2300
Wire Wire Line
	3100 2300 3000 2300
Wire Wire Line
	1300 1100 1900 1100
Wire Wire Line
	2500 1100 2500 1700
Wire Wire Line
	2000 2300 1900 2300
Wire Wire Line
	1900 2300 1900 1100
Connection ~ 1900 1100
Wire Wire Line
	1900 1100 2500 1100
Wire Wire Line
	1550 2650 1550 2700
Wire Wire Line
	1550 2700 2500 2700
Connection ~ 2500 2700
Wire Wire Line
	2000 2100 1550 2100
Wire Wire Line
	1550 2100 1550 2450
Wire Wire Line
	3100 2650 3100 2700
Wire Wire Line
	3100 1400 3100 2100
Connection ~ 3100 2100
Wire Wire Line
	2500 1100 3100 1100
Wire Wire Line
	3100 1100 3100 1200
Connection ~ 2500 1100
Wire Wire Line
	3100 2300 3100 2450
Connection ~ 3100 2300
$Comp
L power:GND #PWR?
U 1 1 5D9A0626
P 2500 2800
AR Path="/5D2C0720/5D9A0626" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0761/5D9A0626" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2500 2550 50  0001 C CNN
F 1 "GND" H 2505 2627 50  0000 C CNN
F 2 "" H 2500 2800 50  0001 C CNN
F 3 "" H 2500 2800 50  0001 C CNN
	1    2500 2800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D9AB207
P 2500 950
F 0 "#PWR?" H 2500 800 50  0001 C CNN
F 1 "VCC" H 2517 1123 50  0000 C CNN
F 2 "" H 2500 950 50  0001 C CNN
F 3 "" H 2500 950 50  0001 C CNN
	1    2500 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 950  2500 1100
Wire Wire Line
	2500 2700 2500 2800
$Comp
L 74xx:74LS04 U?
U 1 1 5D9AC574
P 3800 1900
F 0 "U?" H 3800 2217 50  0000 C CNN
F 1 "74LS04" H 3800 2126 50  0000 C CNN
F 2 "" H 3800 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3800 1900 50  0001 C CNN
	1    3800 1900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 5D9AD4D0
P 4650 2000
F 0 "U?" H 4650 2325 50  0000 C CNN
F 1 "74LS08" H 4650 2234 50  0000 C CNN
F 2 "" H 4650 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4650 2000 50  0001 C CNN
	1    4650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1900 3000 1900
Wire Wire Line
	4100 1900 4350 1900
Wire Wire Line
	2900 4300 4150 4300
Wire Wire Line
	4150 4300 4150 2100
Wire Wire Line
	4150 2100 4350 2100
$Comp
L Device:R R?
U 1 1 5D9B683B
P 4150 4850
AR Path="/5D2C0720/5D9B683B" Ref="R?"  Part="1" 
AR Path="/5D2C0761/5D9B683B" Ref="R?"  Part="1" 
F 0 "R?" H 4218 4896 50  0000 L CNN
F 1 "220Ω" H 4218 4805 50  0000 L CNN
F 2 "" V 4190 4840 50  0001 C CNN
F 3 "~" H 4150 4850 50  0001 C CNN
	1    4150 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D9B6841
P 4150 4500
AR Path="/5D2C0720/5D9B6841" Ref="D?"  Part="1" 
AR Path="/5D2C0761/5D9B6841" Ref="D?"  Part="1" 
F 0 "D?" V 4189 4383 50  0000 R CNN
F 1 "LED" V 4098 4383 50  0000 R CNN
F 2 "" H 4150 4500 50  0001 C CNN
F 3 "~" H 4150 4500 50  0001 C CNN
	1    4150 4500
	0    -1   -1   0   
$EndComp
Text Notes 4450 4550 0    50   ~ 0
Power-Ok LED
Wire Wire Line
	4150 4650 4150 4700
Wire Wire Line
	4150 5000 4150 5250
Wire Wire Line
	4150 4300 4150 4350
Connection ~ 4150 4300
Wire Wire Line
	2500 5250 4150 5250
Text GLabel 9050 2000 2    50   Output ~ 0
~RST
Wire Wire Line
	4950 2000 5000 2000
$Comp
L 74xx:74LS157 U?
U 1 1 5D9BAEF9
P 6300 3450
F 0 "U?" H 6500 4350 50  0000 C CNN
F 1 "74LS157" H 6500 4250 50  0000 C CNN
F 2 "" H 6300 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 6300 3450 50  0001 C CNN
	1    6300 3450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D9BBEFF
P 6300 2500
F 0 "#PWR?" H 6300 2350 50  0001 C CNN
F 1 "VCC" H 6317 2673 50  0000 C CNN
F 2 "" H 6300 2500 50  0001 C CNN
F 3 "" H 6300 2500 50  0001 C CNN
	1    6300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2500 6300 2550
$Comp
L power:GND #PWR?
U 1 1 5D9BDFC5
P 6300 4550
AR Path="/5D2C0720/5D9BDFC5" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0761/5D9BDFC5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6300 4300 50  0001 C CNN
F 1 "GND" H 6305 4377 50  0000 C CNN
F 2 "" H 6300 4550 50  0001 C CNN
F 3 "" H 6300 4550 50  0001 C CNN
	1    6300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4450 6300 4500
Wire Wire Line
	5800 4150 5700 4150
Wire Wire Line
	5700 4150 5700 4500
Wire Wire Line
	5700 4500 6300 4500
Connection ~ 6300 4500
Wire Wire Line
	6300 4500 6300 4550
Wire Wire Line
	5800 4050 5000 4050
Wire Wire Line
	5000 4050 5000 2000
Connection ~ 5000 2000
Wire Wire Line
	5000 2000 9050 2000
Text GLabel 1800 6250 0    50   Input ~ 0
CLK
Text GLabel 1800 6100 0    50   Input ~ 0
FixedRateClock
Wire Wire Line
	1800 6100 5050 6100
Wire Wire Line
	5050 6100 5050 2850
Wire Wire Line
	5050 2850 5800 2850
Wire Wire Line
	5800 2950 5100 2950
Wire Wire Line
	5100 2950 5100 6250
Wire Wire Line
	5100 6250 1800 6250
Wire Wire Line
	5700 4150 5700 3850
Wire Wire Line
	5700 3150 5800 3150
Connection ~ 5700 4150
Wire Wire Line
	5800 3250 5700 3250
Connection ~ 5700 3250
Wire Wire Line
	5700 3250 5700 3150
Wire Wire Line
	5800 3450 5700 3450
Connection ~ 5700 3450
Wire Wire Line
	5700 3450 5700 3250
Wire Wire Line
	5800 3550 5700 3550
Connection ~ 5700 3550
Wire Wire Line
	5700 3550 5700 3450
Wire Wire Line
	5800 3750 5700 3750
Connection ~ 5700 3750
Wire Wire Line
	5700 3750 5700 3550
Wire Wire Line
	5800 3850 5700 3850
Connection ~ 5700 3850
Wire Wire Line
	5700 3850 5700 3750
Wire Wire Line
	6800 3150 6950 3150
Wire Wire Line
	6950 4500 6300 4500
Wire Wire Line
	6950 3150 6950 3450
Wire Wire Line
	6800 3750 6950 3750
Connection ~ 6950 3750
Wire Wire Line
	6950 3750 6950 4500
Wire Wire Line
	6800 3450 6950 3450
Connection ~ 6950 3450
Wire Wire Line
	6950 3450 6950 3750
Text GLabel 9050 2850 2    50   Output ~ 0
ControlClock
Wire Wire Line
	6800 2850 9050 2850
Text Notes 1000 1750 0    50   ~ 0
Reset
Wire Wire Line
	2500 3700 2500 3900
Wire Wire Line
	2500 4700 2500 5250
Connection ~ 2500 5250
Wire Wire Line
	2500 5250 2500 5300
$Comp
L power:GND #PWR?
U 1 1 5D211A40
P 2500 5300
F 0 "#PWR?" H 2500 5050 50  0001 C CNN
F 1 "GND" H 2505 5127 50  0000 C CNN
F 2 "" H 2500 5300 50  0001 C CNN
F 3 "" H 2500 5300 50  0001 C CNN
	1    2500 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D9F0A17
P 7450 5750
F 0 "C?" H 7565 5796 50  0000 L CNN
F 1 "100nF" H 7565 5705 50  0000 L CNN
F 2 "" H 7488 5600 50  0001 C CNN
F 3 "~" H 7450 5750 50  0001 C CNN
	1    7450 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D9F0A1D
P 7950 5750
F 0 "C?" H 8065 5796 50  0000 L CNN
F 1 "100nF" H 8065 5705 50  0000 L CNN
F 2 "" H 7988 5600 50  0001 C CNN
F 3 "~" H 7950 5750 50  0001 C CNN
	1    7950 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D9F0A23
P 8450 5750
F 0 "C?" H 8565 5796 50  0000 L CNN
F 1 "100nF" H 8565 5705 50  0000 L CNN
F 2 "" H 8488 5600 50  0001 C CNN
F 3 "~" H 8450 5750 50  0001 C CNN
	1    8450 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D9F0A29
P 8950 5750
F 0 "C?" H 9065 5796 50  0000 L CNN
F 1 "100nF" H 9065 5705 50  0000 L CNN
F 2 "" H 8988 5600 50  0001 C CNN
F 3 "~" H 8950 5750 50  0001 C CNN
	1    8950 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D9F0A2F
P 9450 5750
F 0 "C?" H 9565 5796 50  0000 L CNN
F 1 "100nF" H 9565 5705 50  0000 L CNN
F 2 "" H 9488 5600 50  0001 C CNN
F 3 "~" H 9450 5750 50  0001 C CNN
	1    9450 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D9F0A35
P 7450 5900
F 0 "#PWR?" H 7450 5650 50  0001 C CNN
F 1 "GND" H 7455 5727 50  0000 C CNN
F 2 "" H 7450 5900 50  0001 C CNN
F 3 "" H 7450 5900 50  0001 C CNN
	1    7450 5900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D9F0A3B
P 7450 5600
F 0 "#PWR?" H 7450 5450 50  0001 C CNN
F 1 "VCC" H 7467 5773 50  0000 C CNN
F 2 "" H 7450 5600 50  0001 C CNN
F 3 "" H 7450 5600 50  0001 C CNN
	1    7450 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5600 7950 5600
Connection ~ 7450 5600
Wire Wire Line
	7950 5600 8450 5600
Connection ~ 7950 5600
Wire Wire Line
	8450 5600 8950 5600
Connection ~ 8450 5600
Wire Wire Line
	8950 5600 9450 5600
Connection ~ 8950 5600
Wire Wire Line
	9450 5900 8950 5900
Wire Wire Line
	8950 5900 8450 5900
Connection ~ 8950 5900
Wire Wire Line
	8450 5900 7950 5900
Connection ~ 8450 5900
Wire Wire Line
	7950 5900 7450 5900
Connection ~ 7950 5900
Connection ~ 7450 5900
$EndSCHEMATC
