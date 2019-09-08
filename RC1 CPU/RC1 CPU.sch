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
L VCC #PWR40
U 1 1 595E10E8
P 15850 875
F 0 "#PWR40" H 15850 725 50  0001 C CNN
F 1 "VCC" H 15850 1025 50  0000 C CNN
F 2 "" H 15850 875 50  0001 C CNN
F 3 "" H 15850 875 50  0001 C CNN
	1    15850 875 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR41
U 1 1 595E22B1
P 15850 1250
F 0 "#PWR41" H 15850 1000 50  0001 C CNN
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
L GND #PWR38
U 1 1 5D63F634
P 14450 7750
F 0 "#PWR38" H 14450 7500 50  0001 C CNN
F 1 "GND" H 14450 7600 50  0000 C CNN
F 2 "" H 14450 7750 50  0001 C CNN
F 3 "" H 14450 7750 50  0001 C CNN
	1    14450 7750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR39
U 1 1 5D63F697
P 14525 7575
F 0 "#PWR39" H 14525 7425 50  0001 C CNN
F 1 "VCC" H 14525 7725 50  0000 C CNN
F 2 "" H 14525 7575 50  0001 C CNN
F 3 "" H 14525 7575 50  0001 C CNN
	1    14525 7575
	1    0    0    -1  
$EndComp
$Comp
L RC1_UI_Port J2
U 1 1 5D63F136
P 5950 9925
F 0 "J2" H 5950 10975 50  0000 C CNN
F 1 "RC1_UI_Port" V 5950 9925 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 5950 8975 50  0001 C CNN
F 3 "" H 5950 8975 50  0001 C CNN
	1    5950 9925
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
P 2800 2300
F 0 "U1" H 2800 1150 60  0000 C CNN
F 1 "WD65C02" V 2800 2200 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 2300 2500 60  0001 C CNN
F 3 "" H 2300 2500 60  0000 C CNN
	1    2800 2300
	1    0    0    -1  
$EndComp
$Comp
L R6532 U4
U 1 1 5D645978
P 2775 9875
F 0 "U4" H 2775 8775 60  0000 C CNN
F 1 "6532" V 2775 9775 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 2275 10075 60  0001 C CNN
F 3 "" H 2275 10075 60  0000 C CNN
	1    2775 9875
	1    0    0    -1  
$EndComp
Entry Wire Line
	3850 2100 3950 2200
Entry Wire Line
	3850 2200 3950 2300
Entry Wire Line
	3850 2300 3950 2400
Entry Wire Line
	3850 2400 3950 2500
Entry Wire Line
	3850 2500 3950 2600
Entry Wire Line
	3850 2600 3950 2700
Entry Wire Line
	3850 2700 3950 2800
Entry Wire Line
	3850 2800 3950 2900
Entry Wire Line
	3850 2900 3950 3000
Entry Wire Line
	3850 3000 3950 3100
Entry Wire Line
	3850 3100 3950 3200
Entry Wire Line
	3850 3200 3950 3300
Entry Wire Line
	1350 2100 1450 2200
Entry Wire Line
	1350 2200 1450 2300
Entry Wire Line
	1350 2300 1450 2400
Entry Wire Line
	1350 2400 1450 2500
Entry Wire Line
	1350 2500 1450 2600
Entry Wire Line
	1350 2600 1450 2700
Entry Wire Line
	1350 2700 1450 2800
Entry Wire Line
	1350 2800 1450 2900
Entry Wire Line
	1350 2900 1450 3000
Entry Wire Line
	1350 3000 1450 3100
Entry Wire Line
	1350 3100 1450 3200
Entry Wire Line
	1350 3200 1450 3300
Text Label 3475 2100 0    60   ~ 0
D0
Text Label 3475 2200 0    60   ~ 0
D1
Text Label 3475 2300 0    60   ~ 0
D2
Text Label 3475 2400 0    60   ~ 0
D3
Text Label 3475 2500 0    60   ~ 0
D4
Text Label 3475 2600 0    60   ~ 0
D5
Text Label 3475 2700 0    60   ~ 0
D6
Text Label 3475 2800 0    60   ~ 0
D7
Text Label 3475 2900 0    60   ~ 0
A15
Text Label 3475 3000 0    60   ~ 0
A14
Text Label 3475 3100 0    60   ~ 0
A13
Text Label 3475 3200 0    60   ~ 0
A12
Text Label 2125 2200 2    60   ~ 0
A0
Text Label 2125 2300 2    60   ~ 0
A1
Text Label 2125 2400 2    60   ~ 0
A2
Text Label 2125 2500 2    60   ~ 0
A3
Text Label 2125 2600 2    60   ~ 0
A4
Text Label 2125 2700 2    60   ~ 0
A5
Text Label 2125 2800 2    60   ~ 0
A6
Text Label 2125 2900 2    60   ~ 0
A7
Text Label 2125 3000 2    60   ~ 0
A8
Text Label 2125 3100 2    60   ~ 0
A9
Text Label 2125 3200 2    60   ~ 0
A10
Text Label 2125 3300 2    60   ~ 0
A11
Entry Wire Line
	3850 1500 3950 1600
Text Label 3475 1500 0    60   ~ 0
PHI2
Entry Wire Line
	3850 1400 3950 1500
Text Label 3475 1400 0    60   ~ 0
~RESET
Entry Wire Line
	1350 1400 1450 1500
Text Label 2125 1500 2    60   ~ 0
~RDY
Entry Wire Line
	1350 1800 1450 1900
Text Label 2125 1900 2    60   ~ 0
~NMI
Entry Wire Line
	1350 1600 1450 1700
Text Label 2125 1700 2    60   ~ 0
~IRQ
Entry Wire Line
	1350 1900 1450 2000
Text Label 2125 2000 2    60   ~ 0
SYNC
Entry Wire Line
	3850 1700 3950 1800
Text Label 3475 1700 0    60   ~ 0
PHI0
NoConn ~ 2150 1800
$Comp
L Jumper_NO_Small JP1
U 1 1 5D64597B
P 2075 1225
F 0 "JP1" H 2075 1305 50  0000 C CNN
F 1 "VP_GND" H 2050 1175 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 2075 1225 50  0001 C CNN
F 3 "" H 2075 1225 50  0001 C CNN
	1    2075 1225
	0    1    -1   0   
$EndComp
$Comp
L R R3
U 1 1 5D64597C
P 4975 2025
F 0 "R3" V 5055 2025 50  0000 C CNN
F 1 "3.3k" V 4975 2025 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4905 2025 50  0001 C CNN
F 3 "" H 4975 2025 50  0001 C CNN
	1    4975 2025
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR9
U 1 1 5D64597E
P 1975 2100
F 0 "#PWR9" H 1975 1950 50  0001 C CNN
F 1 "VCC" H 1975 2250 50  0000 C CNN
F 2 "" H 1975 2100 50  0001 C CNN
F 3 "" H 1975 2100 50  0001 C CNN
	1    1975 2100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR13
U 1 1 5D645982
P 3525 3375
F 0 "#PWR13" H 3525 3125 50  0001 C CNN
F 1 "GND" H 3525 3225 50  0000 C CNN
F 2 "" H 3525 3375 50  0001 C CNN
F 3 "" H 3525 3375 50  0001 C CNN
	1    3525 3375
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 5D645983
P 2300 1125
F 0 "#PWR12" H 2300 875 50  0001 C CNN
F 1 "GND" H 2300 975 50  0000 C CNN
F 2 "" H 2300 1125 50  0001 C CNN
F 3 "" H 2300 1125 50  0001 C CNN
	1    2300 1125
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5D645985
P 6325 1775
F 0 "R6" V 6405 1775 50  0000 C CNN
F 1 "3k3" V 6325 1775 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6255 1775 50  0001 C CNN
F 3 "" H 6325 1775 50  0001 C CNN
	1    6325 1775
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5D645986
P 4975 1850
F 0 "R2" V 5055 1850 50  0000 C CNN
F 1 "3k3" V 4975 1850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4905 1850 50  0001 C CNN
F 3 "" H 4975 1850 50  0001 C CNN
	1    4975 1850
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5D645987
P 4975 1675
F 0 "R1" V 5055 1675 50  0000 C CNN
F 1 "3k3" V 4975 1675 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4905 1675 50  0001 C CNN
F 3 "" H 4975 1675 50  0001 C CNN
	1    4975 1675
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 5D645988
P 6350 3100
F 0 "R7" V 6430 3100 50  0000 C CNN
F 1 "3k3" V 6350 3100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6280 3100 50  0001 C CNN
F 3 "" H 6350 3100 50  0001 C CNN
	1    6350 3100
	-1   0    0    1   
$EndComp
Entry Wire Line
	4425 1850 4325 1750
Entry Wire Line
	4425 1675 4325 1575
