EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
LIBS:rc1_backplane
LIBS:rc1_ui_port
LIBS:mounting
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
L BARREL_JACK J3
U 1 1 595DDBC9
P 15450 1050
F 0 "J3" H 15450 1245 50  0000 C CNN
F 1 "BARREL_JACK" H 15450 895 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 15450 1050 50  0001 C CNN
F 3 "" H 15450 1050 50  0001 C CNN
	1    15450 1050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 595E10E8
P 15850 875
F 0 "#PWR01" H 15850 725 50  0001 C CNN
F 1 "VCC" H 15850 1025 50  0000 C CNN
F 2 "" H 15850 875 50  0001 C CNN
F 3 "" H 15850 875 50  0001 C CNN
	1    15850 875 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 595E22B1
P 15850 1250
F 0 "#PWR02" H 15850 1000 50  0001 C CNN
F 1 "GND" H 15850 1100 50  0000 C CNN
F 2 "" H 15850 1250 50  0001 C CNN
F 3 "" H 15850 1250 50  0001 C CNN
	1    15850 1250
	1    0    0    -1  
$EndComp
$Comp
L RC1_Backplane J1
U 1 1 5D63EFA3
P 15325 7950
F 0 "J1" H 15325 9950 50  0000 C CNN
F 1 "Expansion" V 15775 7900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x39_Pitch2.54mm" H 15325 7950 50  0001 C CNN
F 3 "" H 15325 7950 50  0001 C CNN
	1    15325 7950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5D63F634
P 14450 7750
F 0 "#PWR03" H 14450 7500 50  0001 C CNN
F 1 "GND" H 14450 7600 50  0000 C CNN
F 2 "" H 14450 7750 50  0001 C CNN
F 3 "" H 14450 7750 50  0001 C CNN
	1    14450 7750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5D63F697
P 14525 7575
F 0 "#PWR04" H 14525 7425 50  0001 C CNN
F 1 "VCC" H 14525 7725 50  0000 C CNN
F 2 "" H 14525 7575 50  0001 C CNN
F 3 "" H 14525 7575 50  0001 C CNN
	1    14525 7575
	1    0    0    -1  
$EndComp
$Comp
L RC1_UI_Port J2
U 1 1 5D63F136
P 5175 9925
F 0 "J2" H 5175 10975 50  0000 C CNN
F 1 "RC1_UI_Port" V 5175 9925 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 5175 8975 50  0001 C CNN
F 3 "" H 5175 8975 50  0001 C CNN
	1    5175 9925
	-1   0    0    1   
$EndComp
$Comp
L Mounting M1
U 1 1 5D63FD8B
P 15525 575
F 0 "M1" H 15525 675 50  0001 C CNN
F 1 "Mounting" H 15525 500 50  0001 C CNN
F 2 "mounting:1pin" H 15525 575 50  0001 C CNN
F 3 "" H 15525 575 50  0001 C CNN
	1    15525 575 
	1    0    0    -1  
$EndComp
$Comp
L Mounting M2
U 1 1 5D63FDB2
P 15650 575
F 0 "M2" H 15650 675 50  0001 C CNN
F 1 "Mounting" H 15650 500 50  0001 C CNN
F 2 "mounting:1pin" H 15650 575 50  0001 C CNN
F 3 "" H 15650 575 50  0001 C CNN
	1    15650 575 
	1    0    0    -1  
$EndComp
$Comp
L Mounting M3
U 1 1 5D63FDD2
P 15775 575
F 0 "M3" H 15775 675 50  0001 C CNN
F 1 "Mounting" H 15775 500 50  0001 C CNN
F 2 "mounting:1pin" H 15775 575 50  0001 C CNN
F 3 "" H 15775 575 50  0001 C CNN
	1    15775 575 
	1    0    0    -1  
$EndComp
$Comp
L Mounting M4
U 1 1 5D63FDF2
P 15900 575
F 0 "M4" H 15900 675 50  0001 C CNN
F 1 "Mounting" H 15900 500 50  0001 C CNN
F 2 "mounting:1pin" H 15900 575 50  0001 C CNN
F 3 "" H 15900 575 50  0001 C CNN
	1    15900 575 
	1    0    0    -1  
$EndComp
$Comp
L WD65C02 U1
U 1 1 5D645977
P 2025 2300
F 0 "U1" H 2025 1150 60  0000 C CNN
F 1 "WD65C02" V 2025 2200 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 1525 2500 60  0001 C CNN
F 3 "" H 1525 2500 60  0000 C CNN
	1    2025 2300
	1    0    0    -1  
$EndComp
$Comp
L R6532 U4
U 1 1 5D645978
P 2000 9875
F 0 "U4" H 2000 8775 60  0000 C CNN
F 1 "6532" V 2000 9775 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 1500 10075 60  0001 C CNN
F 3 "" H 1500 10075 60  0000 C CNN
	1    2000 9875
	1    0    0    -1  
$EndComp
Entry Wire Line
	3075 2100 3175 2200
Entry Wire Line
	3075 2200 3175 2300
Entry Wire Line
	3075 2300 3175 2400
Entry Wire Line
	3075 2400 3175 2500
Entry Wire Line
	3075 2500 3175 2600
Entry Wire Line
	3075 2600 3175 2700
Entry Wire Line
	3075 2700 3175 2800
Entry Wire Line
	3075 2800 3175 2900
Entry Wire Line
	3075 2900 3175 3000
Entry Wire Line
	3075 3000 3175 3100
Entry Wire Line
	3075 3100 3175 3200
Entry Wire Line
	3075 3200 3175 3300
Entry Wire Line
	875  2100 975  2200
Entry Wire Line
	875  2200 975  2300
Entry Wire Line
	875  2300 975  2400
Entry Wire Line
	875  2400 975  2500
Entry Wire Line
	875  2500 975  2600
Entry Wire Line
	875  2600 975  2700
Entry Wire Line
	875  2700 975  2800
Entry Wire Line
	875  2800 975  2900
Entry Wire Line
	875  2900 975  3000
Entry Wire Line
	875  3000 975  3100
Entry Wire Line
	875  3100 975  3200
Entry Wire Line
	875  3200 975  3300
Text Label 2700 2100 0    60   ~ 0
D0
Text Label 2700 2200 0    60   ~ 0
D1
Text Label 2700 2300 0    60   ~ 0
D2
Text Label 2700 2400 0    60   ~ 0
D3
Text Label 2700 2500 0    60   ~ 0
D4
Text Label 2700 2600 0    60   ~ 0
D5
Text Label 2700 2700 0    60   ~ 0
D6
Text Label 2700 2800 0    60   ~ 0
D7
Text Label 2700 2900 0    60   ~ 0
A15
Text Label 2700 3000 0    60   ~ 0
A14
Text Label 2700 3100 0    60   ~ 0
A13
Text Label 2700 3200 0    60   ~ 0
A12
Text Label 1350 2200 2    60   ~ 0
A0
Text Label 1350 2300 2    60   ~ 0
A1
Text Label 1350 2400 2    60   ~ 0
A2
Text Label 1350 2500 2    60   ~ 0
A3
Text Label 1350 2600 2    60   ~ 0
A4
Text Label 1350 2700 2    60   ~ 0
A5
Text Label 1350 2800 2    60   ~ 0
A6
Text Label 1350 2900 2    60   ~ 0
A7
Text Label 1350 3000 2    60   ~ 0
A8
Text Label 1350 3100 2    60   ~ 0
A9
Text Label 1350 3200 2    60   ~ 0
A10
Text Label 1350 3300 2    60   ~ 0
A11
Entry Wire Line
	3075 1500 3175 1600
Text Label 2700 1500 0    60   ~ 0
PHI2
Entry Wire Line
	3075 1400 3175 1500
Text Label 2700 1400 0    60   ~ 0
~RESET
Entry Wire Line
	875  1400 975  1500
Text Label 1350 1500 2    60   ~ 0
~RDY
Entry Wire Line
	875  1800 975  1900
Text Label 1350 1900 2    60   ~ 0
~NMI
Entry Wire Line
	875  1600 975  1700
Text Label 1350 1700 2    60   ~ 0
~IRQ
Entry Wire Line
	875  1900 975  2000
Text Label 1350 2000 2    60   ~ 0
SYNC
Entry Wire Line
	3075 1700 3175 1800
Text Label 2700 1700 0    60   ~ 0
PHI0
NoConn ~ 1375 1800
$Comp
L Jumper_NO_Small JP1
U 1 1 5D64597B
P 1300 1225
F 0 "JP1" H 1300 1305 50  0000 C CNN
F 1 "VP_GND" H 1275 1175 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1300 1225 50  0001 C CNN
F 3 "" H 1300 1225 50  0001 C CNN
	1    1300 1225
	0    1    -1   0   
$EndComp
$Comp
L R R3
U 1 1 5D64597C
P 4200 2025
F 0 "R3" V 4280 2025 50  0000 C CNN
F 1 "3.3k" V 4200 2025 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4130 2025 50  0001 C CNN
F 3 "" H 4200 2025 50  0001 C CNN
	1    4200 2025
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR05
U 1 1 5D64597E
P 1200 2100
F 0 "#PWR05" H 1200 1950 50  0001 C CNN
F 1 "VCC" H 1200 2250 50  0000 C CNN
F 2 "" H 1200 2100 50  0001 C CNN
F 3 "" H 1200 2100 50  0001 C CNN
	1    1200 2100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 5D645982
