EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 5 18
Title "Instruction ROM"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "16-bit instructions are read from ROM at the address specified by the Program Counter."
$EndDescr
$Comp
L Memory_EEPROM:GLS29EE010 U?
U 1 1 5D23BFD4
P 4500 2000
F 0 "U?" H 4800 2200 50  0000 C CNN
F 1 "GLS29EE010" H 4800 2100 50  0000 C CNN
F 2 "" H 4500 2000 50  0001 C CNN
F 3 "" H 4500 2000 50  0001 C CNN
	1    4500 2000
	-1   0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:GLS29EE010 U?
U 1 1 5D23ED7B
P 6550 2000
F 0 "U?" H 6250 2200 50  0000 C CNN
F 1 "GLS29EE010" H 6250 2100 50  0000 C CNN
F 2 "" H 6550 2000 50  0001 C CNN
F 3 "" H 6550 2000 50  0001 C CNN
	1    6550 2000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D241E73
P 4500 1000
F 0 "#PWR?" H 4500 850 50  0001 C CNN
F 1 "VCC" H 4517 1173 50  0000 C CNN
F 2 "" H 4500 1000 50  0001 C CNN
F 3 "" H 4500 1000 50  0001 C CNN
	1    4500 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1000 4500 1500
Wire Wire Line
	6550 1900 6550 1500
Wire Wire Line
	6550 1500 5500 1500
Connection ~ 4500 1500
Wire Wire Line
	4500 1500 4500 1900
$Comp
L power:GND #PWR?
U 1 1 5D2423FD
P 4500 5000
F 0 "#PWR?" H 4500 4750 50  0001 C CNN
F 1 "GND" H 4505 4827 50  0000 C CNN
F 2 "" H 4500 5000 50  0001 C CNN
F 3 "" H 4500 5000 50  0001 C CNN
	1    4500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5000 4500 4500
Wire Wire Line
	6550 4500 6550 4300
Connection ~ 4500 4500
Wire Wire Line
	4500 4500 4500 4300
Entry Wire Line
	5350 2100 5450 2000
Entry Wire Line
	5350 2200 5450 2100
Entry Wire Line
	5350 2300 5450 2200
Entry Wire Line
	5350 2400 5450 2300
Entry Wire Line
	5350 2500 5450 2400
Entry Wire Line
	5350 2600 5450 2500
Entry Wire Line
	5350 2700 5450 2600
Entry Wire Line
	5350 2800 5450 2700
Entry Wire Line
	5350 2900 5450 2800
Entry Wire Line
	5350 3000 5450 2900
Entry Wire Line
	5350 3100 5450 3000
Entry Wire Line
	5350 3200 5450 3100
Entry Wire Line
	5350 3300 5450 3200
Entry Wire Line
	5350 3400 5450 3300
Entry Wire Line
	5350 3500 5450 3400
Entry Wire Line
	5350 3600 5450 3500
Wire Wire Line
	5350 3600 5150 3600
Wire Wire Line
	5150 3500 5350 3500
Wire Wire Line
	5350 3400 5150 3400
Wire Wire Line
	5150 3300 5350 3300
Wire Wire Line
	5150 3200 5350 3200
Wire Wire Line
	5350 3100 5150 3100
Wire Wire Line
	5150 3000 5350 3000
Wire Wire Line
	5350 2900 5150 2900
Wire Wire Line
	5150 2800 5350 2800
Wire Wire Line
	5350 2700 5150 2700
Wire Wire Line
	5150 2600 5350 2600
Wire Wire Line
	5350 2500 5150 2500
Wire Wire Line
	5150 2400 5350 2400
Wire Wire Line
	5350 2300 5150 2300
Wire Wire Line
	5150 2200 5350 2200
Wire Wire Line
	5350 2100 5150 2100
Wire Wire Line
	5700 3500 5900 3500
Wire Wire Line
	5900 3400 5700 3400
Wire Wire Line
	5700 3300 5900 3300
Wire Wire Line
	5900 3200 5700 3200
Wire Wire Line
	5700 3100 5900 3100
