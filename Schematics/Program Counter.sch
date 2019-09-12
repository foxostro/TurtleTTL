EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 5 20
Title "Program Counter"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 950  4250 0    50   Input ~ 0
~J
$Comp
L 74xx:74LS161 U?
U 1 1 5D21151D
P 2800 2600
F 0 "U?" H 2550 3400 50  0000 C CNN
F 1 "74F161" H 2550 3300 50  0000 C CNN
F 2 "" H 2800 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 2800 2600 50  0001 C CNN
	1    2800 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS161 U?
U 1 1 5D214E57
P 4500 2600
F 0 "U?" H 4250 3400 50  0000 C CNN
F 1 "74F161" H 4250 3300 50  0000 C CNN
F 2 "" H 4500 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 4500 2600 50  0001 C CNN
	1    4500 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS161 U?
U 1 1 5D21617C
P 6200 2600
F 0 "U?" H 5950 3400 50  0000 C CNN
F 1 "74F161" H 5950 3300 50  0000 C CNN
F 2 "" H 6200 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 6200 2600 50  0001 C CNN
	1    6200 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS161 U?
U 1 1 5D217C94
P 7900 2600
F 0 "U?" H 7650 3400 50  0000 C CNN
F 1 "74F161" H 7650 3300 50  0000 C CNN
F 2 "" H 7900 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 7900 2600 50  0001 C CNN
	1    7900 2600
	1    0    0    -1  
$EndComp
Text GLabel 950  3950 0    50   Input ~ 0
~Reset
Text GLabel 950  4100 0    50   Input ~ 0
CE
Wire Wire Line
	2300 3100 2200 3100
Wire Wire Line
	2200 3100 2200 3950
Wire Wire Line
	3900 3950 3900 3100
Wire Wire Line
	3900 3100 4000 3100
Wire Wire Line
	5700 3100 5600 3100
Wire Wire Line
	5600 3100 5600 3950
Wire Wire Line
	7400 3100 7300 3100
Wire Wire Line
	7300 3100 7300 3950
Wire Wire Line
	2200 3950 950  3950
Text GLabel 950  3800 0    50   Input ~ 0
Clock0
Wire Wire Line
	2300 2900 2100 2900
Wire Wire Line
	2100 2900 2100 3800
Wire Wire Line
	2100 3800 950  3800
Wire Wire Line
	4000 2900 3800 2900
Wire Wire Line
	3800 2900 3800 3800
Wire Wire Line
	5700 2900 5500 2900
Wire Wire Line
	5500 2900 5500 3800
Wire Wire Line
	7400 2900 7200 2900
Wire Wire Line
	7200 2900 7200 3800
Wire Wire Line
	2000 2700 2000 2800
Wire Wire Line
	2000 4100 950  4100
Wire Wire Line
	4000 2700 3700 2700
Wire Wire Line
	3700 2700 3700 4100
Wire Wire Line
	5700 2700 5400 2700
Wire Wire Line
	5400 2700 5400 4100
Wire Wire Line
	7400 2700 7100 2700
Wire Wire Line
	7100 2700 7100 4100
Wire Wire Line
	6700 2800 6700 2600
Wire Wire Line
	5000 2800 5000 2600
Wire Wire Line
	3300 2800 3300 2600
Wire Wire Line
	2000 2700 2300 2700
Wire Wire Line
	2000 2800 2300 2800
Connection ~ 2000 2800
Wire Wire Line
	2000 2800 2000 4100
$Comp
L power:VCC #PWR?
U 1 1 5D22033E
P 2800 1450
F 0 "#PWR?" H 2800 1300 50  0001 C CNN
F 1 "VCC" H 2817 1623 50  0000 C CNN
F 2 "" H 2800 1450 50  0001 C CNN
F 3 "" H 2800 1450 50  0001 C CNN
	1    2800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1450 2800 1500
Wire Wire Line
	7900 1500 7900 1800
Wire Wire Line
	6200 1800 6200 1500
Wire Wire Line
	4500 1800 4500 1500
Wire Wire Line
	2800 1800 2800 1500
Wire Wire Line
	8400 2600 8750 2600
Wire Wire Line
	8750 1500 7900 1500
Connection ~ 7900 1500
$Comp
L power:GND #PWR?
U 1 1 5D228832
P 2800 3400
F 0 "#PWR?" H 2800 3150 50  0001 C CNN
F 1 "GND" H 2805 3227 50  0000 C CNN
F 2 "" H 2800 3400 50  0001 C CNN
F 3 "" H 2800 3400 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2600 1900 2600
Wire Wire Line
	1900 2600 1900 4250
Wire Wire Line
	1900 4250 950  4250
Wire Wire Line
	4000 2600 3600 2600
