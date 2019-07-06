EESchema Schematic File Version 4
LIBS:Firenze-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 19
Title "Rotary Switch Encoder"
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
P 3550 4100
AR Path="/5D2B9D35" Ref="U?"  Part="1" 
AR Path="/5D2A71D6/5D2B9D35" Ref="U?"  Part="1" 
F 0 "U?" H 3600 4150 50  0000 C CNN
F 1 "74LS151" H 3600 4050 50  0000 C CNN
F 2 "" H 3550 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 3550 4100 50  0001 C CNN
	1    3550 4100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS151 U?
U 1 1 5D2B9D3B
P 5250 4100
AR Path="/5D2B9D3B" Ref="U?"  Part="1" 
AR Path="/5D2A71D6/5D2B9D3B" Ref="U?"  Part="1" 
F 0 "U?" H 5300 4150 50  0000 C CNN
F 1 "74LS151" H 5300 4050 50  0000 C CNN
F 2 "" H 5250 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 5250 4100 50  0001 C CNN
	1    5250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5100 4750 5100
Connection ~ 5250 5100
$Comp
L power:GND #PWR?
U 1 1 5D2B9D43
P 7600 5100
AR Path="/5D2B9D43" Ref="#PWR?"  Part="1" 
AR Path="/5D2A71D6/5D2B9D43" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7600 4850 50  0001 C CNN
F 1 "GND" H 7605 4927 50  0000 C CNN
F 2 "" H 7600 5100 50  0001 C CNN
F 3 "" H 7600 5100 50  0001 C CNN
	1    7600 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D2B9D49
P 3550 1500
AR Path="/5D2B9D49" Ref="#PWR?"  Part="1" 
AR Path="/5D2A71D6/5D2B9D49" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3550 1350 50  0001 C CNN
F 1 "+5V" H 3565 1673 50  0000 C CNN
F 2 "" H 3550 1500 50  0001 C CNN
F 3 "" H 3550 1500 50  0001 C CNN
	1    3550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4800 3050 5100
Wire Wire Line
	3050 5100 3550 5100
Connection ~ 3550 5100
Wire Wire Line
	4750 4800 4750 5100
Connection ~ 4750 5100
Wire Wire Line
	4750 5100 4650 5100
Wire Wire Line
	6500 4800 6500 5100
Connection ~ 6500 5100
Wire Wire Line
	6500 5100 6400 5100
Wire Wire Line
	2950 5100 3050 5100
Connection ~ 3050 5100
Connection ~ 6400 5100
Wire Wire Line
	3050 3500 2950 3500
Wire Wire Line
	3050 4100 2950 4100
Connection ~ 2950 4100
Wire Wire Line
	3050 4000 2950 4000
Connection ~ 2950 4000
Wire Wire Line
	2950 4000 2950 4100
Wire Wire Line
	3050 3900 2950 3900
Connection ~ 2950 3900
Wire Wire Line
	2950 3900 2950 4000
Wire Wire Line
	3050 3800 2950 3800
Connection ~ 2950 3800
Wire Wire Line
	2950 3800 2950 3900
Wire Wire Line
	3050 3700 2950 3700
Connection ~ 2950 3700
Wire Wire Line
	2950 3700 2950 3800
Wire Wire Line
	3050 3600 2950 3600
Wire Wire Line
	2950 3600 2950 3700
Wire Wire Line
	4750 3500 4650 3500
Wire Wire Line
	4650 3500 4650 3600
Wire Wire Line
	4750 4100 4650 4100
Connection ~ 4650 4100
Wire Wire Line
	4750 4000 4650 4000
Connection ~ 4650 4000
Wire Wire Line
	4650 4000 4650 4100
Wire Wire Line
	4750 3900 4650 3900
Connection ~ 4650 3900
Wire Wire Line
	4650 3900 4650 4000
Wire Wire Line
	4750 3800 4650 3800
Connection ~ 4650 3800
Wire Wire Line
	4650 3800 4650 3900
Wire Wire Line
	4750 3700 4650 3700
Connection ~ 4650 3700
Wire Wire Line
	4650 3700 4650 3800
Wire Wire Line
	4750 3600 4650 3600
Connection ~ 4650 3600
Wire Wire Line
	4650 3600 4650 3700