Wire Wire Line
	5900 3000 5700 3000
Wire Wire Line
	5700 2900 5900 2900
Wire Wire Line
	5900 2800 5700 2800
Wire Wire Line
	5700 2700 5900 2700
Wire Wire Line
	5900 2600 5700 2600
Wire Wire Line
	5700 2500 5900 2500
Wire Wire Line
	5900 2400 5700 2400
Wire Wire Line
	5700 2300 5900 2300
Wire Wire Line
	5900 2200 5700 2200
Wire Wire Line
	5700 2100 5900 2100
Entry Wire Line
	5700 2100 5600 2000
Entry Wire Line
	5700 2200 5600 2100
Entry Wire Line
	5700 2300 5600 2200
Entry Wire Line
	5700 2400 5600 2300
Entry Wire Line
	5700 2500 5600 2400
Entry Wire Line
	5700 2600 5600 2500
Entry Wire Line
	5700 2700 5600 2600
Entry Wire Line
	5700 2800 5600 2700
Entry Wire Line
	5700 2900 5600 2800
Entry Wire Line
	5700 3000 5600 2900
Entry Wire Line
	5700 3100 5600 3000
Entry Wire Line
	5700 3200 5600 3100
Entry Wire Line
	5700 3300 5600 3200
Entry Wire Line
	5700 3400 5600 3300
Entry Wire Line
	5700 3500 5600 3400
Entry Wire Line
	5700 3600 5600 3500
Wire Wire Line
	5700 3600 5900 3600
Wire Bus Line
	5450 2000 5600 2000
Wire Bus Line
	5450 2000 5450 1600
Wire Bus Line
	5450 1600 1500 1600
Entry Wire Line
	1400 1700 1500 1600
Entry Wire Line
	1500 1700 1400 1800
Entry Wire Line
	1500 1800 1400 1900
Entry Wire Line
	1500 1900 1400 2000
Entry Wire Line
	1500 2000 1400 2100
Entry Wire Line
	1500 2100 1400 2200
Entry Wire Line
	1500 2200 1400 2300
Entry Wire Line
	1500 2300 1400 2400
Entry Wire Line
	1500 2400 1400 2500
Entry Wire Line
	1500 2500 1400 2600
Entry Wire Line
	1500 2600 1400 2700
Entry Wire Line
	1500 2700 1400 2800
Entry Wire Line
	1500 2800 1400 2900
Entry Wire Line
	1500 2900 1400 3000
Entry Wire Line
	1500 3000 1400 3100
Entry Wire Line
	1500 3100 1400 3200
Text GLabel 1200 1700 0    50   Input ~ 0
PC00
Text GLabel 1200 1800 0    50   Input ~ 0
PC01
Text GLabel 1200 1900 0    50   Input ~ 0
PC02
Text GLabel 1200 2000 0    50   Input ~ 0
PC03
Text GLabel 1200 2100 0    50   Input ~ 0
PC04
Text GLabel 1200 2200 0    50   Input ~ 0
PC05
Text GLabel 1200 2400 0    50   Input ~ 0
PC07
Text GLabel 1200 2500 0    50   Input ~ 0
PC08
Text GLabel 1200 2600 0    50   Input ~ 0
PC09
Text GLabel 1200 2700 0    50   Input ~ 0
PC10
Text GLabel 1200 2800 0    50   Input ~ 0
PC11
Text GLabel 1200 2900 0    50   Input ~ 0
PC12
Text GLabel 1200 3000 0    50   Input ~ 0
PC13
Text GLabel 1200 3100 0    50   Input ~ 0
PC14
Text GLabel 1200 3200 0    50   Input ~ 0
PC15
Wire Wire Line
	1200 1700 1400 1700
Wire Wire Line
	1400 1800 1200 1800
Wire Wire Line
	1200 1900 1400 1900
Wire Wire Line
	1400 2000 1200 2000
Wire Wire Line
	1200 2100 1400 2100
Wire Wire Line
	1400 2200 1200 2200
Wire Wire Line
	1400 2400 1200 2400
