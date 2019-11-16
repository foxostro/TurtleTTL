EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 13 22
Title "Power-on Reset"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 "During reset, this will pulse the control clock repeatedly to clear the CPU pipeline."
Comment4 "The Power-on Reset circuit is on an external board."
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5D9A0626
P 4700 4650
AR Path="/5D2C0720/5D9A0626" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0761/5D9A0626" Ref="#PWR0156"  Part="1" 
F 0 "#PWR0156" H 4700 4400 50  0001 C CNN
F 1 "GND" H 4705 4477 50  0000 C CNN
F 2 "" H 4700 4650 50  0001 C CNN
F 3 "" H 4700 4650 50  0001 C CNN
	1    4700 4650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0155
U 1 1 5D9AB207
P 5000 3450
F 0 "#PWR0155" H 5000 3300 50  0001 C CNN
F 1 "VCC" H 5017 3623 50  0000 C CNN
F 2 "" H 5000 3450 50  0001 C CNN
F 3 "" H 5000 3450 50  0001 C CNN
	1    5000 3450
	1    0    0    -1  
$EndComp
Text GLabel 6000 4100 2    50   Output ~ 0
~RST
Text GLabel 4700 4100 0    50   Input ~ 0
CLK
Text GLabel 4700 3950 0    50   Input ~ 0
FixedRateClock
Text GLabel 6000 3950 2    50   Output ~ 0
ControlClock
$Comp
L Connector:Conn_01x09_Female J?
U 1 1 5DCE7F64
P 5400 4650
AR Path="/5D2C0720/5DCE7F64" Ref="J?"  Part="1" 
AR Path="/5D2C0761/5DCE7F64" Ref="J30"  Part="1" 
F 0 "J30" V 5473 4630 50  0000 C CNN
F 1 "Reset Connector" V 5564 4630 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 5400 4650 50  0001 C CNN
F 3 "~" H 5400 4650 50  0001 C CNN
	1    5400 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 3450 5000 4450
Wire Wire Line
	4700 4650 4700 4300
Wire Wire Line
	4700 4300 5100 4300
Wire Wire Line
	5100 4300 5100 4450
Wire Wire Line
	5100 4300 5300 4300
Wire Wire Line
	5300 4300 5300 4450
Connection ~ 5100 4300
Wire Wire Line
	5300 4300 5500 4300
Wire Wire Line
	5500 4300 5500 4450
Connection ~ 5300 4300
Wire Wire Line
	5500 4300 5700 4300
Wire Wire Line
	5700 4300 5700 4450
Connection ~ 5500 4300
Wire Wire Line
	4700 4100 5200 4100
Wire Wire Line
	5200 4100 5200 4450
Wire Wire Line
	4700 3950 5400 3950
Wire Wire Line
	5400 3950 5400 4450
Wire Wire Line
	6000 3950 5600 3950
Wire Wire Line
	5600 3950 5600 4450
Wire Wire Line
	6000 4100 5800 4100
Wire Wire Line
	5800 4100 5800 4450
$EndSCHEMATC