Text Label 4450 1675 0    60   ~ 0
~RDY
Text Label 4450 1850 0    60   ~ 0
~IRQ
$Comp
L VCC #PWR17
U 1 1 5D645989
P 5200 1600
F 0 "#PWR17" H 5200 1450 50  0001 C CNN
F 1 "VCC" H 5200 1750 50  0000 C CNN
F 2 "" H 5200 1600 50  0001 C CNN
F 3 "" H 5200 1600 50  0001 C CNN
	1    5200 1600
	1    0    0    -1  
$EndComp
$Comp
L ACO-xxxMHz X1
U 1 1 5D64598A
P 5200 2400
F 0 "X1" H 5000 2650 50  0000 L CNN
F 1 "1MHz" H 5300 2675 50  0000 L CNN
F 2 "Oscillators:Oscillator_DIP-14" H 5650 2050 50  0001 C CNN
F 3 "" H 5100 2400 50  0001 C CNN
	1    5200 2400
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR18
U 1 1 5D64598B
P 5200 2700
F 0 "#PWR18" H 5200 2450 50  0001 C CNN
F 1 "GND" H 5200 2550 50  0000 C CNN
F 2 "" H 5200 2700 50  0001 C CNN
F 3 "" H 5200 2700 50  0001 C CNN
	1    5200 2700
	-1   0    0    -1  
$EndComp
Text Label 4450 2400 0    60   ~ 0
PHI0
$Comp
L R R4
U 1 1 5D64598C
P 6100 4600
F 0 "R4" V 6180 4600 50  0000 C CNN
F 1 "1k" V 6100 4600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 4600 50  0001 C CNN
F 3 "" H 6100 4600 50  0001 C CNN
	1    6100 4600
	1    0    0    -1  
$EndComp
Text Label 6025 2000 0    60   ~ 0
~NMI
$Comp
L C C10
U 1 1 5D6459A2
P 7800 2025
F 0 "C10" H 7825 2125 50  0000 L CNN
F 1 "220nF" H 7825 1925 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 7838 1875 50  0001 C CNN
F 3 "" H 7800 2025 50  0001 C CNN
	1    7800 2025
	1    0    0    1   
$EndComp
$Comp
L C C11
U 1 1 5D6459A3
P 7800 3350
F 0 "C11" H 7825 3450 50  0000 L CNN
F 1 "220nF" H 7825 3250 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 7838 3200 50  0001 C CNN
F 3 "" H 7800 3350 50  0001 C CNN
	1    7800 3350
	1    0    0    1   
$EndComp
$Comp
L R R10
U 1 1 5D6459A5
P 8150 3125
F 0 "R10" V 8230 3125 50  0000 C CNN
F 1 "1k" V 8150 3125 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8080 3125 50  0001 C CNN
F 3 "" H 8150 3125 50  0001 C CNN
	1    8150 3125
	0    -1   1    0   
$EndComp
$Comp
L R R9
U 1 1 5D6459A6
P 8150 1800
F 0 "R9" V 8230 1800 50  0000 C CNN
F 1 "1k" V 8150 1800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8080 1800 50  0001 C CNN
F 3 "" H 8150 1800 50  0001 C CNN
	1    8150 1800
	0    -1   1    0   
$EndComp
$Comp
L R R11
U 1 1 5D6459A7
P 8375 2025
F 0 "R11" V 8455 2025 50  0000 C CNN
F 1 "47k" V 8375 2025 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8305 2025 50  0001 C CNN
F 3 "" H 8375 2025 50  0001 C CNN
	1    8375 2025
	1    0    0    1   
$EndComp
$Comp
L R R12
U 1 1 5D6459A8
P 8375 3350
F 0 "R12" V 8455 3350 50  0000 C CNN
F 1 "47k" V 8375 3350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8305 3350 50  0001 C CNN
F 3 "" H 8375 3350 50  0001 C CNN
	1    8375 3350
	1    0    0    1   
$EndComp
$Comp
L 28C256 U3
U 1 1 5D6459B2
P 2775 6975
F 0 "U3" H 2975 7975 50  0000 C CNN
F 1 "28C256" H 3075 5975 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 2775 6975 50  0001 C CNN
F 3 "" H 2775 6975 50  0001 C CNN
	1    2775 6975
	1    0    0    -1  
$EndComp
Text Label 3825 6075 2    60   ~ 0
D0
Text Label 3825 6175 2    60   ~ 0
D1
Text Label 3825 6275 2    60   ~ 0
D2
Text Label 3825 6375 2    60   ~ 0
D3
Text Label 3825 6475 2    60   ~ 0
D4
Text Label 3825 6575 2    60   ~ 0
D5
Text Label 3825 6675 2    60   ~ 0
D6
Text Label 3825 6775 2    60   ~ 0
D7
Entry Wire Line
	3850 6075 3950 6175
Entry Wire Line
	3850 6175 3950 6275
Entry Wire Line
	3850 6275 3950 6375
Entry Wire Line
	3850 6375 3950 6475
Entry Wire Line
	3850 6475 3950 6575
Entry Wire Line
	3850 6575 3950 6675
Entry Wire Line
	3850 6675 3950 6775
Entry Wire Line
	3850 6775 3950 6875
$Comp
L HM62256BLP-7 U2
U 1 1 5D6459B9
P 2575 4675
F 0 "U2" H 2275 5575 50  0000 C CNN
F 1 "HM62256BLP-7" V 2575 4675 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 2575 4675 50  0001 C CIN
F 3 "" H 2575 4675 50  0001 C CNN
	1    2575 4675
	1    0    0    -1  
$EndComp
Text Label 3100 3925 0    60   ~ 0
D0
Text Label 3100 4025 0    60   ~ 0
D1
Text Label 3100 4125 0    60   ~ 0
D2
Text Label 3100 4225 0    60   ~ 0
D3
Text Label 3100 4325 0    60   ~ 0
D4
Text Label 3100 4425 0    60   ~ 0
D5
Text Label 3100 4525 0    60   ~ 0
D6
Text Label 3100 4625 0    60   ~ 0
D7
Entry Wire Line
	1350 3825 1450 3925
Entry Wire Line
	1350 4025 1450 4125
Entry Wire Line
	1350 3925 1450 4025
Entry Wire Line
	1350 4125 1450 4225
Entry Wire Line
	1350 4225 1450 4325
Entry Wire Line
	1350 4325 1450 4425
Entry Wire Line
	1350 4425 1450 4525
Entry Wire Line
	1350 4525 1450 4625
Entry Wire Line
	1350 4625 1450 4725
Entry Wire Line
	1350 4725 1450 4825
Entry Wire Line
	1350 4825 1450 4925
Entry Wire Line
	1350 4925 1450 5025
Entry Wire Line
	1350 5025 1450 5125
Text Label 2050 3925 2    60   ~ 0
A0
Text Label 2050 4025 2    60   ~ 0
A1
Text Label 2050 4125 2    60   ~ 0
A2
Text Label 2050 4225 2    60   ~ 0
A3
Text Label 2050 4325 2    60   ~ 0
A4
Text Label 2050 4425 2    60   ~ 0
A5
Text Label 2050 4525 2    60   ~ 0
A6
Text Label 2050 4625 2    60   ~ 0
A7
Text Label 2050 4725 2    60   ~ 0
A8
Text Label 2050 4825 2    60   ~ 0
A9
Text Label 2050 4925 2    60   ~ 0
A10
Text Label 2050 5025 2    60   ~ 0
A11
Text Label 2050 5125 2    60   ~ 0
A12
Text Label 3475 1800 0    60   ~ 0
BE
Entry Wire Line
	3850 1800 3950 1900
Entry Wire Line
	4425 2025 4325 1925
Text Label 4450 2025 0    60   ~ 0
BE
Text Label 3475 2000 0    60   ~ 0
R/~W
$Comp
L LM556 U6
U 1 1 5D65C153
P 6925 2000
F 0 "U6" H 6525 2350 50  0000 L CNN
F 1 "LM556" H 6525 1650 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6925 2000 50  0001 C CNN
F 3 "" H 6925 2000 50  0001 C CNN
	1    6925 2000
	-1   0    0    -1  
$EndComp
$Comp
L LM556 U6
U 2 1 5D65C480
P 6925 3325
F 0 "U6" H 6525 3675 50  0000 L CNN
F 1 "LM556" H 6525 2975 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6925 3325 50  0001 C CNN
F 3 "" H 6925 3325 50  0001 C CNN
	2    6925 3325
	-1   0    0    -1  
$EndComp
Text GLabel 5400 9075 0    60   Output ~ 0
ST
Text GLabel 6500 9075 2    60   Output ~ 0
RS
$Comp
L GND #PWR30
U 1 1 5D65DEF6
P 6950 9050
F 0 "#PWR30" H 6950 8800 50  0001 C CNN
F 1 "GND" H 6950 8900 50  0000 C CNN
F 2 "" H 6950 9050 50  0001 C CNN
F 3 "" H 6950 9050 50  0001 C CNN
	1    6950 9050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR21
U 1 1 5D65E216
P 5400 8900
F 0 "#PWR21" H 5400 8750 50  0001 C CNN
F 1 "VCC" H 5400 9050 50  0000 C CNN
F 2 "" H 5400 8900 50  0001 C CNN
F 3 "" H 5400 8900 50  0001 C CNN
	1    5400 8900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR26