Wire Wire Line
	1200 2500 1400 2500
Wire Wire Line
	1400 2600 1200 2600
Wire Wire Line
	1200 2700 1400 2700
Wire Wire Line
	1400 2800 1200 2800
Wire Wire Line
	1200 2900 1400 2900
Wire Wire Line
	1400 3000 1200 3000
Wire Wire Line
	1200 3100 1400 3100
Wire Wire Line
	1400 3200 1200 3200
Wire Wire Line
	1200 2300 1400 2300
Text GLabel 1200 2300 0    50   Input ~ 0
PC06
Text Label 1400 1700 2    50   ~ 0
PC00
Text Label 1400 1800 2    50   ~ 0
PC01
Text Label 1400 1900 2    50   ~ 0
PC02
Text Label 1400 2000 2    50   ~ 0
PC03
Text Label 1400 2100 2    50   ~ 0
PC04
Text Label 1400 2200 2    50   ~ 0
PC05
Text Label 1400 2300 2    50   ~ 0
PC06
Text Label 1400 2400 2    50   ~ 0
PC07
Text Label 1400 2500 2    50   ~ 0
PC08
Text Label 1400 2600 2    50   ~ 0
PC09
Text Label 1400 2700 2    50   ~ 0
PC10
Text Label 1400 2800 2    50   ~ 0
PC11
Text Label 1400 2900 2    50   ~ 0
PC12
Text Label 1400 3000 2    50   ~ 0
PC13
Text Label 1400 3100 2    50   ~ 0
PC14
Text Label 1400 3200 2    50   ~ 0
PC15
Text Label 5350 2100 2    50   ~ 0
PC00
Text Label 5350 2200 2    50   ~ 0
PC01
Text Label 5350 2300 2    50   ~ 0
PC02
Text Label 5350 2400 2    50   ~ 0
PC03
Text Label 5350 2500 2    50   ~ 0
PC04
Text Label 5350 2600 2    50   ~ 0
PC05
Text Label 5350 2700 2    50   ~ 0
PC06
Text Label 5350 2800 2    50   ~ 0
PC07
Text Label 5350 2900 2    50   ~ 0
PC08
Text Label 5350 3000 2    50   ~ 0
PC09
Text Label 5350 3100 2    50   ~ 0
PC10
Text Label 5350 3200 2    50   ~ 0
PC11
Text Label 5350 3300 2    50   ~ 0
PC12
Text Label 5350 3400 2    50   ~ 0
PC13
Text Label 5350 3500 2    50   ~ 0
PC14
Text Label 5350 3600 2    50   ~ 0
PC15
Connection ~ 5450 2000
Wire Wire Line
	5150 3900 5500 3900
Wire Wire Line
	5900 4000 5600 4000
Wire Wire Line
	5150 4100 5700 4100
Wire Wire Line
	5600 4000 5600 4500
Connection ~ 5600 4000
Wire Wire Line
	5600 4000 5150 4000
Connection ~ 5600 4500
Wire Wire Line
	5600 4500 5700 4500
Wire Wire Line
	5700 4100 5700 4500
Connection ~ 5700 4100
Wire Wire Line
	5700 4100 5900 4100
Connection ~ 5700 4500
Wire Wire Line
	5700 4500 6550 4500
Wire Wire Line
	5500 3900 5500 1500
Connection ~ 5500 3900
Wire Wire Line
	5500 3900 5900 3900
Connection ~ 5500 1500
Wire Wire Line
	5500 1500 4500 1500
Wire Wire Line
	5450 4500 5600 4500
Wire Wire Line
	4500 4500 5450 4500
Connection ~ 5450 3700
Wire Wire Line
	5900 3700 5450 3700
Connection ~ 5450 4500
Wire Wire Line
	5150 3700 5450 3700
Wire Wire Line
	5450 3700 5450 4500
