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
LIBS:rc1_keypad_port
LIBS:arduino_pro_micro
LIBS:RC1 Keypad to USB-cache
EELAYER 25 0
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
Comment4 ""
$EndDescr
$Comp
L RC1_Keypad_Port J1
U 1 1 5DAC4370
P 4250 3300
F 0 "J1" H 3975 3700 50  0000 C CNN
F 1 "RC1 Keypad Port" H 4250 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 4200 3300 50  0001 C CNN
F 3 "" H 4200 3300 50  0001 C CNN
	1    4250 3300
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Pro_Micro A1
U 1 1 5DAC7F54
P 6625 3275
F 0 "A1" H 6350 3675 50  0000 C CNN
F 1 "Arduino Pro Micro" V 6625 2925 50  0000 C CNN
F 2 "Arduino_Pro_Micro:Arduino_Pro_Micro" H 6575 3275 50  0001 C CNN
F 3 "" H 6575 3275 50  0001 C CNN
	1    6625 3275
	1    0    0    -1  
$EndComp
NoConn ~ 4725 3050
$Comp
L GND #PWR01
U 1 1 5DAC8C89
P 6625 4525
F 0 "#PWR01" H 6625 4275 50  0001 C CNN
F 1 "GND" H 6625 4375 50  0000 C CNN
F 2 "" H 6625 4525 50  0001 C CNN
F 3 "" H 6625 4525 50  0001 C CNN
	1    6625 4525
	1    0    0    -1  
$EndComp
Wire Wire Line
	6625 4375 6625 4525
Wire Wire Line
	6525 4375 6525 4450
Wire Wire Line
	6525 4450 6725 4450
Connection ~ 6625 4450
Wire Wire Line
	6725 4450 6725 4375
NoConn ~ 6150 3025
NoConn ~ 6150 3125
NoConn ~ 7100 3025
$Comp
L SW_SPST SW1
U 1 1 5DAC8DC9
P 7375 3225
F 0 "SW1" H 7375 3350 50  0000 C CNN
F 1 "RESET" H 7375 3125 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 7375 3225 50  0001 C CNN
F 3 "" H 7375 3225 50  0001 C CNN
	1    7375 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3225 7175 3225
$Comp
L GND #PWR02
U 1 1 5DAC8E0B
P 7650 3300
F 0 "#PWR02" H 7650 3050 50  0001 C CNN
F 1 "GND" H 7650 3150 50  0000 C CNN
F 2 "" H 7650 3300 50  0001 C CNN
F 3 "" H 7650 3300 50  0001 C CNN
	1    7650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2700 7650 3300
Wire Wire Line
	7575 3225 7725 3225
$Comp
L GND #PWR03
U 1 1 5DAC8ED8
P 4950 2850
F 0 "#PWR03" H 4950 2600 50  0001 C CNN
F 1 "GND" H 4950 2700 50  0000 C CNN
F 2 "" H 4950 2850 50  0001 C CNN
F 3 "" H 4950 2850 50  0001 C CNN
	1    4950 2850
	1    0    0    -1  
$EndComp
Text Label 5950 3425 0    60   ~ 0
D2
Text Label 5950 3525 0    60   ~ 0
D3
Text Label 5950 3625 0    60   ~ 0
D4
Text Label 5950 3725 0    60   ~ 0
D5
Text Label 5950 3825 0    60   ~ 0
D6
Text Label 5950 3925 0    60   ~ 0
D7
Text Label 5950 4025 0    60   ~ 0
D8
Text Label 5950 4125 0    60   ~ 0
D9
Text Label 7300 4125 2    60   ~ 0
D10
Text Label 7300 3925 2    60   ~ 0
D14
Text Label 7300 3825 2    60   ~ 0
D15
Text Label 7300 4025 2    60   ~ 0
D16
Text Label 7300 3725 2    60   ~ 0
D18
NoConn ~ 7100 3425
NoConn ~ 7100 3525
Wire Wire Line
	4725 3450 4800 3450
Wire Wire Line
	4800 3450 4800 2775
Wire Wire Line
	4250 2775 4950 2775
Wire Wire Line
	4250 2775 4250 2850
Wire Wire Line
	4950 2775 4950 2850
Connection ~ 4800 2775
Text Label 4925 3550 2    60   ~ 0
D18
Text Label 4925 3950 2    60   ~ 0
D14
Text Label 4925 3850 2    60   ~ 0
D15
Text Label 3575 3050 0    60   ~ 0
D2
Text Label 3575 3150 0    60   ~ 0
D3
Text Label 3575 3250 0    60   ~ 0
D4
Text Label 3575 3350 0    60   ~ 0
D5
Text Label 3575 3450 0    60   ~ 0
D6
Text Label 3575 3550 0    60   ~ 0
D7
Text Label 3575 3650 0    60   ~ 0
D8
Text Label 3575 3750 0    60   ~ 0
D9
Text Label 3575 3850 0    60   ~ 0
D10
Text Label 3575 3950 0    60   ~ 0
D16
Wire Wire Line
	4725 3550 4950 3550
Entry Wire Line
	4950 3550 5050 3650
Wire Wire Line
	4725 3950 4950 3950
Entry Wire Line
	4950 3950 5050 4050
Wire Wire Line
	4725 3850 4950 3850
