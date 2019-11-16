EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 19 22
Title "Data RAM"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "The Data RAM and its address registers are located on an external card."
$EndDescr
Text GLabel 6950 4600 2    50   Input ~ 0
~MO
Text GLabel 6950 4400 2    50   Input ~ 0
~MI
$Comp
L power:GND #PWR?
U 1 1 5DCF4475
P 5600 5600
AR Path="/5D2C07CD/5DCF4475" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DCF4475" Ref="#PWR?"  Part="1" 
AR Path="/5E586E0B/5DCF4475" Ref="#PWR?"  Part="1" 
AR Path="/5DAA13E6/5DCF4475" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 5600 5350 50  0001 C CNN
F 1 "GND" H 5605 5427 50  0000 C CNN
F 2 "" H 5600 5600 50  0001 C CNN
F 3 "" H 5600 5600 50  0001 C CNN
	1    5600 5600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DCF447B
P 5600 2700
AR Path="/5D2C07CD/5DCF447B" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5DCF447B" Ref="#PWR?"  Part="1" 
AR Path="/5E586E0B/5DCF447B" Ref="#PWR?"  Part="1" 
AR Path="/5DAA13E6/5DCF447B" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 5600 2550 50  0001 C CNN
F 1 "VCC" H 5617 2873 50  0000 C CNN
F 2 "" H 5600 2700 50  0001 C CNN
F 3 "" H 5600 2700 50  0001 C CNN
	1    5600 2700
	1    0    0    -1  
$EndComp
Text GLabel 4250 4900 0    50   Input ~ 0
~VI
Text GLabel 4250 4300 0    50   Input ~ 0
RegisterClock
Text GLabel 6950 3500 2    50   3State ~ 0
DataBus[0..7]
Text GLabel 4250 4500 0    50   Input ~ 0
~UI
Text GLabel 6950 4200 2    50   Input ~ 0
UVInc
Text GLabel 4250 5100 0    50   Input ~ 0
~VO
Text GLabel 4250 4700 0    50   Input ~ 0
~UO
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 5DD09828
P 5550 4300
AR Path="/5D2C0CE4/5DD09828" Ref="J?"  Part="1" 
AR Path="/5DAA13E6/5DD09828" Ref="J27"  Part="1" 
F 0 "J27" H 5600 3000 50  0000 C CNN
F 1 "Data RAM Connector" H 5600 3100 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 5550 4300 50  0001 C CNN
F 3 "~" H 5550 4300 50  0001 C CNN
	1    5550 4300
	1    0    0    1   
$EndComp
Entry Wire Line
	6550 3400 6650 3500
Wire Wire Line
	6550 3400 5850 3400
Entry Wire Line
	6550 3600 6650 3700
Wire Wire Line
	6550 3600 5850 3600
Entry Wire Line
	6550 3800 6650 3900
Wire Wire Line
	6550 3800 5850 3800
Entry Wire Line
	6550 4000 6650 4100
Wire Wire Line
	6550 4000 5850 4000
Wire Bus Line
	6650 3500 6950 3500
Text Label 6200 3400 0    50   ~ 0
DataBus7
Text Label 6200 3600 0    50   ~ 0
DataBus5
Text Label 6200 3800 0    50   ~ 0
DataBus3
Text Label 6200 4000 0    50   ~ 0
DataBus1
Text GLabel 4250 3600 0    50   3State ~ 0
DataBus[0..7]
Entry Wire Line
	4650 3500 4550 3600
Wire Wire Line
	4650 3500 5350 3500
Entry Wire Line
	4650 3700 4550 3800
Wire Wire Line
	4650 3700 5350 3700
Entry Wire Line
	4650 3900 4550 4000
Wire Wire Line
	4650 3900 5350 3900
Entry Wire Line
	4650 4100 4550 4200
Wire Wire Line
	4650 4100 5350 4100
Wire Bus Line
	4550 3600 4250 3600
Text Label 5000 3500 2    50   ~ 0
DataBus6
Text Label 5000 3700 2    50   ~ 0
DataBus4
Text Label 5000 3900 2    50   ~ 0
DataBus2
Text Label 5000 4100 2    50   ~ 0
DataBus0
Wire Wire Line
	5350 3400 5050 3400