Wire Wire Line
	3600 2600 3600 4250
Wire Wire Line
	5700 2600 5300 2600
Wire Wire Line
	5300 2600 5300 4250
Wire Wire Line
	7400 2600 7000 2600
Wire Wire Line
	7000 2600 7000 4250
Text GLabel 950  4600 0    50   Input ~ 0
Bus00
Text GLabel 950  4700 0    50   Input ~ 0
Bus01
Text GLabel 950  4800 0    50   Input ~ 0
Bus02
Text GLabel 950  4900 0    50   Input ~ 0
Bus03
Text GLabel 950  5000 0    50   Input ~ 0
Bus04
Text GLabel 950  5100 0    50   Input ~ 0
Bus05
Text GLabel 950  5200 0    50   Input ~ 0
Bus06
Text GLabel 950  5300 0    50   Input ~ 0
Bus07
Entry Wire Line
	1250 4600 1350 4500
Entry Wire Line
	1250 4700 1350 4600
Entry Wire Line
	1250 4800 1350 4700
Entry Wire Line
	1250 4900 1350 4800
Entry Wire Line
	1250 5000 1350 4900
Entry Wire Line
	1250 5100 1350 5000
Entry Wire Line
	1250 5200 1350 5100
Entry Wire Line
	1250 5300 1350 5200
Text GLabel 950  5400 0    50   Input ~ 0
Bus08
Text GLabel 950  5500 0    50   Input ~ 0
Bus09
Text GLabel 950  5600 0    50   Input ~ 0
Bus10
Text GLabel 950  5700 0    50   Input ~ 0
Bus11
Text GLabel 950  5800 0    50   Input ~ 0
Bus12
Text GLabel 950  5900 0    50   Input ~ 0
Bus13
Text GLabel 950  6000 0    50   Input ~ 0
Bus14
Text GLabel 950  6100 0    50   Input ~ 0
Bus15
Entry Wire Line
	1250 5400 1350 5300
Entry Wire Line
	1250 5500 1350 5400
Entry Wire Line
	1250 5600 1350 5500
Entry Wire Line
	1250 5700 1350 5600
Entry Wire Line
	1250 5800 1350 5700
Entry Wire Line
	1250 5900 1350 5800
Entry Wire Line
	1250 6000 1350 5900
Entry Wire Line
	1250 6100 1350 6000
Wire Wire Line
	950  4600 1250 4600
Wire Wire Line
	950  4700 1250 4700
Wire Wire Line
	950  4800 1250 4800
Wire Wire Line
	950  4900 1250 4900
Wire Wire Line
	950  5000 1250 5000
Wire Wire Line
	950  5100 1250 5100
Wire Wire Line
	950  5200 1250 5200
Wire Wire Line
	950  5300 1250 5300
Wire Wire Line
	950  5400 1250 5400
Wire Wire Line
	950  5500 1250 5500
Wire Wire Line
	950  5600 1250 5600
Wire Wire Line
	950  5700 1250 5700
Wire Wire Line
	950  5800 1250 5800
Wire Wire Line
	950  5900 1250 5900
Wire Wire Line
	950  6000 1250 6000
Wire Wire Line
	950  6100 1250 6100
Text Label 1000 4600 0    50   ~ 0
Bus00
Text Label 1000 4700 0    50   ~ 0
Bus01
Text Label 1000 4800 0    50   ~ 0
Bus02
Text Label 1000 4900 0    50   ~ 0
Bus03
Text Label 1000 5000 0    50   ~ 0
Bus04
Text Label 1000 5100 0    50   ~ 0
Bus05
Text Label 1000 5200 0    50   ~ 0
Bus06
Text Label 1000 5300 0    50   ~ 0
Bus07
Text Label 1000 5400 0    50   ~ 0
Bus08
Text Label 1000 5500 0    50   ~ 0
Bus09
Text Label 1000 5600 0    50   ~ 0
Bus10
Text Label 1000 5700 0    50   ~ 0
Bus11
Text Label 1000 5800 0    50   ~ 0
Bus12
Text Label 1000 5900 0    50   ~ 0
Bus13
Text Label 1000 6000 0    50   ~ 0
Bus14
Text Label 1000 6100 0    50   ~ 0
Bus15
Entry Wire Line
	2000 2000 2100 2100
Entry Wire Line
	2000 2100 2100 2200
Entry Wire Line
	2000 2200 2100 2300
Entry Wire Line
	2000 2300 2100 2400
Entry Wire Line
	3700 2000 3800 2100
Entry Wire Line
	3700 2100 3800 2200
Entry Wire Line
	3700 2200 3800 2300
Entry Wire Line
	3700 2300 3800 2400
Wire Wire Line
	2100 2100 2300 2100
