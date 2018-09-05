EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:65xx
LIBS:Oscillators
LIBS:RC1 CPU-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L WD65C02 U1
U 1 1 5B8AF4E5
P 2050 1750
F 0 "U1" H 2050 600 60  0000 C CNN
F 1 "WD65C02" V 2050 1650 60  0000 C CNN
F 2 "" H 1550 1950 60  0000 C CNN
F 3 "" H 1550 1950 60  0000 C CNN
	1    2050 1750
	1    0    0    -1  
$EndComp
$Comp
L R6532 U2
U 1 1 5B8AF50E
P 2050 4150
F 0 "U2" H 2050 3000 60  0000 C CNN
F 1 "6532_A" V 2050 4050 60  0000 C CNN
F 2 "" H 1550 4350 60  0000 C CNN
F 3 "" H 1550 4350 60  0000 C CNN
	1    2050 4150
	1    0    0    -1  
$EndComp
$Comp
L R6532 U3
U 1 1 5B8AF537
P 2050 6450
F 0 "U3" H 2050 5300 60  0000 C CNN
F 1 "6532_B" V 2050 6350 60  0000 C CNN
F 2 "" H 1550 6650 60  0000 C CNN
F 3 "" H 1550 6650 60  0000 C CNN
	1    2050 6450
	1    0    0    -1  
$EndComp
Entry Wire Line
	3100 1550 3200 1650
Entry Wire Line
	3100 1650 3200 1750
Entry Wire Line
	3100 1750 3200 1850
Entry Wire Line
	3100 1850 3200 1950
Entry Wire Line
	3100 1950 3200 2050
Entry Wire Line
	3100 2050 3200 2150
Entry Wire Line
	3100 2150 3200 2250
Entry Wire Line
	3100 2250 3200 2350
Entry Wire Line
	3100 2350 3200 2450
Entry Wire Line
	3100 2450 3200 2550
Entry Wire Line
	3100 2550 3200 2650
Entry Wire Line
	3100 2650 3200 2750
Entry Wire Line
	900  1550 1000 1650
Entry Wire Line
	900  1650 1000 1750
Entry Wire Line
	900  1750 1000 1850
Entry Wire Line
	900  1850 1000 1950
Entry Wire Line
	900  1950 1000 2050
Entry Wire Line
	900  2050 1000 2150
Entry Wire Line
	900  2150 1000 2250
Entry Wire Line
	900  2250 1000 2350
Entry Wire Line
	900  2350 1000 2450
Entry Wire Line
	900  2450 1000 2550
Entry Wire Line
	900  2550 1000 2650
Entry Wire Line
	900  2650 1000 2750
Text Label 2725 1550 0    60   ~ 0
D0
Text Label 2725 1650 0    60   ~ 0
D1
Text Label 2725 1750 0    60   ~ 0
D2
Text Label 2725 1850 0    60   ~ 0
D3
Text Label 2725 1950 0    60   ~ 0
D4
Text Label 2725 2050 0    60   ~ 0
D5
Text Label 2725 2150 0    60   ~ 0
D6
Text Label 2725 2250 0    60   ~ 0
D7
Text Label 2725 2350 0    60   ~ 0
A15
Text Label 2725 2450 0    60   ~ 0
A14
Text Label 2725 2550 0    60   ~ 0
A13
Text Label 2725 2650 0    60   ~ 0
A12
Text Label 1375 1650 2    60   ~ 0
A0
Text Label 1375 1750 2    60   ~ 0
A1
Text Label 1375 1850 2    60   ~ 0
A2
Text Label 1375 1950 2    60   ~ 0
A3
Text Label 1375 2050 2    60   ~ 0
A4
Text Label 1375 2150 2    60   ~ 0
A5
Text Label 1375 2250 2    60   ~ 0
A6
Text Label 1375 2350 2    60   ~ 0
A7
Text Label 1375 2450 2    60   ~ 0
A8
Text Label 1375 2550 2    60   ~ 0
A9
Text Label 1375 2650 2    60   ~ 0
A10
Text Label 1375 2750 2    60   ~ 0
A11
Entry Wire Line
	3100 3950 3200 4050
Entry Wire Line
	3100 4050 3200 4150
Entry Wire Line
	3100 4150 3200 4250
Entry Wire Line
	3100 4250 3200 4350
Entry Wire Line
	3100 4350 3200 4450
Entry Wire Line
	3100 4450 3200 4550
Entry Wire Line
	3100 4550 3200 4650
Entry Wire Line
	3100 4650 3200 4750
Text Label 2725 3950 0    60   ~ 0
D0
Text Label 2725 4050 0    60   ~ 0
D1
Text Label 2725 4150 0    60   ~ 0
D2
Text Label 2725 4250 0    60   ~ 0
D3
Text Label 2725 4350 0    60   ~ 0
D4
Text Label 2725 4450 0    60   ~ 0
D5
Text Label 2725 4550 0    60   ~ 0
D6
Text Label 2725 4650 0    60   ~ 0
D7
Entry Wire Line
	3100 6250 3200 6350
Entry Wire Line
	3100 6350 3200 6450
Entry Wire Line
	3100 6450 3200 6550
Entry Wire Line
	3100 6550 3200 6650
Entry Wire Line
	3100 6650 3200 6750
Entry Wire Line
	3100 6750 3200 6850
Entry Wire Line
	3100 6850 3200 6950
Entry Wire Line
	3100 6950 3200 7050
Text Label 2725 6250 0    60   ~ 0
D0
Text Label 2725 6350 0    60   ~ 0
D1
Text Label 2725 6450 0    60   ~ 0
D2
Text Label 2725 6550 0    60   ~ 0
D3
Text Label 2725 6650 0    60   ~ 0
D4
Text Label 2725 6750 0    60   ~ 0
D5
Text Label 2725 6850 0    60   ~ 0
D6
Text Label 2725 6950 0    60   ~ 0
D7
Entry Wire Line
	3100 3250 3200 3350
Text Label 2725 3250 0    60   ~ 0
A6
Entry Wire Line
	900  3250 1000 3350
Entry Wire Line
	900  3350 1000 3450
Entry Wire Line
	900  3450 1000 3550
Entry Wire Line
	900  3550 1000 3650
Entry Wire Line
	900  3650 1000 3750
Entry Wire Line
	900  3750 1000 3850
Text Label 1375 3350 2    60   ~ 0
A5
Text Label 1375 3450 2    60   ~ 0
A4
Text Label 1375 3550 2    60   ~ 0
A3
Text Label 1375 3650 2    60   ~ 0
A2
Text Label 1375 3750 2    60   ~ 0
A1
Text Label 1375 3850 2    60   ~ 0
A0
Entry Wire Line
	900  5550 1000 5650
Entry Wire Line
	900  5650 1000 5750
Entry Wire Line
	900  5750 1000 5850