U 1 1 5D6606AD
P 6925 1600
F 0 "#PWR26" H 6925 1450 50  0001 C CNN
F 1 "VCC" H 6925 1750 50  0000 C CNN
F 2 "" H 6925 1600 50  0001 C CNN
F 3 "" H 6925 1600 50  0001 C CNN
	1    6925 1600
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR28
U 1 1 5D660BCC
P 6925 2925
F 0 "#PWR28" H 6925 2775 50  0001 C CNN
F 1 "VCC" H 6925 3075 50  0000 C CNN
F 2 "" H 6925 2925 50  0001 C CNN
F 3 "" H 6925 2925 50  0001 C CNN
	1    6925 2925
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR27
U 1 1 5D660D9E
P 6925 2400
F 0 "#PWR27" H 6925 2150 50  0001 C CNN
F 1 "GND" H 6925 2250 50  0000 C CNN
F 2 "" H 6925 2400 50  0001 C CNN
F 3 "" H 6925 2400 50  0001 C CNN
	1    6925 2400
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR29
U 1 1 5D661349
P 6925 3725
F 0 "#PWR29" H 6925 3475 50  0001 C CNN
F 1 "GND" H 6925 3575 50  0000 C CNN
F 2 "" H 6925 3725 50  0001 C CNN
F 3 "" H 6925 3725 50  0001 C CNN
	1    6925 3725
	-1   0    0    -1  
$EndComp
NoConn ~ 6425 1800
NoConn ~ 6425 3125
Text Label 6025 3325 0    60   ~ 0
~RESET
NoConn ~ 7425 3325
NoConn ~ 7425 2000
$Comp
L VCC #PWR31
U 1 1 5D66312A
P 7575 2125
F 0 "#PWR31" H 7575 1975 50  0001 C CNN
F 1 "VCC" H 7575 2275 50  0000 C CNN
F 2 "" H 7575 2125 50  0001 C CNN
F 3 "" H 7575 2125 50  0001 C CNN
	1    7575 2125
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR32
U 1 1 5D66352E
P 7575 3450
F 0 "#PWR32" H 7575 3300 50  0001 C CNN
F 1 "VCC" H 7575 3600 50  0000 C CNN
F 2 "" H 7575 3450 50  0001 C CNN
F 3 "" H 7575 3450 50  0001 C CNN
	1    7575 3450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR33
U 1 1 5D667619
P 8375 2325
F 0 "#PWR33" H 8375 2075 50  0001 C CNN
F 1 "GND" H 8375 2175 50  0000 C CNN
F 2 "" H 8375 2325 50  0001 C CNN
F 3 "" H 8375 2325 50  0001 C CNN
	1    8375 2325
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR34
U 1 1 5D667E88
P 8375 3650
F 0 "#PWR34" H 8375 3400 50  0001 C CNN
F 1 "GND" H 8375 3500 50  0000 C CNN
F 2 "" H 8375 3650 50  0001 C CNN
F 3 "" H 8375 3650 50  0001 C CNN
	1    8375 3650
	-1   0    0    -1  
$EndComp
Text GLabel 8450 3125 2    60   Input ~ 0
RS
Text GLabel 8450 1800 2    60   Input ~ 0
ST
Entry Wire Line
	1350 5975 1450 6075
Entry Wire Line
	1350 6175 1450 6275
Entry Wire Line
	1350 6075 1450 6175
Entry Wire Line
	1350 6275 1450 6375
Entry Wire Line
	1350 6375 1450 6475
Entry Wire Line
	1350 6475 1450 6575
Entry Wire Line
	1350 6575 1450 6675
Entry Wire Line
	1350 6675 1450 6775
Entry Wire Line
	1350 6775 1450 6875
Entry Wire Line
	1350 6875 1450 6975
Entry Wire Line
	1350 6975 1450 7075
Text Label 1475 6075 0    60   ~ 0
A0
Text Label 1475 6175 0    60   ~ 0
A1
Text Label 1475 6275 0    60   ~ 0
A2
Text Label 1475 6375 0    60   ~ 0
A3
Text Label 1475 6475 0    60   ~ 0
A4
Text Label 1475 6575 0    60   ~ 0
A5
Text Label 1475 6675 0    60   ~ 0
A6
Text Label 1475 6775 0    60   ~ 0
A7
Text Label 1475 6875 0    60   ~ 0
A8
Text Label 1475 6975 0    60   ~ 0
A9
Text Label 1475 7075 0    60   ~ 0
A10
Text Label 3450 9675 0    60   ~ 0
D0
Text Label 3450 9775 0    60   ~ 0
D1
Text Label 3450 9875 0    60   ~ 0
D2
Text Label 3450 9975 0    60   ~ 0
D3
Text Label 3450 10075 0    60   ~ 0
D4
Text Label 3450 10175 0    60   ~ 0
D5
Text Label 3450 10275 0    60   ~ 0
D6
Text Label 3450 10375 0    60   ~ 0
D7
Entry Wire Line
	3850 9675 3950 9775
Entry Wire Line
	3850 9775 3950 9875
Entry Wire Line
	3850 9875 3950 9975
Entry Wire Line
	3850 9975 3950 10075
Entry Wire Line
	3850 10075 3950 10175
Entry Wire Line
	3850 10175 3950 10275
Entry Wire Line
	3850 10275 3950 10375
Entry Wire Line
	3850 10375 3950 10475
Entry Wire Line
	3850 3925 3950 4025
Entry Wire Line
	3850 4025 3950 4125
Entry Wire Line
	3850 4125 3950 4225
Entry Wire Line
	3850 4225 3950 4325
Entry Wire Line
	3850 4325 3950 4425
Entry Wire Line
	3850 4425 3950 4525
Entry Wire Line
	3850 4525 3950 4625
Entry Wire Line
	3850 4625 3950 4725
Entry Wire Line
	3850 2000 3950 2100
Entry Wire Line
	1350 8975 1450 9075
Entry Wire Line
	1350 9175 1450 9275
Entry Wire Line
	1350 9075 1450 9175
Entry Wire Line
	1350 9275 1450 9375
Entry Wire Line
	1350 9375 1450 9475
Entry Wire Line
	1350 9475 1450 9575
Text Label 2100 9575 2    60   ~ 0
A0
Text Label 2100 9475 2    60   ~ 0
A1
Text Label 2100 9375 2    60   ~ 0
A2
Text Label 2100 9275 2    60   ~ 0
A3
Text Label 2100 9175 2    60   ~ 0
~A4
Text Label 2100 9075 2    60   ~ 0
A5
Text Label 3450 8975 0    60   ~ 0
A6
Entry Wire Line
	3850 8975 3950 9075
$Comp
L GND #PWR8
U 1 1 5D689C06
P 1850 8825
F 0 "#PWR8" H 1850 8575 50  0001 C CNN
F 1 "GND" H 1850 8675 50  0000 C CNN
F 2 "" H 1850 8825 50  0001 C CNN
F 3 "" H 1850 8825 50  0001 C CNN
	1    1850 8825
	1    0    0    -1  
$EndComp
Entry Wire Line
	3850 9575 3950 9675
Text Label 3450 9575 0    60   ~ 0
~RESET
Entry Wire Line
	3850 9075 3950 9175
Entry Wire Line
	3850 9475 3950 9575
Text Label 3450 9075 0    60   ~ 0
PHI2
Text Label 3450 9475 0    60   ~ 0
R/~W
Text Label 3450 10475 0    60   ~ 0
~IRQ
Entry Wire Line
	3850 10475 3950 10575
$Comp
L 74LS00 U5
U 1 1 5D69909D
P 2800 8575
F 0 "U5" H 2800 8625 50  0000 C CNN
F 1 "74LS00" H 2800 8475 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 2800 8575 50  0001 C CNN
F 3 "" H 2800 8575 50  0001 C CNN
	1    2800 8575
	1    0    0    -1  
$EndComp
Text Label 1775 8575 0    60   ~ 0
A4
Entry Wire Line
	1350 8475 1450 8575
Text Label 3825 8575 2    60   ~ 0
~A4
Entry Wire Line
	3850 8575 3950 8675
Text Label 3450 10575 0    60   ~ 0
PB0
Text Label 3450 10675 0    60   ~ 0
PB1
Text Label 3450 10775 0    60   ~ 0
PB2
Text Label 3450 10875 0    60   ~ 0
PB3
Text Label 2100 10775 2    60   ~ 0
PB4
Text Label 2100 10675 2    60   ~ 0
PB5
Text Label 2100 10475 2    60   ~ 0
PB7
Text Label 2100 9675 2    60   ~ 0
PA0
Text Label 2100 9775 2    60   ~ 0
PA1
Text Label 2100 9875 2    60   ~ 0
PA2
Text Label 2100 9975 2    60   ~ 0
PA3
Text Label 2100 10075 2    60   ~ 0
PA4
Text Label 2100 10175 2    60   ~ 0
PA5
Text Label 2100 10275 2    60   ~ 0
PA6
Text Label 2100 10375 2    60   ~ 0
PA7
Entry Wire Line
	1850 9675 1750 9775
