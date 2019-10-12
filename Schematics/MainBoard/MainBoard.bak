EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 21
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
P 2500 6600
AR Path="/5D2C0761/5D837B89" Ref="#PWR?"  Part="1" 
AR Path="/5D837B89" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2500 6450 50  0001 C CNN
F 1 "VCC" V 2517 6728 50  0000 L CNN
F 2 "" H 2500 6600 50  0001 C CNN
F 3 "" H 2500 6600 50  0001 C CNN
	1    2500 6600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D837B8F
P 2500 6900
AR Path="/5D2C0761/5D837B8F" Ref="#PWR?"  Part="1" 
AR Path="/5D837B8F" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2500 6650 50  0001 C CNN
F 1 "GND" V 2505 6772 50  0000 R CNN
F 2 "" H 2500 6900 50  0001 C CNN
F 3 "" H 2500 6900 50  0001 C CNN
	1    2500 6900
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5D837B95
P 1950 6750
AR Path="/5D2C0720/5D837B95" Ref="C?"  Part="1" 
AR Path="/5D2C0761/5D837B95" Ref="C?"  Part="1" 
AR Path="/5D837B95" Ref="C1"  Part="1" 
F 0 "C1" H 2042 6796 50  0000 L CNN
F 1 "10µF" H 2042 6705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 1950 6750 50  0001 C CNN
F 3 "~" H 1950 6750 50  0001 C CNN
	1    1950 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6900 1950 6900
Connection ~ 1950 6900
Wire Wire Line
	1950 6900 2500 6900
Wire Wire Line
	2500 6600 1950 6600
Connection ~ 1950 6600
$Sheet
S 4950 4500 1500 500 
U 5D9F1D54
F0 "Expansion" 50
F1 "Expansion.sch" 50
$EndSheet
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5D9C2947
P 1150 6900
F 0 "J1" H 1068 6575 50  0000 C CNN
F 1 "DC Power +5V" H 1068 6666 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type055_RT01502HDWU_1x02_P5.00mm_Horizontal" H 1150 6900 50  0001 C CNN
F 3 "~" H 1150 6900 50  0001 C CNN
	1    1150 6900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 6800 1750 6800
Wire Wire Line
	1750 6800 1750 6600
Wire Wire Line
	1750 6600 1950 6600
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5D9D8517
P 4000 6500
F 0 "H1" H 4100 6549 50  0000 L CNN
F 1 "MountingHole_Pad" H 4100 6458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 4000 6500 50  0001 C CNN
F 3 "~" H 4000 6500 50  0001 C CNN
	1    4000 6500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5D9D8A27
P 4900 6500
F 0 "H3" H 5000 6549 50  0000 L CNN
F 1 "MountingHole_Pad" H 5000 6458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 4900 6500 50  0001 C CNN
F 3 "~" H 4900 6500 50  0001 C CNN
	1    4900 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0225
U 1 1 5D9D8FA4
P 4000 6600
F 0 "#PWR0225" H 4000 6350 50  0001 C CNN
F 1 "GND" H 4005 6427 50  0000 C CNN
F 2 "" H 4000 6600 50  0001 C CNN
F 3 "" H 4000 6600 50  0001 C CNN
	1    4000 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0226
U 1 1 5D9D9546
P 4900 6600
F 0 "#PWR0226" H 4900 6350 50  0001 C CNN
F 1 "GND" H 4905 6427 50  0000 C CNN
F 2 "" H 4900 6600 50  0001 C CNN
F 3 "" H 4900 6600 50  0001 C CNN
	1    4900 6600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5D9DB4ED
P 4000 7000
F 0 "H2" H 4100 7049 50  0000 L CNN
F 1 "MountingHole_Pad" H 4100 6958 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 4000 7000 50  0001 C CNN
F 3 "~" H 4000 7000 50  0001 C CNN
	1    4000 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5D9DB4F3
P 4900 7000
F 0 "H4" H 5000 7049 50  0000 L CNN
F 1 "MountingHole_Pad" H 5000 6958 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 4900 7000 50  0001 C CNN
F 3 "~" H 4900 7000 50  0001 C CNN
	1    4900 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0227
U 1 1 5D9DB4F9
P 4000 7100
F 0 "#PWR0227" H 4000 6850 50  0001 C CNN
F 1 "GND" H 4005 6927 50  0000 C CNN
F 2 "" H 4000 7100 50  0001 C CNN
F 3 "" H 4000 7100 50  0001 C CNN
	1    4000 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0228
U 1 1 5D9DB4FF
P 4900 7100
F 0 "#PWR0228" H 4900 6850 50  0001 C CNN
F 1 "GND" H 4905 6927 50  0000 C CNN
F 2 "" H 4900 7100 50  0001 C CNN
F 3 "" H 4900 7100 50  0001 C CNN
	1    4900 7100
	1    0    0    -1  
$EndComp
$Sheet
S 6700 4500 1500 500 
U 5E586E0B
F0 "Register UV" 50
F1 "Register UV.sch" 50
$EndSheet
$EndSCHEMATC
