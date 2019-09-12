EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 19 19
Title "Speed Control"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 "An array of LEDs indicates the selected speed."
Comment3 "Convert the output to a three-bit number which selects the clock rate."
Comment4 "Form a Flash ADC from an array of voltage comparators."
$EndDescr
$Comp
L Comparator:LM393 U?
U 1 1 5D7A1D4F
P 9950 2000
F 0 "U?" V 10000 2200 50  0000 C CNN
F 1 "LM393" V 10100 2200 50  0000 C CNN
F 2 "" H 9950 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 9950 2000 50  0001 C CNN
	1    9950 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D7A33A0
P 10450 2000
F 0 "R?" H 10300 1950 50  0000 C CNN
F 1 "4.7k" H 10300 2050 50  0000 C CNN
F 2 "" V 10380 2000 50  0001 C CNN
F 3 "~" H 10450 2000 50  0001 C CNN
	1    10450 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	10450 2150 10450 2400
Wire Wire Line
	10450 2400 9950 2400
Wire Wire Line
	9950 2400 9950 2300
Wire Wire Line
	10050 1700 10050 1600
Wire Wire Line
	10050 1600 10450 1600
Wire Wire Line
	10450 1600 10450 1850
$Comp
L Comparator:LM393 U?
U 1 1 5D7A78E6
P 8750 2000
F 0 "U?" V 8800 2200 50  0000 C CNN
F 1 "LM393" V 8900 2200 50  0000 C CNN
F 2 "" H 8750 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 8750 2000 50  0001 C CNN
	1    8750 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D7A807B
P 9250 2000
F 0 "R?" H 9100 1950 50  0000 C CNN
F 1 "4.7k" H 9100 2050 50  0000 C CNN
F 2 "" V 9180 2000 50  0001 C CNN
F 3 "~" H 9250 2000 50  0001 C CNN
	1    9250 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 2300 8750 2400
Wire Wire Line
	8750 2400 9250 2400
Wire Wire Line
	9250 2400 9250 2150
Wire Wire Line
	8850 1700 8850 1600
$Comp
L Device:R R?
U 1 1 5D7A8FDE
P 9500 1600
F 0 "R?" V 9700 1650 50  0000 R CNN
F 1 "1k" V 9600 1650 50  0000 R CNN
F 2 "" V 9430 1600 50  0001 C CNN
F 3 "~" H 9500 1600 50  0001 C CNN
	1    9500 1600
	0    -1   -1   0   
$EndComp
Connection ~ 10050 1600
Wire Wire Line
	8850 1600 9250 1600
Wire Wire Line
	9250 1600 9250 1850
Wire Wire Line
	9250 1600 9350 1600
Connection ~ 9250 1600
Wire Wire Line
	10050 1600 9650 1600
$Comp
L Device:R R?
U 1 1 5D7B86FB
P 8050 2000
F 0 "R?" H 7900 1950 50  0000 C CNN
F 1 "4.7k" H 7900 2050 50  0000 C CNN
F 2 "" V 7980 2000 50  0001 C CNN
F 3 "~" H 8050 2000 50  0001 C CNN
	1    8050 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7550 2300 7550 2400
Wire Wire Line
	7550 2400 8050 2400
Wire Wire Line
	8050 2400 8050 2150
Wire Wire Line
	7650 1700 7650 1600
$Comp
L Device:R R?
U 1 1 5D7B8705
P 8300 1600
F 0 "R?" V 8500 1650 50  0000 R CNN
F 1 "1k" V 8400 1650 50  0000 R CNN
F 2 "" V 8230 1600 50  0001 C CNN
F 3 "~" H 8300 1600 50  0001 C CNN
	1    8300 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 1600 8050 1600
Wire Wire Line
	8050 1600 8050 1850
Wire Wire Line
	8050 1600 8150 1600
Connection ~ 8050 1600
Wire Wire Line
	8850 1600 8450 1600
Connection ~ 8850 1600
$Comp
L Comparator:LM393 U?
U 1 1 5D7BAD1B
P 6350 2000
F 0 "U?" V 6400 2200 50  0000 C CNN
F 1 "LM393" V 6500 2200 50  0000 C CNN
F 2 "" H 6350 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 6350 2000 50  0001 C CNN
	1    6350 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D7BAD21