Wire Wire Line
	2300 2200 2100 2200
Wire Wire Line
	2100 2300 2300 2300
Wire Wire Line
	2300 2400 2100 2400
Wire Wire Line
	4000 2100 3800 2100
Wire Wire Line
	3800 2200 4000 2200
Wire Wire Line
	4000 2300 3800 2300
Wire Wire Line
	3800 2400 4000 2400
Entry Wire Line
	5400 2000 5500 2100
Entry Wire Line
	5400 2100 5500 2200
Entry Wire Line
	5400 2200 5500 2300
Entry Wire Line
	5400 2300 5500 2400
Wire Wire Line
	5500 2100 5700 2100
Wire Wire Line
	5700 2200 5500 2200
Wire Wire Line
	5500 2300 5700 2300
Wire Wire Line
	5700 2400 5500 2400
Entry Wire Line
	7100 2100 7200 2200
Entry Wire Line
	7100 2200 7200 2300
Entry Wire Line
	7100 2300 7200 2400
Wire Wire Line
	7400 2200 7200 2200
Wire Wire Line
	7200 2300 7400 2300
Wire Wire Line
	7400 2400 7200 2400
Text Label 2100 2100 0    50   ~ 0
Bus00
Text Label 2100 2200 0    50   ~ 0
Bus01
Text Label 2100 2300 0    50   ~ 0
Bus02
Text Label 2100 2400 0    50   ~ 0
Bus03
Text Label 3800 2100 0    50   ~ 0
Bus04
Text Label 3800 2200 0    50   ~ 0
Bus05
Text Label 3800 2300 0    50   ~ 0
Bus06
Text Label 3800 2400 0    50   ~ 0
Bus07
Text Label 5500 2100 0    50   ~ 0
Bus08
Text Label 5500 2200 0    50   ~ 0
Bus09
Text Label 5500 2300 0    50   ~ 0
Bus10
Text Label 5500 2400 0    50   ~ 0
Bus11
Wire Wire Line
	7200 2100 7400 2100
Entry Wire Line
	7100 2000 7200 2100
Text Label 7200 2100 0    50   ~ 0
Bus12
Text Label 7200 2200 0    50   ~ 0
Bus13
Text Label 7200 2300 0    50   ~ 0
Bus14
Text Label 7200 2400 0    50   ~ 0
Bus15
Entry Wire Line
	3450 2100 3550 2000
Entry Wire Line
	3450 2200 3550 2100
Entry Wire Line
	3450 2300 3550 2200
Entry Wire Line
	3450 2400 3550 2300
Wire Wire Line
	3450 2400 3300 2400
Wire Wire Line
	3450 2300 3300 2300
Wire Wire Line
	3450 2200 3300 2200
Wire Wire Line
	3450 2100 3300 2100
Text Label 3250 2100 0    50   ~ 0
PC00
Text Label 3250 2200 0    50   ~ 0
PC01
Text Label 3250 2300 0    50   ~ 0
PC02
Text Label 3250 2400 0    50   ~ 0
PC03
Wire Wire Line
	1900 4250 3600 4250
Connection ~ 1900 4250
Wire Wire Line
	2000 4100 3700 4100
Connection ~ 2000 4100
Wire Wire Line
	2200 3950 3900 3950
Connection ~ 2200 3950
Wire Wire Line
	2100 3800 3800 3800
Connection ~ 2100 3800
Wire Wire Line
	2800 3400 4500 3400
Wire Wire Line
	8750 2600 8750 1500
Wire Wire Line
	2800 1500 4500 1500
Connection ~ 2800 1500
Entry Wire Line
	5150 2100 5250 2000
Entry Wire Line
	5150 2200 5250 2100
Entry Wire Line
	5150 2300 5250 2200
Entry Wire Line
	5150 2400 5250 2300
Wire Wire Line
	5150 2400 5000 2400
Wire Wire Line
	5150 2300 5000 2300
Wire Wire Line
	5150 2200 5000 2200
Wire Wire Line
	5150 2100 5000 2100
Text Label 4950 2100 0    50   ~ 0
PC04
Text Label 4950 2200 0    50   ~ 0
PC05
Text Label 4950 2300 0    50   ~ 0
PC06
Text Label 4950 2400 0    50   ~ 0
PC07
Wire Wire Line
	3600 4250 5300 4250
Connection ~ 3600 4250
Wire Wire Line
	3700 4100 5400 4100
Connection ~ 3700 4100
Wire Wire Line
	3900 3950 5600 3950
Connection ~ 3900 3950
Wire Wire Line
	3800 3800 5500 3800
Connection ~ 3800 3800
Wire Wire Line
	4500 3400 6200 3400
Connection ~ 4500 3400
Wire Wire Line
	4500 1500 6200 1500
