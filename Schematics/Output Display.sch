EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 9 21
Title "Output Display"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Display_Character:CC56-12CGKWA U?
U 1 1 5D2A69C6
P 9100 2600
F 0 "U?" H 9100 3267 50  0000 C CNN
F 1 "CC56-12CGKWA" H 9100 3176 50  0000 C CNN
F 2 "Display_7Segment:CA56-12CGKWA" H 9100 2000 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/CC56-12CGKWA(Ver.8A).pdf" H 8670 2630 50  0001 C CNN
	1    9100 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U?
U 1 1 5D2AB003
P 3300 3800
F 0 "U?" H 3300 4167 50  0000 C CNN
F 1 "74LS393" H 3300 4076 50  0000 C CNN
F 2 "" H 3300 3800 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 3300 3800 50  0001 C CNN
	1    3300 3800
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 5D2AC6ED
P 6800 3200
F 0 "U?" H 6500 4400 50  0000 C CNN
F 1 "28C256" H 6500 4300 50  0000 C CNN
F 2 "" H 6800 3200 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 6800 3200 50  0001 C CNN
	1    6800 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D2B5346
P 2300 4100
F 0 "R?" H 2368 4146 50  0000 L CNN
F 1 "1kΩ" H 2368 4055 50  0000 L CNN
F 2 "" H 2300 4100 50  0001 C CNN
F 3 "~" H 2300 4100 50  0001 C CNN
	1    2300 4100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D2B6F61
P 1700 1800
F 0 "#PWR?" H 1700 1650 50  0001 C CNN
F 1 "VCC" H 1717 1973 50  0000 C CNN
F 2 "" H 1700 1800 50  0001 C CNN
F 3 "" H 1700 1800 50  0001 C CNN
	1    1700 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D2B78FC
P 1700 6450
F 0 "#PWR?" H 1700 6200 50  0001 C CNN
F 1 "GND" H 1705 6277 50  0000 C CNN
F 2 "" H 1700 6450 50  0001 C CNN
F 3 "" H 1700 6450 50  0001 C CNN
	1    1700 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4400 1700 4700
Connection ~ 1700 5950
Wire Wire Line
	1700 5950 1700 6450
Connection ~ 1700 1900
Wire Wire Line
	1700 1900 1700 1800
Wire Wire Line
	2800 4000 2800 5950
Connection ~ 2800 5950
Wire Wire Line
	2800 5950 1700 5950
Wire Wire Line
	1700 1900 3900 1900
Wire Wire Line
	800  4700 1000 4700
Connection ~ 1700 4700
Wire Wire Line
	1700 4700 1700 5950
Wire Wire Line
	1200 4200 700  4200
Wire Wire Line
	700  4200 700  3600
Wire Wire Line
	700  3600 1700 3600
Connection ~ 1700 3600
Wire Wire Line
	1700 3600 1700 1900
$Comp
L Device:C_Small C?
U 1 1 5D2B5F4F
P 800 4550
F 0 "C?" H 900 4500 50  0000 L CNN
F 1 "10nF" H 900 4600 50  0000 L CNN
F 2 "" H 800 4550 50  0001 C CNN
F 3 "~" H 800 4550 50  0001 C CNN
	1    800  4550
	-1   0    0    1   
$EndComp
$Comp
L Timer:LM555 U?
U 1 1 5D2ABE08
P 1700 4000
F 0 "U?" H 1500 4550 50  0000 C CNN
F 1 "LM555" H 1500 4450 50  0000 C CNN
F 2 "" H 1700 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 1700 4000 50  0001 C CNN
	1    1700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  4700 800  4650
Wire Wire Line
	1200 4000 800  4000
Wire Wire Line
	800  4000 800  4450
Wire Wire Line
	1200 3800 1000 3800
Connection ~ 1000 4700
Wire Wire Line
	1000 4700 1700 4700
Wire Wire Line
	2300 4000 2200 4000
Wire Wire Line
	2300 4200 2200 4200
Wire Wire Line
	2200 3800 2200 3700
Wire Wire Line
	1000 4650 1000 4700
$Comp
L Device:C_Small C?
U 1 1 5D2B69DD
P 1000 4550
F 0 "C?" H 1092 4596 50  0000 L CNN
F 1 "10nF" H 1092 4505 50  0000 L CNN
F 2 "" H 1000 4550 50  0001 C CNN
F 3 "~" H 1000 4550 50  0001 C CNN
	1    1000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4200 2300 4450
Wire Wire Line
	2300 4450 1000 4450
Wire Wire Line
	1000 3800 1000 4450
Connection ~ 2300 4200
Connection ~ 1000 4450
Connection ~ 2300 4000
Wire Wire Line
	2300 3600 1700 3600
Wire Wire Line
	4050 3700 3800 3700
Wire Wire Line
	3900 4000 3900 3900
Wire Wire Line
	3900 3900 3800 3900
Wire Wire Line
	3800 4000 3900 4000
Wire Wire Line
	3900 3900 3900 1900
Connection ~ 3900 3900
Wire Wire Line
	4050 3900 4050 3700
Wire Wire Line
	4350 3800 3800 3800
Wire Wire Line
	4350 3900 4050 3900
$Comp
L 74xx:74LS139 U?
U 1 1 5D2AA07C
P 4850 3900
F 0 "U?" H 4850 4267 50  0000 C CNN
F 1 "74LS139" H 4850 4176 50  0000 C CNN
F 2 "" H 4850 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS139" H 4850 3900 50  0001 C CNN
	1    4850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5950 4350 5950
Wire Wire Line
	4350 4100 4350 5950
Wire Wire Line
	5350 4100 5350 4550
Wire Wire Line
	5350 4000 5400 4000
Wire Wire Line
	5400 4000 5400 4500