Entry Wire Line
	4950 3850 5050 3950
Wire Wire Line
	7100 3825 7325 3825
Entry Wire Line
	7325 3825 7425 3925
Wire Wire Line
	7100 3725 7325 3725
Entry Wire Line
	7325 3725 7425 3825
Wire Wire Line
	7100 4025 7325 4025
Entry Wire Line
	7325 4025 7425 4125
Wire Wire Line
	7100 3925 7325 3925
Entry Wire Line
	7325 3925 7425 4025
Wire Wire Line
	7100 4125 7325 4125
Entry Wire Line
	7325 4125 7425 4225
Wire Wire Line
	3550 3150 3775 3150
Entry Wire Line
	3550 3150 3450 3250
Wire Wire Line
	3550 3050 3775 3050
Entry Wire Line
	3550 3050 3450 3150
Wire Wire Line
	3550 3350 3775 3350
Entry Wire Line
	3550 3350 3450 3450
Wire Wire Line
	3550 3250 3775 3250
Entry Wire Line
	3550 3250 3450 3350
Wire Wire Line
	3550 3550 3775 3550
Entry Wire Line
	3550 3550 3450 3650
Wire Wire Line
	3550 3450 3775 3450
Entry Wire Line
	3550 3450 3450 3550
Wire Wire Line
	3550 3750 3775 3750
Entry Wire Line
	3550 3750 3450 3850
Wire Wire Line
	3550 3650 3775 3650
Entry Wire Line
	3550 3650 3450 3750
Wire Wire Line
	3550 3950 3775 3950
Entry Wire Line
	3550 3950 3450 4050
Wire Wire Line
	3550 3850 3775 3850
Entry Wire Line
	3550 3850 3450 3950
Wire Wire Line
	5925 3525 6150 3525
Entry Wire Line
	5925 3525 5825 3625
Wire Wire Line
	5925 3425 6150 3425
Entry Wire Line
	5925 3425 5825 3525
Wire Wire Line
	5925 3725 6150 3725
Entry Wire Line
	5925 3725 5825 3825
Wire Wire Line
	5925 3625 6150 3625
Entry Wire Line
	5925 3625 5825 3725
Wire Wire Line
	5925 3925 6150 3925
Entry Wire Line
	5925 3925 5825 4025
Wire Wire Line
	5925 3825 6150 3825
Entry Wire Line
	5925 3825 5825 3925
Wire Wire Line
	5925 4125 6150 4125
Entry Wire Line
	5925 4125 5825 4225
Wire Wire Line
	5925 4025 6150 4025
Entry Wire Line
	5925 4025 5825 4125
Wire Bus Line
	3450 3150 3450 4300
Wire Bus Line
	3450 4300 5050 4300
Wire Bus Line
	5050 4300 5050 3650
Wire Bus Line
	5825 3525 5825 4825
Wire Bus Line
	5825 4825 7425 4825
Wire Bus Line
	7425 4825 7425 3825
Wire Bus Line
	4275 4300 4275 5200
Wire Bus Line
	4275 5200 6625 5200
Wire Bus Line
	6625 5200 6625 4825
$Comp
L R R2
U 1 1 5DAC9B24
P 7875 3225
F 0 "R2" V 7955 3225 50  0000 C CNN
F 1 "220" V 7875 3225 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7805 3225 50  0001 C CNN
F 3 "" H 7875 3225 50  0001 C CNN
	1    7875 3225
	0    1    1    0   
$EndComp
$Comp
L LED_Small D1
U 1 1 5DAC9BB3
P 7375 2700
F 0 "D1" H 7325 2825 50  0000 L CNN
F 1 "POWER" H 7200 2600 50  0000 L CNN
F 2 "LEDs:LED_D5.0mm" V 7375 2700 50  0001 C CNN
F 3 "" V 7375 2700 50  0001 C CNN
	1    7375 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 3625 8125 3625
$Comp
L LED_Small D2
U 1 1 5DAC9E29
P 8125 3475
F 0 "D2" H 8075 3600 50  0000 L CNN
F 1 "SW_LED" H 7950 3375 50  0000 L CNN
F 2 "LEDs:LED_D5.0mm" V 8125 3475 50  0001 C CNN
F 3 "" V 8125 3475 50  0001 C CNN
	1    8125 3475
	0    1    1    0   
$EndComp
Connection ~ 7650 3225
Wire Wire Line
	8125 3625 8125 3575
Wire Wire Line
	8125 3375 8125 3225
Wire Wire Line
	8125 3225 8025 3225
Wire Wire Line
	7475 2700 7650 2700
$Comp
L R R1
U 1 1 5DACA266
P 6950 2700
F 0 "R1" V 7030 2700 50  0000 C CNN
F 1 "220" V 6950 2700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6880 2700 50  0001 C CNN
F 3 "" H 6950 2700 50  0001 C CNN
	1    6950 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	6625 2775 6625 2700
Wire Wire Line
	6625 2700 6800 2700
Wire Wire Line
	7100 2700 7275 2700
Text Notes 6975 6825 0    60   ~ 0
With the MX keypads costing a fair bit to make, I wanted to be able to use them on the\ncomputer as well - Arduino time! The Pro Micro supports acting as an HID keyboard\nover USB so this just maps the relevant pins.
$EndSCHEMATC
