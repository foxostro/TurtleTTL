EESchema Schematic File Version 4
LIBS:TheMachine-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 "chips to translate the switch position to a three-bit value to control the clock rate."
Comment4 "The clock rate rotary switch (connected via a screw terminal) is wired to three 74LS151"
$EndDescr
$Comp
L 74xx:74LS151 U?
U 1 1 5D2B9D35
P 4350 4000
AR Path="/5D2B9D35" Ref="U?"  Part="1" 
AR Path="/5D2A71D6/5D2B9D35" Ref="U?"  Part="1" 
F 0 "U?" H 4400 4050 50  0000 C CNN
F 1 "74LS151" H 4400 3950 50  0000 C CNN
F 2 "" H 4350 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 4350 4000 50  0001 C CNN
	1    4350 4000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS151 U?
U 1 1 5D2B9D3B
P 6050 4000
AR Path="/5D2B9D3B" Ref="U?"  Part="1" 
AR Path="/5D2A71D6/5D2B9D3B" Ref="U?"  Part="1" 
F 0 "U?" H 6100 4050 50  0000 C CNN
F 1 "74LS151" H 6100 3950 50  0000 C CNN
F 2 "" H 6050 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 6050 4000 50  0001 C CNN
	1    6050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5000 5550 5000
Connection ~ 6050 5000
$Comp
L power:GND #PWR?
U 1 1 5D2B9D43
P 8400 5000
AR Path="/5D2B9D43" Ref="#PWR?"  Part="1" 
AR Path="/5D2A71D6/5D2B9D43" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8400 4750 50  0001 C CNN
F 1 "GND" H 8405 4827 50  0000 C CNN
F 2 "" H 8400 5000 50  0001 C CNN
F 3 "" H 8400 5000 50  0001 C CNN
	1    8400 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D2B9D49
P 4350 1400
AR Path="/5D2B9D49" Ref="#PWR?"  Part="1" 
AR Path="/5D2A71D6/5D2B9D49" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4350 1250 50  0001 C CNN
F 1 "+5V" H 4365 1573 50  0000 C CNN
F 2 "" H 4350 1400 50  0001 C CNN
F 3 "" H 4350 1400 50  0001 C CNN
	1    4350 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4700 3850 5000
Wire Wire Line
	3850 5000 4350 5000
Connection ~ 4350 5000
Wire Wire Line
	5550 4700 5550 5000
Connection ~ 5550 5000
Wire Wire Line
	5550 5000 5450 5000
Wire Wire Line
	7300 4700 7300 5000
Connection ~ 7300 5000
Wire Wire Line
	7300 5000 7200 5000
Wire Wire Line
	3750 5000 3850 5000
Connection ~ 3850 5000
Connection ~ 7200 5000
Wire Wire Line
	3850 3400 3750 3400
Wire Wire Line
	3850 4000 3750 4000
Connection ~ 3750 4000
Wire Wire Line
	3850 3900 3750 3900
Connection ~ 3750 3900
Wire Wire Line
	3750 3900 3750 4000
Wire Wire Line
	3850 3800 3750 3800
Connection ~ 3750 3800
Wire Wire Line
	3750 3800 3750 3900
Wire Wire Line
	3850 3700 3750 3700
Connection ~ 3750 3700
Wire Wire Line
	3750 3700 3750 3800
Wire Wire Line
	3850 3600 3750 3600
Connection ~ 3750 3600
Wire Wire Line
	3750 3600 3750 3700
Wire Wire Line
	3850 3500 3750 3500
Wire Wire Line
	3750 3500 3750 3600
Wire Wire Line
	5550 3400 5450 3400
Wire Wire Line
	5450 3400 5450 3500
Wire Wire Line
	5550 4000 5450 4000
Connection ~ 5450 4000
Wire Wire Line
	5550 3900 5450 3900
Connection ~ 5450 3900
Wire Wire Line
	5450 3900 5450 4000
Wire Wire Line
	5550 3800 5450 3800
Connection ~ 5450 3800
Wire Wire Line
	5450 3800 5450 3900
Wire Wire Line
	5550 3700 5450 3700
Connection ~ 5450 3700
Wire Wire Line
	5450 3700 5450 3800
Wire Wire Line
	5550 3600 5450 3600
Connection ~ 5450 3600
Wire Wire Line
	5450 3600 5450 3700