Entry Wire Line
	1850 9775 1750 9875
Entry Wire Line
	1850 9875 1750 9975
Entry Wire Line
	1850 9975 1750 10075
Entry Wire Line
	1850 10075 1750 10175
Entry Wire Line
	1850 10175 1750 10275
Entry Wire Line
	1850 10275 1750 10375
Entry Wire Line
	1850 10375 1750 10475
Entry Wire Line
	1850 10475 1750 10575
Entry Wire Line
	1850 10775 1750 10875
Entry Wire Line
	1850 10675 1750 10775
Entry Wire Line
	3700 10875 3800 10975
Entry Wire Line
	3700 10775 3800 10875
Entry Wire Line
	3700 10675 3800 10775
Entry Wire Line
	3700 10575 3800 10675
$Comp
L VCC #PWR10
U 1 1 5D6AAE8D
P 2025 10975
F 0 "#PWR10" H 2025 10825 50  0001 C CNN
F 1 "VCC" H 2025 11125 50  0000 C CNN
F 2 "" H 2025 10975 50  0001 C CNN
F 3 "" H 2025 10975 50  0001 C CNN
	1    2025 10975
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR11
U 1 1 5D6ACFF7
P 2075 7675
F 0 "#PWR11" H 2075 7525 50  0001 C CNN
F 1 "VCC" H 2075 7825 50  0000 C CNN
F 2 "" H 2075 7675 50  0001 C CNN
F 3 "" H 2075 7675 50  0001 C CNN
	1    2075 7675
	1    0    0    -1  
$EndComp
$Comp
L 74LS145 U7
U 1 1 5D6BDF1D
P 5425 5275
F 0 "U7" H 5425 5275 50  0000 C CNN
F 1 "74LS145" H 5375 4975 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 5425 5275 50  0001 C CNN
F 3 "" H 5425 5275 50  0001 C CNN
	1    5425 5275
	1    0    0    -1  
$EndComp
NoConn ~ 6025 5625
NoConn ~ 6025 5725
Text Label 4450 5125 0    60   ~ 0
A10
Text Label 4450 5225 0    60   ~ 0
A11
Text Label 4450 5325 0    60   ~ 0
A12
Text Label 4450 5425 0    60   ~ 0
DEN
$Comp
L R R5
U 1 1 5D6C326F
P 6275 4600
F 0 "R5" V 6355 4600 50  0000 C CNN
F 1 "1k" V 6275 4600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6205 4600 50  0001 C CNN
F 3 "" H 6275 4600 50  0001 C CNN
	1    6275 4600
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5D6C3334
P 6450 4600
F 0 "R8" V 6530 4600 50  0000 C CNN
F 1 "1k" V 6450 4600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6380 4600 50  0001 C CNN
F 3 "" H 6450 4600 50  0001 C CNN
	1    6450 4600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR22
U 1 1 5D6C68DB
P 6100 4300
F 0 "#PWR22" H 6100 4150 50  0001 C CNN
F 1 "VCC" H 6100 4450 50  0000 C CNN
F 2 "" H 6100 4300 50  0001 C CNN
F 3 "" H 6100 4300 50  0001 C CNN
	1    6100 4300
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP2
U 1 1 5D6C7ED0
P 4575 5550
F 0 "JP2" H 4575 5630 50  0000 C CNN
F 1 "DEN" H 4550 5500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4575 5550 50  0001 C CNN
F 3 "" H 4575 5550 50  0001 C CNN
	1    4575 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 5D6C9D96
P 4400 5625
F 0 "#PWR15" H 4400 5375 50  0001 C CNN
F 1 "GND" H 4400 5475 50  0000 C CNN
F 2 "" H 4400 5625 50  0001 C CNN
F 3 "" H 4400 5625 50  0001 C CNN
	1    4400 5625
	1    0    0    -1  
$EndComp
Text GLabel 3225 5025 2    60   Input ~ 0
K0
Text GLabel 1925 7875 0    60   Input ~ 0
K7
Entry Wire Line
	4325 5025 4425 5125
Entry Wire Line
	4325 5125 4425 5225
Entry Wire Line
	4325 5225 4425 5325
Entry Wire Line
	4325 5325 4425 5425
$Comp
L 74LS138 U8
U 1 1 5D6D4F15
P 5425 6600
F 0 "U8" H 5425 6600 50  0000 C CNN
F 1 "74LS138" H 5575 6051 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 5425 6600 50  0001 C CNN
F 3 "" H 5425 6600 50  0001 C CNN
	1    5425 6600
	1    0    0    -1  
$EndComp
Text GLabel 4750 6950 0    60   Input ~ 0
K5
Text Label 4450 6450 0    60   ~ 0
A8
Entry Wire Line
	4325 6350 4425 6450
Text Label 4450 6350 0    60   ~ 0
A7
Entry Wire Line
	4325 6250 4425 6350
Entry Wire Line
	4325 6650 4425 6750
Text Label 4450 6750 0    60   ~ 0
A9
$Comp
L GND #PWR16
U 1 1 5D6D7527
P 4400 6925
F 0 "#PWR16" H 4400 6675 50  0001 C CNN
F 1 "GND" H 4400 6775 50  0000 C CNN
F 2 "" H 4400 6925 50  0001 C CNN
F 3 "" H 4400 6925 50  0001 C CNN
	1    4400 6925
	1    0    0    -1  
$EndComp
NoConn ~ 6025 6550
NoConn ~ 6025 6450
NoConn ~ 6025 6350
NoConn ~ 6025 6250
$Comp
L 74LS00 U5
U 2 1 5D6D964C
P 7575 6350
F 0 "U5" H 7575 6400 50  0000 C CNN
F 1 "74LS00" H 7575 6250 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 7575 6350 50  0001 C CNN
F 3 "" H 7575 6350 50  0001 C CNN
	2    7575 6350
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U5
U 3 1 5D6D9A2F
P 7575 6850
F 0 "U5" H 7575 6900 50  0000 C CNN
F 1 "74LS00" H 7575 6750 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 7575 6850 50  0001 C CNN
F 3 "" H 7575 6850 50  0001 C CNN
	3    7575 6850
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U5
U 4 1 5D6DAB18
P 7575 7350
F 0 "U5" H 7575 7400 50  0000 C CNN
F 1 "74LS00" H 7575 7250 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 7575 7350 50  0001 C CNN
F 3 "" H 7575 7350 50  0001 C CNN
	4    7575 7350
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U9
U 1 1 5D6DB7A4
P 8925 7350
F 0 "U9" H 8925 7400 50  0000 C CNN
F 1 "74LS00" H 8925 7250 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 8925 7350 50  0001 C CNN
F 3 "" H 8925 7350 50  0001 C CNN
	1    8925 7350
	1    0    0    -1  
$EndComp
Text GLabel 8175 6350 2    60   Output ~ 0
IO3
Text GLabel 8175 6850 2    60   Output ~ 0
IO2
Text GLabel 9525 7350 2    60   Output ~ 0
RAM_SEL
Text GLabel 4025 9375 2    60   Input ~ 0
RAM_SEL
$Comp
L VCC #PWR23
U 1 1 5D6E442A
P 6325 1600
F 0 "#PWR23" H 6325 1450 50  0001 C CNN
F 1 "VCC" H 6325 1750 50  0000 C CNN
F 2 "" H 6325 1600 50  0001 C CNN
F 3 "" H 6325 1600 50  0001 C CNN
	1    6325 1600
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR24
U 1 1 5D6E5643
P 6350 2925
F 0 "#PWR24" H 6350 2775 50  0001 C CNN
F 1 "VCC" H 6350 3075 50  0000 C CNN
F 2 "" H 6350 2925 50  0001 C CNN
F 3 "" H 6350 2925 50  0001 C CNN
	1    6350 2925
	-1   0    0    -1  
$EndComp
Entry Wire Line
	4425 2400 4325 2300
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
NoConn ~ 3450 1600
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
	5900 1900 6000 2000
Entry Wire Line
	5900 3225 6000 3325
Text Label 15100 8250 2    60   ~ 0
~NMI
Text Label 15100 9450 2    60   ~ 0
DEN
Text Label 2100 10575 2    60   ~ 0
PB6
Entry Wire Line
	1850 10575 1750 10675
Text Label 5450 10375 2    60   ~ 0
PA0
Text Label 5450 10275 2    60   ~ 0
PA1
Text Label 5450 10175 2    60   ~ 0
PA2
Text Label 5450 10075 2    60   ~ 0
PA3
Text Label 6450 10075 0    60   ~ 0
PA4
Text Label 6450 10175 0    60   ~ 0
PA5
Text Label 6450 10275 0    60   ~ 0
PA6
Text Label 6625 10375 2    60   ~ 0
PA7
Entry Wire Line
	5200 10075 5100 10175
Entry Wire Line
	5200 10175 5100 10275
Entry Wire Line
	5200 10275 5100 10375
Entry Wire Line
	5200 10375 5100 10475