Wire Wire Line
	5050 3400 5050 2850
Wire Wire Line
	5050 2850 5600 2850
Wire Wire Line
	5600 2850 5600 2700
Wire Wire Line
	5600 2850 6150 2850
Wire Wire Line
	6150 2850 6150 3300
Wire Wire Line
	6150 3300 5850 3300
Connection ~ 5600 2850
Wire Wire Line
	5350 3300 5250 3300
Wire Wire Line
	5250 3300 5250 3600
Wire Wire Line
	5250 5350 5600 5350
Wire Wire Line
	5600 5350 5600 5600
Wire Wire Line
	5850 3500 5950 3500
Wire Wire Line
	5950 3500 5950 3700
Wire Wire Line
	5950 5350 5600 5350
Connection ~ 5600 5350
Wire Wire Line
	5350 3600 5250 3600
Connection ~ 5250 3600
Wire Wire Line
	5250 3600 5250 3800
Wire Wire Line
	5250 3800 5350 3800
Connection ~ 5250 3800
Wire Wire Line
	5250 3800 5250 4000
Wire Wire Line
	5350 4000 5250 4000
Connection ~ 5250 4000
Wire Wire Line
	5250 4000 5250 4200
Wire Wire Line
	5250 4200 5350 4200
Connection ~ 5250 4200
Wire Wire Line
	5250 4200 5250 4400
Wire Wire Line
	5350 4400 5250 4400
Connection ~ 5250 4400
Wire Wire Line
	5250 4400 5250 4600
Wire Wire Line
	5250 4600 5350 4600
Connection ~ 5250 4600
Wire Wire Line
	5250 4600 5250 4800
Wire Wire Line
	5350 4800 5250 4800
Connection ~ 5250 4800
Wire Wire Line
	5250 4800 5250 5000
Wire Wire Line
	5250 5000 5350 5000
Connection ~ 5250 5000
Wire Wire Line
	5250 5000 5250 5200
Wire Wire Line
	5350 5200 5250 5200
Connection ~ 5250 5200
Wire Wire Line
	5250 5200 5250 5350
Wire Wire Line
	5850 3700 5950 3700
Connection ~ 5950 3700
Wire Wire Line
	5950 3700 5950 3900
Wire Wire Line
	5850 3900 5950 3900
Connection ~ 5950 3900
Wire Wire Line
	5950 3900 5950 4100
Wire Wire Line
	5850 4100 5950 4100
Connection ~ 5950 4100
Wire Wire Line
	5950 4100 5950 4300
Wire Wire Line
	5850 4300 5950 4300
Connection ~ 5950 4300
Wire Wire Line
	5950 4300 5950 4500
Wire Wire Line
	5850 4500 5950 4500
Connection ~ 5950 4500
Wire Wire Line
	5950 4500 5950 4700
Wire Wire Line
	5850 4700 5950 4700
Connection ~ 5950 4700
Wire Wire Line
	5950 4700 5950 4900
Wire Wire Line
	5850 4900 5950 4900
Connection ~ 5950 4900
Wire Wire Line
	5950 4900 5950 5100
Wire Wire Line
	5850 5100 5950 5100
Connection ~ 5950 5100
Wire Wire Line
	5950 5100 5950 5350
Wire Wire Line
	5350 4300 4250 4300
Wire Wire Line
	5850 4200 6950 4200
Wire Wire Line
	5350 4900 4250 4900
Wire Wire Line
	4250 5100 5350 5100
Wire Wire Line
	5350 4500 4250 4500
Wire Wire Line
	4250 4700 5350 4700
Wire Wire Line
	5850 4400 6950 4400
Wire Wire Line
	5850 4800 6950 4800
Wire Wire Line
	5850 5000 6950 5000
Wire Wire Line
	5850 5200 6950 5200
Wire Wire Line
	5850 4600 6950 4600
NoConn ~ 6950 4800
NoConn ~ 6950 5000
NoConn ~ 6950 5200
Text Notes 7050 5050 0    50   ~ 0
Unconnected pins for future expansion.
Wire Bus Line
	6650 3500 6650 4100
Wire Bus Line
	4550 3600 4550 4200
$EndSCHEMATC