P 2750 3375
F 0 "#PWR06" H 2750 3125 50  0001 C CNN
F 1 "GND" H 2750 3225 50  0000 C CNN
F 2 "" H 2750 3375 50  0001 C CNN
F 3 "" H 2750 3375 50  0001 C CNN
	1    2750 3375
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5D645983
P 1525 1125
F 0 "#PWR07" H 1525 875 50  0001 C CNN
F 1 "GND" H 1525 975 50  0000 C CNN
F 2 "" H 1525 1125 50  0001 C CNN
F 3 "" H 1525 1125 50  0001 C CNN
	1    1525 1125
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5D645985
P 5550 1775
F 0 "R6" V 5630 1775 50  0000 C CNN
F 1 "3k3" V 5550 1775 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5480 1775 50  0001 C CNN
F 3 "" H 5550 1775 50  0001 C CNN
	1    5550 1775
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5D645986
P 4200 1850
F 0 "R2" V 4280 1850 50  0000 C CNN
F 1 "3k3" V 4200 1850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4130 1850 50  0001 C CNN
F 3 "" H 4200 1850 50  0001 C CNN
	1    4200 1850
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5D645987
P 4200 1675
F 0 "R1" V 4280 1675 50  0000 C CNN
F 1 "3k3" V 4200 1675 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4130 1675 50  0001 C CNN
F 3 "" H 4200 1675 50  0001 C CNN
	1    4200 1675
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 5D645988
P 5575 3100
F 0 "R7" V 5655 3100 50  0000 C CNN
F 1 "3k3" V 5575 3100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5505 3100 50  0001 C CNN
F 3 "" H 5575 3100 50  0001 C CNN
	1    5575 3100
	-1   0    0    1   
$EndComp
Entry Wire Line
	3650 1850 3550 1750
Entry Wire Line
	3650 1675 3550 1575
Text Label 3675 1675 0    60   ~ 0
~RDY
Text Label 3675 1850 0    60   ~ 0
~IRQ
$Comp
L VCC #PWR08
U 1 1 5D645989
P 4425 1600
F 0 "#PWR08" H 4425 1450 50  0001 C CNN
F 1 "VCC" H 4425 1750 50  0000 C CNN
F 2 "" H 4425 1600 50  0001 C CNN
F 3 "" H 4425 1600 50  0001 C CNN
	1    4425 1600
	1    0    0    -1  
$EndComp
$Comp
L ACO-xxxMHz X1
U 1 1 5D64598A
P 4425 2400
F 0 "X1" H 4225 2650 50  0000 L CNN
F 1 "1MHz" H 4525 2675 50  0000 L CNN
F 2 "Oscillators:Oscillator_DIP-14" H 4875 2050 50  0001 C CNN
F 3 "" H 4325 2400 50  0001 C CNN
	1    4425 2400
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5D64598B
P 4425 2700
F 0 "#PWR09" H 4425 2450 50  0001 C CNN
F 1 "GND" H 4425 2550 50  0000 C CNN
F 2 "" H 4425 2700 50  0001 C CNN
F 3 "" H 4425 2700 50  0001 C CNN
	1    4425 2700
	-1   0    0    -1  
$EndComp
Text Label 3675 2400 0    60   ~ 0
PHI0
$Comp
L R R4
U 1 1 5D64598C
P 5325 4600
F 0 "R4" V 5405 4600 50  0000 C CNN
F 1 "1k" V 5325 4600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5255 4600 50  0001 C CNN
F 3 "" H 5325 4600 50  0001 C CNN
	1    5325 4600
	1    0    0    -1  
$EndComp
Text Label 5250 2000 0    60   ~ 0
~NMI
$Comp
L C C10
U 1 1 5D6459A2
P 7025 2025
F 0 "C10" H 7050 2125 50  0000 L CNN
F 1 "220nF" H 7050 1925 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 7063 1875 50  0001 C CNN
F 3 "" H 7025 2025 50  0001 C CNN
	1    7025 2025
	1    0    0    1   
$EndComp
$Comp
L C C11
U 1 1 5D6459A3
P 7025 3350
F 0 "C11" H 7050 3450 50  0000 L CNN
F 1 "220nF" H 7050 3250 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 7063 3200 50  0001 C CNN
F 3 "" H 7025 3350 50  0001 C CNN
	1    7025 3350
	1    0    0    1   
$EndComp
$Comp
L R R10
U 1 1 5D6459A5
P 7375 3125
F 0 "R10" V 7455 3125 50  0000 C CNN
F 1 "1k" V 7375 3125 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7305 3125 50  0001 C CNN
F 3 "" H 7375 3125 50  0001 C CNN
	1    7375 3125
	0    -1   1    0   
$EndComp
$Comp
L R R9
U 1 1 5D6459A6
P 7375 1800
F 0 "R9" V 7455 1800 50  0000 C CNN
F 1 "1k" V 7375 1800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7305 1800 50  0001 C CNN
F 3 "" H 7375 1800 50  0001 C CNN
	1    7375 1800
	0    -1   1    0   
$EndComp
$Comp
L R R11
U 1 1 5D6459A7
P 7600 2025
F 0 "R11" V 7680 2025 50  0000 C CNN
F 1 "47k" V 7600 2025 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7530 2025 50  0001 C CNN
F 3 "" H 7600 2025 50  0001 C CNN
	1    7600 2025
	1    0    0    1   
$EndComp
$Comp
L R R12
U 1 1 5D6459A8
P 7600 3350
F 0 "R12" V 7680 3350 50  0000 C CNN
F 1 "47k" V 7600 3350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7530 3350 50  0001 C CNN
F 3 "" H 7600 3350 50  0001 C CNN
	1    7600 3350
	1    0    0    1   
$EndComp
$Comp
L 28C256 U3
U 1 1 5D6459B2
P 2000 6975
F 0 "U3" H 2200 7975 50  0000 C CNN
F 1 "28C256" H 2300 5975 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 2000 6975 50  0001 C CNN
F 3 "" H 2000 6975 50  0001 C CNN
	1    2000 6975
	1    0    0    -1  
$EndComp
Text Label 2725 6075 0    60   ~ 0
D0
Text Label 2725 6175 0    60   ~ 0
D1
Text Label 2725 6275 0    60   ~ 0
D2
Text Label 2725 6375 0    60   ~ 0
D3
Text Label 2725 6475 0    60   ~ 0
D4
Text Label 2725 6575 0    60   ~ 0
D5
Text Label 2725 6675 0    60   ~ 0
D6
Text Label 2725 6775 0    60   ~ 0
D7
Entry Wire Line
	3075 6075 3175 6175
Entry Wire Line
	3075 6175 3175 6275
Entry Wire Line
	3075 6275 3175 6375
Entry Wire Line
	3075 6375 3175 6475
Entry Wire Line
	3075 6475 3175 6575
Entry Wire Line
	3075 6575 3175 6675
Entry Wire Line
	3075 6675 3175 6775
Entry Wire Line
	3075 6775 3175 6875
$Comp
L HM62256BLP-7 U2
U 1 1 5D6459B9
P 1800 4675
F 0 "U2" H 1500 5575 50  0000 C CNN
F 1 "HM62256BLP-7" V 1800 4675 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 1800 4675 50  0001 C CIN
F 3 "" H 1800 4675 50  0001 C CNN
	1    1800 4675
	1    0    0    -1  
$EndComp
Text Label 2325 3925 0    60   ~ 0
D0
Text Label 2325 4025 0    60   ~ 0
D1
Text Label 2325 4125 0    60   ~ 0
D2
Text Label 2325 4225 0    60   ~ 0
D3
Text Label 2325 4325 0    60   ~ 0
D4
Text Label 2325 4425 0    60   ~ 0
D5
Text Label 2325 4525 0    60   ~ 0
D6
Text Label 2325 4625 0    60   ~ 0
D7
Entry Wire Line
	875  3825 975  3925
Entry Wire Line
	875  4025 975  4125
Entry Wire Line
	875  3925 975  4025
Entry Wire Line
	875  4125 975  4225
Entry Wire Line
	875  4225 975  4325
Entry Wire Line
	875  4325 975  4425
Entry Wire Line
	875  4425 975  4525
Entry Wire Line
	875  4525 975  4625
Entry Wire Line
	875  4625 975  4725
Entry Wire Line
	875  4725 975  4825
Entry Wire Line
	875  4825 975  4925
Entry Wire Line
	875  4925 975  5025
Entry Wire Line
	875  5025 975  5125
Text Label 1275 3925 2    60   ~ 0
A0
Text Label 1275 4025 2    60   ~ 0
A1
Text Label 1275 4125 2    60   ~ 0
A2
Text Label 1275 4225 2    60   ~ 0
A3
Text Label 1275 4325 2    60   ~ 0
A4
Text Label 1275 4425 2    60   ~ 0
A5
Text Label 1275 4525 2    60   ~ 0
A6
Text Label 1275 4625 2    60   ~ 0
A7
Text Label 1275 4725 2    60   ~ 0
A8
Text Label 1275 4825 2    60   ~ 0
A9
Text Label 1275 4925 2    60   ~ 0
A10
Text Label 1275 5025 2    60   ~ 0
A11
Text Label 1275 5125 2    60   ~ 0
A12
Text Label 2700 1800 0    60   ~ 0
BE
Entry Wire Line
	3075 1800 3175 1900
Entry Wire Line
	3650 2025 3550 1925