P 6850 2000
F 0 "R?" H 6700 1950 50  0000 C CNN
F 1 "4.7k" H 6700 2050 50  0000 C CNN
F 2 "" V 6780 2000 50  0001 C CNN
F 3 "~" H 6850 2000 50  0001 C CNN
	1    6850 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 2300 6350 2400
Wire Wire Line
	6350 2400 6850 2400
Wire Wire Line
	6850 2400 6850 2150
Wire Wire Line
	6450 1700 6450 1600
$Comp
L Device:R R?
U 1 1 5D7BAD2B
P 7100 1600
F 0 "R?" V 7300 1650 50  0000 R CNN
F 1 "1k" V 7200 1650 50  0000 R CNN
F 2 "" V 7030 1600 50  0001 C CNN
F 3 "~" H 7100 1600 50  0001 C CNN
	1    7100 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 1600 6850 1600
Wire Wire Line
	6850 1600 6850 1850
Wire Wire Line
	6850 1600 6950 1600
Connection ~ 6850 1600
$Comp
L Comparator:LM393 U?
U 1 1 5D7BDFA0
P 5200 2000
F 0 "U?" V 5250 2200 50  0000 C CNN
F 1 "LM393" V 5350 2200 50  0000 C CNN
F 2 "" H 5200 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 5200 2000 50  0001 C CNN
	1    5200 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D7BDFA6
P 5700 2000
F 0 "R?" H 5550 1950 50  0000 C CNN
F 1 "4.7k" H 5550 2050 50  0000 C CNN
F 2 "" V 5630 2000 50  0001 C CNN
F 3 "~" H 5700 2000 50  0001 C CNN
	1    5700 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 2300 5200 2400
Wire Wire Line
	5200 2400 5700 2400
Wire Wire Line
	5700 2400 5700 2150
Wire Wire Line
	5300 1700 5300 1600
$Comp
L Device:R R?
U 1 1 5D7BDFB0
P 5950 1600
F 0 "R?" V 6150 1650 50  0000 R CNN
F 1 "1k" V 6050 1650 50  0000 R CNN
F 2 "" V 5880 1600 50  0001 C CNN
F 3 "~" H 5950 1600 50  0001 C CNN
	1    5950 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 1600 5700 1600
Wire Wire Line
	5700 1600 5700 1850
Wire Wire Line
	5700 1600 5800 1600
Connection ~ 5700 1600
$Comp
L Comparator:LM393 U?
U 1 1 5D7C00DB
P 4050 2000
F 0 "U?" V 4100 2200 50  0000 C CNN
F 1 "LM393" V 4200 2200 50  0000 C CNN
F 2 "" H 4050 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 4050 2000 50  0001 C CNN
	1    4050 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D7C00E1
P 4550 2000
F 0 "R?" H 4400 1950 50  0000 C CNN
F 1 "4.7k" H 4400 2050 50  0000 C CNN
F 2 "" V 4480 2000 50  0001 C CNN
F 3 "~" H 4550 2000 50  0001 C CNN
	1    4550 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 2300 4050 2400
Wire Wire Line
	4050 2400 4550 2400
Wire Wire Line
	4550 2400 4550 2150
Wire Wire Line
	4150 1700 4150 1600
$Comp
L Device:R R?
U 1 1 5D7C00EB
P 4800 1600
F 0 "R?" V 5000 1650 50  0000 R CNN
F 1 "1k" V 4900 1650 50  0000 R CNN
F 2 "" V 4730 1600 50  0001 C CNN
F 3 "~" H 4800 1600 50  0001 C CNN
	1    4800 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 1600 4550 1600
Wire Wire Line
	4550 1600 4550 1850
Wire Wire Line
	4550 1600 4650 1600
Connection ~ 4550 1600
$Comp
L Comparator:LM393 U?
U 1 1 5D7E9B37
P 2900 2000
F 0 "U?" V 2950 2200 50  0000 C CNN
F 1 "LM393" V 3050 2200 50  0000 C CNN
F 2 "" H 2900 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 2900 2000 50  0001 C CNN
	1    2900 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D7E9B3D