Entry Wire Line
	5200 10475 5100 10575
Entry Wire Line
	5200 10575 5100 10675
Entry Wire Line
	5200 10675 5100 10775
Entry Wire Line
	5200 10775 5100 10875
Text Label 5450 10475 2    60   ~ 0
PB0
Text Label 5450 10575 2    60   ~ 0
PB1
Text Label 5450 10675 2    60   ~ 0
PB2
Text Label 5450 10775 2    60   ~ 0
PB3
Entry Wire Line
	6700 10375 6800 10475
Entry Wire Line
	6700 10275 6800 10375
Entry Wire Line
	6700 10175 6800 10275
Entry Wire Line
	6700 10075 6800 10175
Text Label 6450 10775 0    60   ~ 0
PB4
Text Label 6450 10675 0    60   ~ 0
PB5
Text Label 6450 10475 0    60   ~ 0
PB7
Entry Wire Line
	6700 10475 6800 10575
Entry Wire Line
	6700 10775 6800 10875
Entry Wire Line
	6700 10675 6800 10775
Text Label 6450 10575 0    60   ~ 0
PB6
Entry Wire Line
	6700 10575 6800 10675
Text GLabel 3425 9175 2    60   Input ~ 0
IO2
$Comp
L GND #PWR14
U 1 1 5D6FEB12
P 3800 9175
F 0 "#PWR14" H 3800 8925 50  0001 C CNN
F 1 "GND" H 3800 9025 50  0000 C CNN
F 2 "" H 3800 9175 50  0001 C CNN
F 3 "" H 3800 9175 50  0001 C CNN
	1    3800 9175
	1    0    0    -1  
$EndComp
Entry Wire Line
	14725 8250 14625 8350
Text GLabel 15050 9550 0    60   Output ~ 0
K0_EXT
Text GLabel 15050 9650 0    60   Output ~ 0
K7_EXT
NoConn ~ 5475 9375
NoConn ~ 5475 9475
NoConn ~ 5475 9575
NoConn ~ 5475 9675
NoConn ~ 5475 9775
NoConn ~ 5475 9875
NoConn ~ 6425 9875
NoConn ~ 6425 9775
NoConn ~ 6425 9675
NoConn ~ 6425 9575
NoConn ~ 6425 9475
$Comp
L 74LS00 U9
U 2 1 5D7159A9
P 5425 8000
F 0 "U9" H 5425 8050 50  0000 C CNN
F 1 "74LS00" H 5425 7900 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 5425 8000 50  0001 C CNN
F 3 "" H 5425 8000 50  0001 C CNN
	2    5425 8000
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U9
U 3 1 5D715A8D
P 6775 8175
F 0 "U9" H 6775 8225 50  0000 C CNN
F 1 "74LS00" H 6775 8075 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6775 8175 50  0001 C CNN
F 3 "" H 6775 8175 50  0001 C CNN
	3    6775 8175
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U9
U 4 1 5D715B0E
P 11475 10225
F 0 "U9" H 11475 10275 50  0000 C CNN
F 1 "74LS00" H 11475 10125 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 11475 10225 50  0001 C CNN
F 3 "" H 11475 10225 50  0001 C CNN
	4    11475 10225
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR37
U 1 1 5D716C90
P 11575 10975
F 0 "#PWR37" H 11575 10725 50  0001 C CNN
F 1 "GND" H 11575 10825 50  0000 C CNN
F 2 "" H 11575 10975 50  0001 C CNN
F 3 "" H 11575 10975 50  0001 C CNN
	1    11575 10975
	1    0    0    -1  
$EndComp
NoConn ~ 11475 9625
$Comp
L C C1
U 1 1 5D71BEBA
P 8500 10550
F 0 "C1" H 8525 10650 50  0000 L CNN
F 1 "100nF" H 8525 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8538 10400 50  0001 C CNN
F 3 "" H 8500 10550 50  0001 C CNN
	1    8500 10550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR36
U 1 1 5D71E74B
P 10750 10850
F 0 "#PWR36" H 10750 10600 50  0001 C CNN
F 1 "GND" H 10750 10700 50  0000 C CNN
F 2 "" H 10750 10850 50  0001 C CNN
F 3 "" H 10750 10850 50  0001 C CNN
	1    10750 10850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR35
U 1 1 5D72035A
P 8500 10250
F 0 "#PWR35" H 8500 10100 50  0001 C CNN
F 1 "VCC" H 8500 10400 50  0000 C CNN
F 2 "" H 8500 10250 50  0001 C CNN
F 3 "" H 8500 10250 50  0001 C CNN
	1    8500 10250
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5D72237F
P 8800 10550
F 0 "C2" H 8825 10650 50  0000 L CNN
F 1 "100nF" H 8825 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8838 10400 50  0001 C CNN
F 3 "" H 8800 10550 50  0001 C CNN
	1    8800 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5D722417
P 9100 10550
F 0 "C3" H 9125 10650 50  0000 L CNN
F 1 "100nF" H 9125 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9138 10400 50  0001 C CNN
F 3 "" H 9100 10550 50  0001 C CNN
	1    9100 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5D7224A6
P 9375 10550
F 0 "C4" H 9400 10650 50  0000 L CNN
F 1 "100nF" H 9400 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9413 10400 50  0001 C CNN
F 3 "" H 9375 10550 50  0001 C CNN
	1    9375 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5D722536
P 9650 10550
F 0 "C5" H 9675 10650 50  0000 L CNN
F 1 "100nF" H 9675 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9688 10400 50  0001 C CNN
F 3 "" H 9650 10550 50  0001 C CNN
	1    9650 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5D72266D
P 9925 10550
F 0 "C6" H 9950 10650 50  0000 L CNN
F 1 "100nF" H 9950 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9963 10400 50  0001 C CNN
F 3 "" H 9925 10550 50  0001 C CNN
	1    9925 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5D72270D
P 10200 10550
F 0 "C7" H 10225 10650 50  0000 L CNN
F 1 "100nF" H 10225 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10238 10400 50  0001 C CNN
F 3 "" H 10200 10550 50  0001 C CNN
	1    10200 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5D7227AA
P 10475 10550
F 0 "C8" H 10500 10650 50  0000 L CNN
F 1 "100nF" H 10500 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10513 10400 50  0001 C CNN
F 3 "" H 10475 10550 50  0001 C CNN
	1    10475 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5D722846
P 10750 10550
F 0 "C9" H 10775 10650 50  0000 L CNN
F 1 "100nF" H 10775 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10788 10400 50  0001 C CNN
F 3 "" H 10750 10550 50  0001 C CNN
	1    10750 10550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR20
U 1 1 5D729D92
P 5375 10825
F 0 "#PWR20" H 5375 10575 50  0001 C CNN
F 1 "GND" H 5375 10675 50  0000 C CNN
F 2 "" H 5375 10825 50  0001 C CNN
F 3 "" H 5375 10825 50  0001 C CNN
	1    5375 10825
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR25
U 1 1 5D72A34D
P 6525 10825
F 0 "#PWR25" H 6525 10575 50  0001 C CNN
F 1 "GND" H 6525 10675 50  0000 C CNN
F 2 "" H 6525 10825 50  0001 C CNN
F 3 "" H 6525 10825 50  0001 C CNN
	1    6525 10825
	1    0    0    -1  
$EndComp
NoConn ~ 6425 9975
Text Label 4450 7900 0    60   ~ 0
R/~W
Entry Wire Line
	4325 7800 4425 7900
Text Label 4450 8350 0    60   ~ 0
PHI2
Entry Wire Line
	4325 8250 4425 8350
Text GLabel 7450 8175 2    60   Output ~ 0
RAM_R/~W
Text GLabel 3225 4875 2    60   Input ~ 0
RAM_R/~W
$Comp
L R_Network08 RN1
U 1 1 5D665BC0
P 5050 3525
F 0 "RN1" V 4550 3525 50  0000 C CNN
F 1 "4k7x8" V 5450 3525 50  0000 C CNN
F 2 "Resistors_THT:R_Array_SIP9" V 5525 3525 50  0001 C CNN
F 3 "" H 5050 3525 50  0001 C CNN
	1    5050 3525
	0    1    -1   0   
$EndComp
Text Label 4825 3225 2    60   ~ 0
D0
Text Label 4825 3325 2    60   ~ 0
D1
Text Label 4825 3425 2    60   ~ 0
D2
Text Label 4825 3525 2    60   ~ 0
D3
Text Label 4825 3625 2    60   ~ 0
D4
Text Label 4825 3725 2    60   ~ 0
D5
Text Label 4825 3825 2    60   ~ 0
D6
Text Label 4825 3925 2    60   ~ 0
D7
Entry Wire Line
	4075 3225 3975 3325
Entry Wire Line
	4075 3325 3975 3425
Entry Wire Line
	4075 3425 3975 3525
Entry Wire Line
	4075 3525 3975 3625
Entry Wire Line
	4075 3625 3975 3725
Entry Wire Line
	4075 3725 3975 3825
Entry Wire Line
	4075 3825 3975 3925