Wire Wire Line
	6500 3500 6400 3500
Wire Wire Line
	6400 3500 6400 3600
Wire Wire Line
	6500 4100 6400 4100
Connection ~ 6400 4100
Wire Wire Line
	6500 4000 6400 4000
Connection ~ 6400 4000
Wire Wire Line
	6400 4000 6400 4100
Wire Wire Line
	6500 3900 6400 3900
Connection ~ 6400 3900
Wire Wire Line
	6400 3900 6400 4000
Wire Wire Line
	6500 3800 6400 3800
Connection ~ 6400 3800
Wire Wire Line
	6400 3800 6400 3900
Wire Wire Line
	6500 3700 6400 3700
Connection ~ 6400 3700
Wire Wire Line
	6400 3700 6400 3800
Wire Wire Line
	6500 3600 6400 3600
Connection ~ 6400 3600
Wire Wire Line
	6400 3600 6400 3700
Wire Wire Line
	5250 5100 5850 5100
Wire Wire Line
	3550 5100 4150 5100
Wire Wire Line
	4150 3500 4150 5100
Wire Wire Line
	4050 3500 4150 3500
Wire Wire Line
	5850 3500 5850 5100
Wire Wire Line
	5750 3500 5850 3500
Wire Wire Line
	7600 3500 7600 5100
Wire Wire Line
	7500 3500 7600 3500
Connection ~ 7600 5100
Connection ~ 2950 3600
Wire Wire Line
	2950 3500 2950 3600
Wire Wire Line
	2950 4100 2950 5100
Wire Wire Line
	4650 4100 4650 5100
Wire Wire Line
	7000 5100 6500 5100
Wire Wire Line
	7000 5100 7600 5100
Connection ~ 7000 5100
$Comp
L 74xx:74LS151 U?
U 1 1 5D2B9DA2
P 7000 4100
AR Path="/5D2B9DA2" Ref="U?"  Part="1" 
AR Path="/5D2A71D6/5D2B9DA2" Ref="U?"  Part="1" 
F 0 "U?" H 7050 4150 50  0000 C CNN
F 1 "74LS151" H 7050 4050 50  0000 C CNN
F 2 "" H 7000 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 7000 4100 50  0001 C CNN
	1    7000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4100 6400 5100
Wire Wire Line
	6300 4200 6500 4200
Wire Wire Line
	4750 4200 4550 4200
Wire Wire Line
	3050 4200 2850 4200
Wire Wire Line
	2850 4200 2850 3100
Wire Wire Line
	6300 3100 6300 4200
Wire Wire Line
	4550 4200 4550 3100
Wire Wire Line
	3050 4400 2750 4400
Wire Wire Line
	2750 4400 2750 3000
Wire Wire Line
	2650 2900 2650 4500
Wire Wire Line
	2650 4500 3050 4500
Wire Wire Line
	2550 2800 2550 4600
Wire Wire Line
	2550 4600 3050 4600
Wire Wire Line
	3550 1500 3550 2600
Connection ~ 3550 3200
Wire Wire Line
	4750 4500 4450 4500
Wire Wire Line
	4450 4500 4450 2700
Wire Wire Line
	2550 2800 4250 2800
Wire Wire Line
	2750 3000 5300 3000
Wire Wire Line
	2850 3100 4550 3100
Connection ~ 4550 3100
Wire Wire Line
	3550 3200 5250 3200
Connection ~ 4150 5100
Wire Wire Line
	4150 5100 4650 5100
Connection ~ 4650 5100
Wire Wire Line
	5100 2600 4350 2600
Wire Wire Line
	4350 2600 4350 4400
Wire Wire Line
	4350 4400 4750 4400
Wire Wire Line
	4250 2800 4250 4600
Wire Wire Line
	4250 4600 4750 4600
Connection ~ 4250 2800
Wire Wire Line
	4250 2800 5500 2800
Wire Wire Line
	5250 3200 7000 3200
Connection ~ 5250 3200
Wire Wire Line
	5850 5100 6400 5100
Connection ~ 5850 5100
Wire Wire Line
	6200 2900 6200 4600
Wire Wire Line
	6200 4600 6500 4600
Wire Wire Line
	6100 2700 6100 4500