P 3400 2000
F 0 "R?" H 3250 1950 50  0000 C CNN
F 1 "4.7k" H 3250 2050 50  0000 C CNN
F 2 "" V 3330 2000 50  0001 C CNN
F 3 "~" H 3400 2000 50  0001 C CNN
	1    3400 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 2300 2900 2400
Wire Wire Line
	2900 2400 3400 2400
Wire Wire Line
	3400 2400 3400 2150
Wire Wire Line
	3000 1700 3000 1600
$Comp
L Device:R R?
U 1 1 5D7E9B47
P 3650 1600
F 0 "R?" V 3850 1650 50  0000 R CNN
F 1 "1k" V 3750 1650 50  0000 R CNN
F 2 "" V 3580 1600 50  0001 C CNN
F 3 "~" H 3650 1600 50  0001 C CNN
	1    3650 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 1600 3400 1600
Wire Wire Line
	3400 1600 3400 1850
Wire Wire Line
	3400 1600 3500 1600
Connection ~ 3400 1600
Wire Wire Line
	3800 1600 4150 1600
Connection ~ 4150 1600
Wire Wire Line
	4950 1600 5300 1600
Connection ~ 5300 1600
Wire Wire Line
	6100 1600 6450 1600
Connection ~ 6450 1600
Wire Wire Line
	7250 1600 7650 1600
Connection ~ 7650 1600
$Comp
L Comparator:LM393 U?
U 1 1 5D7B86F5
P 7550 2000
F 0 "U?" V 7600 2200 50  0000 C CNN
F 1 "LM393" V 7700 2200 50  0000 C CNN
F 2 "" H 7550 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 7550 2000 50  0001 C CNN
	1    7550 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 1700 3950 1250
Connection ~ 3950 1250
Wire Wire Line
	5100 1700 5100 1250
Connection ~ 5100 1250
Wire Wire Line
	5100 1250 3950 1250
Wire Wire Line
	6250 1700 6250 1250
Wire Wire Line
	5100 1250 6250 1250
Connection ~ 6250 1250
Wire Wire Line
	6250 1250 7450 1250
Wire Wire Line
	7450 1700 7450 1250
Connection ~ 7450 1250
Wire Wire Line
	7450 1250 8650 1250
Wire Wire Line
	8650 1700 8650 1250
Connection ~ 8650 1250
Wire Wire Line
	9850 1700 9850 1250
Wire Wire Line
	8650 1250 9850 1250
$Comp
L Device:R R?
U 1 1 5D82D23E
P 2400 1600
F 0 "R?" V 2600 1650 50  0000 R CNN
F 1 "1k" V 2500 1650 50  0000 R CNN
F 2 "" V 2330 1600 50  0001 C CNN
F 3 "~" H 2400 1600 50  0001 C CNN
	1    2400 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 1600 2550 1600
Connection ~ 3000 1600
$Comp
L power:GND #PWR?
U 1 1 5D832C07
P 1850 1750
F 0 "#PWR?" H 1850 1500 50  0001 C CNN
F 1 "GND" H 1855 1577 50  0000 C CNN
F 2 "" H 1850 1750 50  0001 C CNN
F 3 "" H 1850 1750 50  0001 C CNN
	1    1850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1750 1850 1600
Wire Wire Line
	1850 1600 2250 1600
Wire Wire Line
	2800 1250 3950 1250
$Comp
L Device:R_POT RV?
U 1 1 5D839402
P 1850 1250
F 0 "RV?" H 1781 1296 50  0000 R CNN
F 1 "R_POT" H 1781 1205 50  0000 R CNN
F 2 "" H 1850 1250 50  0001 C CNN
F 3 "~" H 1850 1250 50  0001 C CNN
	1    1850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1400 1850 1600
Connection ~ 1850 1600
Wire Wire Line
	2000 1250 2800 1250
Connection ~ 2800 1250
Wire Wire Line
	2800 1250 2800 1700
$Comp
L Device:LED D?
U 1 1 5D854400
P 600 4700
F 0 "D?" V 639 4583 50  0000 R CNN
F 1 "LED" V 548 4583 50  0000 R CNN
F 2 "" H 600 4700 50  0001 C CNN
F 3 "~" H 600 4700 50  0001 C CNN
	1    600  4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D85869E