Connection ~ 4500 1500
Wire Wire Line
	3300 2800 4000 2800
Wire Wire Line
	5000 2800 5700 2800
Entry Wire Line
	6850 2100 6950 2000
Entry Wire Line
	6850 2200 6950 2100
Entry Wire Line
	6850 2300 6950 2200
Entry Wire Line
	6850 2400 6950 2300
Wire Wire Line
	6850 2100 6700 2100
Wire Wire Line
	6850 2200 6700 2200
Wire Wire Line
	6850 2300 6700 2300
Wire Wire Line
	6850 2400 6700 2400
Text Label 6650 2100 0    50   ~ 0
PC08
Text Label 6650 2200 0    50   ~ 0
PC09
Text Label 6650 2300 0    50   ~ 0
PC10
Text Label 6650 2400 0    50   ~ 0
PC11
Wire Wire Line
	5300 4250 7000 4250
Connection ~ 5300 4250
Wire Wire Line
	5400 4100 7100 4100
Connection ~ 5400 4100
Wire Wire Line
	5600 3950 7300 3950
Connection ~ 5600 3950
Wire Wire Line
	5500 3800 7200 3800
Connection ~ 5500 3800
Wire Wire Line
	6200 3400 7900 3400
Connection ~ 6200 3400
Wire Wire Line
	6700 2800 7400 2800
Wire Wire Line
	6200 1500 7900 1500
Connection ~ 6200 1500
Entry Wire Line
	8550 2100 8650 2000
Entry Wire Line
	8550 2200 8650 2100
Entry Wire Line
	8550 2300 8650 2200
Entry Wire Line
	8550 2400 8650 2300
Wire Wire Line
	8550 2100 8400 2100
Wire Wire Line
	8400 2200 8550 2200
Wire Wire Line
	8550 2300 8400 2300
Wire Wire Line
	8400 2400 8550 2400
Text Label 8350 2100 0    50   ~ 0
PC12
Text Label 8350 2200 0    50   ~ 0
PC13
Text Label 8350 2300 0    50   ~ 0
PC14
Text Label 8350 2400 0    50   ~ 0
PC15
Wire Bus Line
	1350 1600 2000 1600
Connection ~ 2000 1600
Wire Bus Line
	2000 1600 3700 1600
Connection ~ 3700 1600
Wire Bus Line
	3700 1600 5400 1600
Connection ~ 5400 1600
Wire Bus Line
	5400 1600 7100 1600
Text GLabel 9050 4600 2    50   Output ~ 0
PC00
Text GLabel 9050 4700 2    50   Output ~ 0
PC01
Text GLabel 9050 4800 2    50   Output ~ 0
PC02
Text GLabel 9050 4900 2    50   Output ~ 0
PC03
Text GLabel 9050 5000 2    50   Output ~ 0
PC04
Text GLabel 9050 5100 2    50   Output ~ 0
PC05
Text GLabel 9050 5200 2    50   Output ~ 0
PC06
Text GLabel 9050 5300 2    50   Output ~ 0
PC07
Text GLabel 9050 5400 2    50   Output ~ 0
PC08
Text GLabel 9050 5500 2    50   Output ~ 0
PC09
Text GLabel 9050 5600 2    50   Output ~ 0
PC10
Text GLabel 9050 5700 2    50   Output ~ 0
PC11
Text GLabel 9050 5800 2    50   Output ~ 0
PC12
Text GLabel 9050 5900 2    50   Output ~ 0
PC13
Text GLabel 9050 6000 2    50   Output ~ 0
PC14
Text GLabel 9050 6100 2    50   Output ~ 0
PC15
Entry Wire Line
	8650 4600 8750 4700
Entry Wire Line
	8650 4500 8750 4600
Entry Wire Line
	8650 4700 8750 4800
Entry Wire Line
	8650 4800 8750 4900
Entry Wire Line
	8650 4900 8750 5000
Entry Wire Line
	8650 5000 8750 5100
Entry Wire Line
	8650 5100 8750 5200
Entry Wire Line
	8650 5200 8750 5300
Entry Wire Line
	8650 5300 8750 5400
Entry Wire Line
	8650 5400 8750 5500
Entry Wire Line
	8650 5500 8750 5600
Entry Wire Line
	8650 5600 8750 5700
Entry Wire Line
	8650 5700 8750 5800
Entry Wire Line
	8650 5800 8750 5900
Entry Wire Line
	8650 5900 8750 6000
Entry Wire Line
	8650 6000 8750 6100
Wire Wire Line
	8750 4600 9050 4600
Wire Wire Line
	9050 4700 8750 4700
Wire Wire Line
	8750 4800 9050 4800
Wire Wire Line
	9050 4900 8750 4900
