EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 20
Title "TurtleTTL: Main Board"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "TTL microcomputer built from 74xx series logic chips."
$EndDescr
$Sheet
S 4950 3800 1500 500 
U 5D29E36D
F0 "Register D" 50
F1 "Register D.sch" 50
$EndSheet
$Sheet
S 3200 1700 1500 500 
U 5D7BD0EA
F0 "Register XY" 50
F1 "Register XY.sch" 50
$EndSheet
$Sheet
S 3200 2400 1500 500 
U 5D2C07CD
F0 "Program Counter" 50
F1 "Program Counter.sch" 50
$EndSheet
$Sheet
S 3200 3100 1500 500 
U 5D8005AF
F0 "Instruction Fetch" 50
F1 "Instruction Fetch.sch" 50
$EndSheet
$Sheet
S 3200 3800 1500 500 
U 5D2C0B92
F0 "Instruction Decode" 50
F1 "Instruction Decode.sch" 50
$EndSheet
$Sheet
S 3200 4500 1500 500 
U 5D2C13FD
F0 "Execute" 50
F1 "Execute.sch" 50
$EndSheet
$Sheet
S 6700 2400 1500 500 
U 5D79C284
F0 "Speed Control" 50
F1 "Speed Control.sch" 50
$EndSheet
$Sheet
S 6700 3100 1500 500 
U 5D2C0720
F0 "Clock" 50
F1 "Clock.sch" 50
$EndSheet
$Sheet
S 6700 3800 1500 500 
U 5D2C0761
F0 "Power-on Reset" 50
F1 "Power-on Reset.sch" 50
$EndSheet
$Sheet
S 4950 1700 1500 500 
U 5D2C0CA7
F0 "Register A" 50
F1 "Register A.sch" 50
$EndSheet
$Sheet
S 4950 2400 1500 500 
U 5D2C0D13
F0 "Register B" 50
F1 "Register B.sch" 50
$EndSheet
$Sheet
S 4950 3100 1500 500 
U 5D2C0CE4
F0 "ALU" 50
F1 "ALU.sch" 50
$EndSheet
$Sheet
S 6700 1700 1500 500 
U 5D2C12A5
F0 "Bus Display" 50
F1 "Bus Display.sch" 50
$EndSheet
$Comp
L power:VCC #PWR?
U 1 1 5D837B89
P 3050 6950
AR Path="/5D2C0761/5D837B89" Ref="#PWR?"  Part="1" 
AR Path="/5D837B89" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 3050 6800 50  0001 C CNN
F 1 "VCC" V 3067 7078 50  0000 L CNN
F 2 "" H 3050 6950 50  0001 C CNN
F 3 "" H 3050 6950 50  0001 C CNN
	1    3050 6950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D837B8F
P 3050 7250
AR Path="/5D2C0761/5D837B8F" Ref="#PWR?"  Part="1" 
AR Path="/5D837B8F" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 3050 7000 50  0001 C CNN
F 1 "GND" V 3055 7122 50  0000 R CNN
F 2 "" H 3050 7250 50  0001 C CNN
F 3 "" H 3050 7250 50  0001 C CNN
	1    3050 7250
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5D837B95
P 2500 7100
AR Path="/5D2C0720/5D837B95" Ref="C?"  Part="1" 
AR Path="/5D2C0761/5D837B95" Ref="C?"  Part="1" 
AR Path="/5D837B95" Ref="C1"  Part="1" 
F 0 "C1" H 2592 7146 50  0000 L CNN
F 1 "10µF" H 2592 7055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2500 7100 50  0001 C CNN
F 3 "~" H 2500 7100 50  0001 C CNN
	1    2500 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 7250 2500 7250
Connection ~ 2500 7250
Wire Wire Line
	2500 7250 3050 7250
Wire Wire Line
	3050 6950 2500 6950
Connection ~ 2500 6950
$Sheet
S 4950 4500 1500 500 
U 5D9F1D54
F0 "Expansion" 50
F1 "Expansion.sch" 50
$EndSheet
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5D9C2947
P 1700 7250
F 0 "J1" H 1618 6925 50  0000 C CNN
F 1 "DC Power +5V" H 1618 7016 50  0000 C CNN
F 2 "TerminalBlock_WAGO:TerminalBlock_WAGO_236-102_1x02_P5.00mm_45Degree" H 1700 7250 50  0001 C CNN
F 3 "~" H 1700 7250 50  0001 C CNN
	1    1700 7250
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 7150 2300 7150
Wire Wire Line
	2300 7150 2300 6950
Wire Wire Line
	2300 6950 2500 6950
$EndSCHEMATC
