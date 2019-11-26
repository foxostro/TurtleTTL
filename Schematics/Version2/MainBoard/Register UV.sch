EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 20 22
Title "Registers U and V"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "The UV register pair supplies the address for Data RAM."
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5E5A4510
P 6200 1950
AR Path="/5D2C07CD/5E5A4510" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5E5A4510" Ref="#PWR?"  Part="1" 
AR Path="/5E586E0B/5E5A4510" Ref="#PWR0267"  Part="1" 
F 0 "#PWR0267" H 6200 1700 50  0001 C CNN
F 1 "GND" H 6205 1777 50  0000 C CNN
F 2 "" H 6200 1950 50  0001 C CNN
F 3 "" H 6200 1950 50  0001 C CNN
	1    6200 1950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E5A4516
P 6200 1650
AR Path="/5D2C07CD/5E5A4516" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5E5A4516" Ref="#PWR?"  Part="1" 
AR Path="/5E586E0B/5E5A4516" Ref="#PWR0268"  Part="1" 
F 0 "#PWR0268" H 6200 1500 50  0001 C CNN
F 1 "VCC" H 6217 1823 50  0000 C CNN
F 2 "" H 6200 1650 50  0001 C CNN
F 3 "" H 6200 1650 50  0001 C CNN
	1    6200 1650
	1    0    0    -1  
$EndComp
Text GLabel 4750 3750 0    50   Input ~ 0
~VI
Text GLabel 4750 3450 0    50   Input ~ 0
RegisterClock
Text GLabel 4750 3300 0    50   Input ~ 0
DataBus[0..7]
Text GLabel 4750 3900 0    50   Input ~ 0
~UI
Text GLabel 4750 3600 0    50   Input ~ 0
UVInc
Text GLabel 4750 4050 0    50   Input ~ 0
~VO
Text GLabel 4750 4200 0    50   Input ~ 0
~UO
$EndSCHEMATC