Text Label 5900 2100 2    50   ~ 0
PC00
Text Label 5900 2200 2    50   ~ 0
PC01
Text Label 5900 2300 2    50   ~ 0
PC02
Text Label 5900 2400 2    50   ~ 0
PC03
Text Label 5900 2500 2    50   ~ 0
PC04
Text Label 5900 2600 2    50   ~ 0
PC05
Text Label 5900 2700 2    50   ~ 0
PC06
Text Label 5900 2800 2    50   ~ 0
PC07
Text Label 5900 2900 2    50   ~ 0
PC08
Text Label 5900 3000 2    50   ~ 0
PC09
Text Label 5900 3100 2    50   ~ 0
PC10
Text Label 5900 3200 2    50   ~ 0
PC11
Text Label 5900 3300 2    50   ~ 0
PC12
Text Label 5900 3400 2    50   ~ 0
PC13
Text Label 5900 3500 2    50   ~ 0
PC14
Text Label 5900 3600 2    50   ~ 0
PC15
Entry Wire Line
	7450 2100 7550 2200
Entry Wire Line
	7450 2200 7550 2300
Entry Wire Line
	7450 2300 7550 2400
Entry Wire Line
	7450 2400 7550 2500
Entry Wire Line
	7450 2500 7550 2600
Entry Wire Line
	7450 2600 7550 2700
Entry Wire Line
	7450 2700 7550 2800
Entry Wire Line
	7450 2800 7550 2900
Entry Wire Line
	3500 2100 3600 2200
Entry Wire Line
	3500 2200 3600 2300
Entry Wire Line
	3500 2300 3600 2400
Entry Wire Line
	3500 2400 3600 2500
Entry Wire Line
	3500 2500 3600 2600
Entry Wire Line
	3500 2600 3600 2700
Entry Wire Line
	3500 2700 3600 2800
Wire Wire Line
	3900 2200 3600 2200
Wire Wire Line
	3600 2300 3900 2300
Wire Wire Line
	3900 2400 3600 2400
Wire Wire Line
	3600 2500 3900 2500
Wire Wire Line
	3900 2600 3600 2600
Wire Wire Line
	3600 2700 3900 2700
Wire Wire Line
	3900 2800 3600 2800
Wire Wire Line
	7150 2100 7450 2100
Wire Wire Line
	7450 2200 7150 2200
Wire Wire Line
	7150 2300 7450 2300
Wire Wire Line
	7450 2400 7150 2400
Wire Wire Line
	7150 2500 7450 2500
Wire Wire Line
	7450 2600 7150 2600
Wire Wire Line
	7150 2700 7450 2700
Wire Wire Line
	7450 2800 7150 2800
Text Label 7450 2100 2    50   ~ 0
IROM08
Text Label 7450 2200 2    50   ~ 0
IROM09
Wire Wire Line
	3600 2100 3900 2100
Entry Wire Line
	3500 2000 3600 2100
Text Label 3900 2100 2    50   ~ 0
IROM00
Text Label 3900 2200 2    50   ~ 0
IROM01
Text Label 3900 2300 2    50   ~ 0
IROM02
Text Label 3900 2400 2    50   ~ 0
IROM03
Text Label 3900 2500 2    50   ~ 0
IROM04
Text Label 3900 2600 2    50   ~ 0
IROM05
Text Label 3900 2700 2    50   ~ 0
IROM06
Text Label 3900 2800 2    50   ~ 0
IROM07
Text Label 7450 2300 2    50   ~ 0
IROM10
Text Label 7450 2400 2    50   ~ 0
IROM11
Text Label 7450 2500 2    50   ~ 0
IROM12
Text Label 7450 2600 2    50   ~ 0
IROM13
Text Label 7450 2700 2    50   ~ 0
IROM14
Text Label 7450 2800 2    50   ~ 0
IROM15
Wire Bus Line
	3500 1700 7550 1700