Entry Wire Line
	900  5850 1000 5950
Entry Wire Line
	900  5950 1000 6050
Entry Wire Line
	900  6050 1000 6150
Text Label 1375 5650 2    60   ~ 0
A5
Text Label 1375 5750 2    60   ~ 0
A4
Text Label 1375 5850 2    60   ~ 0
A3
Text Label 1375 5950 2    60   ~ 0
A2
Text Label 1375 6050 2    60   ~ 0
A1
Text Label 1375 6150 2    60   ~ 0
A0
Entry Wire Line
	3100 5550 3200 5650
Text Label 2725 5550 0    60   ~ 0
A6
Entry Wire Line
	3100 3350 3200 3450
Text Label 2725 3350 0    60   ~ 0
CLK2
Entry Wire Line
	3100 950  3200 1050
Text Label 2725 950  0    60   ~ 0
CLK2
Entry Wire Line
	3100 5650 3200 5750
Text Label 2725 5650 0    60   ~ 0
CLK2
Entry Wire Line
	3100 850  3200 950 
Text Label 2725 850  0    60   ~ 0
~RESET
Entry Wire Line
	3100 3850 3200 3950
Text Label 2725 3850 0    60   ~ 0
~RESET
Entry Wire Line
	3100 6150 3200 6250
Text Label 2725 6150 0    60   ~ 0
~RESET
Entry Wire Line
	900  950  1000 1050
Text Label 1375 1050 2    60   ~ 0
CLK1
Entry Wire Line
	900  850  1000 950 
Text Label 1375 950  2    60   ~ 0
~RDY
Entry Wire Line
	900  1250 1000 1350
Text Label 1375 1350 2    60   ~ 0
~NMI
Entry Wire Line
	900  1050 1000 1150
Text Label 1375 1150 2    60   ~ 0
~IRQ
Entry Wire Line
	900  1350 1000 1450
Text Label 1375 1450 2    60   ~ 0
SYNC
Entry Wire Line
	3100 1050 3200 1150
Text Label 2725 1050 0    60   ~ 0
R0
Entry Wire Line
	3100 1150 3200 1250
Text Label 2725 1150 0    60   ~ 0
CLK0
Text Label 4750 3300 0    60   ~ 0
R/~W
$Comp
L GND #PWR01
U 1 1 5B8DA8E3
P 1200 5550
F 0 "#PWR01" H 1200 5300 50  0001 C CNN
F 1 "GND" H 1200 5400 50  0000 C CNN
F 2 "" H 1200 5550 50  0001 C CNN
F 3 "" H 1200 5550 50  0001 C CNN
	1    1200 5550
	0    1    1    0   
$EndComp
NoConn ~ 1400 1250
$Comp
L Jumper_NO_Small JP?
U 1 1 5B8DAF26
P 1600 625
F 0 "JP?" H 1600 705 50  0000 C CNN
F 1 "VP_GND" H 1575 575 50  0000 C CNN
F 2 "" H 1600 625 50  0001 C CNN
F 3 "" H 1600 625 50  0001 C CNN
	1    1600 625 
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5B8DB28D
P 2850 1250
F 0 "R?" V 2930 1250 50  0000 C CNN
F 1 "3.3k" V 2850 1250 50  0000 C CNN
F 2 "" V 2780 1250 50  0001 C CNN
F 3 "" H 2850 1250 50  0001 C CNN
	1    2850 1250
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR02
U 1 1 5B8DB3FF
P 3000 1250
F 0 "#PWR02" H 3000 1100 50  0001 C CNN
F 1 "VCC" H 3000 1400 50  0000 C CNN
F 2 "" H 3000 1250 50  0001 C CNN
F 3 "" H 3000 1250 50  0001 C CNN
	1    3000 1250
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR03
U 1 1 5B8DB55D
P 1225 1550
F 0 "#PWR03" H 1225 1400 50  0001 C CNN
F 1 "VCC" H 1225 1700 50  0000 C CNN
F 2 "" H 1225 1550 50  0001 C CNN
F 3 "" H 1225 1550 50  0001 C CNN
	1    1225 1550
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR04
U 1 1 5B8DB6D2
P 1225 7450
F 0 "#PWR04" H 1225 7300 50  0001 C CNN
F 1 "VCC" H 1225 7600 50  0000 C CNN
F 2 "" H 1225 7450 50  0001 C CNN
F 3 "" H 1225 7450 50  0001 C CNN
	1    1225 7450
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR05
U 1 1 5B8DB71C
P 1225 5150
F 0 "#PWR05" H 1225 5000 50  0001 C CNN
F 1 "VCC" H 1225 5300 50  0000 C CNN
F 2 "" H 1225 5150 50  0001 C CNN
F 3 "" H 1225 5150 50  0001 C CNN
	1    1225 5150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 5B8DB928
P 1200 3250
F 0 "#PWR06" H 1200 3000 50  0001 C CNN
F 1 "GND" H 1200 3100 50  0000 C CNN
F 2 "" H 1200 3250 50  0001 C CNN
F 3 "" H 1200 3250 50  0001 C CNN
	1    1200 3250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 5B8DBA69
P 2900 2750
F 0 "#PWR07" H 2900 2500 50  0001 C CNN
F 1 "GND" H 2900 2600 50  0000 C CNN
F 2 "" H 2900 2750 50  0001 C CNN
F 3 "" H 2900 2750 50  0001 C CNN
	1    2900 2750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5B8DBCB4
P 1800 625
F 0 "#PWR08" H 1800 375 50  0001 C CNN
F 1 "GND" H 1800 475 50  0000 C CNN
F 2 "" H 1800 625 50  0001 C CNN
F 3 "" H 1800 625 50  0001 C CNN
	1    1800 625 
	0    -1   -1   0   
$EndComp
Entry Wire Line
	3100 3750 3200 3850
Text Label 2725 3750 0    60   ~ 0
R/~W
Entry Wire Line
	3100 6050 3200 6150
Text Label 2725 6050 0    60   ~ 0
R/~W
$Comp
L 74LS145 U4
U 1 1 5B8DC4DB
P 4500 2250
F 0 "U4" H 4500 2250 50  0000 C CNN
F 1 "74LS145" H 4450 1950 50  0000 C CNN
F 2 "" H 4500 2250 50  0001 C CNN
F 3 "" H 4500 2250 50  0001 C CNN
	1    4500 2250
	1    0    0    -1  
$EndComp
Entry Wire Line
	5500 1800 5600 1900
Entry Wire Line
	5500 1900 5600 2000
Entry Wire Line
	5500 2000 5600 2100
Entry Wire Line
	5500 2100 5600 2200
Entry Wire Line
	5500 2200 5600 2300
Entry Wire Line
	5500 2300 5600 2400
Entry Wire Line
	5500 2400 5600 2500
