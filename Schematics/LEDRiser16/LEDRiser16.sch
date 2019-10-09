EESchema Schematic File Version 4
LIBS:LEDRiser16-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "LEDRiser16"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "LED riser board with sixteen LEDs and a ground pin."
$EndDescr
$Comp
L LED:HDSP-4830_2 BAR2
U 1 1 5D83E98D
P 3850 5000
F 0 "BAR2" V 3804 5530 50  0000 L CNN
F 1 "HDSP-4830_2" V 3895 5530 50  0000 L CNN
F 2 "Display:HDSP-4830" H 3850 4200 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-1798EN" H 1850 5200 50  0001 C CNN
	1    3850 5000
	1    0    0    -1  
$EndComp
$Comp
L LED:HDSP-4830_2 BAR1
U 1 1 5D84B6C6
P 3850 3300
F 0 "BAR1" V 3804 3830 50  0000 L CNN
F 1 "HDSP-4830_2" V 3895 3830 50  0000 L CNN
F 2 "Display:HDSP-4830" H 3850 2500 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-1798EN" H 1850 3500 50  0001 C CNN
	1    3850 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x17_Male J1
U 1 1 5D836F73
P 2850 3600
F 0 "J1" V 2685 3578 50  0000 C CNN
F 1 "Conn_01x17_Male" V 2776 3578 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x17_P2.54mm_Vertical" H 2850 3600 50  0001 C CNN
F 3 "~" H 2850 3600 50  0001 C CNN
	1    2850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2900 3650 2900
Wire Wire Line
	3650 3000 3050 3000
Wire Wire Line
	3050 3100 3650 3100
Wire Wire Line
	3650 3200 3050 3200
Wire Wire Line
	3050 3300 3650 3300
Wire Wire Line
	3650 3400 3050 3400
Wire Wire Line
	3050 3500 3650 3500
Wire Wire Line
	3650 3600 3050 3600
Wire Wire Line
	3050 3700 3650 3700
Wire Wire Line
	3650 3800 3050 3800
Wire Wire Line
	3050 3900 3550 3900
Wire Wire Line
	3550 3900 3550 4600
Wire Wire Line
	3550 4600 3650 4600
Wire Wire Line
	3050 4000 3500 4000
Wire Wire Line
	3500 4000 3500 4700
Wire Wire Line
	3500 4700 3650 4700
Wire Wire Line
	3650 4800 3450 4800
Wire Wire Line
	3450 4800 3450 4100
Wire Wire Line
	3450 4100 3050 4100
Wire Wire Line
	3050 4200 3400 4200
Wire Wire Line
	3400 4200 3400 4900
Wire Wire Line
	3400 4900 3650 4900
Wire Wire Line
	3650 5000 3350 5000
Wire Wire Line
	3350 5000 3350 4300
Wire Wire Line
	3350 4300 3050 4300
Wire Wire Line
	3050 4400 3300 4400
Wire Wire Line
	3300 4400 3300 5100
Wire Wire Line
	3300 5100 3650 5100
$Comp
L power:GND #PWR01
U 1 1 5D873AB0
P 5000 4400
F 0 "#PWR01" H 5000 4150 50  0001 C CNN
F 1 "GND" H 5005 4227 50  0000 C CNN
F 2 "" H 5000 4400 50  0001 C CNN
F 3 "" H 5000 4400 50  0001 C CNN
	1    5000 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Network08 RN1
U 1 1 5D876B42
P 4550 3300
F 0 "RN1" V 3933 3300 50  0000 C CNN
F 1 "10kΩ" V 4024 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 5025 3300 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4550 3300 50  0001 C CNN
	1    4550 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN2
U 1 1 5D8793E8
P 4550 4800
F 0 "RN2" V 3933 4800 50  0000 C CNN
F 1 "10kΩ" V 4024 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 5025 4800 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4550 4800 50  0001 C CNN
	1    4550 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 2900 4050 2900
Wire Wire Line
	4050 3000 4350 3000
Wire Wire Line
	4350 3100 4050 3100
Wire Wire Line
	4050 3200 4350 3200
Wire Wire Line
	4350 3300 4050 3300
Wire Wire Line
	4050 3400 4350 3400
Wire Wire Line
	4350 3500 4050 3500
Wire Wire Line
	4350 3600 4050 3600
Wire Wire Line
	4750 2900 5000 2900
Wire Wire Line
	4750 4400 5000 4400
Wire Wire Line
	5000 2900 5000 4400
Wire Wire Line
	4050 3700 4250 3700
Wire Wire Line
	4250 3700 4250 4400
Wire Wire Line
	4250 4400 4350 4400
Wire Wire Line
	4050 3800 4200 3800
Wire Wire Line
	4200 3800 4200 4500
Wire Wire Line
	4200 4500 4350 4500
Wire Wire Line
	4050 4600 4350 4600
Wire Wire Line
	4350 4700 4050 4700
Wire Wire Line
	4050 4800 4350 4800
Wire Wire Line
	4350 4900 4050 4900
Wire Wire Line
	4050 5000 4350 5000
Wire Wire Line
	4350 5100 4050 5100
NoConn ~ 4050 5200
NoConn ~ 4050 5300
NoConn ~ 4050 5400
NoConn ~ 4050 5500
NoConn ~ 3650 5500
NoConn ~ 3650 5400
NoConn ~ 3650 5300
NoConn ~ 3650 5200
Connection ~ 5000 4400
Wire Wire Line
	3050 2800 3350 2800
Wire Wire Line
	3350 2800 3350 2100
Wire Wire Line
	3350 2100 5000 2100
Wire Wire Line
	5000 2100 5000 2900
Connection ~ 5000 2900
$EndSCHEMATC