Text GLabel 8900 1800 2    50   Output ~ 0
IROM00
Text GLabel 8900 1900 2    50   Output ~ 0
IROM01
Text GLabel 8900 2000 2    50   Output ~ 0
IROM02
Text GLabel 8900 2100 2    50   Output ~ 0
IROM03
Text GLabel 8900 2200 2    50   Output ~ 0
IROM04
Text GLabel 8900 2300 2    50   Output ~ 0
IROM05
Text GLabel 8900 2400 2    50   Output ~ 0
IROM06
Text GLabel 8900 2500 2    50   Output ~ 0
IROM07
Text GLabel 8900 2600 2    50   Output ~ 0
IROM08
Text GLabel 8900 2700 2    50   Output ~ 0
IROM09
Text GLabel 8900 2800 2    50   Output ~ 0
IROM10
Text GLabel 8900 2900 2    50   Output ~ 0
IROM11
Text GLabel 8900 3000 2    50   Output ~ 0
IROM12
Text GLabel 8900 3100 2    50   Output ~ 0
IROM13
Text GLabel 8900 3200 2    50   Output ~ 0
IROM14
Text GLabel 8900 3300 2    50   Output ~ 0
IROM15
Entry Wire Line
	8450 1800 8550 1900
Entry Wire Line
	8450 1900 8550 2000
Entry Wire Line
	8450 2000 8550 2100
Entry Wire Line
	8450 2100 8550 2200
Entry Wire Line
	8450 2200 8550 2300
Entry Wire Line
	8450 2300 8550 2400
Entry Wire Line
	8450 2400 8550 2500
Entry Wire Line
	8450 2500 8550 2600
Entry Wire Line
	8450 2600 8550 2700
Entry Wire Line
	8450 2700 8550 2800
Entry Wire Line
	8450 2800 8550 2900
Entry Wire Line
	8450 2900 8550 3000
Entry Wire Line
	8450 3000 8550 3100
Entry Wire Line
	8450 3100 8550 3200
Entry Wire Line
	8450 3200 8550 3300
Wire Wire Line
	8900 1900 8550 1900
Wire Wire Line
	8550 2000 8900 2000
Wire Wire Line
	8900 2100 8550 2100
Wire Wire Line
	8550 2200 8900 2200
Wire Wire Line
	8900 2300 8550 2300
Wire Wire Line
	8550 2400 8900 2400
Wire Wire Line
	8900 2500 8550 2500
Wire Wire Line
	8550 2600 8900 2600
Wire Wire Line
	8900 2700 8550 2700
Wire Wire Line
	8550 2800 8900 2800
Wire Wire Line
	8900 2900 8550 2900
Wire Wire Line
	8550 3000 8900 3000
Wire Wire Line
	8900 3100 8550 3100
Wire Wire Line
	8550 3200 8900 3200
Wire Wire Line
	8900 3300 8550 3300
Text Label 8850 1800 2    50   ~ 0
IROM00
Wire Wire Line
	8550 1800 8900 1800
Entry Wire Line
	8450 1700 8550 1800
Text Label 8850 1900 2    50   ~ 0
IROM01
Text Label 8850 2000 2    50   ~ 0
IROM02
Text Label 8850 2100 2    50   ~ 0
IROM03
Text Label 8850 2200 2    50   ~ 0
IROM04
Text Label 8850 2300 2    50   ~ 0
IROM05
Text Label 8850 2400 2    50   ~ 0
IROM06
Text Label 8850 2500 2    50   ~ 0
IROM07
Text Label 8850 2600 2    50   ~ 0
IROM08
Text Label 8850 2700 2    50   ~ 0
IROM09
Text Label 8850 2800 2    50   ~ 0
IROM10
Text Label 8850 2900 2    50   ~ 0
IROM11
Text Label 8850 3000 2    50   ~ 0
IROM12
Text Label 8850 3100 2    50   ~ 0
IROM13
Text Label 8850 3200 2    50   ~ 0
IROM14
Text Label 8850 3300 2    50   ~ 0
IROM15
Wire Bus Line
	7550 1700 8450 1700
Connection ~ 7550 1700
Wire Bus Line
	3500 1700 3500 2700
Wire Bus Line
	7550 1700 7550 2900
Wire Bus Line
	5450 2000 5450 3500
Wire Bus Line
	5600 2000 5600 3500
Wire Bus Line
	1500 1600 1500 3100
Wire Bus Line
	8450 1700 8450 3200
$EndSCHEMATC