Text Label 5125 1800 0    60   ~ 0
K0
Text Label 5125 1900 0    60   ~ 0
K1
Text Label 5125 2000 0    60   ~ 0
K2
Text Label 5125 2100 0    60   ~ 0
K3
Text Label 5125 2200 0    60   ~ 0
K4
Text Label 5125 2300 0    60   ~ 0
K5
Text Label 5250 2400 0    60   ~ 0
K7
NoConn ~ 5100 2600
NoConn ~ 5100 2700
Entry Wire Line
	3400 2000 3500 2100
Entry Wire Line
	3400 2100 3500 2200
Entry Wire Line
	3400 2200 3500 2300
Text Label 3875 2100 2    60   ~ 0
A10
Text Label 3875 2200 2    60   ~ 0
A11
Text Label 3875 2300 2    60   ~ 0
A12
Entry Wire Line
	3400 2300 3500 2400
Text Label 3875 2400 2    60   ~ 0
DECEN
$Comp
L R R1
U 1 1 5B8FB7C1
P 3425 925
F 0 "R1" V 3505 925 50  0000 C CNN
F 1 "3k3" V 3425 925 50  0000 C CNN
F 2 "" V 3355 925 50  0001 C CNN
F 3 "" H 3425 925 50  0001 C CNN
	1    3425 925 
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B8FB834
P 3625 925
F 0 "R2" V 3705 925 50  0000 C CNN
F 1 "3k3" V 3625 925 50  0000 C CNN
F 2 "" V 3555 925 50  0001 C CNN
F 3 "" H 3625 925 50  0001 C CNN
	1    3625 925 
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5B8FB860
P 3825 925
F 0 "R3" V 3905 925 50  0000 C CNN
F 1 "3k3" V 3825 925 50  0000 C CNN
F 2 "" V 3755 925 50  0001 C CNN
F 3 "" H 3825 925 50  0001 C CNN
	1    3825 925 
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5B8FB88D
P 4025 925
F 0 "R4" V 4105 925 50  0000 C CNN
F 1 "3k3" V 4025 925 50  0000 C CNN
F 2 "" V 3955 925 50  0001 C CNN
F 3 "" H 4025 925 50  0001 C CNN
	1    4025 925 
	1    0    0    -1  
$EndComp
Entry Wire Line
	3425 1475 3525 1575
Entry Wire Line
	3625 1475 3725 1575
Entry Wire Line
	3825 1475 3925 1575
Entry Wire Line
	4025 1475 4125 1575
Text Label 3825 1100 3    60   ~ 0
~RDY
Text Label 3425 1100 3    60   ~ 0
~NMI
Text Label 3625 1100 3    60   ~ 0
~IRQ
Text Label 4025 1075 3    60   ~ 0
~RESET
$Comp
L VCC #PWR09
U 1 1 5B8FBE6F
P 3425 675
F 0 "#PWR09" H 3425 525 50  0001 C CNN
F 1 "VCC" H 3425 825 50  0000 C CNN
F 2 "" H 3425 675 50  0001 C CNN
F 3 "" H 3425 675 50  0001 C CNN
	1    3425 675 
	1    0    0    -1  
$EndComp
$Comp
L ACO-xxxMHz X1
U 1 1 5B8FC387
P 5200 1075
F 0 "X1" H 5000 1325 50  0000 L CNN
F 1 "ACO-xxxMHz" H 5300 1350 50  0000 L CNN
F 2 "Oscillators:Oscillator_DIP-14" H 5650 725 50  0001 C CNN
F 3 "" H 5100 1075 50  0001 C CNN
	1    5200 1075
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5B8FC55A
P 5200 1375
F 0 "#PWR010" H 5200 1125 50  0001 C CNN
F 1 "GND" H 5200 1225 50  0000 C CNN
F 2 "" H 5200 1375 50  0001 C CNN
F 3 "" H 5200 1375 50  0001 C CNN
	1    5200 1375
	1    0    0    -1  
$EndComp
Entry Wire Line
	5500 1475 5600 1575
Text Label 5500 1100 3    60   ~ 0
CLK0
$Comp
L R R35
U 1 1 5B8FD177
P 4225 925
F 0 "R35" V 4305 925 50  0000 C CNN
F 1 "560" V 4225 925 50  0000 C CNN
F 2 "" V 4155 925 50  0001 C CNN
F 3 "" H 4225 925 50  0001 C CNN
	1    4225 925 
	1    0    0    -1  
$EndComp
$Comp
L R R36
U 1 1 5B8FD17D
P 4425 925
F 0 "R36" V 4505 925 50  0000 C CNN
F 1 "560" V 4425 925 50  0000 C CNN
F 2 "" V 4355 925 50  0001 C CNN
F 3 "" H 4425 925 50  0001 C CNN
	1    4425 925 
	1    0    0    -1  
$EndComp
$Comp
L R R38
U 1 1 5B8FD183
P 4625 925
F 0 "R38" V 4705 925 50  0000 C CNN
F 1 "560" V 4625 925 50  0000 C CNN
F 2 "" V 4555 925 50  0001 C CNN
F 3 "" H 4625 925 50  0001 C CNN
	1    4625 925 
	1    0    0    -1  
$EndComp
Entry Wire Line
	4225 1475 4325 1575
Entry Wire Line
	4425 1475 4525 1575
Entry Wire Line
	4625 1475 4725 1575
Text Label 4425 1100 3    60   ~ 0
K7
Text Label 4225 1100 3    60   ~ 0
K0
Text Label 4625 1075 3    60   ~ 0
K5
$Comp
L VCC #PWR011
U 1 1 5B8FDAFD
P 2875 5750
F 0 "#PWR011" H 2875 5600 50  0001 C CNN
F 1 "VCC" H 2875 5900 50  0000 C CNN
F 2 "" H 2875 5750 50  0001 C CNN
F 3 "" H 2875 5750 50  0001 C CNN
	1    2875 5750
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR012
U 1 1 5B8FDB90
P 2875 3450
F 0 "#PWR012" H 2875 3300 50  0001 C CNN
F 1 "VCC" H 2875 3600 50  0000 C CNN
F 2 "" H 2875 3450 50  0001 C CNN
F 3 "" H 2875 3450 50  0001 C CNN
	1    2875 3450
	0    1    1    0   
$EndComp
$Comp
L Jumper_NO_Small JP4
U 1 1 5B8FE448
P 2800 4750
F 0 "JP4" H 2700 4800 50  0000 C CNN
F 1 "IRQ_EN_A" H 2810 4690 50  0000 C CNN
F 2 "" H 2800 4750 50  0001 C CNN
F 3 "" H 2800 4750 50  0001 C CNN
	1    2800 4750
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP5
U 1 1 5B8FE5F3
P 2800 7050
F 0 "JP5" H 2700 7100 50  0000 C CNN
F 1 "IRQ_EN_B" H 2810 6990 50  0000 C CNN
F 2 "" H 2800 7050 50  0001 C CNN
F 3 "" H 2800 7050 50  0001 C CNN
	1    2800 7050
	1    0    0    -1  
