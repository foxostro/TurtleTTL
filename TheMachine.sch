EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Rotary Switch Encoder"
Date ""
Rev ""
Comp ""
Comment1 "The takes advantage of 74LS behavior wrt floating pins and won't work with CMOS logic."
Comment2 ""
Comment3 "chips to translate the switch position to a three-bit value to control the clock rate."
Comment4 "The clock rate rotary switch (connected via a screw terminal) is wired to three 74LS151"
$EndDescr
$Comp
L 74xx:74LS151 U1
U 1 1 5D19C748
P 4600 4300
F 0 "U1" H 4650 4350 50  0000 C CNN
F 1 "74LS151" H 4650 4250 50  0000 C CNN
F 2 "" H 4600 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 4600 4300 50  0001 C CNN
	1    4600 4300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS151 U2
U 1 1 5D19E952
P 6300 4300
F 0 "U2" H 6350 4350 50  0000 C CNN
F 1 "74LS151" H 6350 4250 50  0000 C CNN
F 2 "" H 6300 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 6300 4300 50  0001 C CNN
	1    6300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5300 5800 5300
Connection ~ 6300 5300
$Comp
L power:GND #PWR02
U 1 1 5D1A58C6
P 8650 5300
F 0 "#PWR02" H 8650 5050 50  0001 C CNN
F 1 "GND" H 8655 5127 50  0000 C CNN
F 2 "" H 8650 5300 50  0001 C CNN
F 3 "" H 8650 5300 50  0001 C CNN
	1    8650 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5D1A9450
P 4600 1700
F 0 "#PWR01" H 4600 1550 50  0001 C CNN
F 1 "+5V" H 4615 1873 50  0000 C CNN
F 2 "" H 4600 1700 50  0001 C CNN
F 3 "" H 4600 1700 50  0001 C CNN
	1    4600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5000 4100 5300
Wire Wire Line
	4100 5300 4600 5300
Connection ~ 4600 5300
Wire Wire Line
	5800 5000 5800 5300
Connection ~ 5800 5300
Wire Wire Line
	5800 5300 5700 5300
Wire Wire Line
	7550 5000 7550 5300
Connection ~ 7550 5300
Wire Wire Line
	7550 5300 7450 5300
Wire Wire Line
	4000 5300 4100 5300
Connection ~ 4100 5300
Connection ~ 7450 5300
Wire Wire Line
	4100 3700 4000 3700
Wire Wire Line
	4100 4300 4000 4300
Connection ~ 4000 4300
Wire Wire Line
	4100 4200 4000 4200
Connection ~ 4000 4200
Wire Wire Line
	4000 4200 4000 4300
Wire Wire Line
	4100 4100 4000 4100
Connection ~ 4000 4100
Wire Wire Line
	4000 4100 4000 4200
Wire Wire Line
	4100 4000 4000 4000
Connection ~ 4000 4000
Wire Wire Line
	4000 4000 4000 4100
Wire Wire Line
	4100 3900 4000 3900
Connection ~ 4000 3900
Wire Wire Line
	4000 3900 4000 4000
Wire Wire Line
	4100 3800 4000 3800
Wire Wire Line
	4000 3800 4000 3900
Wire Wire Line
	5800 3700 5700 3700
Wire Wire Line
	5700 3700 5700 3800
Wire Wire Line
	5800 4300 5700 4300
Connection ~ 5700 4300
Wire Wire Line
	5800 4200 5700 4200
Connection ~ 5700 4200
Wire Wire Line
	5700 4200 5700 4300
Wire Wire Line
	5800 4100 5700 4100
Connection ~ 5700 4100
Wire Wire Line
	5700 4100 5700 4200
Wire Wire Line
	5800 4000 5700 4000
Connection ~ 5700 4000
Wire Wire Line
	5700 4000 5700 4100
Wire Wire Line
	5800 3900 5700 3900
Connection ~ 5700 3900
Wire Wire Line
	5700 3900 5700 4000
Wire Wire Line
	5800 3800 5700 3800
Connection ~ 5700 3800
Wire Wire Line
	5700 3800 5700 3900
Wire Wire Line
	7550 3700 7450 3700
Wire Wire Line
	7450 3700 7450 3800
Wire Wire Line
	7550 4300 7450 4300
Connection ~ 7450 4300
Wire Wire Line
	7550 4200 7450 4200
Connection ~ 7450 4200
Wire Wire Line
	7450 4200 7450 4300
Wire Wire Line
	7550 4100 7450 4100
Connection ~ 7450 4100
Wire Wire Line
	7450 4100 7450 4200
Wire Wire Line
	7550 4000 7450 4000
Connection ~ 7450 4000
Wire Wire Line
	7450 4000 7450 4100
Wire Wire Line
	7550 3900 7450 3900
Connection ~ 7450 3900
Wire Wire Line
	7450 3900 7450 4000
Wire Wire Line
	7550 3800 7450 3800
Connection ~ 7450 3800
Wire Wire Line
	7450 3800 7450 3900
Wire Wire Line
	6300 5300 6900 5300
Wire Wire Line
	4600 5300 5200 5300
Wire Wire Line
	5200 3700 5200 5300