Text Label 3675 2025 0    60   ~ 0
BE
Text Label 2700 2000 0    60   ~ 0
R/~W
$Comp
L GND #PWR010
U 1 1 5D653ECE
P 975 5400
F 0 "#PWR010" H 975 5150 50  0001 C CNN
F 1 "GND" H 975 5250 50  0000 C CNN
F 2 "" H 975 5400 50  0001 C CNN
F 3 "" H 975 5400 50  0001 C CNN
	1    975  5400
	1    0    0    -1  
$EndComp
$Comp
L LM556 U6
U 1 1 5D65C153
P 6150 2000
F 0 "U6" H 5750 2350 50  0000 L CNN
F 1 "LM556" H 5750 1650 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6150 2000 50  0001 C CNN
F 3 "" H 6150 2000 50  0001 C CNN
	1    6150 2000
	-1   0    0    -1  
$EndComp
$Comp
L LM556 U6
U 2 1 5D65C480
P 6150 3325
F 0 "U6" H 5750 3675 50  0000 L CNN
F 1 "LM556" H 5750 2975 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6150 3325 50  0001 C CNN
F 3 "" H 6150 3325 50  0001 C CNN
	2    6150 3325
	-1   0    0    -1  
$EndComp
Text GLabel 4625 9075 0    60   Output ~ 0
ST
Text GLabel 5725 9075 2    60   Output ~ 0
RS
$Comp
L GND #PWR011
U 1 1 5D65DEF6
P 6175 9050
F 0 "#PWR011" H 6175 8800 50  0001 C CNN
F 1 "GND" H 6175 8900 50  0000 C CNN
F 2 "" H 6175 9050 50  0001 C CNN
F 3 "" H 6175 9050 50  0001 C CNN
	1    6175 9050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 5D65E216
P 4625 8900
F 0 "#PWR012" H 4625 8750 50  0001 C CNN
F 1 "VCC" H 4625 9050 50  0000 C CNN
F 2 "" H 4625 8900 50  0001 C CNN
F 3 "" H 4625 8900 50  0001 C CNN
	1    4625 8900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR013
U 1 1 5D6606AD
P 6150 1600
F 0 "#PWR013" H 6150 1450 50  0001 C CNN
F 1 "VCC" H 6150 1750 50  0000 C CNN
F 2 "" H 6150 1600 50  0001 C CNN
F 3 "" H 6150 1600 50  0001 C CNN
	1    6150 1600
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR014
U 1 1 5D660BCC
P 6150 2925
F 0 "#PWR014" H 6150 2775 50  0001 C CNN
F 1 "VCC" H 6150 3075 50  0000 C CNN
F 2 "" H 6150 2925 50  0001 C CNN
F 3 "" H 6150 2925 50  0001 C CNN
	1    6150 2925
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5D660D9E
P 6150 2400
F 0 "#PWR015" H 6150 2150 50  0001 C CNN
F 1 "GND" H 6150 2250 50  0000 C CNN
F 2 "" H 6150 2400 50  0001 C CNN
F 3 "" H 6150 2400 50  0001 C CNN
	1    6150 2400
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5D661349
P 6150 3725
F 0 "#PWR016" H 6150 3475 50  0001 C CNN
F 1 "GND" H 6150 3575 50  0000 C CNN
F 2 "" H 6150 3725 50  0001 C CNN
F 3 "" H 6150 3725 50  0001 C CNN
	1    6150 3725
	-1   0    0    -1  
$EndComp
NoConn ~ 5650 1800
NoConn ~ 5650 3125
Text Label 5250 3325 0    60   ~ 0
~RESET
NoConn ~ 6650 3325
NoConn ~ 6650 2000
$Comp
L VCC #PWR017
U 1 1 5D66312A
P 6800 2125
F 0 "#PWR017" H 6800 1975 50  0001 C CNN
F 1 "VCC" H 6800 2275 50  0000 C CNN
F 2 "" H 6800 2125 50  0001 C CNN
F 3 "" H 6800 2125 50  0001 C CNN
	1    6800 2125
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR018
U 1 1 5D66352E
P 6800 3450
F 0 "#PWR018" H 6800 3300 50  0001 C CNN
F 1 "VCC" H 6800 3600 50  0000 C CNN
F 2 "" H 6800 3450 50  0001 C CNN
F 3 "" H 6800 3450 50  0001 C CNN
	1    6800 3450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5D667619
P 7600 2325
F 0 "#PWR019" H 7600 2075 50  0001 C CNN
F 1 "GND" H 7600 2175 50  0000 C CNN
F 2 "" H 7600 2325 50  0001 C CNN
F 3 "" H 7600 2325 50  0001 C CNN
	1    7600 2325
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5D667E88
P 7600 3650
F 0 "#PWR020" H 7600 3400 50  0001 C CNN
F 1 "GND" H 7600 3500 50  0000 C CNN
F 2 "" H 7600 3650 50  0001 C CNN
F 3 "" H 7600 3650 50  0001 C CNN
	1    7600 3650
	-1   0    0    -1  
$EndComp
Text GLabel 7675 3125 2    60   Input ~ 0
RS
Text GLabel 7675 1800 2    60   Input ~ 0
ST
Entry Wire Line
	875  5975 975  6075
Entry Wire Line
	875  6175 975  6275
Entry Wire Line
	875  6075 975  6175
Entry Wire Line
	875  6275 975  6375
Entry Wire Line
	875  6375 975  6475
Entry Wire Line
	875  6475 975  6575
Entry Wire Line
	875  6575 975  6675
Entry Wire Line
	875  6675 975  6775
Entry Wire Line
	875  6775 975  6875
Entry Wire Line
	875  6875 975  6975
Entry Wire Line
	875  6975 975  7075
Text Label 1275 6075 2    60   ~ 0
A0
Text Label 1275 6175 2    60   ~ 0
A1
Text Label 1275 6275 2    60   ~ 0
A2
Text Label 1275 6375 2    60   ~ 0
A3
Text Label 1275 6475 2    60   ~ 0
A4
Text Label 1275 6575 2    60   ~ 0
A5
Text Label 1275 6675 2    60   ~ 0
A6
Text Label 1275 6775 2    60   ~ 0
A7
Text Label 1275 6875 2    60   ~ 0
A8
Text Label 1275 6975 2    60   ~ 0
A9
Text Label 1275 7075 2    60   ~ 0
A10
$Comp
L GND #PWR021
U 1 1 5D67A3F5
P 975 7550
F 0 "#PWR021" H 975 7300 50  0001 C CNN
F 1 "GND" H 975 7400 50  0000 C CNN
F 2 "" H 975 7550 50  0001 C CNN
F 3 "" H 975 7550 50  0001 C CNN
	1    975  7550
	1    0    0    -1  
$EndComp
Text Label 2675 9675 0    60   ~ 0
D0
Text Label 2675 9775 0    60   ~ 0
D1
Text Label 2675 9875 0    60   ~ 0
D2
Text Label 2675 9975 0    60   ~ 0
D3
Text Label 2675 10075 0    60   ~ 0
D4
Text Label 2675 10175 0    60   ~ 0
D5
Text Label 2675 10275 0    60   ~ 0
D6
Text Label 2675 10375 0    60   ~ 0
D7
Entry Wire Line
	3075 9675 3175 9775
Entry Wire Line
	3075 9775 3175 9875
Entry Wire Line
	3075 9875 3175 9975
Entry Wire Line
	3075 9975 3175 10075
Entry Wire Line
	3075 10075 3175 10175
Entry Wire Line
	3075 10175 3175 10275
Entry Wire Line
	3075 10275 3175 10375
Entry Wire Line
	3075 10375 3175 10475
Entry Wire Line
	3075 3925 3175 4025
Entry Wire Line
	3075 4025 3175 4125
Entry Wire Line
	3075 4125 3175 4225
Entry Wire Line
	3075 4225 3175 4325
Entry Wire Line
	3075 4325 3175 4425
Entry Wire Line
	3075 4425 3175 4525
Entry Wire Line
	3075 4525 3175 4625
Entry Wire Line
	3075 4625 3175 4725
Entry Wire Line
	3075 2000 3175 2100
Entry Wire Line
	875  8975 975  9075
Entry Wire Line
	875  9175 975  9275
Entry Wire Line
	875  9075 975  9175
Entry Wire Line
	875  9275 975  9375
Entry Wire Line
	875  9375 975  9475
Entry Wire Line
	875  9475 975  9575
Text Label 1325 9575 2    60   ~ 0
A0
Text Label 1325 9475 2    60   ~ 0
A1
Text Label 1325 9375 2    60   ~ 0
A2
Text Label 1325 9275 2    60   ~ 0
A3
Text Label 1325 9175 2    60   ~ 0
~A4
Text Label 1325 9075 2    60   ~ 0
A5
Text Label 2675 8975 0    60   ~ 0
A6
Entry Wire Line
	3075 8975 3175 9075
$Comp
L GND #PWR022
U 1 1 5D689C06
P 1075 8825
F 0 "#PWR022" H 1075 8575 50  0001 C CNN
F 1 "GND" H 1075 8675 50  0000 C CNN
F 2 "" H 1075 8825 50  0001 C CNN
F 3 "" H 1075 8825 50  0001 C CNN
	1    1075 8825
	1    0    0    -1  
$EndComp
Entry Wire Line
	3075 9575 3175 9675
Text Label 2675 9575 0    60   ~ 0
~RESET
Entry Wire Line
	3075 9075 3175 9175
Entry Wire Line
	3075 9475 3175 9575
Text Label 2675 9075 0    60   ~ 0
PHI2
Text Label 2675 9475 0    60   ~ 0
R/~W
Text Label 2675 10475 0    60   ~ 0
~IRQ
Entry Wire Line
	3075 10475 3175 10575