Wire Wire Line
	5550 3500 5450 3500
Connection ~ 5450 3500
Wire Wire Line
	5450 3500 5450 3600
Wire Wire Line
	7300 3400 7200 3400
Wire Wire Line
	7200 3400 7200 3500
Wire Wire Line
	7300 4000 7200 4000
Connection ~ 7200 4000
Wire Wire Line
	7300 3900 7200 3900
Connection ~ 7200 3900
Wire Wire Line
	7200 3900 7200 4000
Wire Wire Line
	7300 3800 7200 3800
Connection ~ 7200 3800
Wire Wire Line
	7200 3800 7200 3900
Wire Wire Line
	7300 3700 7200 3700
Connection ~ 7200 3700
Wire Wire Line
	7200 3700 7200 3800
Wire Wire Line
	7300 3600 7200 3600
Connection ~ 7200 3600
Wire Wire Line
	7200 3600 7200 3700
Wire Wire Line
	7300 3500 7200 3500
Connection ~ 7200 3500
Wire Wire Line
	7200 3500 7200 3600
Wire Wire Line
	6050 5000 6650 5000
Wire Wire Line
	4350 5000 4950 5000
Wire Wire Line
	4950 3400 4950 5000
Wire Wire Line
	4850 3400 4950 3400
Wire Wire Line
	6650 3400 6650 5000
Wire Wire Line
	6550 3400 6650 3400
Wire Wire Line
	8400 3400 8400 5000
Wire Wire Line
	8300 3400 8400 3400
Connection ~ 8400 5000
Connection ~ 3750 3500
Wire Wire Line
	3750 3400 3750 3500
Wire Wire Line
	3750 4000 3750 5000
Wire Wire Line
	5450 4000 5450 5000
Wire Wire Line
	7800 5000 7300 5000
Wire Wire Line
	7800 5000 8400 5000
Connection ~ 7800 5000
$Comp
L 74xx:74LS151 U?
U 1 1 5D2B9DA2
P 7800 4000
AR Path="/5D2B9DA2" Ref="U?"  Part="1" 
AR Path="/5D2A71D6/5D2B9DA2" Ref="U?"  Part="1" 
F 0 "U?" H 7850 4050 50  0000 C CNN
F 1 "74LS151" H 7850 3950 50  0000 C CNN
F 2 "" H 7800 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 7800 4000 50  0001 C CNN
	1    7800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4000 7200 5000
Wire Wire Line
	7100 4100 7300 4100
Wire Wire Line
	5550 4100 5350 4100
Wire Wire Line
	3850 4100 3650 4100
Wire Wire Line
	3650 4100 3650 3000
Wire Wire Line
	7100 3000 7100 4100
Wire Wire Line
	5350 4100 5350 3000
Wire Wire Line
	3850 4300 3550 4300
Wire Wire Line
	3550 4300 3550 2900
Wire Wire Line
	3450 2800 3450 4400
Wire Wire Line
	3450 4400 3850 4400
Wire Wire Line
	3350 2700 3350 4500
Wire Wire Line
	3350 4500 3850 4500
Wire Wire Line
	4350 1400 4350 2500
Connection ~ 4350 3100
Wire Wire Line
	5550 4400 5250 4400
Wire Wire Line
	5250 4400 5250 2600
Wire Wire Line
	3350 2700 5050 2700
Wire Wire Line
	3550 2900 6100 2900
Wire Wire Line
	3650 3000 5350 3000
Connection ~ 5350 3000
Wire Wire Line
	4350 3100 6050 3100
Connection ~ 4950 5000
Wire Wire Line
	4950 5000 5450 5000
Connection ~ 5450 5000
Wire Wire Line
	5900 2500 5150 2500
Wire Wire Line
	5150 2500 5150 4300
Wire Wire Line
	5150 4300 5550 4300
Wire Wire Line
	5050 2700 5050 4500
Wire Wire Line
	5050 4500 5550 4500
Connection ~ 5050 2700
Wire Wire Line
	5050 2700 6300 2700
Wire Wire Line
	6050 3100 7800 3100
Connection ~ 6050 3100
Wire Wire Line
	6650 5000 7200 5000
Connection ~ 6650 5000
Wire Wire Line
	7000 2800 7000 4500
Wire Wire Line
	7000 4500 7300 4500
