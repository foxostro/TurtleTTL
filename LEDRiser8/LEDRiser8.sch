EESchema Schematic File Version 4
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
$Comp
L Connector:Conn_01x09_Male J1
U 1 1 5D82912C
P 5550 2750
F 0 "J1" V 5385 2728 50  0000 C CNN
F 1 "Conn_01x09_Male" V 5476 2728 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 5550 2750 50  0001 C CNN
F 3 "~" H 5550 2750 50  0001 C CNN
	1    5550 2750
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5D82A3ED
P 6700 4000
F 0 "D1" V 6739 3883 50  0000 R CNN
F 1 "LED" V 6648 3883 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6700 4000 50  0001 C CNN
F 3 "~" H 6700 4000 50  0001 C CNN
	1    6700 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5D82B797
P 6350 4000
F 0 "D2" V 6389 3883 50  0000 R CNN
F 1 "LED" V 6298 3883 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6350 4000 50  0001 C CNN
F 3 "~" H 6350 4000 50  0001 C CNN
	1    6350 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5D82C03F
P 5650 4000
F 0 "D4" V 5689 3883 50  0000 R CNN
F 1 "LED" V 5598 3883 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5650 4000 50  0001 C CNN
F 3 "~" H 5650 4000 50  0001 C CNN
	1    5650 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5D82D68E
P 5300 4000
F 0 "D5" V 5339 3883 50  0000 R CNN
F 1 "LED" V 5248 3883 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5300 4000 50  0001 C CNN
F 3 "~" H 5300 4000 50  0001 C CNN
	1    5300 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5D82D694
P 4950 4000
F 0 "D6" V 4989 3883 50  0000 R CNN
F 1 "LED" V 4898 3883 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4950 4000 50  0001 C CNN
F 3 "~" H 4950 4000 50  0001 C CNN
	1    4950 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5D82D69A
P 4600 4000
F 0 "D7" V 4639 3883 50  0000 R CNN
F 1 "LED" V 4548 3883 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4600 4000 50  0001 C CNN
F 3 "~" H 4600 4000 50  0001 C CNN
	1    4600 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D8
U 1 1 5D82D6A0
P 4250 4000
F 0 "D8" V 4289 3883 50  0000 R CNN
F 1 "LED" V 4198 3883 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4250 4000 50  0001 C CNN
F 3 "~" H 4250 4000 50  0001 C CNN
	1    4250 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 3850 4250 3250
Wire Wire Line
	4250 3250 5150 3250
Wire Wire Line
	5150 3250 5150 2950
Wire Wire Line
	5250 2950 5250 3300
Wire Wire Line
	5250 3300 4600 3300
Wire Wire Line
	4600 3300 4600 3850
Wire Wire Line
	4950 3850 4950 3350
Wire Wire Line
	4950 3350 5350 3350
Wire Wire Line
	5350 3350 5350 2950
Wire Wire Line
	5450 2950 5450 3400
Wire Wire Line
	5450 3400 5300 3400
Wire Wire Line
	5300 3400 5300 3850
Wire Wire Line
	5550 2950 5550 3450
Wire Wire Line
	5550 3450 5650 3450
Wire Wire Line
	5650 3450 5650 3850
Wire Wire Line
	5650 2950 5650 3400
Wire Wire Line
	5650 3400 6000 3400
Wire Wire Line
	6000 3400 6000 3850
Wire Wire Line
	5750 2950 5750 3350
Wire Wire Line
	5750 3350 6350 3350
Wire Wire Line
	5850 2950 5850 3300
Wire Wire Line
	5850 3300 6700 3300
Wire Wire Line
	6700 3300 6700 3850
$Comp
L Device:R_Small R1
U 1 1 5D83240C
P 6700 4500
F 0 "R1" H 6759 4546 50  0000 L CNN
F 1 "220Ω" H 6759 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6700 4500 50  0001 C CNN
F 3 "~" H 6700 4500 50  0001 C CNN
	1    6700 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5D8329A8