$Comp
L 74LS00 U5
U 1 1 5D69909D
P 2025 8575
F 0 "U5" H 2025 8625 50  0000 C CNN
F 1 "74LS00" H 2025 8475 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 2025 8575 50  0001 C CNN
F 3 "" H 2025 8575 50  0001 C CNN
	1    2025 8575
	1    0    0    -1  
$EndComp
Text Label 1000 8575 0    60   ~ 0
A4
Entry Wire Line
	875  8475 975  8575
Text Label 3050 8575 2    60   ~ 0
~A4
Entry Wire Line
	3075 8575 3175 8675
Text Label 2675 10575 0    60   ~ 0
PB0
Text Label 2675 10675 0    60   ~ 0
PB1
Text Label 2675 10775 0    60   ~ 0
PB2
Text Label 2675 10875 0    60   ~ 0
PB3
Text Label 1325 10775 2    60   ~ 0
PB4
Text Label 1325 10675 2    60   ~ 0
PB5
Text Label 1325 10475 2    60   ~ 0
PB7
Text Label 1325 9675 2    60   ~ 0
PA0
Text Label 1325 9775 2    60   ~ 0
PA1
Text Label 1325 9875 2    60   ~ 0
PA2
Text Label 1325 9975 2    60   ~ 0
PA3
Text Label 1325 10075 2    60   ~ 0
PA4
Text Label 1325 10175 2    60   ~ 0
PA5
Text Label 1325 10275 2    60   ~ 0
PA6
Text Label 1325 10375 2    60   ~ 0
PA7
Entry Wire Line
	1075 9675 975  9775
Entry Wire Line
	1075 9775 975  9875
Entry Wire Line
	1075 9875 975  9975
Entry Wire Line
	1075 9975 975  10075
Entry Wire Line
	1075 10075 975  10175
Entry Wire Line
	1075 10175 975  10275
Entry Wire Line
	1075 10275 975  10375
Entry Wire Line
	1075 10375 975  10475
Entry Wire Line
	1075 10475 975  10575
Entry Wire Line
	1075 10775 975  10875
Entry Wire Line
	1075 10675 975  10775
Entry Wire Line
	2925 10875 3025 10975
Entry Wire Line
	2925 10775 3025 10875
Entry Wire Line
	2925 10675 3025 10775
Entry Wire Line
	2925 10575 3025 10675
$Comp
L VCC #PWR023
U 1 1 5D6AAE8D
P 1250 10975
F 0 "#PWR023" H 1250 10825 50  0001 C CNN
F 1 "VCC" H 1250 11125 50  0000 C CNN
F 2 "" H 1250 10975 50  0001 C CNN
F 3 "" H 1250 10975 50  0001 C CNN
	1    1250 10975
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR024
U 1 1 5D6ACFF7
P 1150 7675
F 0 "#PWR024" H 1150 7525 50  0001 C CNN
F 1 "VCC" H 1150 7825 50  0000 C CNN
F 2 "" H 1150 7675 50  0001 C CNN
F 3 "" H 1150 7675 50  0001 C CNN
	1    1150 7675
	1    0    0    -1  
$EndComp
$Comp
L 74LS145 U7
U 1 1 5D6BDF1D
P 4650 5275
F 0 "U7" H 4650 5275 50  0000 C CNN
F 1 "74LS145" H 4600 4975 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 4650 5275 50  0001 C CNN
F 3 "" H 4650 5275 50  0001 C CNN
	1    4650 5275
	1    0    0    -1  
$EndComp
NoConn ~ 5250 5625
NoConn ~ 5250 5725
Text Label 3675 5125 0    60   ~ 0
A10
Text Label 3675 5225 0    60   ~ 0
A11
Text Label 3675 5325 0    60   ~ 0
A12
Text Label 3675 5425 0    60   ~ 0
DEN
$Comp
L R R5
U 1 1 5D6C326F
P 5500 4600
F 0 "R5" V 5580 4600 50  0000 C CNN
F 1 "1k" V 5500 4600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5430 4600 50  0001 C CNN
F 3 "" H 5500 4600 50  0001 C CNN
	1    5500 4600
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5D6C3334
P 5675 4600
F 0 "R8" V 5755 4600 50  0000 C CNN
F 1 "1k" V 5675 4600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5605 4600 50  0001 C CNN
F 3 "" H 5675 4600 50  0001 C CNN
	1    5675 4600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR025
U 1 1 5D6C68DB
P 5325 4300
F 0 "#PWR025" H 5325 4150 50  0001 C CNN
F 1 "VCC" H 5325 4450 50  0000 C CNN
F 2 "" H 5325 4300 50  0001 C CNN
F 3 "" H 5325 4300 50  0001 C CNN
	1    5325 4300
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP2
U 1 1 5D6C7ED0
P 3800 5550
F 0 "JP2" H 3800 5630 50  0000 C CNN
F 1 "DEN" H 3775 5500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3800 5550 50  0001 C CNN
F 3 "" H 3800 5550 50  0001 C CNN
	1    3800 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5D6C9D96
P 3625 5625
F 0 "#PWR026" H 3625 5375 50  0001 C CNN
F 1 "GND" H 3625 5475 50  0000 C CNN
F 2 "" H 3625 5625 50  0001 C CNN
F 3 "" H 3625 5625 50  0001 C CNN
	1    3625 5625
	1    0    0    -1  
$EndComp
Text GLabel 5875 4825 2    60   Output ~ 0
K0
Text GLabel 5875 5325 2    60   Output ~ 0
K5
Text GLabel 5875 5425 2    60   Output ~ 0
K7
Text GLabel 2450 5025 2    60   Input ~ 0
K0
Text GLabel 1150 7875 0    60   Input ~ 0
K7
Entry Wire Line
	3550 5025 3650 5125
Entry Wire Line
	3550 5125 3650 5225
Entry Wire Line
	3550 5225 3650 5325
Entry Wire Line
	3550 5325 3650 5425
$Comp
L 74LS138 U8
U 1 1 5D6D4F15
P 4650 6600
F 0 "U8" H 4650 6600 50  0000 C CNN
F 1 "74LS138" H 4800 6051 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 4650 6600 50  0001 C CNN
F 3 "" H 4650 6600 50  0001 C CNN
	1    4650 6600
	1    0    0    -1  
$EndComp
Text GLabel 3975 6950 0    60   Input ~ 0
K5
Text Label 3675 6450 0    60   ~ 0
A8
Entry Wire Line
	3550 6350 3650 6450
Text Label 3675 6350 0    60   ~ 0
A7
Entry Wire Line
	3550 6250 3650 6350
Entry Wire Line
	3550 6650 3650 6750
Text Label 3675 6750 0    60   ~ 0
A9
$Comp
L VCC #PWR027
U 1 1 5D6D6A8B
P 3975 6175
F 0 "#PWR027" H 3975 6025 50  0001 C CNN
F 1 "VCC" H 3975 6325 50  0000 C CNN
F 2 "" H 3975 6175 50  0001 C CNN
F 3 "" H 3975 6175 50  0001 C CNN
	1    3975 6175
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5D6D7527
P 3625 6925
F 0 "#PWR028" H 3625 6675 50  0001 C CNN
F 1 "GND" H 3625 6775 50  0000 C CNN
F 2 "" H 3625 6925 50  0001 C CNN
F 3 "" H 3625 6925 50  0001 C CNN
	1    3625 6925
	1    0    0    -1  
$EndComp
NoConn ~ 5250 6550
NoConn ~ 5250 6450
NoConn ~ 5250 6350
NoConn ~ 5250 6250
$Comp
L 74LS00 U5
U 2 1 5D6D964C
P 6225 6350
F 0 "U5" H 6225 6400 50  0000 C CNN
F 1 "74LS00" H 6225 6250 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6225 6350 50  0001 C CNN
F 3 "" H 6225 6350 50  0001 C CNN
	2    6225 6350
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U5
U 3 1 5D6D9A2F
P 6225 6850
F 0 "U5" H 6225 6900 50  0000 C CNN
F 1 "74LS00" H 6225 6750 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6225 6850 50  0001 C CNN
F 3 "" H 6225 6850 50  0001 C CNN
	3    6225 6850
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U5
U 4 1 5D6DAB18
P 6225 7350
F 0 "U5" H 6225 7400 50  0000 C CNN
F 1 "74LS00" H 6225 7250 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6225 7350 50  0001 C CNN
F 3 "" H 6225 7350 50  0001 C CNN
	4    6225 7350
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U9
U 1 1 5D6DB7A4
P 7575 7350
F 0 "U9" H 7575 7400 50  0000 C CNN
F 1 "74LS00" H 7575 7250 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 7575 7350 50  0001 C CNN
F 3 "" H 7575 7350 50  0001 C CNN
	1    7575 7350
	1    0    0    -1  
$EndComp
Text GLabel 6825 6350 2    60   Output ~ 0
IO3
Text GLabel 6825 6850 2    60   Output ~ 0
IO2
Text GLabel 8175 7350 2    60   Output ~ 0
RAM_SEL
Text GLabel 3250 9375 2    60   Input ~ 0
RAM_SEL
$Comp
L VCC #PWR029
U 1 1 5D6E442A
P 5550 1600
F 0 "#PWR029" H 5550 1450 50  0001 C CNN
F 1 "VCC" H 5550 1750 50  0000 C CNN
F 2 "" H 5550 1600 50  0001 C CNN
F 3 "" H 5550 1600 50  0001 C CNN
	1    5550 1600
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR030
U 1 1 5D6E5643
P 5575 2925
F 0 "#PWR030" H 5575 2775 50  0001 C CNN
F 1 "VCC" H 5575 3075 50  0000 C CNN
F 2 "" H 5575 2925 50  0001 C CNN
F 3 "" H 5575 2925 50  0001 C CNN
	1    5575 2925
	-1   0    0    -1  