$EndComp
Entry Wire Line
	3100 4750 3200 4850
Entry Wire Line
	3100 7050 3200 7150
Text Label 2925 7050 0    60   ~ 0
~IRQ
Text Label 2925 4750 0    60   ~ 0
~IRQ
$Comp
L 74LS04 U16
U 2 1 5B901104
P 4075 3100
F 0 "U16" H 4270 3215 50  0000 C CNN
F 1 "74LS04" H 4265 2975 50  0000 C CNN
F 2 "" H 4075 3100 50  0001 C CNN
F 3 "" H 4075 3100 50  0001 C CNN
	2    4075 3100
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U16
U 3 1 5B901187
P 4075 3500
F 0 "U16" H 4270 3615 50  0000 C CNN
F 1 "74LS04" H 4265 3375 50  0000 C CNN
F 2 "" H 4075 3500 50  0001 C CNN
F 3 "" H 4075 3500 50  0001 C CNN
	3    4075 3500
	1    0    0    -1  
$EndComp
Text Label 4750 3100 0    60   ~ 0
~R/W
$Comp
L 74LS04 U16
U 1 1 5B90382F
P 4150 5300
F 0 "U16" H 4345 5415 50  0000 C CNN
F 1 "74LS04" H 4340 5175 50  0000 C CNN
F 2 "" H 4150 5300 50  0001 C CNN
F 3 "" H 4150 5300 50  0001 C CNN
	1    4150 5300
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U16
U 4 1 5B903880
P 15200 1075
F 0 "U16" H 15395 1190 50  0000 C CNN
F 1 "74LS04" H 15390 950 50  0000 C CNN
F 2 "" H 15200 1075 50  0001 C CNN
F 3 "" H 15200 1075 50  0001 C CNN
	4    15200 1075
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U16
U 5 1 5B9038E0
P 15200 1450
F 0 "U16" H 15395 1565 50  0000 C CNN
F 1 "74LS04" H 15390 1325 50  0000 C CNN
F 2 "" H 15200 1450 50  0001 C CNN
F 3 "" H 15200 1450 50  0001 C CNN
	5    15200 1450
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U16
U 6 1 5B903933
P 15200 1800
F 0 "U16" H 15395 1915 50  0000 C CNN
F 1 "74LS04" H 15390 1675 50  0000 C CNN
F 2 "" H 15200 1800 50  0001 C CNN
F 3 "" H 15200 1800 50  0001 C CNN
	6    15200 1800
	1    0    0    -1  
$EndComp
Entry Wire Line
	5125 3100 5225 3200
Entry Wire Line
	5125 3300 5225 3400
$Comp
L R R39
U 1 1 5B904DF4
P 4825 925
F 0 "R39" V 4905 925 50  0000 C CNN
F 1 "560" V 4825 925 50  0000 C CNN
F 2 "" V 4755 925 50  0001 C CNN
F 3 "" H 4825 925 50  0001 C CNN
	1    4825 925 
	1    0    0    -1  
$EndComp
Entry Wire Line
	4825 1475 4925 1575
Text Label 4825 1075 3    60   ~ 0
RAMRW
$Comp
L 74LS145 U7
U 1 1 5B8FAF2A
P 4500 4400
F 0 "U7" H 4500 4400 50  0000 C CNN
F 1 "74LS145" H 4450 4100 50  0000 C CNN
F 2 "" H 4500 4400 50  0001 C CNN
F 3 "" H 4500 4400 50  0001 C CNN
	1    4500 4400
	1    0    0    -1  
$EndComp
Entry Wire Line
	3400 4150 3500 4250
Entry Wire Line
	3400 4250 3500 4350
Entry Wire Line
	3400 4350 3500 4450
Text Label 3875 4250 2    60   ~ 0
A13
Text Label 3875 4350 2    60   ~ 0
A14
Text Label 3875 4450 2    60   ~ 0
A15
$Comp
L GND #PWR013
U 1 1 5B8FB54E
P 3900 4550
F 0 "#PWR013" H 3900 4300 50  0001 C CNN
F 1 "GND" H 3900 4400 50  0000 C CNN
F 2 "" H 3900 4550 50  0001 C CNN
F 3 "" H 3900 4550 50  0001 C CNN
	1    3900 4550
	1    0    0    -1  
$EndComp
Entry Wire Line
	5225 3600 5325 3700
Text Label 5325 3825 2    60   ~ 0
DECEN
NoConn ~ 5100 4050
NoConn ~ 5100 4150
NoConn ~ 5100 4250
NoConn ~ 5100 4350
NoConn ~ 5100 4450
NoConn ~ 5100 4550
NoConn ~ 5100 4750
NoConn ~ 5100 4850
$Comp
L NE555 U?
U 1 1 5B8FCF22
P 7650 1275
F 0 "U?" H 7250 1625 50  0000 L CNN
F 1 "NE555" H 7750 1625 50  0000 L CNN
F 2 "" H 7650 1275 50  0001 C CNN
F 3 "" H 7650 1275 50  0001 C CNN
	1    7650 1275
	0    1    1    0   
$EndComp
Text Label 6675 1775 0    60   ~ 0
~NMI
NoConn ~ 7850 1775
$Comp
L VCC #PWR?
U 1 1 5B8FD4AE
P 8175 725
F 0 "#PWR?" H 8175 575 50  0001 C CNN
F 1 "VCC" H 8175 875 50  0000 C CNN
F 2 "" H 8175 725 50  0001 C CNN
F 3 "" H 8175 725 50  0001 C CNN
	1    8175 725 
	1    0    0    -1  
$EndComp
NoConn ~ 7650 775 
$Comp
L GND #PWR?
U 1 1 5B8FE3D6
P 7250 1275
F 0 "#PWR?" H 7250 1025 50  0001 C CNN
F 1 "GND" H 7250 1125 50  0000 C CNN
F 2 "" H 7250 1275 50  0001 C CNN
F 3 "" H 7250 1275 50  0001 C CNN
	1    7250 1275
	1    0    0    -1  
$EndComp
$Comp
L NE555 U?
U 1 1 5B8FE690
P 7650 2675
F 0 "U?" H 7250 3025 50  0000 L CNN
F 1 "NE555" H 7750 3025 50  0000 L CNN
F 2 "" H 7650 2675 50  0001 C CNN
F 3 "" H 7650 2675 50  0001 C CNN
	1    7650 2675
	0    1    1    0   