P 6350 4500
F 0 "R2" H 6409 4546 50  0000 L CNN
F 1 "220Ω" H 6409 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6350 4500 50  0001 C CNN
F 3 "~" H 6350 4500 50  0001 C CNN
	1    6350 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5D832D0B
P 6000 4500
F 0 "R3" H 6059 4546 50  0000 L CNN
F 1 "220Ω" H 6059 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6000 4500 50  0001 C CNN
F 3 "~" H 6000 4500 50  0001 C CNN
	1    6000 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5D83302F
P 5650 4500
F 0 "R4" H 5709 4546 50  0000 L CNN
F 1 "220Ω" H 5709 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5650 4500 50  0001 C CNN
F 3 "~" H 5650 4500 50  0001 C CNN
	1    5650 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5D83348E
P 5300 4500
F 0 "R5" H 5359 4546 50  0000 L CNN
F 1 "220Ω" H 5359 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5300 4500 50  0001 C CNN
F 3 "~" H 5300 4500 50  0001 C CNN
	1    5300 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5D83368C
P 4950 4500
F 0 "R6" H 5009 4546 50  0000 L CNN
F 1 "220Ω" H 5009 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 4500 50  0001 C CNN
F 3 "~" H 4950 4500 50  0001 C CNN
	1    4950 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5D83395C
P 4600 4500
F 0 "R7" H 4659 4546 50  0000 L CNN
F 1 "220Ω" H 4659 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 4500 50  0001 C CNN
F 3 "~" H 4600 4500 50  0001 C CNN
	1    4600 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5D833B06
P 4250 4500
F 0 "R8" H 4309 4546 50  0000 L CNN
F 1 "220Ω" H 4309 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4250 4500 50  0001 C CNN
F 3 "~" H 4250 4500 50  0001 C CNN
	1    4250 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4150 4250 4400
Wire Wire Line
	4600 4400 4600 4150
Wire Wire Line
	4950 4150 4950 4400
Wire Wire Line
	5300 4150 5300 4400
Wire Wire Line
	5650 4150 5650 4400
Wire Wire Line
	6000 4150 6000 4400
Wire Wire Line
	6350 4150 6350 4400
Wire Wire Line
	6700 4150 6700 4400
Wire Wire Line
	4250 4600 4250 4850
Wire Wire Line
	4250 4850 4600 4850
Wire Wire Line
	6700 4850 6700 4600
Wire Wire Line
	5950 2950 5950 3250
Wire Wire Line
	5950 3250 7050 3250
Wire Wire Line
	7050 3250 7050 4850
Wire Wire Line
	7050 4850 6700 4850
Connection ~ 6700 4850
Wire Wire Line
	6350 4600 6350 4850
Connection ~ 6350 4850
Wire Wire Line
	6350 4850 6700 4850
Wire Wire Line
	6000 4600 6000 4850
Connection ~ 6000 4850
Wire Wire Line
	6000 4850 6350 4850
Wire Wire Line
	5650 4600 5650 4850
Connection ~ 5650 4850
Wire Wire Line
	5650 4850 6000 4850
Wire Wire Line
	5300 4600 5300 4850
Connection ~ 5300 4850
Wire Wire Line
	5300 4850 5650 4850
Wire Wire Line
	4950 4600 4950 4850
Connection ~ 4950 4850
Wire Wire Line
	4950 4850 5300 4850
Wire Wire Line
	4600 4600 4600 4850
Connection ~ 4600 4850
Wire Wire Line
	4600 4850 4950 4850
Wire Wire Line
	6350 3350 6350 3850
$Comp
L Device:LED D3
U 1 1 5D82BC7C
P 6000 4000
F 0 "D3" V 6039 3883 50  0000 R CNN
F 1 "LED" V 5948 3883 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6000 4000 50  0001 C CNN
F 3 "~" H 6000 4000 50  0001 C CNN
	1    6000 4000
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