$EndComp
Entry Wire Line
	3650 2400 3550 2300
Entry Wire Line
	14625 5950 14725 6050
Entry Wire Line
	14625 6050 14725 6150
Entry Wire Line
	14625 6150 14725 6250
Entry Wire Line
	14625 6250 14725 6350
Entry Wire Line
	14625 6350 14725 6450
Entry Wire Line
	14625 6450 14725 6550
Entry Wire Line
	14625 6550 14725 6650
Entry Wire Line
	14625 6650 14725 6750
Entry Wire Line
	14625 6750 14725 6850
Entry Wire Line
	14625 6850 14725 6950
Entry Wire Line
	14625 6950 14725 7050
Entry Wire Line
	14625 7450 14725 7550
Text Label 15100 7550 2    60   ~ 0
A0
Text Label 15100 7450 2    60   ~ 0
A1
Text Label 15100 7350 2    60   ~ 0
A2
Text Label 15100 7250 2    60   ~ 0
A3
Text Label 15100 7150 2    60   ~ 0
A4
Text Label 15100 7050 2    60   ~ 0
A5
Text Label 15100 6950 2    60   ~ 0
A6
Text Label 15100 6850 2    60   ~ 0
A7
Text Label 15100 6750 2    60   ~ 0
A8
Text Label 15100 6650 2    60   ~ 0
A9
Text Label 15100 6550 2    60   ~ 0
A10
Text Label 15100 6450 2    60   ~ 0
A11
Entry Wire Line
	14625 7050 14725 7150
Entry Wire Line
	14625 7150 14725 7250
Entry Wire Line
	14625 7250 14725 7350
Entry Wire Line
	14625 7350 14725 7450
Text Label 15100 6350 2    60   ~ 0
A12
Text Label 15100 6250 2    60   ~ 0
A13
Text Label 15100 6150 2    60   ~ 0
A14
Text Label 15100 6050 2    60   ~ 0
A15
NoConn ~ 2675 1600
Text Label 15100 7850 2    60   ~ 0
PHI2
Text Label 15100 7950 2    60   ~ 0
~RESET
Text Label 15100 8050 2    60   ~ 0
PHI0
Entry Wire Line
	14725 8150 14625 8250
Entry Wire Line
	14725 8350 14625 8450
Entry Wire Line
	14725 8450 14625 8550
Entry Wire Line
	14725 8550 14625 8650
Entry Wire Line
	14725 8650 14625 8750
Entry Wire Line
	14725 8750 14625 8850
Entry Wire Line
	14725 8850 14625 8950
Entry Wire Line
	14725 8950 14625 9050
Entry Wire Line
	14725 9050 14625 9150
Entry Wire Line
	14725 9150 14625 9250
Entry Wire Line
	14725 9250 14625 9350
Entry Wire Line
	14725 9350 14625 9450
Entry Wire Line
	14725 9450 14625 9550
Entry Wire Line
	14725 7850 14625 7950
Entry Wire Line
	14725 8050 14625 8150
Entry Wire Line
	14725 7950 14625 8050
Text Label 15100 8150 2    60   ~ 0
~IRQ
Text Label 15100 8350 2    60   ~ 0
R/~W
Text Label 15100 8450 2    60   ~ 0
~RDY
Text Label 15100 8550 2    60   ~ 0
SYNC
Text Label 15100 8650 2    60   ~ 0
D0
Text Label 15100 8750 2    60   ~ 0
D1
Text Label 15100 8850 2    60   ~ 0
D2
Text Label 15100 8950 2    60   ~ 0
D3
Text Label 15100 9050 2    60   ~ 0
D4
Text Label 15100 9150 2    60   ~ 0
D5
Text Label 15100 9250 2    60   ~ 0
D6
Text Label 15100 9350 2    60   ~ 0
D7
Entry Wire Line
	5125 1900 5225 2000
Entry Wire Line
	5125 3225 5225 3325
Text Label 15100 8250 2    60   ~ 0
~NMI
Text Label 15100 9450 2    60   ~ 0
DEN
Text Label 1325 10575 2    60   ~ 0
PB6
Entry Wire Line
	1075 10575 975  10675
Text Label 4675 10375 2    60   ~ 0
PA0
Text Label 4675 10275 2    60   ~ 0
PA1
Text Label 4675 10175 2    60   ~ 0
PA2
Text Label 4675 10075 2    60   ~ 0
PA3
Text Label 5675 10075 0    60   ~ 0
PA4
Text Label 5675 10175 0    60   ~ 0
PA5
Text Label 5675 10275 0    60   ~ 0
PA6
Text Label 5850 10375 2    60   ~ 0
PA7
Entry Wire Line
	4425 10075 4325 10175
Entry Wire Line
	4425 10175 4325 10275
Entry Wire Line
	4425 10275 4325 10375
Entry Wire Line
	4425 10375 4325 10475
Entry Wire Line
	4425 10475 4325 10575
Entry Wire Line
	4425 10575 4325 10675
Entry Wire Line
	4425 10675 4325 10775
Entry Wire Line
	4425 10775 4325 10875
Text Label 4675 10475 2    60   ~ 0
PB0
Text Label 4675 10575 2    60   ~ 0
PB1
Text Label 4675 10675 2    60   ~ 0
PB2
Text Label 4675 10775 2    60   ~ 0
PB3
Entry Wire Line
	5925 10375 6025 10475
Entry Wire Line
	5925 10275 6025 10375
Entry Wire Line
	5925 10175 6025 10275
Entry Wire Line
	5925 10075 6025 10175
Text Label 5675 10775 0    60   ~ 0
PB4
Text Label 5675 10675 0    60   ~ 0
PB5
Text Label 5675 10475 0    60   ~ 0
PB7
Entry Wire Line
	5925 10475 6025 10575
Entry Wire Line
	5925 10775 6025 10875
Entry Wire Line
	5925 10675 6025 10775
Text Label 5675 10575 0    60   ~ 0
PB6
Entry Wire Line
	5925 10575 6025 10675
Wire Wire Line
	15750 1150 15850 1150
Wire Wire Line
	15850 1050 15850 1250
Wire Wire Line
	15850 1050 15750 1050
Connection ~ 15850 1150
Wire Wire Line
	15850 875  15850 950 
Wire Wire Line
	15850 950  15750 950 
Wire Wire Line
	14450 7650 15125 7650
Wire Wire Line
	14450 7650 14450 7750
Wire Wire Line
	14525 7750 15125 7750
Wire Wire Line
	14525 7750 14525 7575
Wire Wire Line
	2675 2100 3075 2100
Wire Wire Line
	2675 2200 3075 2200
Wire Wire Line
	2675 2300 3075 2300
Wire Wire Line
	2675 2400 3075 2400
Wire Wire Line
	2675 2500 3075 2500
Wire Wire Line
	2675 2600 3075 2600
Wire Wire Line
	2675 2700 3075 2700
Wire Wire Line
	2675 2800 3075 2800
Wire Wire Line
	2675 2900 3075 2900
Wire Wire Line
	2675 3000 3075 3000
Wire Wire Line
	2675 3100 3075 3100
Wire Wire Line
	2675 3200 3075 3200
Wire Wire Line
	975  2200 1375 2200
Wire Wire Line
	975  2300 1375 2300
Wire Wire Line
	975  2400 1375 2400
Wire Wire Line
	975  2500 1375 2500
Wire Wire Line
	975  2600 1375 2600
Wire Wire Line
	975  2700 1375 2700
Wire Wire Line
	975  2800 1375 2800
Wire Wire Line
	975  2900 1375 2900
Wire Wire Line
	975  3000 1375 3000
Wire Wire Line
	975  3100 1375 3100
Wire Wire Line
	975  3200 1375 3200
Wire Wire Line
	975  3300 1375 3300
Wire Wire Line
	2675 1500 3075 1500
Wire Wire Line
	2675 1400 3075 1400
Wire Wire Line
	975  1500 1375 1500
Wire Wire Line
	975  1900 1375 1900
Wire Wire Line
	975  1700 1375 1700
Wire Wire Line
	975  2000 1375 2000
Wire Wire Line
	2675 1700 3075 1700
Wire Bus Line
	875  950  875  9475
Wire Wire Line
	1200 2100 1375 2100
Wire Wire Line
	3650 1850 4050 1850
Wire Wire Line
	3650 1675 4050 1675
Wire Wire Line
	2300 3925 3075 3925
Wire Wire Line
	2300 4025 3075 4025
Wire Wire Line
	2300 4125 3075 4125
Wire Wire Line
	2300 4225 3075 4225
Wire Wire Line
	2300 4325 3075 4325
Wire Wire Line
	2300 4425 3075 4425
Wire Wire Line
	2300 4525 3075 4525
Wire Wire Line
	2300 4625 3075 4625
Wire Wire Line
	975  3925 1300 3925
Wire Wire Line
	975  4025 1300 4025
Wire Wire Line
	975  4125 1300 4125
Wire Wire Line
	975  4225 1300 4225
Wire Wire Line
	975  4825 1300 4825
Wire Wire Line
	975  4925 1300 4925
Wire Wire Line
	975  5025 1300 5025
Wire Wire Line
	975  5125 1300 5125
Wire Wire Line
	975  4325 1300 4325