$EndComp
NoConn ~ 7850 3175
$Comp
L VCC #PWR?
U 1 1 5B8FE698
P 8175 2050
F 0 "#PWR?" H 8175 1900 50  0001 C CNN
F 1 "VCC" H 8175 2200 50  0000 C CNN
F 2 "" H 8175 2050 50  0001 C CNN
F 3 "" H 8175 2050 50  0001 C CNN
	1    8175 2050
	1    0    0    -1  
$EndComp
NoConn ~ 7650 2175
$Comp
L GND #PWR?
U 1 1 5B8FE6AB
P 7250 2675
F 0 "#PWR?" H 7250 2425 50  0001 C CNN
F 1 "GND" H 7250 2525 50  0000 C CNN
F 2 "" H 7250 2675 50  0001 C CNN
F 3 "" H 7250 2675 50  0001 C CNN
	1    7250 2675
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5B8FEF49
P 8650 2125
F 0 "C3" H 8675 2225 50  0000 L CNN
F 1 "220nF" H 8675 2025 50  0000 L CNN
F 2 "" H 8688 1975 50  0001 C CNN
F 3 "" H 8650 2125 50  0001 C CNN
	1    8650 2125
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 5B8FF38B
P 8650 3025
F 0 "C2" H 8675 3125 50  0000 L CNN
F 1 "220nF" H 8675 2925 50  0000 L CNN
F 2 "" H 8688 2875 50  0001 C CNN
F 3 "" H 8650 3025 50  0001 C CNN
	1    8650 3025
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5B8FF44D
P 8475 2575
F 0 "#PWR?" H 8475 2325 50  0001 C CNN
F 1 "GND" H 8475 2425 50  0000 C CNN
F 2 "" H 8475 2575 50  0001 C CNN
F 3 "" H 8475 2575 50  0001 C CNN
	1    8475 2575
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5B8FFCE6
P 8925 3300
F 0 "R12" V 9005 3300 50  0000 C CNN
F 1 "1k" V 8925 3300 50  0000 C CNN
F 2 "" V 8855 3300 50  0001 C CNN
F 3 "" H 8925 3300 50  0001 C CNN
	1    8925 3300
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5B8FFFD1
P 8925 1850
F 0 "R13" V 9005 1850 50  0000 C CNN
F 1 "1k" V 8925 1850 50  0000 C CNN
F 2 "" V 8855 1850 50  0001 C CNN
F 3 "" H 8925 1850 50  0001 C CNN
	1    8925 1850
	0    1    1    0   
$EndComp
$Comp
L R R25
U 1 1 5B9007DA
P 9200 2125
F 0 "R25" V 9280 2125 50  0000 C CNN
F 1 "47k" V 9200 2125 50  0000 C CNN
F 2 "" V 9130 2125 50  0001 C CNN
F 3 "" H 9200 2125 50  0001 C CNN
	1    9200 2125
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5B900A51
P 9200 3025
F 0 "R?" V 9280 3025 50  0000 C CNN
F 1 "47k" V 9200 3025 50  0000 C CNN
F 2 "" V 9130 3025 50  0001 C CNN
F 3 "" H 9200 3025 50  0001 C CNN
	1    9200 3025
	-1   0    0    1   
$EndComp
$Comp
L SW_SPST K1
U 1 1 5B902D93
P 9450 2125
F 0 "K1" H 9450 2250 50  0000 C CNN
F 1 "SW_SPST" H 9450 2025 50  0000 C CNN
F 2 "" H 9450 2125 50  0001 C CNN
F 3 "" H 9450 2125 50  0001 C CNN
	1    9450 2125
	0    1    1    0   
$EndComp
$Comp
L SW_SPST K2
U 1 1 5B902EBD
P 9450 3025
F 0 "K2" H 9450 3150 50  0000 C CNN
F 1 "SW_SPST" H 9450 2925 50  0000 C CNN
F 2 "" H 9450 3025 50  0001 C CNN
F 3 "" H 9450 3025 50  0001 C CNN
	1    9450 3025
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B9033DF
P 9625 2575
F 0 "#PWR?" H 9625 2425 50  0001 C CNN
F 1 "VCC" H 9625 2725 50  0000 C CNN
F 2 "" H 9625 2575 50  0001 C CNN
F 3 "" H 9625 2575 50  0001 C CNN
	1    9625 2575
	1    0    0    -1  
$EndComp
Entry Wire Line
	6625 1775 6525 1875
Entry Wire Line
	6625 3175 6525 3275
Text Label 6650 3175 0    60   ~ 0
~RESET
$Comp
L GND #PWR?
U 1 1 5B9120AA
P 14750 4075
F 0 "#PWR?" H 14750 3825 50  0001 C CNN
F 1 "GND" H 14750 3925 50  0000 C CNN
F 2 "" H 14750 4075 50  0001 C CNN
F 3 "" H 14750 4075 50  0001 C CNN
	1    14750 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1550 3100 1550
Wire Wire Line
	2700 1650 3100 1650
Wire Wire Line
	2700 1750 3100 1750
Wire Wire Line
	2700 1850 3100 1850
Wire Wire Line
	2700 1950 3100 1950
Wire Wire Line
	2700 2050 3100 2050
Wire Wire Line
	2700 2150 3100 2150
Wire Wire Line
	2700 2250 3100 2250
Wire Wire Line
	2700 2350 3100 2350
Wire Wire Line
	2700 2450 3100 2450
Wire Wire Line
	2700 2550 3100 2550
Wire Wire Line
	2700 2650 3100 2650
Wire Wire Line
	1000 1650 1400 1650
Wire Wire Line
	1000 1750 1400 1750
Wire Wire Line
	1000 1850 1400 1850
Wire Wire Line
	1000 1950 1400 1950
Wire Wire Line
	1000 2050 1400 2050
Wire Wire Line
	1000 2150 1400 2150
Wire Wire Line
	1000 2250 1400 2250
Wire Wire Line
	1000 2350 1400 2350
Wire Wire Line
	1000 2450 1400 2450
Wire Wire Line
	1000 2550 1400 2550
Wire Wire Line
	1000 2650 1400 2650
Wire Wire Line
	1000 2750 1400 2750
Wire Wire Line
	2700 3950 3100 3950
Wire Wire Line
	2700 4050 3100 4050
Wire Wire Line
	2700 4150 3100 4150
Wire Wire Line
	2700 4250 3100 4250
Wire Wire Line
	2700 4350 3100 4350
Wire Wire Line
	2700 4450 3100 4450
Wire Wire Line
	2700 4550 3100 4550
Wire Wire Line
	2700 4650 3100 4650
Wire Wire Line
	2700 6250 3100 6250
Wire Wire Line
	2700 6350 3100 6350
Wire Wire Line
	2700 6450 3100 6450
Wire Wire Line
	2700 6550 3100 6550
Wire Wire Line
	2700 6650 3100 6650
Wire Wire Line
	2700 6750 3100 6750
Wire Wire Line
	2700 6850 3100 6850
Wire Wire Line
	2700 6950 3100 6950
