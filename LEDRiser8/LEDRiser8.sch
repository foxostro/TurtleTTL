EESchema Schematic File Version 4
LIBS:LEDRiser8-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "LED riser board with eight LEDs and a ground pin."
$EndDescr
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
$Comp
L power:GND #PWR01
U 1 1 5D873AB0
P 3850 4000
F 0 "#PWR01" H 3850 3750 50  0001 C CNN
F 1 "GND" H 3855 3827 50  0000 C CNN
F 2 "" H 3850 4000 50  0001 C CNN
F 3 "" H 3850 4000 50  0001 C CNN
	1    3850 4000
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
	5000 4000 3850 4000
Wire Wire Line
	5000 2900 5000 4000
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
L Connector:Conn_01x09_Male J1
U 1 1 5D836F73
P 2850 3300
F 0 "J1" V 2685 3278 50  0000 C CNN
F 1 "Conn_01x09_Male" V 2776 3278 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 2850 3300 50  0001 C CNN
F 3 "~" H 2850 3300 50  0001 C CNN
	1    2850 3300
	1    0    0    -1  
$EndComp
NoConn ~ 3650 3800
NoConn ~ 4050 3800
NoConn ~ 3650 3700
NoConn ~ 4050 3700
Wire Wire Line
	3050 3700 3250 3700
Wire Wire Line
	3250 3700 3250 4000
Wire Wire Line
	3250 4000 3850 4000
Connection ~ 3850 4000
$EndSCHEMATC