Wire Wire Line
	6100 4500 6500 4500
Wire Wire Line
	5000 2500 6000 2500
Wire Wire Line
	6000 2500 6000 4400
Wire Wire Line
	6000 4400 6500 4400
Wire Wire Line
	7600 2400 7600 3500
Connection ~ 7600 3500
Wire Wire Line
	4050 5800 8300 5800
Wire Wire Line
	5750 5650 8300 5650
Wire Wire Line
	4050 3600 4050 5800
Wire Wire Line
	5750 3600 5750 5650
Wire Wire Line
	7500 5500 8300 5500
Wire Wire Line
	7500 3600 7500 5500
Text GLabel 8300 5800 2    50   Output ~ 0
ClockRate2
Text GLabel 8300 5650 2    50   Output ~ 0
ClockRate1
Text GLabel 8300 5500 2    50   Output ~ 0
ClockRate0
Connection ~ 3550 2600
Wire Wire Line
	3550 2600 3550 3200
Wire Wire Line
	4550 3100 5600 3100
Wire Wire Line
	5600 3100 6300 3100
Wire Wire Line
	4450 2700 5200 2700
Wire Wire Line
	5200 2700 6100 2700
Wire Wire Line
	2650 2900 5400 2900
Wire Wire Line
	5400 2900 6200 2900
Connection ~ 5600 3100
Connection ~ 5400 2900
Connection ~ 5200 2700
$Comp
L Connector:Screw_Terminal_01x09 J?
U 1 1 5D2B9DE9
P 5300 1350
AR Path="/5D2B9DE9" Ref="J?"  Part="1" 
AR Path="/5D2A71D6/5D2B9DE9" Ref="J?"  Part="1" 
F 0 "J?" V 5517 1346 50  0000 C CNN
F 1 "Clock Rate Rotary Switch" V 5426 1346 50  0000 C CNN
F 2 "" H 5300 1350 50  0001 C CNN
F 3 "~" H 5300 1350 50  0001 C CNN
	1    5300 1350
	0    -1   -1   0   
$EndComp
NoConn ~ 4900 1550
Wire Wire Line
	5700 1550 5700 1800
Wire Wire Line
	5700 2400 7600 2400
NoConn ~ 4100 2600
Wire Wire Line
	3700 2600 3550 2600
$Comp
L Device:R_Network09_US RN?
U 1 1 5D2B9DF4
P 3900 2200
AR Path="/5D2B9DF4" Ref="RN?"  Part="1" 
AR Path="/5D2A71D6/5D2B9DF4" Ref="RN?"  Part="1" 
F 0 "RN?" V 4525 2200 50  0000 C CNN
F 1 "4.7K" V 4434 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP10" V 4475 2200 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 3900 2200 50  0001 C CNN
	1    3900 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 1550 5600 1900
Wire Wire Line
	5500 1550 5500 2000
Wire Wire Line
	5400 1550 5400 2100
Wire Wire Line
	5300 1550 5300 2200
Wire Wire Line
	5200 1550 5200 2300
Wire Wire Line
	5100 1550 5100 2400
Wire Wire Line
	5000 1550 5000 2500
Wire Wire Line
	4100 1800 5700 1800
Connection ~ 5700 1800
Wire Wire Line
	5700 1800 5700 2400
Wire Wire Line
	4100 1900 5600 1900
Connection ~ 5600 1900
Wire Wire Line
	5600 1900 5600 3100
Wire Wire Line
	4100 2000 5500 2000
Connection ~ 5500 2000
Wire Wire Line
	5500 2000 5500 2800
Wire Wire Line
	4100 2100 5400 2100
Connection ~ 5400 2100
Wire Wire Line
	5400 2100 5400 2900
Wire Wire Line
	4100 2200 5300 2200
Connection ~ 5300 2200
Wire Wire Line
	5300 2200 5300 3000
Wire Wire Line
	4100 2300 5200 2300
Connection ~ 5200 2300
Wire Wire Line
	5200 2300 5200 2700
Wire Wire Line
	4100 2400 5100 2400
Connection ~ 5100 2400
Wire Wire Line
	5100 2400 5100 2600
Wire Wire Line
	4100 2500 5000 2500
Connection ~ 5000 2500
$EndSCHEMATC