Wire Wire Line
	975  4425 1300 4425
Wire Wire Line
	975  4525 1300 4525
Wire Wire Line
	975  4625 1300 4625
Wire Wire Line
	975  4725 1300 4725
Wire Wire Line
	1300 1125 1300 1050
Wire Wire Line
	1300 1050 1525 1050
Wire Wire Line
	1525 1050 1525 1125
Wire Wire Line
	1300 1325 1300 1400
Wire Wire Line
	1300 1400 1375 1400
Wire Wire Line
	2675 1800 3075 1800
Wire Wire Line
	3650 2025 4050 2025
Wire Wire Line
	2675 2000 3075 2000
Wire Wire Line
	975  5225 1300 5225
Wire Wire Line
	975  5225 975  5400
Wire Wire Line
	975  5325 1300 5325
Connection ~ 975  5325
Wire Wire Line
	2750 3375 2750 3300
Wire Wire Line
	2750 3300 2675 3300
Wire Wire Line
	4625 9075 4700 9075
Wire Wire Line
	5650 9075 5725 9075
Wire Wire Line
	5650 8975 6175 8975
Wire Wire Line
	6175 8975 6175 9050
Wire Wire Line
	4625 8900 4625 8975
Wire Wire Line
	4625 8975 4700 8975
Wire Wire Line
	6800 2125 6800 2200
Wire Wire Line
	6800 2200 6650 2200
Wire Wire Line
	6800 3450 6800 3525
Wire Wire Line
	6800 3525 6650 3525
Wire Wire Line
	6650 1800 7225 1800
Wire Wire Line
	6900 1800 6900 2600
Wire Wire Line
	6900 2600 5575 2600
Wire Wire Line
	5575 2600 5575 2200
Wire Wire Line
	5575 2200 5650 2200
Wire Wire Line
	6650 3125 7225 3125
Wire Wire Line
	6900 3125 6900 3925
Wire Wire Line
	6900 3925 5575 3925
Wire Wire Line
	5575 3925 5575 3525
Wire Wire Line
	5575 3525 5650 3525
Wire Wire Line
	7025 1875 7025 1800
Connection ~ 6900 1800
Wire Wire Line
	7025 3125 7025 3200
Connection ~ 6900 3125
Wire Wire Line
	7025 2250 7025 2175
Wire Wire Line
	7025 3575 7025 3500
Connection ~ 7025 3125
Connection ~ 7025 1800
Wire Wire Line
	7525 3125 7675 3125
Wire Wire Line
	7525 1800 7675 1800
Wire Wire Line
	7600 1875 7600 1800
Connection ~ 7600 1800
Wire Wire Line
	7600 3200 7600 3125
Connection ~ 7600 3125
Wire Wire Line
	7600 2175 7600 2325
Wire Wire Line
	7600 2250 7025 2250
Connection ~ 7600 2250
Wire Wire Line
	7025 3575 7600 3575
Wire Wire Line
	7600 3500 7600 3650
Connection ~ 7600 3575
Wire Wire Line
	5225 2000 5650 2000
Wire Wire Line
	5225 3325 5650 3325
Wire Wire Line
	975  6075 1300 6075
Wire Wire Line
	975  6175 1300 6175
Wire Wire Line
	975  6275 1300 6275
Wire Wire Line
	975  6375 1300 6375
Wire Wire Line
	975  6975 1300 6975
Wire Wire Line
	975  7075 1300 7075
Wire Wire Line
	975  6475 1300 6475
Wire Wire Line
	975  6575 1300 6575
Wire Wire Line
	975  6675 1300 6675
Wire Wire Line
	975  6775 1300 6775
Wire Wire Line
	975  6875 1300 6875
Wire Wire Line
	975  7375 1300 7375
Wire Wire Line
	975  7175 975  7550
Wire Wire Line
	975  7475 1300 7475
Connection ~ 975  7475
Wire Wire Line
	2650 9675 3075 9675
Wire Wire Line
	2650 9775 3075 9775
Wire Wire Line
	2650 9875 3075 9875
Wire Wire Line
	2650 9975 3075 9975
Wire Wire Line
	2650 10075 3075 10075
Wire Wire Line
	2650 10175 3075 10175
Wire Wire Line
	2650 10275 3075 10275
Wire Wire Line
	2650 10375 3075 10375
Wire Bus Line
	3175 950  3175 10575
Wire Wire Line
	2700 6775 3075 6775
Wire Wire Line
	2700 6675 3075 6675
Wire Wire Line
	2700 6575 3075 6575
Wire Wire Line
	2700 6475 3075 6475
Wire Wire Line
	2700 6375 3075 6375
Wire Wire Line
	2700 6275 3075 6275
Wire Wire Line
	2700 6175 3075 6175
Wire Wire Line
	2700 6075 3075 6075
Wire Wire Line
	975  9075 1350 9075
Wire Wire Line
	975  9175 1350 9175
Wire Wire Line
	975  9275 1350 9275
Wire Wire Line
	975  9375 1350 9375
Wire Wire Line
	975  9475 1350 9475
Wire Wire Line
	975  9575 1350 9575
Wire Wire Line
	2650 8975 3075 8975
Wire Wire Line
	1350 8975 1275 8975
Wire Wire Line
	1275 8975 1275 8825
Wire Wire Line
	1275 8825 1075 8825
Wire Wire Line
	2650 9575 3075 9575
Wire Wire Line
	2650 9075 3075 9075
Wire Wire Line
	2650 9475 3075 9475
Wire Wire Line
	2650 10475 3075 10475
Wire Wire Line
	975  8575 1350 8575
Wire Wire Line
	1350 8475 1350 8675
Wire Wire Line
	1350 8475 1425 8475
Wire Wire Line
	1350 8675 1425 8675
Connection ~ 1350 8575
Wire Wire Line
	2625 8575 3075 8575
Wire Wire Line
	2300 4775 2375 4775
Wire Wire Line
	2375 4775 2375 5025
Wire Wire Line
	2300 5025 2450 5025
Connection ~ 2375 5025
Wire Wire Line
	1075 9675 1350 9675
Wire Wire Line
	1075 9775 1350 9775
Wire Wire Line
	1075 9875 1350 9875
Wire Wire Line
	1075 9975 1350 9975
Wire Wire Line
	1075 10075 1350 10075
Wire Wire Line
	1075 10175 1350 10175
Wire Wire Line
	1075 10275 1350 10275
Wire Wire Line
	1075 10375 1350 10375
Wire Wire Line
	1075 10475 1350 10475
Wire Wire Line
	1075 10775 1350 10775
Wire Wire Line
	1075 10675 1350 10675
Wire Wire Line
	2650 10875 2925 10875
Wire Wire Line
	2650 10775 2925 10775
Wire Wire Line
	2925 10575 2650 10575
Wire Wire Line
	2650 10675 2925 10675
Wire Bus Line
	975  9775 975  11025
Wire Bus Line
	975  11025 6025 11025
Wire Bus Line
	3025 10675 3025 11025
Wire Wire Line
	1250 10975 1350 10975
Wire Wire Line
	1350 10975 1350 10875
Wire Wire Line
	1150 7675 1300 7675
Wire Wire Line
	1225 7775 1300 7775
Wire Wire Line
	1150 7875 1300 7875
Wire Wire Line
	1225 7875 1225 7775
Wire Wire Line
	5250 4825 5875 4825
Wire Wire Line
	5250 5325 5875 5325
Wire Wire Line
	5250 5425 5875 5425
Wire Wire Line
	3650 5125 4050 5125
Wire Wire Line
	3650 5225 4050 5225
Wire Wire Line
	3650 5325 4050 5325
Wire Wire Line
	3650 5425 4050 5425
Wire Wire Line
	5325 4925 5250 4925
Wire Wire Line
	5325 4750 5325 5225
Connection ~ 5325 4825
Wire Wire Line
	5325 5025 5250 5025
Connection ~ 5325 4925
Wire Wire Line
	5325 5125 5250 5125
Connection ~ 5325 5025
Wire Wire Line
	5325 5225 5250 5225
Connection ~ 5325 5125
Wire Wire Line
	5500 4750 5500 5325
Connection ~ 5500 5325
Wire Wire Line
	5675 4750 5675 5425
Connection ~ 5675 5425
Wire Wire Line
	5325 5425 5325 5525
Wire Wire Line
	5325 5525 5250 5525
Connection ~ 5325 5425
Wire Wire Line
	5325 4300 5325 4450
Wire Wire Line
	5325 4375 5675 4375
Wire Wire Line
	5675 4375 5675 4450
Wire Wire Line
	5500 4450 5500 4375
Connection ~ 5500 4375
Connection ~ 5325 4375
Wire Wire Line
	3975 5425 3975 5550
Connection ~ 3975 5425
Wire Wire Line
	3700 5550 3625 5550
Wire Wire Line
	3625 5550 3625 5625
Wire Wire Line
	3975 5550 3900 5550
Connection ~ 1225 7875
Wire Bus Line
	3550 4950 3550 5325
Wire Bus Line
	3550 4950 3175 4950
Wire Wire Line
	3975 6950 4050 6950
Wire Wire Line
	3650 6450 4050 6450
Wire Wire Line
	3650 6350 4050 6350
Wire Wire Line
	3650 6750 4050 6750
Wire Wire Line
	3975 6175 3975 6250
Wire Wire Line
	3975 6250 4050 6250
Wire Wire Line
	3625 6850 4050 6850
Wire Wire Line
	3625 6850 3625 6925
Wire Bus Line
	3550 6175 3550 6650