Entry Wire Line
	4075 3925 3975 4025
$Comp
L GND #PWR19
U 1 1 5D6667E9
P 5325 4000
F 0 "#PWR19" H 5325 3750 50  0001 C CNN
F 1 "GND" H 5325 3850 50  0000 C CNN
F 2 "" H 5325 4000 50  0001 C CNN
F 3 "" H 5325 4000 50  0001 C CNN
	1    5325 4000
	-1   0    0    -1  
$EndComp
Text GLabel 15050 9850 0    60   Output ~ 0
TAPE
Text GLabel 5400 9925 0    60   Input ~ 0
TAPE
Text GLabel 6650 9175 2    60   Input ~ 0
K7
Text Label 6450 9275 0    60   ~ 0
~NMI
Entry Wire Line
	6700 9275 6800 9375
Text Label 5450 9275 2    60   ~ 0
SYNC
Entry Wire Line
	5200 9275 5100 9375
Entry Wire Line
	1350 1500 1450 1600
Text Label 2125 1600 2    60   ~ 0
PHI1
Text Label 6450 9375 0    60   ~ 0
PHI1
Entry Wire Line
	6700 9375 6800 9475
Text Notes 12175 10925 0    60   ~ 0
RC-ONE CPU
Text Notes 11825 10550 0    60   ~ 0
RC-ONE CPU module, takes care of most central functions including CPU, RAM and ROM.\nThe two latter categories aren't used anywhere near capacity, mostly because today\nthose chips are the cheapest and easiest to get hold off without physically being larger.\nUser Interface module slots on top and takes care of keypad as well as I/O expected on\na KIM-1 computer. Most signals are available on backplane connector for adding any\nother modules and functionality to the RC-ONE computer.
Text Notes 7575 4775 0    60   ~ 0
K0 - 1K Standard SRAM
Text Notes 7575 4850 0    60   ~ 0
K1 - 4K SRAM Expansion
Text Notes 7575 4925 0    60   ~ 0
K2
Text Notes 7575 5075 0    60   ~ 0
K4
Text Notes 7575 5000 0    60   ~ 0
K3
Text Label 4450 6250 0    60   ~ 0
A6
Entry Wire Line
	4325 6150 4425 6250
Text GLabel 6900 6950 0    60   Input ~ 0
RAM_SEL
Text Notes 6200 7450 0    60   ~ 0
$17C0-17FF
Text Notes 6200 7250 0    60   ~ 0
$1780-17BF
Text Notes 6200 6750 0    60   ~ 0
$1740-177F
Text Notes 6200 6350 0    60   ~ 0
$1700-173F
Text GLabel 15050 9750 0    60   Input ~ 0
IO3
Text GLabel 7150 4825 2    60   Input ~ 0
K0_EXT
Text GLabel 7150 5650 2    60   Input ~ 0
K7_EXT
$Comp
L Jumper_NC_Dual JP3
U 1 1 5D75B55F
P 6900 4825
F 0 "JP3" H 6950 4725 50  0000 L CNN
F 1 "RAM_CS" H 6900 4925 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6900 4825 50  0001 C CNN
F 3 "" H 6900 4825 50  0001 C CNN
	1    6900 4825
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Dual JP4
U 1 1 5D75BCD3
P 6900 5650
F 0 "JP4" H 6950 5550 50  0000 L CNN
F 1 "ROM_CS" H 6900 5750 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6900 5650 50  0001 C CNN
F 3 "" H 6900 5650 50  0001 C CNN
	1    6900 5650
	1    0    0    -1  
$EndComp
Text GLabel 6900 4925 3    60   Output ~ 0
K0
Text GLabel 6900 5750 3    60   Output ~ 0
K7
Text GLabel 6900 5250 3    60   Output ~ 0
K5
Text Notes 7575 5325 0    60   ~ 0
K5 - RIOT
Text Notes 7575 5750 0    60   ~ 0
K7 - ROM
NoConn ~ 5475 9175
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
	3450 2100 3850 2100
Wire Wire Line
	3450 2200 3850 2200
Wire Wire Line
	3450 2300 3850 2300
Wire Wire Line
	3450 2400 3850 2400
Wire Wire Line
	3450 2500 3850 2500
Wire Wire Line
	3450 2600 3850 2600
Wire Wire Line
	3450 2700 3850 2700
Wire Wire Line
	3450 2800 3850 2800
Wire Wire Line
	3450 2900 3850 2900
Wire Wire Line
	3450 3000 3850 3000
Wire Wire Line
	3450 3100 3850 3100
Wire Wire Line
	3450 3200 3850 3200
Wire Wire Line
	3450 1500 3850 1500
Wire Wire Line
	3450 1400 3850 1400
Wire Wire Line
	1450 1500 2150 1500
Wire Wire Line
	1450 1900 2150 1900
Wire Wire Line
	1450 1700 2150 1700
Wire Wire Line
	1450 2000 2150 2000
Wire Wire Line
	3450 1700 3850 1700
Wire Bus Line
	1350 950  1350 9475
Wire Wire Line
	1975 2100 2150 2100
Wire Wire Line
	4425 1850 4825 1850
Wire Wire Line
	4425 1675 4825 1675
Wire Wire Line
	3075 3925 3850 3925
Wire Wire Line
	3075 4025 3850 4025
Wire Wire Line
	3075 4125 3850 4125
Wire Wire Line
	3075 4225 3850 4225
Wire Wire Line
	3075 4325 3850 4325
Wire Wire Line
	3075 4425 3850 4425
Wire Wire Line
	3075 4525 3850 4525
Wire Wire Line
	3075 4625 3850 4625
Wire Wire Line
	1450 3925 2075 3925
Wire Wire Line
	1450 4025 2075 4025
Wire Wire Line
	1450 4125 2075 4125
Wire Wire Line
	1450 4225 2075 4225
Wire Wire Line
	1450 4825 2075 4825
Wire Wire Line
	1450 4925 2075 4925
Wire Wire Line
	1450 5025 2075 5025
Wire Wire Line
	1450 5125 2075 5125
Wire Wire Line
	1450 4325 2075 4325
Wire Wire Line
	1450 4425 2075 4425
Wire Wire Line
	1450 4525 2075 4525
Wire Wire Line
	1450 4625 2075 4625
Wire Wire Line
	1450 4725 2075 4725
Wire Wire Line
	2075 1125 2075 1050
Wire Wire Line
	2075 1050 2300 1050
Wire Wire Line
	2300 1050 2300 1125
Wire Wire Line
	2075 1325 2075 1400
Wire Wire Line
	2075 1400 2150 1400
Wire Wire Line
	3450 1800 3850 1800
Wire Wire Line
	4425 2025 4825 2025
Wire Wire Line
	3450 2000 3850 2000
Wire Wire Line
	3525 3375 3525 3300
Wire Wire Line
	3525 3300 3450 3300
Wire Wire Line
	5400 9075 5475 9075
Wire Wire Line
	6425 9075 6500 9075
Wire Wire Line
	6425 8975 6950 8975
Wire Wire Line
	6950 8975 6950 9050
Wire Wire Line
	5400 8900 5400 8975
Wire Wire Line
	5400 8975 5475 8975
Wire Wire Line
	7575 2125 7575 2200
Wire Wire Line
	7575 2200 7425 2200
Wire Wire Line
	7575 3450 7575 3525
Wire Wire Line
	7575 3525 7425 3525
Wire Wire Line
	7425 1800 8000 1800
Wire Wire Line
	7675 1800 7675 2600
Wire Wire Line
	7675 2600 6350 2600
Wire Wire Line
	6350 2600 6350 2200
Wire Wire Line
	6350 2200 6425 2200
Wire Wire Line
	7425 3125 8000 3125
Wire Wire Line
	7675 3125 7675 3925
Wire Wire Line
	7675 3925 6350 3925
Wire Wire Line
	6350 3925 6350 3525
Wire Wire Line
	6350 3525 6425 3525
Wire Wire Line
	7800 1875 7800 1800
Connection ~ 7675 1800
Wire Wire Line
	7800 3125 7800 3200
Connection ~ 7675 3125
Wire Wire Line
	7800 2250 7800 2175
Wire Wire Line
	7800 3575 7800 3500
Connection ~ 7800 3125
Connection ~ 7800 1800
Wire Wire Line
	8300 3125 8450 3125
Wire Wire Line
	8300 1800 8450 1800
Wire Wire Line
	8375 1875 8375 1800
Connection ~ 8375 1800
Wire Wire Line
	8375 3200 8375 3125
Connection ~ 8375 3125
Wire Wire Line
	8375 2175 8375 2325
Wire Wire Line
	8375 2250 7800 2250
Connection ~ 8375 2250
Wire Wire Line
	7800 3575 8375 3575
Wire Wire Line
	8375 3500 8375 3650
Connection ~ 8375 3575
Wire Wire Line
	6000 2000 6425 2000
Wire Wire Line
	6000 3325 6425 3325
Wire Wire Line
	1450 6075 2075 6075
Wire Wire Line
	1450 6175 2075 6175