P 950 4700
F 0 "D?" V 989 4583 50  0000 R CNN
F 1 "LED" V 898 4583 50  0000 R CNN
F 2 "" H 950 4700 50  0001 C CNN
F 3 "~" H 950 4700 50  0001 C CNN
	1    950  4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D858C14
P 1300 4700
F 0 "D?" V 1339 4583 50  0000 R CNN
F 1 "LED" V 1248 4583 50  0000 R CNN
F 2 "" H 1300 4700 50  0001 C CNN
F 3 "~" H 1300 4700 50  0001 C CNN
	1    1300 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D8592E6
P 1650 4700
F 0 "D?" V 1689 4583 50  0000 R CNN
F 1 "LED" V 1598 4583 50  0000 R CNN
F 2 "" H 1650 4700 50  0001 C CNN
F 3 "~" H 1650 4700 50  0001 C CNN
	1    1650 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859B4E
P 2000 4700
F 0 "D?" V 2039 4583 50  0000 R CNN
F 1 "LED" V 1948 4583 50  0000 R CNN
F 2 "" H 2000 4700 50  0001 C CNN
F 3 "~" H 2000 4700 50  0001 C CNN
	1    2000 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D85A417
P 2350 4700
F 0 "D?" V 2389 4583 50  0000 R CNN
F 1 "LED" V 2298 4583 50  0000 R CNN
F 2 "" H 2350 4700 50  0001 C CNN
F 3 "~" H 2350 4700 50  0001 C CNN
	1    2350 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D85A970
P 2700 4700
F 0 "D?" V 2739 4583 50  0000 R CNN
F 1 "LED" V 2648 4583 50  0000 R CNN
F 2 "" H 2700 4700 50  0001 C CNN
F 3 "~" H 2700 4700 50  0001 C CNN
	1    2700 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D866FC7
P 600 5100
F 0 "#PWR?" H 600 4850 50  0001 C CNN
F 1 "GND" H 605 4927 50  0000 C CNN
F 2 "" H 600 5100 50  0001 C CNN
F 3 "" H 600 5100 50  0001 C CNN
	1    600  5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  4850 600  5050
Wire Wire Line
	600  5050 950  5050
Wire Wire Line
	2700 5050 2700 4850
Connection ~ 600  5050
Wire Wire Line
	600  5050 600  5100
Wire Wire Line
	2350 4850 2350 5050
Connection ~ 2350 5050
Wire Wire Line
	2350 5050 2700 5050
Wire Wire Line
	2000 4850 2000 5050
Connection ~ 2000 5050
Wire Wire Line
	2000 5050 2350 5050
Wire Wire Line
	1650 4850 1650 5050
Connection ~ 1650 5050
Wire Wire Line
	1650 5050 2000 5050
Wire Wire Line
	1300 4850 1300 5050
Connection ~ 1300 5050
Wire Wire Line
	1300 5050 1650 5050
Wire Wire Line
	950  4850 950  5050
Connection ~ 950  5050
Wire Wire Line
	950  5050 1300 5050
$Comp
L Memory_EEPROM:GLS29EE010 U?
U 1 1 5D87E8A6
P 5150 5000
AR Path="/5D2C0AA0/5D87E8A6" Ref="U?"  Part="1" 
AR Path="/5D79C284/5D87E8A6" Ref="U?"  Part="1" 
F 0 "U?" V 5050 3950 50  0000 C CNN
F 1 "GLS29EE010" V 5150 3950 50  0000 C CNN
F 2 "" H 5150 5000 50  0001 C CNN
F 3 "" H 5150 5000 50  0001 C CNN
	1    5150 5000
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8893BB
P 7600 6150
F 0 "#PWR?" H 7600 5900 50  0001 C CNN
F 1 "GND" H 7605 5977 50  0000 C CNN
F 2 "" H 7600 6150 50  0001 C CNN
F 3 "" H 7600 6150 50  0001 C CNN
	1    7600 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5000 7600 5000
Wire Wire Line
	7600 5000 7600 5700
Wire Wire Line
	7250 4350 7250 4250
Wire Wire Line
	7250 4250 7600 4250