Wire Bus Line
	3550 6175 3175 6175
Wire Wire Line
	5250 6650 5325 6650
Wire Wire Line
	5325 6650 5325 6250
Wire Wire Line
	5325 6250 5625 6250
Wire Wire Line
	5625 6750 5250 6750
Wire Wire Line
	5250 6850 5400 6850
Wire Wire Line
	5400 6450 5400 7250
Wire Wire Line
	5400 6450 5625 6450
Connection ~ 5400 6850
Wire Wire Line
	5400 7250 5625 7250
Wire Wire Line
	5250 6950 5625 6950
Wire Wire Line
	5325 6950 5325 7450
Wire Wire Line
	5325 7450 5625 7450
Connection ~ 5325 6950
Wire Wire Line
	6825 7350 6900 7350
Wire Wire Line
	6900 7250 6900 7450
Wire Wire Line
	6900 7250 6975 7250
Wire Wire Line
	6900 7450 6975 7450
Connection ~ 6900 7350
Wire Wire Line
	3250 9375 2650 9375
Wire Wire Line
	5550 1925 5550 2000
Connection ~ 5550 2000
Wire Wire Line
	5575 3250 5575 3325
Connection ~ 5575 3325
Wire Wire Line
	5550 1600 5550 1625
Wire Wire Line
	5575 2925 5575 2950
Wire Bus Line
	3175 1500 3550 1500
Wire Bus Line
	3550 1500 3550 2300
Wire Wire Line
	4425 1600 4425 2100
Wire Wire Line
	4425 2025 4350 2025
Wire Wire Line
	4350 1850 4425 1850
Connection ~ 4425 1850
Wire Wire Line
	4350 1675 4425 1675
Connection ~ 4425 1675
Wire Wire Line
	3650 2400 4125 2400
Connection ~ 4425 2025
Wire Wire Line
	14725 6050 15125 6050
Wire Wire Line
	14725 6150 15125 6150
Wire Wire Line
	14725 6250 15125 6250
Wire Wire Line
	14725 6350 15125 6350
Wire Wire Line
	14725 6450 15125 6450
Wire Wire Line
	14725 6550 15125 6550
Wire Wire Line
	14725 6650 15125 6650
Wire Wire Line
	14725 6750 15125 6750
Wire Wire Line
	14725 6850 15125 6850
Wire Wire Line
	14725 6950 15125 6950
Wire Wire Line
	14725 7050 15125 7050
Wire Wire Line
	14725 7550 15125 7550
Wire Wire Line
	14725 7150 15125 7150
Wire Wire Line
	14725 7250 15125 7250
Wire Wire Line
	14725 7350 15125 7350
Wire Wire Line
	14725 7450 15125 7450
Wire Wire Line
	14725 8150 15125 8150
Wire Wire Line
	14725 8350 15125 8350
Wire Wire Line
	14725 8450 15125 8450
Wire Wire Line
	14725 8550 15125 8550
Wire Wire Line
	14725 8650 15125 8650
Wire Wire Line
	14725 8750 15125 8750
Wire Wire Line
	14725 8850 15125 8850
Wire Wire Line
	14725 8950 15125 8950
Wire Wire Line
	14725 9050 15125 9050
Wire Wire Line
	14725 9150 15125 9150
Wire Wire Line
	14725 9250 15125 9250
Wire Wire Line
	14725 9350 15125 9350
Wire Wire Line
	14725 9450 15125 9450
Wire Wire Line
	14725 7850 15125 7850
Wire Wire Line
	14725 8050 15125 8050
Wire Wire Line
	14725 7950 15125 7950
Wire Bus Line
	5125 950  5125 3225
Wire Bus Line
	14625 5950 14625 7450
Wire Bus Line
	14625 7950 14625 9550
Wire Wire Line
	1075 10575 1350 10575
Wire Wire Line
	4425 10075 4700 10075
Wire Wire Line
	4425 10175 4700 10175
Wire Wire Line
	4425 10275 4700 10275
Wire Wire Line
	4425 10375 4700 10375
Wire Wire Line
	4425 10475 4700 10475
Wire Wire Line
	4425 10575 4700 10575
Wire Wire Line
	4425 10675 4700 10675
Wire Wire Line
	4425 10775 4700 10775
Wire Wire Line
	5650 10375 5925 10375
Wire Wire Line
	5650 10275 5925 10275
Wire Wire Line
	5925 10075 5650 10075
Wire Wire Line
	5650 10175 5925 10175
Wire Wire Line
	5925 10475 5650 10475
Wire Wire Line
	5925 10775 5650 10775
Wire Wire Line
	5925 10675 5650 10675
Wire Wire Line
	5925 10575 5650 10575
Wire Bus Line
	4325 9375 4325 11025
Wire Bus Line
	6025 11025 6025 9375
Text GLabel 2650 9175 2    60   Input ~ 0
IO2
$Comp
L GND #PWR031
U 1 1 5D6FEB12
P 3025 9175
F 0 "#PWR031" H 3025 8925 50  0001 C CNN
F 1 "GND" H 3025 9025 50  0000 C CNN
F 2 "" H 3025 9175 50  0001 C CNN
F 3 "" H 3025 9175 50  0001 C CNN
	1    3025 9175
	1    0    0    -1  
$EndComp
Wire Wire Line
	3025 9175 3025 9150
Wire Wire Line
	3025 9150 2925 9150
Wire Wire Line
	2925 9150 2925 9275
Wire Wire Line
	2925 9275 2650 9275
Text GLabel 4425 9175 0    60   Input ~ 0
IO3
Wire Wire Line
	4425 9175 4700 9175
Wire Bus Line
	14300 7950 14625 7950
Wire Bus Line
	14300 950  14300 7950
Wire Bus Line
	14300 5950 14625 5950
Wire Bus Line
	14300 950  875  950 
Wire Wire Line
	15125 8250 14725 8250
Entry Wire Line
	14725 8250 14625 8350
Text GLabel 15050 9550 0    60   Input ~ 0
K0
Text GLabel 15050 9650 0    60   Input ~ 0
K5
Text GLabel 15050 9750 0    60   Input ~ 0
K7
Wire Wire Line
	15050 9550 15125 9550
Wire Wire Line
	15050 9650 15125 9650
Wire Wire Line
	15050 9750 15125 9750
Wire Wire Line
	15050 9850 15125 9850
NoConn ~ 4700 9375
NoConn ~ 4700 9475
NoConn ~ 4700 9575
NoConn ~ 4700 9675
NoConn ~ 4700 9775
NoConn ~ 4700 9875
NoConn ~ 5650 9875
NoConn ~ 5650 9775
NoConn ~ 5650 9675
NoConn ~ 5650 9575
NoConn ~ 5650 9475
$Comp
L 74LS00 U9
U 2 1 5D7159A9
P 4650 8000
F 0 "U9" H 4650 8050 50  0000 C CNN
F 1 "74LS00" H 4650 7900 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 4650 8000 50  0001 C CNN
F 3 "" H 4650 8000 50  0001 C CNN
	2    4650 8000
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U9
U 3 1 5D715A8D
P 6000 8175
F 0 "U9" H 6000 8225 50  0000 C CNN
F 1 "74LS00" H 6000 8075 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6000 8175 50  0001 C CNN
F 3 "" H 6000 8175 50  0001 C CNN
	3    6000 8175
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U9
U 4 1 5D715B0E
P 11375 10225
F 0 "U9" H 11375 10275 50  0000 C CNN
F 1 "74LS00" H 11375 10125 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 11375 10225 50  0001 C CNN
F 3 "" H 11375 10225 50  0001 C CNN
	4    11375 10225
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11475 10825 11475 10975
$Comp
L GND #PWR032
U 1 1 5D716C90
P 11475 10975
F 0 "#PWR032" H 11475 10725 50  0001 C CNN
F 1 "GND" H 11475 10825 50  0000 C CNN
F 2 "" H 11475 10975 50  0001 C CNN
F 3 "" H 11475 10975 50  0001 C CNN
	1    11475 10975
	1    0    0    -1  
$EndComp
Connection ~ 11475 10900
Wire Wire Line
	11275 10825 11275 10900
NoConn ~ 11375 9625
$Comp
L C C1
U 1 1 5D71BEBA
P 8400 10550
F 0 "C1" H 8425 10650 50  0000 L CNN
F 1 "100nF" H 8425 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8438 10400 50  0001 C CNN
F 3 "" H 8400 10550 50  0001 C CNN
	1    8400 10550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10650 10700 10650 10850
Wire Wire Line
	8400 10775 10650 10775
Wire Wire Line
	8400 10775 8400 10700
Wire Wire Line
	8700 10700 8700 10775
Connection ~ 8700 10775
Wire Wire Line
	9000 10700 9000 10775
Connection ~ 9000 10775
Wire Wire Line
	9275 10700 9275 10775
Connection ~ 9275 10775
Wire Wire Line
	9550 10700 9550 10775
Connection ~ 9550 10775
Wire Wire Line
	9825 10700 9825 10775
Connection ~ 9825 10775
Wire Wire Line
	10100 10700 10100 10775
Connection ~ 10100 10775
Wire Wire Line
	10375 10700 10375 10775
Connection ~ 10375 10775
Connection ~ 10650 10775
$Comp
L GND #PWR033
U 1 1 5D71E74B
P 10650 10850
F 0 "#PWR033" H 10650 10600 50  0001 C CNN
F 1 "GND" H 10650 10700 50  0000 C CNN
F 2 "" H 10650 10850 50  0001 C CNN
F 3 "" H 10650 10850 50  0001 C CNN
	1    10650 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 10325 10650 10400