Wire Wire Line
	2700 3250 3100 3250
Wire Wire Line
	1000 3350 1400 3350
Wire Wire Line
	1000 3450 1400 3450
Wire Wire Line
	1000 3550 1400 3550
Wire Wire Line
	1000 3650 1400 3650
Wire Wire Line
	1000 3750 1400 3750
Wire Wire Line
	1000 3850 1400 3850
Wire Wire Line
	1000 5650 1400 5650
Wire Wire Line
	1000 5750 1400 5750
Wire Wire Line
	1000 5850 1400 5850
Wire Wire Line
	1000 5950 1400 5950
Wire Wire Line
	1000 6050 1400 6050
Wire Wire Line
	1000 6150 1400 6150
Wire Wire Line
	2700 5550 3100 5550
Wire Wire Line
	2700 3350 3100 3350
Wire Wire Line
	2700 950  3100 950 
Wire Wire Line
	2700 5650 3100 5650
Wire Wire Line
	2700 850  3100 850 
Wire Wire Line
	2700 3850 3100 3850
Wire Wire Line
	2700 6150 3100 6150
Wire Wire Line
	1000 1050 1400 1050
Wire Wire Line
	1000 950  1400 950 
Wire Wire Line
	1000 1350 1400 1350
Wire Wire Line
	1000 1150 1400 1150
Wire Wire Line
	1000 1450 1400 1450
Wire Wire Line
	2700 1050 3100 1050
Wire Wire Line
	2700 1150 3100 1150
Wire Bus Line
	900  850  900  2650
Wire Bus Line
	3200 950  3200 7150
Wire Bus Line
	900  3250 900  3750
Wire Bus Line
	900  5550 900  6050
Wire Wire Line
	1225 1550 1400 1550
Wire Wire Line
	1225 7450 1400 7450
Wire Wire Line
	1225 5150 1400 5150
Wire Wire Line
	1200 5550 1400 5550
Wire Wire Line
	1200 3250 1400 3250
Wire Wire Line
	2900 2750 2700 2750
Wire Wire Line
	1800 625  1700 625 
Wire Wire Line
	1500 625  1400 625 
Wire Wire Line
	1400 625  1400 850 
Wire Wire Line
	2700 3750 3100 3750
Wire Wire Line
	2700 6050 3100 6050
Wire Wire Line
	5100 1800 5500 1800
Wire Wire Line
	5100 1900 5500 1900
Wire Wire Line
	5100 2000 5500 2000
Wire Wire Line
	5100 2100 5500 2100
Wire Wire Line
	5100 2200 5500 2200
Wire Wire Line
	5100 2300 5500 2300
Wire Wire Line
	5100 2400 5500 2400
Wire Wire Line
	5100 2500 5200 2500
Wire Wire Line
	5200 2500 5200 2400
Connection ~ 5200 2400
Wire Wire Line
	3500 2100 3900 2100
Wire Wire Line
	3500 2200 3900 2200
Wire Wire Line
	3500 2300 3900 2300
Wire Bus Line
	5600 1900 5600 2500
Wire Bus Line
	3400 2000 3400 2300
Wire Wire Line
	3500 2400 3900 2400
Wire Wire Line
	3625 1475 3625 1075
Wire Wire Line
	3425 1475 3425 1075
Wire Wire Line
	4025 1475 4025 1075
Wire Wire Line
	3825 1475 3825 1075
Wire Wire Line
	3425 675  3425 775 
Connection ~ 3425 725 
Wire Wire Line
	4025 725  4025 775 
Wire Bus Line
	3200 1575 5775 1575
Wire Wire Line
	5225 725  5225 775 
Wire Wire Line
	5500 1475 5500 1075
Wire Wire Line
	4225 1475 4225 1075
Wire Wire Line
	4625 1475 4625 1075
Wire Wire Line
	4425 1475 4425 1075
Wire Wire Line
	4625 725  4625 775 
Wire Wire Line
	3425 725  4625 725 
Wire Wire Line
	4425 775  4425 725 
Connection ~ 4425 725 
Wire Wire Line
	4225 775  4225 725 
Connection ~ 4225 725 
Wire Wire Line
	3825 725  3825 775 
Connection ~ 3825 725 
Wire Wire Line
	3625 775  3625 725 
Connection ~ 3625 725 
Connection ~ 4025 725 
Wire Wire Line
	2875 5750 2700 5750
Wire Wire Line
	2875 3450 2700 3450
Wire Wire Line
	3100 7050 2900 7050
Wire Wire Line
	3100 4750 2900 4750
Wire Bus Line
	3400 2150 3200 2150
Wire Bus Line
	900  1700 700  1700
Wire Bus Line
	700  1700 700  5775
Wire Bus Line
	700  3500 900  3500
Wire Bus Line
	700  5775 900  5775
Wire Bus Line
	5775 1575 5775 2150
Wire Bus Line
	5600 2150 6525 2150
Wire Wire Line
	4600 3100 4600 3300
Wire Wire Line
	4600 3300 3525 3300
Wire Wire Line
	3525 3300 3525 3500
Wire Wire Line
	3525 3500 3625 3500
Connection ~ 4600 3100
Wire Wire Line
	2700 1450 3275 1450
Wire Wire Line
	3275 1450 3275 3100
Wire Wire Line
	3275 3100 3625 3100
Wire Wire Line
	4525 3100 5125 3100
Wire Wire Line
	4525 3500 4725 3500
Wire Wire Line
	4725 3500 4725 3300
Wire Wire Line
	4725 3300 5125 3300
Wire Bus Line
	5225 3200 5225 3700
Wire Bus Line
	5225 3700 3200 3700
Wire Wire Line
	4825 1475 4825 1075
Wire Wire Line
	4825 725  4825 775 
Wire Wire Line
	3500 4250 3900 4250
Wire Wire Line
	3500 4350 3900 4350
Wire Wire Line
	3500 4450 3900 4450
Wire Bus Line
	3400 4150 3400 4350
Wire Bus Line
	3400 4250 3200 4250
Wire Wire Line
	5100 3950 5325 3950
Wire Wire Line
	5325 3700 5325 4650
Wire Wire Line
	5325 4650 5100 4650
Connection ~ 5325 3950
Wire Wire Line
	8050 1275 8125 1275
Wire Wire Line
	8125 1275 8125 725 
Wire Wire Line
	7450 725  7450 775 
Wire Wire Line
	6950 1850 8775 1850
Connection ~ 7450 1850
Wire Wire Line
	7450 3300 7450 3175
Wire Wire Line
	6950 3300 8775 3300
Wire Wire Line
	6950 3300 6950 2075
Connection ~ 7450 3300
Wire Wire Line
	8650 2275 8650 2875
Connection ~ 8650 2575
Wire Wire Line
	9075 1850 9450 1850
Wire Wire Line
	9075 3300 9450 3300