Wire Wire Line
	7600 4250 7600 5000
Connection ~ 7600 5000
Wire Wire Line
	7250 4250 7150 4250
Wire Wire Line
	7150 4250 7150 4350
Connection ~ 7250 4250
$Comp
L power:VCC #PWR?
U 1 1 5D89300F
P 7050 4150
F 0 "#PWR?" H 7050 4000 50  0001 C CNN
F 1 "VCC" H 7067 4323 50  0000 C CNN
F 2 "" H 7050 4150 50  0001 C CNN
F 3 "" H 7050 4150 50  0001 C CNN
	1    7050 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4150 7050 4350
$Comp
L power:VCC #PWR?
U 1 1 5D896515
P 4800 4900
F 0 "#PWR?" H 4800 4750 50  0001 C CNN
F 1 "VCC" H 4817 5073 50  0000 C CNN
F 2 "" H 4800 4900 50  0001 C CNN
F 3 "" H 4800 4900 50  0001 C CNN
	1    4800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4900 4800 5000
Wire Wire Line
	4800 5000 5050 5000
Wire Wire Line
	5850 4350 5850 4250
Wire Wire Line
	5850 3750 9950 3750
Wire Wire Line
	9950 3750 9950 3000
Connection ~ 9950 2400
Wire Wire Line
	5750 4350 5750 4150
Wire Wire Line
	5750 3650 8750 3650
Wire Wire Line
	8750 3650 8750 2900
Connection ~ 8750 2400
Wire Wire Line
	5650 4350 5650 4050
Wire Wire Line
	5650 3550 7550 3550
Wire Wire Line
	7550 3550 7550 2800
Connection ~ 7550 2400
Wire Wire Line
	5550 4350 5550 3950
Wire Wire Line
	5550 3450 6350 3450
Wire Wire Line
	6350 3450 6350 2700
Connection ~ 6350 2400
Wire Wire Line
	5200 2400 5200 2600
Wire Wire Line
	5200 3450 5450 3450
Wire Wire Line
	5450 3450 5450 3850
Connection ~ 5200 2400
Wire Wire Line
	4050 2400 4050 2500
Wire Wire Line
	4050 3550 5350 3550
Wire Wire Line
	5350 3550 5350 3750
Connection ~ 4050 2400
Wire Wire Line
	5250 4350 5250 3650
Wire Wire Line
	5250 3650 2900 3650
Wire Wire Line
	2900 3650 2900 2400
Connection ~ 2900 2400
Wire Wire Line
	2900 3650 600  3650
Wire Wire Line
	600  3650 600  4550
Connection ~ 2900 3650
Wire Wire Line
	5350 3750 950  3750
Wire Wire Line
	950  3750 950  4550
Connection ~ 5350 3750
Wire Wire Line
	5350 3750 5350 4350
Wire Wire Line
	5450 3850 1300 3850
Wire Wire Line
	1300 3850 1300 4550
Connection ~ 5450 3850
Wire Wire Line
	5450 3850 5450 4350
Wire Wire Line
	5550 3950 1650 3950
Wire Wire Line
	1650 3950 1650 4550
Connection ~ 5550 3950
Wire Wire Line
	5550 3950 5550 3450
Wire Wire Line
	5650 4050 2000 4050
Wire Wire Line
	2000 4050 2000 4550
Connection ~ 5650 4050
Wire Wire Line
	5650 4050 5650 3550
Wire Wire Line
	5750 4150 2350 4150
Wire Wire Line
	2350 4150 2350 4550
Connection ~ 5750 4150
Wire Wire Line
	5750 4150 5750 3650
Wire Wire Line
	5850 4250 2700 4250
Wire Wire Line
	2700 4250 2700 4550
Connection ~ 5850 4250
Wire Wire Line
	5850 4250 5850 3750
Wire Wire Line
	5950 5600 5950 5700
Wire Wire Line
	5950 5700 7600 5700
Connection ~ 7600 5700
Wire Wire Line
	7600 5700 7600 6150
Wire Wire Line
	5850 5600 5850 5700
Wire Wire Line
	5850 5700 5950 5700
Connection ~ 5950 5700
Wire Wire Line
	5750 5600 5750 5700