Wire Wire Line
	8400 10325 10650 10325
Wire Wire Line
	8400 10250 8400 10400
Wire Wire Line
	8700 10400 8700 10325
Connection ~ 8700 10325
Wire Wire Line
	9000 10400 9000 10325
Connection ~ 9000 10325
Wire Wire Line
	9275 10400 9275 10325
Connection ~ 9275 10325
Wire Wire Line
	9550 10400 9550 10325
Connection ~ 9550 10325
Wire Wire Line
	9825 10400 9825 10325
Connection ~ 9825 10325
Wire Wire Line
	10100 10400 10100 10325
Connection ~ 10100 10325
Wire Wire Line
	10375 10400 10375 10325
Connection ~ 10375 10325
$Comp
L VCC #PWR034
U 1 1 5D72035A
P 8400 10250
F 0 "#PWR034" H 8400 10100 50  0001 C CNN
F 1 "VCC" H 8400 10400 50  0000 C CNN
F 2 "" H 8400 10250 50  0001 C CNN
F 3 "" H 8400 10250 50  0001 C CNN
	1    8400 10250
	1    0    0    -1  
$EndComp
Connection ~ 8400 10325
$Comp
L C C2
U 1 1 5D72237F
P 8700 10550
F 0 "C2" H 8725 10650 50  0000 L CNN
F 1 "100nF" H 8725 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8738 10400 50  0001 C CNN
F 3 "" H 8700 10550 50  0001 C CNN
	1    8700 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5D722417
P 9000 10550
F 0 "C3" H 9025 10650 50  0000 L CNN
F 1 "100nF" H 9025 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9038 10400 50  0001 C CNN
F 3 "" H 9000 10550 50  0001 C CNN
	1    9000 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5D7224A6
P 9275 10550
F 0 "C4" H 9300 10650 50  0000 L CNN
F 1 "100nF" H 9300 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9313 10400 50  0001 C CNN
F 3 "" H 9275 10550 50  0001 C CNN
	1    9275 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5D722536
P 9550 10550
F 0 "C5" H 9575 10650 50  0000 L CNN
F 1 "100nF" H 9575 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9588 10400 50  0001 C CNN
F 3 "" H 9550 10550 50  0001 C CNN
	1    9550 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5D72266D
P 9825 10550
F 0 "C6" H 9850 10650 50  0000 L CNN
F 1 "100nF" H 9850 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9863 10400 50  0001 C CNN
F 3 "" H 9825 10550 50  0001 C CNN
	1    9825 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5D72270D
P 10100 10550
F 0 "C7" H 10125 10650 50  0000 L CNN
F 1 "100nF" H 10125 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10138 10400 50  0001 C CNN
F 3 "" H 10100 10550 50  0001 C CNN
	1    10100 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5D7227AA
P 10375 10550
F 0 "C8" H 10400 10650 50  0000 L CNN
F 1 "100nF" H 10400 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10413 10400 50  0001 C CNN
F 3 "" H 10375 10550 50  0001 C CNN
	1    10375 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5D722846
P 10650 10550
F 0 "C9" H 10675 10650 50  0000 L CNN
F 1 "100nF" H 10675 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10688 10400 50  0001 C CNN
F 3 "" H 10650 10550 50  0001 C CNN
	1    10650 10550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 5D729D92
P 4600 10825
F 0 "#PWR035" H 4600 10575 50  0001 C CNN
F 1 "GND" H 4600 10675 50  0000 C CNN
F 2 "" H 4600 10825 50  0001 C CNN
F 3 "" H 4600 10825 50  0001 C CNN
	1    4600 10825
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 10875 4700 10825
Wire Wire Line
	4700 10825 4600 10825
Wire Wire Line
	5650 10875 5650 10825
Wire Wire Line
	5650 10825 5750 10825
$Comp
L GND #PWR036
U 1 1 5D72A34D
P 5750 10825
F 0 "#PWR036" H 5750 10575 50  0001 C CNN
F 1 "GND" H 5750 10675 50  0000 C CNN
F 2 "" H 5750 10825 50  0001 C CNN
F 3 "" H 5750 10825 50  0001 C CNN
	1    5750 10825
	1    0    0    -1  
$EndComp
NoConn ~ 5650 9975
Wire Bus Line
	3550 7725 3175 7725
Text Label 3675 7900 0    60   ~ 0
R/~W
Entry Wire Line
	3550 7800 3650 7900
Wire Wire Line
	3650 7900 4050 7900
Wire Wire Line
	3975 7900 3975 8100
Wire Wire Line
	3975 8100 4050 8100
Connection ~ 3975 7900
Wire Wire Line
	5250 8000 5325 8000
Text Label 3675 8350 0    60   ~ 0
PHI2
Entry Wire Line
	3550 8250 3650 8350
Wire Bus Line
	3550 7725 3550 8250
Wire Wire Line
	5325 8000 5325 8075
Wire Wire Line
	5325 8075 5400 8075
Wire Wire Line
	5325 8275 5325 8350
Wire Wire Line
	5325 8275 5400 8275
Wire Wire Line
	5325 8350 3650 8350
Text GLabel 6675 8175 2    60   Output ~ 0
RAM_R/~W
Wire Wire Line
	6600 8175 6675 8175
Text GLabel 2450 4875 2    60   Input ~ 0
RAM_R/~W
Wire Wire Line
	2300 4875 2450 4875
Wire Wire Line
	11275 10900 11475 10900
Wire Wire Line
	975  7275 1300 7275
Connection ~ 975  7375
Wire Wire Line
	975  7175 1300 7175
Connection ~ 975  7275
$Comp
L R_Network08 RN1
U 1 1 5D665BC0
P 4275 3525
F 0 "RN1" V 3775 3525 50  0000 C CNN
F 1 "4k7x8" V 4675 3525 50  0000 C CNN
F 2 "Resistors_THT:R_Array_SIP9" V 4750 3525 50  0001 C CNN
F 3 "" H 4275 3525 50  0001 C CNN
	1    4275 3525
	0    1    -1   0   
$EndComp
Text Label 4050 3225 2    60   ~ 0
D0
Text Label 4050 3325 2    60   ~ 0
D1
Text Label 4050 3425 2    60   ~ 0
D2
Text Label 4050 3525 2    60   ~ 0
D3
Text Label 4050 3625 2    60   ~ 0
D4
Text Label 4050 3725 2    60   ~ 0
D5
Text Label 4050 3825 2    60   ~ 0
D6
Text Label 4050 3925 2    60   ~ 0
D7
Entry Wire Line
	3300 3225 3200 3325
Entry Wire Line
	3300 3325 3200 3425
Entry Wire Line
	3300 3425 3200 3525
Entry Wire Line
	3300 3525 3200 3625
Entry Wire Line
	3300 3625 3200 3725
Entry Wire Line
	3300 3725 3200 3825
Entry Wire Line
	3300 3825 3200 3925
Entry Wire Line
	3300 3925 3200 4025
Wire Wire Line
	4075 3225 3300 3225
Wire Wire Line
	4075 3325 3300 3325
Wire Wire Line
	4075 3425 3300 3425
Wire Wire Line
	4075 3525 3300 3525
Wire Wire Line
	4075 3625 3300 3625
Wire Wire Line
	4075 3725 3300 3725
Wire Wire Line
	4075 3825 3300 3825
Wire Wire Line
	4075 3925 3300 3925
$Comp
L GND #PWR037
U 1 1 5D6667E9
P 4550 4000
F 0 "#PWR037" H 4550 3750 50  0001 C CNN
F 1 "GND" H 4550 3850 50  0000 C CNN
F 2 "" H 4550 4000 50  0001 C CNN
F 3 "" H 4550 4000 50  0001 C CNN
	1    4550 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4475 3925 4550 3925
Wire Wire Line
	4550 3925 4550 4000
Text GLabel 15050 9850 0    60   Output ~ 0
TAPE
Text GLabel 4625 9925 0    60   Input ~ 0
TAPE
Text GLabel 5875 9175 2    60   Input ~ 0
K7
Text Label 5675 9275 0    60   ~ 0
~NMI
Entry Wire Line
	5925 9275 6025 9375
Wire Wire Line
	5925 9275 5650 9275
Wire Wire Line
	5650 9175 5875 9175
Text Label 4675 9275 2    60   ~ 0
SYNC
Wire Wire Line
	4700 9275 4425 9275
Entry Wire Line
	4425 9275 4325 9375
Wire Wire Line
	4625 9925 4675 9925
Wire Wire Line
	4675 9925 4675 9975
Wire Wire Line
	4675 9975 4700 9975
Entry Wire Line
	875  1500 975  1600
Wire Wire Line
	975  1600 1375 1600
Text Label 1350 1600 2    60   ~ 0
PHI1
Text Label 5675 9375 0    60   ~ 0
PHI1
Entry Wire Line
	5925 9375 6025 9475
Wire Wire Line
	5925 9375 5650 9375
Text Notes 12175 10925 0    60   ~ 0
RC-ONE CPU
Text Notes 11825 10550 0    60   ~ 0
RC-ONE CPU module, takes care of most central functions including CPU, RAM and ROM.\nThe two latter categories aren't used anywhere near capacity, mostly because today\nthose chips are the cheapest and easiest to get hold off without physically being larger.\nUser Interface module slots on top and takes care of keypad as well as I/O expected on\na KIM-1 computer. Most signals are available on backplane connector for adding any\nother modules and functionality to the RC-ONE computer.
$EndSCHEMATC