Wire Wire Line
	5450 4450 5450 3900
Wire Wire Line
	5450 3900 5350 3900
Wire Wire Line
	5350 3800 5500 3800
Wire Wire Line
	5500 3800 5500 4400
Connection ~ 4350 5950
Wire Wire Line
	6800 2100 6800 1900
Wire Wire Line
	6800 1900 5550 1900
Connection ~ 3900 1900
Wire Wire Line
	6400 4100 6400 5950
Wire Wire Line
	6400 5950 6300 5950
Wire Wire Line
	6400 4000 6300 4000
Wire Wire Line
	6300 4000 6300 5950
Connection ~ 6300 5950
Wire Wire Line
	6300 5950 6200 5950
Wire Wire Line
	6400 3900 5550 3900
Wire Wire Line
	5550 3900 5550 1900
Connection ~ 5550 1900
Wire Wire Line
	5550 1900 3900 1900
Text GLabel 5900 2300 0    50   Input ~ 0
Out0
Text GLabel 5900 2400 0    50   Input ~ 0
Out1
Text GLabel 5900 2500 0    50   Input ~ 0
Out2
Text GLabel 5900 2600 0    50   Input ~ 0
Out3
Text GLabel 5900 2700 0    50   Input ~ 0
Out4
Text GLabel 5900 2800 0    50   Input ~ 0
Out5
Text GLabel 5900 2900 0    50   Input ~ 0
Out6
Text GLabel 5900 3000 0    50   Input ~ 0
Out7
Wire Wire Line
	5900 2300 6400 2300
Wire Wire Line
	6400 2400 5900 2400
Wire Wire Line
	5900 2500 6400 2500
Wire Wire Line
	6400 2600 5900 2600
Wire Wire Line
	5900 2700 6400 2700
Wire Wire Line
	6400 2800 5900 2800
Wire Wire Line
	5900 2900 6400 2900
Wire Wire Line
	6400 3000 5900 3000
Wire Wire Line
	6400 3700 6200 3700
Wire Wire Line
	6200 3700 6200 5950
Connection ~ 6200 5950
Wire Wire Line
	6400 3600 6200 3600
Wire Wire Line
	6200 3600 6200 3700
Connection ~ 6200 3700
Wire Wire Line
	6400 3500 6200 3500
Wire Wire Line
	6200 3500 6200 3600
Connection ~ 6200 3600
Wire Wire Line
	6400 3400 6200 3400
Wire Wire Line
	6200 3400 6200 3500
Connection ~ 6200 3500
Wire Wire Line
	6400 3300 6200 3300
Wire Wire Line
	6200 3300 6200 3400
Connection ~ 6200 3400
Wire Wire Line
	6400 3200 6200 3200
Wire Wire Line
	6200 3200 6200 3300
Connection ~ 6200 3300
Wire Wire Line
	6400 3100 6200 3100
Wire Wire Line
	6200 3100 6200 3200
Connection ~ 6200 3200
Wire Wire Line
	5500 4400 10250 4400
Wire Wire Line
	4350 5950 6200 5950
Wire Wire Line
	6800 4300 6800 5950
Wire Wire Line
	6800 5950 6400 5950
Connection ~ 6400 5950
Wire Wire Line
	7200 3000 8000 3000
Wire Wire Line
	7200 2300 7650 2300
Wire Wire Line
	7650 2300 7650 2900
Wire Wire Line
	7650 2900 8000 2900
Wire Wire Line
	7200 2400 7700 2400
Wire Wire Line
	7700 2400 7700 2800
Wire Wire Line
	7700 2800 8000 2800
Wire Wire Line
	7750 2500 7750 2700
Wire Wire Line
	7750 2700 8000 2700
Wire Wire Line
	7200 2600 8000 2600
Wire Wire Line
	7200 2700 7500 2700
Wire Wire Line
	7500 2700 7500 2150
Wire Wire Line
	7200 2800 7450 2800
Wire Wire Line
	7450 2800 7450 2100
Wire Wire Line
	7450 2100 7900 2100
Wire Wire Line
	7900 2100 7900 2400
Wire Wire Line
	7900 2400 8000 2400
Wire Wire Line
	7400 2050 7400 2900
Wire Wire Line
	7400 2900 7200 2900
Wire Wire Line
	7200 2500 7750 2500
Wire Wire Line
	7850 2500 8000 2500
Wire Wire Line
	7500 2150 7850 2150
Wire Wire Line
	7850 2150 7850 2500
Wire Wire Line
	8000 2300 7950 2300
Wire Wire Line
	7950 2300 7950 2050
Wire Wire Line
	7950 2050 7400 2050
Wire Wire Line
	10400 4550 10400 2700
Wire Wire Line
	10200 2700 10400 2700
Wire Wire Line
	5350 4550 10400 4550
Wire Wire Line
	10350 2800 10350 4500
Wire Wire Line
	10200 2800 10350 2800
Wire Wire Line
	5400 4500 10350 4500
Wire Wire Line
	10300 4450 10300 2900
Wire Wire Line
	10200 2900 10300 2900
Wire Wire Line
	5450 4450 10300 4450
Wire Wire Line
	10200 3000 10250 3000
Wire Wire Line
	10250 3000 10250 4400
Wire Wire Line
	2200 3700 2800 3700
$Comp
L Device:R_Small R?
U 1 1 5D2B4959
P 2300 3850
F 0 "R?" H 2368 3896 50  0000 L CNN
F 1 "1kΩ" H 2368 3805 50  0000 L CNN
F 2 "" H 2300 3850 50  0001 C CNN
F 3 "~" H 2300 3850 50  0001 C CNN
	1    2300 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3950 2300 4000
Wire Wire Line
	2300 3600 2300 3750
$EndSCHEMATC