Wire Wire Line
	5100 3700 5200 3700
Wire Wire Line
	6900 3700 6900 5300
Wire Wire Line
	6800 3700 6900 3700
Wire Wire Line
	8650 3700 8650 5300
Wire Wire Line
	8550 3700 8650 3700
Connection ~ 8650 5300
Connection ~ 4000 3800
Wire Wire Line
	4000 3700 4000 3800
Wire Wire Line
	4000 4300 4000 5300
Wire Wire Line
	5700 4300 5700 5300
Wire Wire Line
	8050 5300 7550 5300
Wire Wire Line
	8050 5300 8650 5300
Connection ~ 8050 5300
$Comp
L 74xx:74LS151 U3
U 1 1 5D19F416
P 8050 4300
F 0 "U3" H 8100 4350 50  0000 C CNN
F 1 "74LS151" H 8100 4250 50  0000 C CNN
F 2 "" H 8050 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 8050 4300 50  0001 C CNN
	1    8050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4300 7450 5300
$Comp
L Connector:Screw_Terminal_01x09 J1
U 1 1 5D1E803A
P 6350 2000
F 0 "J1" V 6567 1996 50  0000 C CNN
F 1 "Clock Rate Rotary Switch" V 6476 1996 50  0000 C CNN
F 2 "" H 6350 2000 50  0001 C CNN
F 3 "~" H 6350 2000 50  0001 C CNN
	1    6350 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 4400 7550 4400
Wire Wire Line
	5800 4400 5600 4400
Wire Wire Line
	4100 4400 3900 4400
Wire Wire Line
	3900 4400 3900 3300
Wire Wire Line
	7350 3300 7350 4400
Wire Wire Line
	5600 4400 5600 3300
Wire Wire Line
	5600 3300 6650 3300
Wire Wire Line
	4100 4600 3800 4600
Wire Wire Line
	3800 4600 3800 3200
Wire Wire Line
	3700 3100 3700 4700
Wire Wire Line
	3700 4700 4100 4700
Wire Wire Line
	3600 3000 3600 4800
Wire Wire Line
	3600 4800 4100 4800
Wire Wire Line
	4600 1700 4600 3400
Connection ~ 4600 3400
Wire Wire Line
	6650 2200 6650 3300
Wire Wire Line
	6550 2200 6550 3000
Wire Wire Line
	6450 2200 6450 3100
Wire Wire Line
	6350 2200 6350 3200
Wire Wire Line
	5800 4700 5500 4700
Wire Wire Line
	5500 4700 5500 2900
Wire Wire Line
	5500 2900 6250 2900
Wire Wire Line
	6250 2900 6250 2200
Wire Wire Line
	3600 3000 5300 3000
Wire Wire Line
	3700 3100 6450 3100
Wire Wire Line
	3800 3200 6350 3200
Wire Wire Line
	3900 3300 5600 3300
Connection ~ 5600 3300
Wire Wire Line
	4600 3400 6300 3400
Connection ~ 5200 5300
Wire Wire Line
	5200 5300 5700 5300
Connection ~ 5700 5300
Wire Wire Line
	6150 2200 6150 2800
Wire Wire Line
	6150 2800 5400 2800
Wire Wire Line
	5400 2800 5400 4600
Wire Wire Line
	5400 4600 5800 4600
Wire Wire Line
	5300 3000 5300 4800
Wire Wire Line
	5300 4800 5800 4800
Connection ~ 5300 3000
Wire Wire Line
	5300 3000 6550 3000
Wire Wire Line
	6650 3300 7350 3300
Connection ~ 6650 3300
Wire Wire Line
	6300 3400 8050 3400
Connection ~ 6300 3400
Wire Wire Line
	6900 5300 7450 5300
Connection ~ 6900 5300
Wire Wire Line
	6450 3100 7250 3100
Wire Wire Line
	7250 3100 7250 4800
Wire Wire Line
	7250 4800 7550 4800
Connection ~ 6450 3100
Wire Wire Line
	6250 2900 7150 2900
Wire Wire Line
	7150 2900 7150 4700
Wire Wire Line
	7150 4700 7550 4700
Connection ~ 6250 2900
Wire Wire Line
	6050 2200 6050 2700
Wire Wire Line
	6050 2700 7050 2700
Wire Wire Line
	7050 2700 7050 4600
Wire Wire Line
	7050 4600 7550 4600
NoConn ~ 5950 2200
Wire Wire Line
	6750 2200 6750 2600
Wire Wire Line
	6750 2600 8650 2600
Wire Wire Line
	8650 2600 8650 3700
Connection ~ 8650 3700
Wire Wire Line
	5100 6000 9350 6000
Wire Wire Line
	6800 5850 9350 5850
Wire Wire Line
	5100 3800 5100 6000
Wire Wire Line
	6800 3800 6800 5850
Wire Wire Line
	8550 5700 9350 5700
Wire Wire Line
	8550 3800 8550 5700
Text GLabel 9350 6000 2    50   Output ~ 0
ClockRate2
Text GLabel 9350 5850 2    50   Output ~ 0
ClockRate1
Text GLabel 9350 5700 2    50   Output ~ 0
ClockRate0
$EndSCHEMATC