Wire Wire Line
	5750 5700 5850 5700
Connection ~ 5850 5700
Wire Wire Line
	5650 5600 5650 5700
Wire Wire Line
	5650 5700 5750 5700
Connection ~ 5750 5700
Wire Wire Line
	5550 5600 5550 5700
Wire Wire Line
	5550 5700 5650 5700
Connection ~ 5650 5700
Text GLabel 5250 6650 3    50   Output ~ 0
ClockRate0
Text GLabel 5350 6650 3    50   Output ~ 0
ClockRate1
Text GLabel 5450 6650 3    50   Output ~ 0
ClockRate2
Wire Wire Line
	5250 5600 5250 6650
Wire Wire Line
	5350 5600 5350 6650
Wire Wire Line
	5450 5600 5450 6650
$Comp
L Device:R R?
U 1 1 5D97CC48
P 2650 2400
F 0 "R?" V 2443 2400 50  0000 C CNN
F 1 "1k" V 2534 2400 50  0000 C CNN
F 2 "" V 2580 2400 50  0001 C CNN
F 3 "~" H 2650 2400 50  0001 C CNN
	1    2650 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D97DDCC
P 3800 2500
F 0 "R?" V 3593 2500 50  0000 C CNN
F 1 "1k" V 3684 2500 50  0000 C CNN
F 2 "" V 3730 2500 50  0001 C CNN
F 3 "~" H 3800 2500 50  0001 C CNN
	1    3800 2500
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D97E7D7
P 1000 800
F 0 "#PWR?" H 1000 650 50  0001 C CNN
F 1 "VCC" H 1017 973 50  0000 C CNN
F 2 "" H 1000 800 50  0001 C CNN
F 3 "" H 1000 800 50  0001 C CNN
	1    1000 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2400 1000 2400
Wire Wire Line
	1000 2400 1000 1000
Wire Wire Line
	2900 2400 2800 2400
Wire Wire Line
	3650 2500 1000 2500
Wire Wire Line
	1000 2500 1000 2400
Connection ~ 1000 2400
Wire Wire Line
	4050 2500 3950 2500
Connection ~ 4050 2500
Wire Wire Line
	4050 2500 4050 3550
$Comp
L Device:R R?
U 1 1 5D99D8E1
P 4950 2600
F 0 "R?" V 4743 2600 50  0000 C CNN
F 1 "1k" V 4834 2600 50  0000 C CNN
F 2 "" V 4880 2600 50  0001 C CNN
F 3 "~" H 4950 2600 50  0001 C CNN
	1    4950 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 2600 5200 2600
Connection ~ 5200 2600
Wire Wire Line
	5200 2600 5200 3450
Wire Wire Line
	4800 2600 1000 2600
Wire Wire Line
	1000 2600 1000 2500
Connection ~ 1000 2500
$Comp
L Device:R R?
U 1 1 5D9AF4B1
P 6100 2700
F 0 "R?" V 5893 2700 50  0000 C CNN
F 1 "1k" V 5984 2700 50  0000 C CNN
F 2 "" V 6030 2700 50  0001 C CNN
F 3 "~" H 6100 2700 50  0001 C CNN
	1    6100 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 2700 6350 2700
Connection ~ 6350 2700
Wire Wire Line
	6350 2700 6350 2400
Wire Wire Line
	5950 2700 1000 2700
Wire Wire Line
	1000 2700 1000 2600
Connection ~ 1000 2600
$Comp
L Device:R R?
U 1 1 5DA0DD43
P 7300 2800
F 0 "R?" V 7093 2800 50  0000 C CNN
F 1 "1k" V 7184 2800 50  0000 C CNN
F 2 "" V 7230 2800 50  0001 C CNN
F 3 "~" H 7300 2800 50  0001 C CNN
	1    7300 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 2800 7550 2800
Connection ~ 7550 2800
Wire Wire Line
	7550 2800 7550 2400
Wire Wire Line
	7150 2800 1000 2800
Wire Wire Line
	1000 2800 1000 2700
Connection ~ 1000 2700
$Comp
L Device:R R?
U 1 1 5DA209AF
P 8500 2900
F 0 "R?" V 8293 2900 50  0000 C CNN
F 1 "1k" V 8384 2900 50  0000 C CNN
F 2 "" V 8430 2900 50  0001 C CNN
F 3 "~" H 8500 2900 50  0001 C CNN
	1    8500 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 2900 8750 2900