Wire Wire Line
	8650 1850 8650 1975
Wire Wire Line
	8650 3175 8650 3300
Wire Wire Line
	9200 1850 9200 1975
Wire Wire Line
	9200 3175 9200 3300
Wire Wire Line
	9200 2275 9200 2875
Connection ~ 9200 2575
Wire Wire Line
	9450 2325 9450 2825
Wire Wire Line
	9450 2575 9625 2575
Connection ~ 9450 2575
Wire Wire Line
	9450 1850 9450 1925
Connection ~ 9200 1850
Wire Wire Line
	9450 3300 9450 3225
Connection ~ 9200 3300
Connection ~ 8650 1850
Connection ~ 8650 3300
Wire Wire Line
	7450 1775 7450 1850
Wire Wire Line
	6950 1850 6950 675 
Wire Wire Line
	7450 2050 7450 2175
Wire Wire Line
	7450 2050 8175 2050
Wire Wire Line
	7450 725  8175 725 
Wire Wire Line
	7850 775  7850 675 
Wire Wire Line
	7850 675  6950 675 
Wire Wire Line
	7850 2175 7850 2075
Wire Wire Line
	7850 2075 6950 2075
Wire Wire Line
	7650 3175 6625 3175
Wire Wire Line
	7650 1775 6625 1775
Wire Wire Line
	8475 2575 8650 2575
Wire Wire Line
	8125 2050 8125 2675
Wire Wire Line
	8125 2675 8050 2675
Connection ~ 8125 2050
Connection ~ 8125 725 
Wire Bus Line
	6525 1875 6525 4900
NoConn ~ 15950 2350
NoConn ~ 15650 1075
NoConn ~ 15650 1450
NoConn ~ 15650 1800
$Comp
L 74LS00 U15
U 1 1 5B914A88
P 15350 2350
F 0 "U15" H 15350 2400 50  0000 C CNN
F 1 "74LS00" H 15350 2250 50  0000 C CNN
F 2 "" H 15350 2350 50  0001 C CNN
F 3 "" H 15350 2350 50  0001 C CNN
	1    15350 2350
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U15
U 2 1 5B914F00
P 5350 5400
F 0 "U15" H 5350 5450 50  0000 C CNN
F 1 "74LS00" H 5350 5300 50  0000 C CNN
F 2 "" H 5350 5400 50  0001 C CNN
F 3 "" H 5350 5400 50  0001 C CNN
	2    5350 5400
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U15
U 3 1 5B914F8E
P 15350 3300
F 0 "U15" H 15350 3350 50  0000 C CNN
F 1 "74LS00" H 15350 3200 50  0000 C CNN
F 2 "" H 15350 3300 50  0001 C CNN
F 3 "" H 15350 3300 50  0001 C CNN
	3    15350 3300
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U15
U 4 1 5B91501D
P 15350 3775
F 0 "U15" H 15350 3825 50  0000 C CNN
F 1 "74LS00" H 15350 3675 50  0000 C CNN
F 2 "" H 15350 3775 50  0001 C CNN
F 3 "" H 15350 3775 50  0001 C CNN
	4    15350 3775
	1    0    0    -1  
$EndComp
NoConn ~ 15950 3300
NoConn ~ 15950 3775
Wire Wire Line
	14750 1075 14750 4075
Connection ~ 14750 3875
Connection ~ 14750 3675
Connection ~ 14750 3400
Connection ~ 14750 3200
Connection ~ 14750 2925
Connection ~ 14750 2725
Connection ~ 14750 2450
Connection ~ 14750 2250
Connection ~ 14750 1800
Connection ~ 14750 1450
Text Label 3350 5300 0    60   ~ 0
R/~W
Entry Wire Line
	3200 5200 3300 5300
Wire Wire Line
	3300 5300 3700 5300
Wire Wire Line
	4750 5300 4600 5300
Wire Wire Line
	3300 5500 4750 5500
Text Label 3350 5500 0    60   ~ 0
K7
Entry Wire Line
	3200 5400 3300 5500
$Comp
L Jumper_NO_Small JP1
U 1 1 5B9190C1
P 3850 5625
F 0 "JP1" H 3625 5575 50  0000 C CNN
F 1 "K4_ROM" H 3875 5575 50  0000 C CNN
F 2 "" H 3850 5625 50  0001 C CNN
F 3 "" H 3850 5625 50  0001 C CNN
	1    3850 5625
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 5500 4675 5875
Connection ~ 4675 5500
Text Label 3350 5625 0    60   ~ 0
K4
Entry Wire Line
	3200 5525 3300 5625
$Comp
L Jumper_NO_Small JP2
U 1 1 5B919F81
P 3850 5750
F 0 "JP2" H 3625 5700 50  0000 C CNN
F 1 "K3_ROM" H 3875 5700 50  0000 C CNN
F 2 "" H 3850 5750 50  0001 C CNN
F 3 "" H 3850 5750 50  0001 C CNN
	1    3850 5750
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP3
U 1 1 5B91A017
P 3850 5875
F 0 "JP3" H 3625 5825 50  0000 C CNN
F 1 "K2_ROM" H 3875 5825 50  0000 C CNN
F 2 "" H 3850 5875 50  0001 C CNN
F 3 "" H 3850 5875 50  0001 C CNN
	1    3850 5875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5625 3300 5625
Text Label 3350 5750 0    60   ~ 0
K3
Entry Wire Line
	3200 5650 3300 5750
Wire Wire Line
	3750 5750 3300 5750
Text Label 3350 5875 0    60   ~ 0
K2
Entry Wire Line
	3200 5775 3300 5875
Wire Wire Line
	3750 5875 3300 5875
Wire Wire Line
	4675 5625 3950 5625
Wire Wire Line
	4675 5750 3950 5750
Connection ~ 4675 5625
Wire Wire Line
	4675 5875 3950 5875
Connection ~ 4675 5750
Wire Wire Line
	5950 5400 6350 5400
Text Label 5975 5400 0    60   ~ 0
ROM_CE
$Comp
L 28C256 U?
U 1 1 5B91D806
P 7650 4700
F 0 "U?" H 7850 5700 50  0000 C CNN
F 1 "28C256" H 7950 3700 50  0000 C CNN
F 2 "" H 7650 4700 50  0001 C CNN
F 3 "" H 7650 4700 50  0001 C CNN
	1    7650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5400 6350 5600
Wire Wire Line
	6350 5600 6950 5600
$Comp
L R R?
U 1 1 5B91EF19
P 6725 5400
F 0 "R?" V 6805 5400 50  0000 C CNN
F 1 "3k3" V 6725 5400 50  0000 C CNN
F 2 "" V 6655 5400 50  0001 C CNN
F 3 "" H 6725 5400 50  0001 C CNN
	1    6725 5400
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B91FA9F
P 6400 4550
F 0 "#PWR?" H 6400 4400 50  0001 C CNN
F 1 "VCC" H 6400 4700 50  0000 C CNN
F 2 "" H 6400 4550 50  0001 C CNN
F 3 "" H 6400 4550 50  0001 C CNN
	1    6400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6625 3800 6950 3800