Wire Wire Line
	8750 5000 9050 5000
Wire Wire Line
	9050 5100 8750 5100
Wire Wire Line
	8750 5200 9050 5200
Wire Wire Line
	9050 5300 8750 5300
Wire Wire Line
	8750 5400 9050 5400
Wire Wire Line
	8750 5500 9050 5500
Wire Wire Line
	8750 5600 9050 5600
Wire Wire Line
	9050 5700 8750 5700
Wire Wire Line
	8750 5800 9050 5800
Wire Wire Line
	9050 5900 8750 5900
Wire Wire Line
	8750 6000 9050 6000
Wire Wire Line
	9050 6100 8750 6100
Text Label 8750 4600 0    50   ~ 0
PC00
Text Label 8750 4700 0    50   ~ 0
PC01
Text Label 8750 4800 0    50   ~ 0
PC02
Text Label 8750 4900 0    50   ~ 0
PC03
Text Label 8750 5000 0    50   ~ 0
PC04
Text Label 8750 5100 0    50   ~ 0
PC05
Text Label 8750 5200 0    50   ~ 0
PC06
Text Label 8750 5300 0    50   ~ 0
PC07
Text Label 8750 5400 0    50   ~ 0
PC08
Text Label 8750 5500 0    50   ~ 0
PC09
Text Label 8750 5600 0    50   ~ 0
PC10
Text Label 8750 5700 0    50   ~ 0
PC11
Text Label 8750 5800 0    50   ~ 0
PC12
Text Label 8750 5900 0    50   ~ 0
PC13
Text Label 8750 6000 0    50   ~ 0
PC14
Text Label 8750 6100 0    50   ~ 0
PC15
Wire Bus Line
	3550 1700 5250 1700
Connection ~ 6950 1700
Wire Bus Line
	6950 1700 8650 1700
Connection ~ 5250 1700
Wire Bus Line
	5250 1700 6950 1700
Connection ~ 2800 3400
$Comp
L Device:LED D?
U 1 1 5D4B377D
P 3600 5350
F 0 "D?" V 3639 5233 50  0000 R CNN
F 1 "LED" V 3548 5233 50  0000 R CNN
F 2 "" H 3600 5350 50  0001 C CNN
F 3 "~" H 3600 5350 50  0001 C CNN
	1    3600 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B4437
P 3950 5350
F 0 "D?" V 3989 5233 50  0000 R CNN
F 1 "LED" V 3898 5233 50  0000 R CNN
F 2 "" H 3950 5350 50  0001 C CNN
F 3 "~" H 3950 5350 50  0001 C CNN
	1    3950 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B4851
P 4300 5350
F 0 "D?" V 4339 5233 50  0000 R CNN
F 1 "LED" V 4248 5233 50  0000 R CNN
F 2 "" H 4300 5350 50  0001 C CNN
F 3 "~" H 4300 5350 50  0001 C CNN
	1    4300 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B4D53
P 4650 5350
F 0 "D?" V 4689 5233 50  0000 R CNN
F 1 "LED" V 4598 5233 50  0000 R CNN
F 2 "" H 4650 5350 50  0001 C CNN
F 3 "~" H 4650 5350 50  0001 C CNN
	1    4650 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B52E6
P 3250 5350
F 0 "D?" V 3289 5233 50  0000 R CNN
F 1 "LED" V 3198 5233 50  0000 R CNN
F 2 "" H 3250 5350 50  0001 C CNN
F 3 "~" H 3250 5350 50  0001 C CNN
	1    3250 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B5B31
P 2900 5350
F 0 "D?" V 2939 5233 50  0000 R CNN
F 1 "LED" V 2848 5233 50  0000 R CNN
F 2 "" H 2900 5350 50  0001 C CNN
F 3 "~" H 2900 5350 50  0001 C CNN
	1    2900 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B60E1
P 2550 5350
F 0 "D?" V 2589 5233 50  0000 R CNN
F 1 "LED" V 2498 5233 50  0000 R CNN
F 2 "" H 2550 5350 50  0001 C CNN
F 3 "~" H 2550 5350 50  0001 C CNN
	1    2550 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B6552
P 2200 5350
F 0 "D?" V 2239 5233 50  0000 R CNN
F 1 "LED" V 2148 5233 50  0000 R CNN
F 2 "" H 2200 5350 50  0001 C CNN
F 3 "~" H 2200 5350 50  0001 C CNN
	1    2200 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B6A71
P 5000 5350
F 0 "D?" V 5039 5233 50  0000 R CNN
F 1 "LED" V 4948 5233 50  0000 R CNN
F 2 "" H 5000 5350 50  0001 C CNN
F 3 "~" H 5000 5350 50  0001 C CNN
	1    5000 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B6FAD