Connection ~ 8750 2900
Wire Wire Line
	8750 2900 8750 2400
Wire Wire Line
	8350 2900 1000 2900
Wire Wire Line
	1000 2900 1000 2800
Connection ~ 1000 2800
$Comp
L Device:R R?
U 1 1 5DA34360
P 9700 3000
F 0 "R?" V 9493 3000 50  0000 C CNN
F 1 "1k" V 9584 3000 50  0000 C CNN
F 2 "" V 9630 3000 50  0001 C CNN
F 3 "~" H 9700 3000 50  0001 C CNN
	1    9700 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	9850 3000 9950 3000
Connection ~ 9950 3000
Wire Wire Line
	9950 3000 9950 2400
Wire Wire Line
	9550 3000 1000 3000
Wire Wire Line
	1000 3000 1000 2900
Connection ~ 1000 2900
Wire Wire Line
	1850 1100 1850 1000
Wire Wire Line
	1850 1000 1000 1000
Connection ~ 1000 1000
Wire Wire Line
	1000 1000 1000 800 
$Comp
L Device:C C?
U 1 1 5DA68DA5
P 3000 7350
F 0 "C?" H 3115 7396 50  0000 L CNN
F 1 "100nF" H 3115 7305 50  0000 L CNN
F 2 "" H 3038 7200 50  0001 C CNN
F 3 "~" H 3000 7350 50  0001 C CNN
	1    3000 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DA690FC
P 2500 7350
F 0 "C?" H 2615 7396 50  0000 L CNN
F 1 "100nF" H 2615 7305 50  0000 L CNN
F 2 "" H 2538 7200 50  0001 C CNN
F 3 "~" H 2500 7350 50  0001 C CNN
	1    2500 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DA694C8
P 2000 7350
F 0 "C?" H 2115 7396 50  0000 L CNN
F 1 "100nF" H 2115 7305 50  0000 L CNN
F 2 "" H 2038 7200 50  0001 C CNN
F 3 "~" H 2000 7350 50  0001 C CNN
	1    2000 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DA69963
P 1500 7350
F 0 "C?" H 1615 7396 50  0000 L CNN
F 1 "100nF" H 1615 7305 50  0000 L CNN
F 2 "" H 1538 7200 50  0001 C CNN
F 3 "~" H 1500 7350 50  0001 C CNN
	1    1500 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DA69DD0
P 1000 7350
F 0 "C?" H 1115 7396 50  0000 L CNN
F 1 "100nF" H 1115 7305 50  0000 L CNN
F 2 "" H 1038 7200 50  0001 C CNN
F 3 "~" H 1000 7350 50  0001 C CNN
	1    1000 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA6A5E2
P 3000 7500
F 0 "#PWR?" H 3000 7250 50  0001 C CNN
F 1 "GND" H 3005 7327 50  0000 C CNN
F 2 "" H 3000 7500 50  0001 C CNN
F 3 "" H 3000 7500 50  0001 C CNN
	1    3000 7500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DA6B55A
P 1000 7200
F 0 "#PWR?" H 1000 7050 50  0001 C CNN
F 1 "VCC" H 1017 7373 50  0000 C CNN
F 2 "" H 1000 7200 50  0001 C CNN
F 3 "" H 1000 7200 50  0001 C CNN
	1    1000 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7200 1000 7200
Connection ~ 1000 7200
Wire Wire Line
	1500 7200 2000 7200
Connection ~ 1500 7200
Wire Wire Line
	2000 7200 2500 7200
Connection ~ 2000 7200
Wire Wire Line
	2500 7200 3000 7200
Connection ~ 2500 7200
Wire Wire Line
	2500 7500 3000 7500
Connection ~ 3000 7500
Wire Wire Line
	2500 7500 2000 7500
Connection ~ 2500 7500
Wire Wire Line
	2000 7500 1500 7500
Connection ~ 2000 7500
Wire Wire Line
	1500 7500 1000 7500
Connection ~ 1500 7500
$EndSCHEMATC