Wire Wire Line
	1450 6275 2075 6275
Wire Wire Line
	1450 6375 2075 6375
Wire Wire Line
	1450 6975 2075 6975
Wire Wire Line
	1450 7075 2075 7075
Wire Wire Line
	1450 6475 2075 6475
Wire Wire Line
	1450 6575 2075 6575
Wire Wire Line
	1450 6675 2075 6675
Wire Wire Line
	1450 6775 2075 6775
Wire Wire Line
	1450 6875 2075 6875
Wire Wire Line
	3425 9675 3850 9675
Wire Wire Line
	3425 9775 3850 9775
Wire Wire Line
	3425 9875 3850 9875
Wire Wire Line
	3425 9975 3850 9975
Wire Wire Line
	3425 10075 3850 10075
Wire Wire Line
	3425 10175 3850 10175
Wire Wire Line
	3425 10275 3850 10275
Wire Wire Line
	3425 10375 3850 10375
Wire Bus Line
	3950 950  3950 10575
Wire Wire Line
	3475 6775 3850 6775
Wire Wire Line
	3475 6675 3850 6675
Wire Wire Line
	3475 6575 3850 6575
Wire Wire Line
	3475 6475 3850 6475
Wire Wire Line
	3475 6375 3850 6375
Wire Wire Line
	3475 6275 3850 6275
Wire Wire Line
	3475 6175 3850 6175
Wire Wire Line
	3475 6075 3850 6075
Wire Wire Line
	1450 9075 2125 9075
Wire Wire Line
	1450 9175 2125 9175
Wire Wire Line
	1450 9275 2125 9275
Wire Wire Line
	1450 9375 2125 9375
Wire Wire Line
	1450 9475 2125 9475
Wire Wire Line
	1450 9575 2125 9575
Wire Wire Line
	3425 8975 3850 8975
Wire Wire Line
	2125 8975 2050 8975
Wire Wire Line
	2050 8975 2050 8825
Wire Wire Line
	2050 8825 1850 8825
Wire Wire Line
	3425 9575 3850 9575
Wire Wire Line
	3425 9075 3850 9075
Wire Wire Line
	3425 9475 3850 9475
Wire Wire Line
	3425 10475 3850 10475
Wire Wire Line
	1450 8575 2125 8575
Wire Wire Line
	2125 8475 2125 8675
Wire Wire Line
	2125 8475 2200 8475
Wire Wire Line
	2125 8675 2200 8675
Connection ~ 2125 8575
Wire Wire Line
	3400 8575 3850 8575
Wire Wire Line
	3075 4775 3150 4775
Wire Wire Line
	3150 4775 3150 5025
Wire Wire Line
	3075 5025 3225 5025
Connection ~ 3150 5025
Wire Wire Line
	1850 9675 2125 9675
Wire Wire Line
	1850 9775 2125 9775
Wire Wire Line
	1850 9875 2125 9875
Wire Wire Line
	1850 9975 2125 9975
Wire Wire Line
	1850 10075 2125 10075
Wire Wire Line
	1850 10175 2125 10175
Wire Wire Line
	1850 10275 2125 10275
Wire Wire Line
	1850 10375 2125 10375
Wire Wire Line
	1850 10475 2125 10475
Wire Wire Line
	1850 10775 2125 10775
Wire Wire Line
	1850 10675 2125 10675
Wire Wire Line
	3425 10875 3700 10875
Wire Wire Line
	3425 10775 3700 10775
Wire Wire Line
	3700 10575 3425 10575
Wire Wire Line
	3425 10675 3700 10675
Wire Bus Line
	1750 9775 1750 11025
Wire Bus Line
	1750 11025 6800 11025
Wire Bus Line
	3800 10675 3800 11025
Wire Wire Line
	2025 10975 2125 10975
Wire Wire Line
	2125 10975 2125 10875
Wire Wire Line
	2000 7775 2075 7775
Wire Wire Line
	1925 7875 2075 7875
Wire Wire Line
	2000 7875 2000 7775
Wire Wire Line
	6025 4825 6650 4825
Wire Wire Line
	6275 5325 6025 5325
Wire Wire Line
	6025 5425 6100 5425
Wire Wire Line
	4425 5125 4825 5125
Wire Wire Line
	4425 5225 4825 5225
Wire Wire Line
	4425 5325 4825 5325
Wire Wire Line
	4425 5425 4825 5425
Wire Wire Line
	6100 4925 6025 4925
Wire Wire Line
	6100 4750 6100 5225
Connection ~ 6100 4825
Wire Wire Line
	6100 5025 6025 5025
Connection ~ 6100 4925
Wire Wire Line
	6100 5125 6025 5125
Connection ~ 6100 5025
Wire Wire Line
	6100 5225 6025 5225
Connection ~ 6100 5125
Wire Wire Line
	6275 4750 6275 5325
Wire Wire Line
	6450 4750 6450 5650
Wire Wire Line
	6100 5425 6100 5650
Wire Wire Line
	6100 5525 6025 5525
Wire Wire Line
	6100 4300 6100 4450
Wire Wire Line
	6100 4375 6450 4375
Wire Wire Line
	6450 4375 6450 4450
Wire Wire Line
	6275 4450 6275 4375
Connection ~ 6275 4375
Connection ~ 6100 4375
Wire Wire Line
	4750 5425 4750 5550
Connection ~ 4750 5425
Wire Wire Line
	4475 5550 4400 5550
Wire Wire Line
	4400 5550 4400 5625
Wire Wire Line
	4750 5550 4675 5550
Connection ~ 2000 7875
Wire Bus Line
	4325 4950 4325 5325
Wire Bus Line
	4325 4950 3950 4950
Wire Wire Line
	4750 6950 4825 6950
Wire Wire Line
	4425 6450 4825 6450
Wire Wire Line
	4425 6350 4825 6350
Wire Wire Line
	4425 6750 4825 6750
Wire Wire Line
	4400 6850 4825 6850
Wire Wire Line
	4400 6850 4400 6925
Wire Bus Line
	4325 6075 4325 6650
Wire Wire Line
	8175 7350 8250 7350
Wire Wire Line
	8250 7250 8250 7450
Wire Wire Line
	8250 7250 8325 7250
Wire Wire Line
	8250 7450 8325 7450
Connection ~ 8250 7350
Wire Wire Line
	4025 9375 3425 9375
Wire Wire Line
	6325 1925 6325 2000
Connection ~ 6325 2000
Wire Wire Line
	6350 3250 6350 3325
Connection ~ 6350 3325
Wire Wire Line
	6325 1600 6325 1625
Wire Wire Line
	6350 2925 6350 2950
Wire Bus Line
	3950 1500 4325 1500
Wire Bus Line
	4325 1500 4325 2300
Wire Wire Line
	5200 1600 5200 2100
Wire Wire Line
	5200 2025 5125 2025
Wire Wire Line
	5125 1850 5200 1850
Connection ~ 5200 1850
Wire Wire Line
	5125 1675 5200 1675
Connection ~ 5200 1675
Wire Wire Line
	4425 2400 4900 2400
Connection ~ 5200 2025
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
	5900 950  5900 3225
Wire Bus Line
	14625 5950 14625 7450
Wire Bus Line
	14625 7950 14625 9550
Wire Wire Line
	1850 10575 2125 10575
Wire Wire Line
	5200 10075 5475 10075
Wire Wire Line
	5200 10175 5475 10175
Wire Wire Line
	5200 10275 5475 10275
Wire Wire Line
	5200 10375 5475 10375
Wire Wire Line
	5200 10475 5475 10475
Wire Wire Line
	5200 10575 5475 10575
Wire Wire Line
	5200 10675 5475 10675
Wire Wire Line
	5200 10775 5475 10775
Wire Wire Line
	6425 10375 6700 10375
Wire Wire Line
	6425 10275 6700 10275
Wire Wire Line
	6700 10075 6425 10075
Wire Wire Line
	6425 10175 6700 10175
Wire Wire Line
	6700 10475 6425 10475
Wire Wire Line
	6700 10775 6425 10775
Wire Wire Line
	6700 10675 6425 10675
Wire Wire Line
	6700 10575 6425 10575
Wire Bus Line
	5100 9375 5100 11025
Wire Bus Line
	6800 11025 6800 9375
Wire Wire Line
	3800 9175 3800 9150
Wire Wire Line
	3800 9150 3700 9150
Wire Wire Line
	3700 9150 3700 9275
Wire Wire Line
	3700 9275 3425 9275
Wire Bus Line
	14300 7950 14625 7950
Wire Bus Line
	14300 950  14300 7950
Wire Bus Line
	14300 5950 14625 5950
Wire Wire Line
	15125 8250 14725 8250
Wire Wire Line
	15050 9550 15125 9550
Wire Wire Line
	15050 9650 15125 9650
Wire Wire Line
	15050 9750 15125 9750
Wire Wire Line
	15050 9850 15125 9850
Wire Wire Line
	11575 10825 11575 10975
Connection ~ 11575 10900
Wire Wire Line
	11375 10825 11375 10900