P 5350 5350
F 0 "D?" V 5389 5233 50  0000 R CNN
F 1 "LED" V 5298 5233 50  0000 R CNN
F 2 "" H 5350 5350 50  0001 C CNN
F 3 "~" H 5350 5350 50  0001 C CNN
	1    5350 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B74CC
P 5700 5350
F 0 "D?" V 5739 5233 50  0000 R CNN
F 1 "LED" V 5648 5233 50  0000 R CNN
F 2 "" H 5700 5350 50  0001 C CNN
F 3 "~" H 5700 5350 50  0001 C CNN
	1    5700 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B7716
P 6050 5350
F 0 "D?" V 6089 5233 50  0000 R CNN
F 1 "LED" V 5998 5233 50  0000 R CNN
F 2 "" H 6050 5350 50  0001 C CNN
F 3 "~" H 6050 5350 50  0001 C CNN
	1    6050 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B7BFB
P 6400 5350
F 0 "D?" V 6439 5233 50  0000 R CNN
F 1 "LED" V 6348 5233 50  0000 R CNN
F 2 "" H 6400 5350 50  0001 C CNN
F 3 "~" H 6400 5350 50  0001 C CNN
	1    6400 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B80E0
P 6750 5350
F 0 "D?" V 6789 5233 50  0000 R CNN
F 1 "LED" V 6698 5233 50  0000 R CNN
F 2 "" H 6750 5350 50  0001 C CNN
F 3 "~" H 6750 5350 50  0001 C CNN
	1    6750 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B8412
P 7100 5350
F 0 "D?" V 7139 5233 50  0000 R CNN
F 1 "LED" V 7048 5233 50  0000 R CNN
F 2 "" H 7100 5350 50  0001 C CNN
F 3 "~" H 7100 5350 50  0001 C CNN
	1    7100 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D4B87F2
P 7450 5350
F 0 "D?" V 7489 5233 50  0000 R CNN
F 1 "LED" V 7398 5233 50  0000 R CNN
F 2 "" H 7450 5350 50  0001 C CNN
F 3 "~" H 7450 5350 50  0001 C CNN
	1    7450 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4B9345
P 2200 5800
F 0 "R?" H 2268 5846 50  0000 L CNN
F 1 "220Ω" H 2268 5755 50  0000 L CNN
F 2 "" V 2240 5790 50  0001 C CNN
F 3 "~" H 2200 5800 50  0001 C CNN
	1    2200 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4B9B45
P 2550 5800
F 0 "R?" H 2618 5846 50  0000 L CNN
F 1 "220Ω" H 2618 5755 50  0000 L CNN
F 2 "" V 2590 5790 50  0001 C CNN
F 3 "~" H 2550 5800 50  0001 C CNN
	1    2550 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4B9F5F
P 2900 5800
F 0 "R?" H 2968 5846 50  0000 L CNN
F 1 "220Ω" H 2968 5755 50  0000 L CNN
F 2 "" V 2940 5790 50  0001 C CNN
F 3 "~" H 2900 5800 50  0001 C CNN
	1    2900 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4BA4B8
P 3250 5800
F 0 "R?" H 3318 5846 50  0000 L CNN
F 1 "220Ω" H 3318 5755 50  0000 L CNN
F 2 "" V 3290 5790 50  0001 C CNN
F 3 "~" H 3250 5800 50  0001 C CNN
	1    3250 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4BAA4B
P 3600 5800
F 0 "R?" H 3668 5846 50  0000 L CNN
F 1 "220Ω" H 3668 5755 50  0000 L CNN
F 2 "" V 3640 5790 50  0001 C CNN
F 3 "~" H 3600 5800 50  0001 C CNN
	1    3600 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4BB101
P 3950 5800
F 0 "R?" H 4018 5846 50  0000 L CNN
F 1 "220Ω" H 4018 5755 50  0000 L CNN
F 2 "" V 3990 5790 50  0001 C CNN
F 3 "~" H 3950 5800 50  0001 C CNN
	1    3950 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4BB48A
P 4300 5800
F 0 "R?" H 4368 5846 50  0000 L CNN
F 1 "220Ω" H 4368 5755 50  0000 L CNN
F 2 "" V 4340 5790 50  0001 C CNN
F 3 "~" H 4300 5800 50  0001 C CNN
	1    4300 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4BB9E3
P 4650 5800
F 0 "R?" H 4718 5846 50  0000 L CNN
F 1 "220Ω" H 4718 5755 50  0000 L CNN
F 2 "" V 4690 5790 50  0001 C CNN
F 3 "~" H 4650 5800 50  0001 C CNN
	1    4650 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4BBDA6