Wire Wire Line
	6625 3900 6950 3900
Wire Wire Line
	6625 4000 6950 4000
Wire Wire Line
	6625 4100 6950 4100
Wire Wire Line
	6625 4700 6950 4700
Wire Wire Line
	6625 4800 6950 4800
Wire Wire Line
	6625 4900 6950 4900
Wire Wire Line
	6625 5000 6950 5000
Wire Wire Line
	6625 4200 6950 4200
Wire Wire Line
	6625 4300 6950 4300
Wire Wire Line
	6625 4400 6950 4400
Wire Wire Line
	6625 4500 6950 4500
Wire Wire Line
	6625 4600 6950 4600
Entry Wire Line
	6525 3700 6625 3800
Entry Wire Line
	6525 3900 6625 4000
Entry Wire Line
	6525 3800 6625 3900
Entry Wire Line
	6525 4000 6625 4100
Entry Wire Line
	6525 4100 6625 4200
Entry Wire Line
	6525 4200 6625 4300
Entry Wire Line
	6525 4300 6625 4400
Entry Wire Line
	6525 4400 6625 4500
Entry Wire Line
	6525 4500 6625 4600
Entry Wire Line
	6525 4600 6625 4700
Entry Wire Line
	6525 4700 6625 4800
Entry Wire Line
	6525 4800 6625 4900
Entry Wire Line
	6525 4900 6625 5000
Text Label 6925 3800 2    60   ~ 0
A0
Text Label 6925 3900 2    60   ~ 0
A1
Text Label 6925 4000 2    60   ~ 0
A2
Text Label 6925 4100 2    60   ~ 0
A3
Text Label 6925 4200 2    60   ~ 0
A4
Text Label 6925 4300 2    60   ~ 0
A5
Text Label 6925 4400 2    60   ~ 0
A6
Text Label 6925 4500 2    60   ~ 0
A7
Text Label 6925 4600 2    60   ~ 0
A8
Text Label 6925 4700 2    60   ~ 0
A9
Text Label 6925 4800 2    60   ~ 0
A10
Text Label 6925 4900 2    60   ~ 0
A11
Text Label 6925 5000 2    60   ~ 0
A12
$Comp
L Jumper_NC_Dual JP?
U 1 1 5B92510B
P 5775 4875
F 0 "JP?" H 5825 4775 50  0000 L CNN
F 1 "ROM_A14" H 5775 4975 50  0000 C BNN
F 2 "" H 5775 4875 50  0001 C CNN
F 3 "" H 5775 4875 50  0001 C CNN
	1    5775 4875
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Dual JP?
U 1 1 5B9257AB
P 6150 4650
F 0 "JP?" H 6200 4550 50  0000 L CNN
F 1 "ROM_A13" H 6150 4750 50  0000 C BNN
F 2 "" H 6150 4650 50  0001 C CNN
F 3 "" H 6150 4650 50  0001 C CNN
	1    6150 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B926CB3
P 5450 4975
F 0 "#PWR?" H 5450 4725 50  0001 C CNN
F 1 "GND" H 5450 4825 50  0000 C CNN
F 2 "" H 5450 4975 50  0001 C CNN
F 3 "" H 5450 4975 50  0001 C CNN
	1    5450 4975
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4650 5450 4975
Wire Wire Line
	5450 4875 5525 4875
Wire Wire Line
	5450 4650 5900 4650
Connection ~ 5450 4875
Wire Wire Line
	6150 4750 6150 5100
Wire Wire Line
	6150 5100 6950 5100
Wire Wire Line
	5775 5200 6950 5200
Wire Wire Line
	6400 4550 6400 4875
Wire Wire Line
	6400 4875 6025 4875
Connection ~ 6400 4650
Wire Wire Line
	5775 5200 5775 4975
$Comp
L VCC #PWR?
U 1 1 5B92D26A
P 6500 5400
F 0 "#PWR?" H 6500 5250 50  0001 C CNN
F 1 "VCC" H 6500 5550 50  0000 C CNN
F 2 "" H 6500 5400 50  0001 C CNN
F 3 "" H 6500 5400 50  0001 C CNN
	1    6500 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5400 6575 5400
Wire Wire Line
	6875 5400 6950 5400
Wire Wire Line
	6950 5500 6875 5500
Wire Wire Line
	6875 5500 6875 5600
Connection ~ 6875 5600
Text Label 8375 3800 0    60   ~ 0
D0
Text Label 8375 3900 0    60   ~ 0
D1
Text Label 8375 4000 0    60   ~ 0
D2
Text Label 8375 4100 0    60   ~ 0
D3
Text Label 8375 4200 0    60   ~ 0
D4
Text Label 8375 4300 0    60   ~ 0
D5
Text Label 8375 4400 0    60   ~ 0
D6
Text Label 8375 4500 0    60   ~ 0
D7
Text Label 8375 4600 0    60   ~ 0
A15
Wire Wire Line
	8350 3800 8750 3800
Wire Wire Line
	8350 3900 8750 3900
Wire Wire Line
	8350 4000 8750 4000
Wire Wire Line
	8350 4100 8750 4100
Wire Wire Line
	8350 4200 8750 4200
Wire Wire Line
	8350 4300 8750 4300
Wire Wire Line
	8350 4400 8750 4400
Wire Wire Line
	8350 4500 8750 4500
Entry Wire Line
	8750 3800 8850 3900
Entry Wire Line
	8750 3900 8850 4000
Entry Wire Line
	8750 4000 8850 4100
Entry Wire Line
	8750 4100 8850 4200
Entry Wire Line
	8750 4200 8850 4300
Entry Wire Line
	8750 4300 8850 4400
Entry Wire Line
	8750 4400 8850 4500
Entry Wire Line
	8750 4500 8850 4600
Wire Bus Line
	8850 3500 8850 4600
Wire Bus Line
	8850 3500 6525 3500
Wire Notes Line
	6425 3425 9800 3425
Wire Notes Line
	9800 3425 9800 500 
Wire Notes Line
	9800 500  6425 500 
Wire Notes Line
	6425 500  6425 3425
Wire Notes Line
	3275 5000 5375 5000
Wire Notes Line
	5375 5000 5375 4300
Wire Notes Line
	6425 3450 9800 3450
Wire Notes Line
	9800 3450 9800 6025
Wire Notes Line
	9800 6025 3275 6025
Wire Notes Line
	3275 6025 3275 5000
Wire Notes Line
	6425 3450 6425 4300
Wire Notes Line
	6425 4300 5375 4300
$EndSCHEMATC