Wire Wire Line
	10750 10700 10750 10850
Wire Wire Line
	8500 10775 10750 10775
Wire Wire Line
	8500 10775 8500 10700
Wire Wire Line
	8800 10700 8800 10775
Connection ~ 8800 10775
Wire Wire Line
	9100 10700 9100 10775
Connection ~ 9100 10775
Wire Wire Line
	9375 10700 9375 10775
Connection ~ 9375 10775
Wire Wire Line
	9650 10700 9650 10775
Connection ~ 9650 10775
Wire Wire Line
	9925 10700 9925 10775
Connection ~ 9925 10775
Wire Wire Line
	10200 10700 10200 10775
Connection ~ 10200 10775
Wire Wire Line
	10475 10700 10475 10775
Connection ~ 10475 10775
Connection ~ 10750 10775
Wire Wire Line
	10750 10325 10750 10400
Wire Wire Line
	8500 10325 10750 10325
Wire Wire Line
	8500 10250 8500 10400
Wire Wire Line
	8800 10400 8800 10325
Connection ~ 8800 10325
Wire Wire Line
	9100 10400 9100 10325
Connection ~ 9100 10325
Wire Wire Line
	9375 10400 9375 10325
Connection ~ 9375 10325
Wire Wire Line
	9650 10400 9650 10325
Connection ~ 9650 10325
Wire Wire Line
	9925 10400 9925 10325
Connection ~ 9925 10325
Wire Wire Line
	10200 10400 10200 10325
Connection ~ 10200 10325
Wire Wire Line
	10475 10400 10475 10325
Connection ~ 10475 10325
Connection ~ 8500 10325
Wire Wire Line
	5475 10875 5475 10825
Wire Wire Line
	5475 10825 5375 10825
Wire Wire Line
	6425 10875 6425 10825
Wire Wire Line
	6425 10825 6525 10825
Wire Bus Line
	4325 7725 3950 7725
Wire Wire Line
	4425 7900 4825 7900
Wire Wire Line
	4750 7900 4750 8100
Wire Wire Line
	4750 8100 4825 8100
Connection ~ 4750 7900
Wire Wire Line
	6025 8000 6100 8000
Wire Bus Line
	4325 7725 4325 8250
Wire Wire Line
	6100 8000 6100 8075
Wire Wire Line
	6100 8075 6175 8075
Wire Wire Line
	6100 8275 6100 8350
Wire Wire Line
	6100 8275 6175 8275
Wire Wire Line
	6100 8350 4425 8350
Wire Wire Line
	7375 8175 7450 8175
Wire Wire Line
	3075 4875 3225 4875
Wire Wire Line
	11375 10900 11575 10900
Wire Wire Line
	1050 7375 2075 7375
Wire Wire Line
	4850 3225 4075 3225
Wire Wire Line
	4850 3325 4075 3325
Wire Wire Line
	4850 3425 4075 3425
Wire Wire Line
	4850 3525 4075 3525
Wire Wire Line
	4850 3625 4075 3625
Wire Wire Line
	4850 3725 4075 3725
Wire Wire Line
	4850 3825 4075 3825
Wire Wire Line
	4850 3925 4075 3925
Wire Wire Line
	5250 3925 5325 3925
Wire Wire Line
	5325 3925 5325 4000
Wire Wire Line
	6700 9275 6425 9275
Wire Wire Line
	6425 9175 6650 9175
Wire Wire Line
	5475 9275 5200 9275
Wire Wire Line
	5400 9925 5450 9925
Wire Wire Line
	5450 9925 5450 9975
Wire Wire Line
	5450 9975 5475 9975
Wire Wire Line
	1450 1600 2150 1600
Wire Wire Line
	6700 9375 6425 9375
Wire Wire Line
	4425 6250 4825 6250
Wire Bus Line
	4325 6075 3950 6075
Wire Wire Line
	6900 6450 6975 6450
Wire Wire Line
	6900 6250 6900 6450
Wire Wire Line
	6900 6250 6975 6250
Wire Wire Line
	6025 6650 6175 6650
Connection ~ 6900 6350
Wire Wire Line
	6025 6750 6975 6750
Wire Wire Line
	6900 6950 6975 6950
Wire Wire Line
	6025 6950 6100 6950
Wire Wire Line
	6100 6950 6100 7450
Wire Wire Line
	6100 7450 6975 7450
Wire Wire Line
	6025 6850 6175 6850
Wire Wire Line
	6175 6850 6175 7250
Wire Wire Line
	6175 7250 6975 7250
Wire Wire Line
	6175 6650 6175 6350
Wire Wire Line
	6175 6350 6900 6350
Wire Wire Line
	6275 5175 6900 5175
Wire Wire Line
	6900 5175 6900 5250
Connection ~ 6275 5175
Connection ~ 6100 5525
Wire Notes Line
	6650 4650 6650 5125
Wire Notes Line
	6650 5125 7550 5125
Wire Notes Line
	7550 5125 7550 4650
Wire Notes Line
	7550 4650 6650 4650
Wire Notes Line
	6650 5150 6650 5450
Wire Notes Line
	6650 5450 7550 5450
Wire Notes Line
	7550 5450 7550 5150
Wire Notes Line
	7550 5150 6650 5150
Wire Wire Line
	6100 5650 6650 5650
Connection ~ 6450 5650
Wire Notes Line
	6650 5475 7550 5475
Wire Notes Line
	7550 5475 7550 5950
Wire Notes Line
	7550 5950 6650 5950
Wire Notes Line
	6650 5950 6650 5475
Wire Bus Line
	14300 950  1350 950 
Wire Wire Line
	1450 2200 2150 2200
Wire Wire Line
	1450 2300 2150 2300
Wire Wire Line
	1450 2400 2150 2400
Wire Wire Line
	1450 2500 2150 2500
Wire Wire Line
	1450 3100 2150 3100
Wire Wire Line
	1450 3200 2150 3200
Wire Wire Line
	1450 3300 2150 3300
Wire Wire Line
	1450 2600 2150 2600
Wire Wire Line
	1450 2700 2150 2700
Wire Wire Line
	1450 2800 2150 2800
Wire Wire Line
	1450 2900 2150 2900
Wire Wire Line
	1450 3000 2150 3000
$Comp
L Jumper_NC_Dual JP7
U 1 1 5D779B66
P 675 7100
F 0 "JP7" H 725 7000 50  0000 L CNN
F 1 "A13" H 675 7200 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 675 7100 50  0001 C CNN
F 3 "" H 675 7100 50  0001 C CNN
	1    675  7100
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR3
U 1 1 5D77A162
P 675 7350
F 0 "#PWR3" H 675 7100 50  0001 C CNN
F 1 "GND" H 675 7200 50  0000 C CNN
F 2 "" H 675 7350 50  0001 C CNN
F 3 "" H 675 7350 50  0001 C CNN
	1    675  7350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR2
U 1 1 5D77A569
P 675 6850
F 0 "#PWR2" H 675 6700 50  0001 C CNN
F 1 "VCC" H 675 7000 50  0000 C CNN
F 2 "" H 675 6850 50  0001 C CNN
F 3 "" H 675 6850 50  0001 C CNN
	1    675  6850
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Dual JP8
U 1 1 5D77AA4F
P 875 7750
F 0 "JP8" H 925 7650 50  0000 L CNN
F 1 "A14" H 875 7850 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 875 7750 50  0001 C CNN
F 3 "" H 875 7750 50  0001 C CNN
	1    875  7750
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR6
U 1 1 5D77AA55
P 875 8000
F 0 "#PWR6" H 875 7750 50  0001 C CNN
F 1 "GND" H 875 7850 50  0000 C CNN
F 2 "" H 875 8000 50  0001 C CNN
F 3 "" H 875 8000 50  0001 C CNN
	1    875  8000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR5
U 1 1 5D77AA5B
P 875 7500
F 0 "#PWR5" H 875 7350 50  0001 C CNN
F 1 "VCC" H 875 7650 50  0000 C CNN
F 2 "" H 875 7500 50  0001 C CNN
F 3 "" H 875 7500 50  0001 C CNN
	1    875  7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2075 7475 1050 7475
Wire Wire Line
	1050 7475 1050 7750
Wire Wire Line
	1050 7750 975  7750
Wire Wire Line
	1050 7375 1050 7100
Wire Wire Line
	1050 7100 775  7100
Entry Wire Line
	1350 5125 1450 5225
Entry Wire Line
	1350 5225 1450 5325
Text Label 2050 5225 2    60   ~ 0
A13
Text Label 2050 5325 2    60   ~ 0
A14
Wire Wire Line
	1450 5225 2075 5225
Wire Wire Line
	1450 5325 2075 5325
Entry Wire Line
	1350 7075 1450 7175
Text Label 1475 7175 0    60   ~ 0
A11
Wire Wire Line
	1450 7175 2075 7175
Entry Wire Line
	1350 7175 1450 7275
Text Label 1475 7275 0    60   ~ 0
A12
Wire Wire Line
	1450 7275 2075 7275
$EndSCHEMATC
