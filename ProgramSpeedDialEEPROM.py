#!/usr/bin/env python
#./ProgramSpeedDialEEPROM.py && minipro -p SST29EE010 -y -w ./SpeedDial.bin

size = 2**17
eepromBytes = bytearray(size)
eepromInts = memoryview(eepromBytes)

for i in range(0, len(eepromInts)):
	eepromInts[i] = 0

eepromInts[0b1111111] = 0
eepromInts[0b0111111] = 1
eepromInts[0b0011111] = 2
eepromInts[0b0001111] = 3
eepromInts[0b0000111] = 4
eepromInts[0b0000011] = 5
eepromInts[0b0000001] = 6
eepromInts[0b0000000] = 7

with open("SpeedDial.bin", "wb") as file:
	file.write(eepromBytes)