Wire Wire Line
	6900 2600 6900 4400
Wire Wire Line
	6900 4400 7300 4400
Wire Wire Line
	5800 2400 6800 2400
Wire Wire Line
	6800 2400 6800 4300
Wire Wire Line
	6800 4300 7300 4300
Wire Wire Line
	8400 2300 8400 3400
Connection ~ 8400 3400
Wire Wire Line
	4850 5700 9100 5700
Wire Wire Line
	6550 5550 9100 5550
Wire Wire Line
	4850 3500 4850 5700
Wire Wire Line
	6550 3500 6550 5550
Wire Wire Line
	8300 5400 9100 5400
Wire Wire Line
	8300 3500 8300 5400
Text GLabel 9100 5700 2    50   Output ~ 0
ClockRate2
Text GLabel 9100 5550 2    50   Output ~ 0
ClockRate1
Text GLabel 9100 5400 2    50   Output ~ 0
ClockRate0
Connection ~ 4350 2500
Wire Wire Line
	4350 2500 4350 3100
Wire Wire Line
	5350 3000 6400 3000
Wire Wire Line
	6400 3000 7100 3000
Wire Wire Line
	5250 2600 6000 2600
Wire Wire Line
	6000 2600 6900 2600
Wire Wire Line
	3450 2800 6200 2800
Wire Wire Line
	6200 2800 7000 2800
Connection ~ 6400 3000
Connection ~ 6200 2800
Connection ~ 6000 2600
$Comp
L Connector:Screw_Terminal_01x09 J?
U 1 1 5D2B9DE9
P 6100 1250
AR Path="/5D2B9DE9" Ref="J?"  Part="1" 
AR Path="/5D2A71D6/5D2B9DE9" Ref="J?"  Part="1" 
F 0 "J?" V 6317 1246 50  0000 C CNN
F 1 "Clock Rate Rotary Switch" V 6226 1246 50  0000 C CNN
F 2 "" H 6100 1250 50  0001 C CNN
F 3 "~" H 6100 1250 50  0001 C CNN
	1    6100 1250
	0    -1   -1   0   
$EndComp
NoConn ~ 5700 1450
Wire Wire Line
	6500 1450 6500 1700
Wire Wire Line
	6500 2300 8400 2300
NoConn ~ 4900 2500
Wire Wire Line
	4500 2500 4350 2500
$Comp
L Device:R_Network09_US RN?
U 1 1 5D2B9DF4
P 4700 2100
AR Path="/5D2B9DF4" Ref="RN?"  Part="1" 
AR Path="/5D2A71D6/5D2B9DF4" Ref="RN?"  Part="1" 
F 0 "RN?" V 5325 2100 50  0000 C CNN
F 1 "4.7K" V 5234 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP10" V 5275 2100 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4700 2100 50  0001 C CNN
	1    4700 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 1450 6400 1800
Wire Wire Line
	6300 1450 6300 1900
Wire Wire Line
	6200 1450 6200 2000
Wire Wire Line
	6100 1450 6100 2100
Wire Wire Line
	6000 1450 6000 2200
Wire Wire Line
	5900 1450 5900 2300
Wire Wire Line
	5800 1450 5800 2400
Wire Wire Line
	4900 1700 6500 1700
Connection ~ 6500 1700
Wire Wire Line
	6500 1700 6500 2300
Wire Wire Line
	4900 1800 6400 1800
Connection ~ 6400 1800
Wire Wire Line
	6400 1800 6400 3000
Wire Wire Line
	4900 1900 6300 1900
Connection ~ 6300 1900
Wire Wire Line
	6300 1900 6300 2700
Wire Wire Line
	4900 2000 6200 2000
Connection ~ 6200 2000
Wire Wire Line
	6200 2000 6200 2800
Wire Wire Line
	4900 2100 6100 2100
Connection ~ 6100 2100
Wire Wire Line
	6100 2100 6100 2900
Wire Wire Line
	4900 2200 6000 2200
Connection ~ 6000 2200
Wire Wire Line
	6000 2200 6000 2600
Wire Wire Line
	4900 2300 5900 2300
Connection ~ 5900 2300
Wire Wire Line
	5900 2300 5900 2500
Wire Wire Line
	4900 2400 5800 2400
Connection ~ 5800 2400
$EndSCHEMATC