P 5000 5800
F 0 "R?" H 5068 5846 50  0000 L CNN
F 1 "220Ω" H 5068 5755 50  0000 L CNN
F 2 "" V 5040 5790 50  0001 C CNN
F 3 "~" H 5000 5800 50  0001 C CNN
	1    5000 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4BC0D8
P 5350 5800
F 0 "R?" H 5418 5846 50  0000 L CNN
F 1 "220Ω" H 5418 5755 50  0000 L CNN
F 2 "" V 5390 5790 50  0001 C CNN
F 3 "~" H 5350 5800 50  0001 C CNN
	1    5350 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4BC49B
P 5700 5800
F 0 "R?" H 5768 5846 50  0000 L CNN
F 1 "220Ω" H 5768 5755 50  0000 L CNN
F 2 "" V 5740 5790 50  0001 C CNN
F 3 "~" H 5700 5800 50  0001 C CNN
	1    5700 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4BC807
P 6050 5800
F 0 "R?" H 6118 5846 50  0000 L CNN
F 1 "220Ω" H 6118 5755 50  0000 L CNN
F 2 "" V 6090 5790 50  0001 C CNN
F 3 "~" H 6050 5800 50  0001 C CNN
	1    6050 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4BCBAD
P 6400 5800
F 0 "R?" H 6468 5846 50  0000 L CNN
F 1 "220Ω" H 6468 5755 50  0000 L CNN
F 2 "" V 6440 5790 50  0001 C CNN
F 3 "~" H 6400 5800 50  0001 C CNN
	1    6400 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4BCF36
P 6750 5800
F 0 "R?" H 6818 5846 50  0000 L CNN
F 1 "220Ω" H 6818 5755 50  0000 L CNN
F 2 "" V 6790 5790 50  0001 C CNN
F 3 "~" H 6750 5800 50  0001 C CNN
	1    6750 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4BD19D
P 7100 5800
F 0 "R?" H 7168 5846 50  0000 L CNN
F 1 "220Ω" H 7168 5755 50  0000 L CNN
F 2 "" V 7140 5790 50  0001 C CNN
F 3 "~" H 7100 5800 50  0001 C CNN
	1    7100 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5D4BD509
P 7450 5750
F 0 "R?" H 7518 5796 50  0000 L CNN
F 1 "220Ω" H 7518 5705 50  0000 L CNN
F 2 "" V 7490 5740 50  0001 C CNN
F 3 "~" H 7450 5750 50  0001 C CNN
	1    7450 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5950 2200 6050
Wire Wire Line
	2200 6050 2550 6050
Wire Wire Line
	7450 6050 7450 5900
Wire Wire Line
	2550 5950 2550 6050
Connection ~ 2550 6050
Wire Wire Line
	2550 6050 2900 6050
Wire Wire Line
	2900 5950 2900 6050
Connection ~ 2900 6050
Wire Wire Line
	2900 6050 3250 6050
Wire Wire Line
	3250 5950 3250 6050
Connection ~ 3250 6050
Wire Wire Line
	3250 6050 3600 6050
Wire Wire Line
	3600 5950 3600 6050
Connection ~ 3600 6050
Wire Wire Line
	3600 6050 3950 6050
Wire Wire Line
	3950 5950 3950 6050
Connection ~ 3950 6050
Wire Wire Line
	3950 6050 4300 6050
Wire Wire Line
	4300 5950 4300 6050
Connection ~ 4300 6050
Wire Wire Line
	4300 6050 4650 6050
Wire Wire Line
	4650 5950 4650 6050
Connection ~ 4650 6050
Wire Wire Line
	4650 6050 5000 6050
Wire Wire Line
	5000 5950 5000 6050
Connection ~ 5000 6050
Wire Wire Line
	5000 6050 5350 6050
Wire Wire Line
	5350 5950 5350 6050
Connection ~ 5350 6050
Wire Wire Line
	5350 6050 5700 6050
Wire Wire Line
	5700 5950 5700 6050
Connection ~ 5700 6050
Wire Wire Line
	5700 6050 6050 6050
Wire Wire Line
	6050 5950 6050 6050
Connection ~ 6050 6050
Wire Wire Line
	6050 6050 6400 6050
Wire Wire Line
	6400 5950 6400 6050
Connection ~ 6400 6050
Wire Wire Line
	6400 6050 6750 6050
Wire Wire Line
	6750 5950 6750 6050
Connection ~ 6750 6050
Wire Wire Line
	6750 6050 7100 6050
Wire Wire Line
	7100 5950 7100 6050
Connection ~ 7100 6050
Wire Wire Line
	7100 6050 7450 6050
$Comp
L power:GND #PWR?
U 1 1 5D533285
P 2200 6050
F 0 "#PWR?" H 2200 5800 50  0001 C CNN
F 1 "GND" H 2205 5877 50  0000 C CNN
F 2 "" H 2200 6050 50  0001 C CNN
F 3 "" H 2200 6050 50  0001 C CNN
	1    2200 6050
	1    0    0    -1  
$EndComp
Connection ~ 2200 6050
Wire Wire Line
	2200 5500 2200 5650
Wire Wire Line
	2550 5500 2550 5650
Wire Wire Line
	2900 5650 2900 5500
Wire Wire Line
	3250 5500 3250 5650
Wire Wire Line
	3600 5650 3600 5500
Wire Wire Line
	3950 5500 3950 5650
Wire Wire Line
	4300 5650 4300 5500
Wire Wire Line
	4650 5500 4650 5650
Wire Wire Line
	5000 5650 5000 5500
Wire Wire Line
	5350 5500 5350 5650
Wire Wire Line
	5700 5650 5700 5500
Wire Wire Line
	6050 5500 6050 5650
Wire Wire Line
	6400 5650 6400 5500
Wire Wire Line
	6750 5500 6750 5650
Wire Wire Line
	7100 5650 7100 5500
Wire Wire Line
	7450 5500 7450 5600
Entry Wire Line
	2200 5000 2300 4900
Entry Wire Line
	2550 5000 2650 4900
Entry Wire Line
	2900 5000 3000 4900
Entry Wire Line
	3250 5000 3350 4900
Entry Wire Line
	3600 5000 3700 4900
Entry Wire Line
	3950 5000 4050 4900
Entry Wire Line
	4300 5000 4400 4900
Entry Wire Line
	4650 5000 4750 4900
Entry Wire Line
	5000 5000 5100 4900
Entry Wire Line
	5350 5000 5450 4900
Entry Wire Line
	5700 5000 5800 4900
Entry Wire Line
	6050 5000 6150 4900
Entry Wire Line
	6400 5000 6500 4900
Entry Wire Line
	6750 5000 6850 4900
Entry Wire Line
	7100 5000 7200 4900
Entry Wire Line
	7450 5000 7550 4900
Wire Wire Line
	2200 5000 2200 5200
Wire Wire Line
	2550 5200 2550 5000
Wire Wire Line
	2900 5200 2900 5000
Wire Wire Line
	3250 5200 3250 5000
Wire Wire Line
	3600 5200 3600 5000
Wire Wire Line
	3950 5200 3950 5000
Wire Wire Line
	4300 5200 4300 5000
Wire Wire Line
	4650 5200 4650 5000
Wire Wire Line
	5000 5000 5000 5200
Wire Wire Line
	5350 5200 5350 5000
Wire Wire Line
	5700 5200 5700 5000
Wire Wire Line
	6050 5200 6050 5000
Wire Wire Line
	6400 5200 6400 5000
Wire Wire Line
	6750 5200 6750 5000
Wire Wire Line
	7100 5200 7100 5000
Wire Wire Line
	7450 5200 7450 5000
Text Label 7500 5050 0    50   ~ 0
PC00
Text Label 7150 5050 0    50   ~ 0
PC01
Text Label 6800 5050 0    50   ~ 0
PC02
Text Label 6450 5050 0    50   ~ 0
PC03
Text Label 6100 5050 0    50   ~ 0
PC04
Text Label 5750 5050 0    50   ~ 0
PC05
Text Label 5400 5050 0    50   ~ 0
PC06
Text Label 5050 5050 0    50   ~ 0
PC07
Text Label 4700 5050 0    50   ~ 0
PC08
Text Label 4350 5050 0    50   ~ 0
PC09
Text Label 4000 5050 0    50   ~ 0
PC10
Text Label 3650 5050 0    50   ~ 0
PC11
Text Label 3300 5050 0    50   ~ 0
PC12
Text Label 2950 5050 0    50   ~ 0
PC13
Text Label 2600 5050 0    50   ~ 0
PC14
Text Label 2250 5050 0    50   ~ 0
PC15
Wire Bus Line
	7800 4900 7800 4300
Connection ~ 8650 4300
Wire Bus Line
	7800 4300 8650 4300
Wire Bus Line
	7100 1600 7100 2300
Wire Bus Line
	2000 1600 2000 2300
Wire Bus Line
	3700 1600 3700 2300
Wire Bus Line
	5400 1600 5400 2300
Wire Bus Line
	3550 1700 3550 2300
Wire Bus Line
	6950 1700 6950 2300
Wire Bus Line
	5250 1700 5250 2300
Wire Bus Line
	8650 1700 8650 4300
Wire Bus Line
	1350 1600 1350 6000
Wire Bus Line
	2300 4900 7800 4900
Wire Bus Line
	8650 4300 8650 6000
$EndSCHEMATC
