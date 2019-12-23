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
LIBS:mounting
LIBS:rc1_backplane
LIBS:switches
LIBS:prototype
LIBS:Prototyping-cache
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
Text Notes 12175 10925 0    60   ~ 0
RC-ONE Prototyping (Project Board)
$Comp
L VCC #PWR01
U 1 1 5D63F697
P 14725 7525
F 0 "#PWR01" H 14725 7375 50  0001 C CNN
F 1 "VCC" H 14725 7675 50  0000 C CNN
F 2 "" H 14725 7525 50  0001 C CNN
F 3 "" H 14725 7525 50  0001 C CNN
	1    14725 7525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5D63F634
P 14725 7775
F 0 "#PWR02" H 14725 7525 50  0001 C CNN
F 1 "GND" H 14725 7625 50  0000 C CNN
F 2 "" H 14725 7775 50  0001 C CNN
F 3 "" H 14725 7775 50  0001 C CNN
	1    14725 7775
	1    0    0    -1  
$EndComp
Text Notes 15400 11075 0    60   ~ 0
A
$Comp
L RC1_Backplane J1
U 1 1 5DC149FA
P 15150 7400
F 0 "J1" H 15150 9400 50  0000 C CNN
F 1 "Signals" V 15600 7350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x39_Pitch2.54mm" H 15150 7400 50  0001 C CNN
F 3 "" H 15150 7400 50  0001 C CNN
	1    15150 7400
	1    0    0    1   
$EndComp
Wire Wire Line
	14725 7700 14725 7775
Text Notes 11850 10250 0    60   ~ 0
After building a few things on breadboards with a microcontroller, I wanted to do the\nsame with the computer instead so I created this as an easy work-surface to do those\nthings.
$Comp
L Conn_01x10 J5
U 1 1 5DE736F3
P 4475 3775
F 0 "J5" H 4475 4275 50  0000 C CNN
F 1 "Port A" H 4475 3175 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10_Pitch2.54mm" H 4475 3775 50  0001 C CNN
F 3 "" H 4475 3775 50  0001 C CNN
	1    4475 3775
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x10 J6
U 1 1 5DE7382E
P 5825 3775
F 0 "J6" H 5825 4275 50  0000 C CNN
F 1 "Port B" H 5825 3175 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10_Pitch2.54mm" H 5825 3775 50  0001 C CNN
F 3 "" H 5825 3775 50  0001 C CNN
	1    5825 3775
	0    -1   -1   0   
$EndComp
NoConn ~ 4875 3975
NoConn ~ 4975 3975
NoConn ~ 5525 3975
NoConn ~ 5425 3975
NoConn ~ 14950 5500
NoConn ~ 14950 5600
NoConn ~ 14950 5700
NoConn ~ 14950 5800
NoConn ~ 14950 5900
NoConn ~ 14950 6000
NoConn ~ 14950 6100
NoConn ~ 14950 6200
NoConn ~ 14950 6300
NoConn ~ 14950 6400
NoConn ~ 14950 6500
NoConn ~ 14950 6600
NoConn ~ 14950 6700
NoConn ~ 14950 6800
NoConn ~ 14950 6900
NoConn ~ 14950 7000
NoConn ~ 14950 7100
NoConn ~ 14950 7200
NoConn ~ 14950 7300
NoConn ~ 14950 7400
NoConn ~ 14950 7500
NoConn ~ 14950 7800
NoConn ~ 14950 7900
NoConn ~ 14950 8000
NoConn ~ 14950 8100
NoConn ~ 14950 8200
NoConn ~ 14950 8300
NoConn ~ 14950 8400
NoConn ~ 14950 8500
NoConn ~ 14950 8600
NoConn ~ 14950 8700
NoConn ~ 14950 8800
NoConn ~ 14950 8900
NoConn ~ 14950 9000
NoConn ~ 14950 9100
NoConn ~ 14950 9200
NoConn ~ 14950 9300
Wire Wire Line
	14725 7600 14725 7525
Wire Wire Line
	14725 7700 14950 7700
Wire Wire Line
	14725 7600 14950 7600
NoConn ~ 6325 3975
NoConn ~ 6225 3975
NoConn ~ 6125 3975
NoConn ~ 6025 3975
NoConn ~ 5925 3975
NoConn ~ 5825 3975
NoConn ~ 5725 3975
NoConn ~ 5625 3975
NoConn ~ 4775 3975
NoConn ~ 4675 3975
NoConn ~ 4575 3975
NoConn ~ 4475 3975
NoConn ~ 4375 3975
NoConn ~ 4275 3975
NoConn ~ 4175 3975
NoConn ~ 4075 3975
$Comp
L Prototype_21 P1
U 1 1 5E010418
P 10750 7275
F 0 "P1" H 10750 7225 50  0001 C CNN
F 1 "Prototype_21" H 10750 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 10750 7275 50  0001 C CNN
F 3 "" H 10750 7275 50  0001 C CNN
	1    10750 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P2
U 1 1 5E0106FC
P 10800 7275
F 0 "P2" H 10800 7225 50  0001 C CNN
F 1 "Prototype_21" H 10800 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 10800 7275 50  0001 C CNN
F 3 "" H 10800 7275 50  0001 C CNN
	1    10800 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P3
U 1 1 5E010710
P 10850 7275
F 0 "P3" H 10850 7225 50  0001 C CNN
F 1 "Prototype_21" H 10850 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 10850 7275 50  0001 C CNN
F 3 "" H 10850 7275 50  0001 C CNN
	1    10850 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P4
U 1 1 5E010724
P 10900 7275
F 0 "P4" H 10900 7225 50  0001 C CNN
F 1 "Prototype_21" H 10900 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 10900 7275 50  0001 C CNN
F 3 "" H 10900 7275 50  0001 C CNN
	1    10900 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P5
U 1 1 5E010738
P 10950 7275
F 0 "P5" H 10950 7225 50  0001 C CNN
F 1 "Prototype_21" H 10950 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 10950 7275 50  0001 C CNN
F 3 "" H 10950 7275 50  0001 C CNN
	1    10950 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P6
U 1 1 5E01074C
P 11000 7275
F 0 "P6" H 11000 7225 50  0001 C CNN
F 1 "Prototype_21" H 11000 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11000 7275 50  0001 C CNN
F 3 "" H 11000 7275 50  0001 C CNN
	1    11000 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P7
U 1 1 5E010752
P 11050 7275
F 0 "P7" H 11050 7225 50  0001 C CNN
F 1 "Prototype_21" H 11050 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11050 7275 50  0001 C CNN
F 3 "" H 11050 7275 50  0001 C CNN
	1    11050 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P8
U 1 1 5E010758
P 11100 7275
F 0 "P8" H 11100 7225 50  0001 C CNN
F 1 "Prototype_21" H 11100 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11100 7275 50  0001 C CNN
F 3 "" H 11100 7275 50  0001 C CNN
	1    11100 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P9
U 1 1 5E01075E
P 11150 7275
F 0 "P9" H 11150 7225 50  0001 C CNN
F 1 "Prototype_21" H 11150 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11150 7275 50  0001 C CNN
F 3 "" H 11150 7275 50  0001 C CNN
	1    11150 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P10
U 1 1 5E010764
P 11200 7275
F 0 "P10" H 11200 7225 50  0001 C CNN
F 1 "Prototype_21" H 11200 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11200 7275 50  0001 C CNN
F 3 "" H 11200 7275 50  0001 C CNN
	1    11200 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P11
U 1 1 5E010770
P 11250 7275
F 0 "P11" H 11250 7225 50  0001 C CNN
F 1 "Prototype_21" H 11250 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11250 7275 50  0001 C CNN
F 3 "" H 11250 7275 50  0001 C CNN
	1    11250 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P12
U 1 1 5E010776
P 11300 7275
F 0 "P12" H 11300 7225 50  0001 C CNN
F 1 "Prototype_21" H 11300 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11300 7275 50  0001 C CNN
F 3 "" H 11300 7275 50  0001 C CNN
	1    11300 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P13
U 1 1 5E01077C
P 11350 7275
F 0 "P13" H 11350 7225 50  0001 C CNN
F 1 "Prototype_21" H 11350 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11350 7275 50  0001 C CNN
F 3 "" H 11350 7275 50  0001 C CNN
	1    11350 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P14
U 1 1 5E010782
P 11400 7275
F 0 "P14" H 11400 7225 50  0001 C CNN
F 1 "Prototype_21" H 11400 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11400 7275 50  0001 C CNN
F 3 "" H 11400 7275 50  0001 C CNN
	1    11400 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P15
U 1 1 5E010788
P 11450 7275
F 0 "P15" H 11450 7225 50  0001 C CNN
F 1 "Prototype_21" H 11450 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11450 7275 50  0001 C CNN
F 3 "" H 11450 7275 50  0001 C CNN
	1    11450 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P16
U 1 1 5E01078E
P 11500 7275
F 0 "P16" H 11500 7225 50  0001 C CNN
F 1 "Prototype_21" H 11500 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11500 7275 50  0001 C CNN
F 3 "" H 11500 7275 50  0001 C CNN
	1    11500 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P17
U 1 1 5E010794
P 11550 7275
F 0 "P17" H 11550 7225 50  0001 C CNN
F 1 "Prototype_21" H 11550 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11550 7275 50  0001 C CNN
F 3 "" H 11550 7275 50  0001 C CNN
	1    11550 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P18
U 1 1 5E01079A
P 11600 7275
F 0 "P18" H 11600 7225 50  0001 C CNN
F 1 "Prototype_21" H 11600 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11600 7275 50  0001 C CNN
F 3 "" H 11600 7275 50  0001 C CNN
	1    11600 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P19
U 1 1 5E0107A0
P 11650 7275
F 0 "P19" H 11650 7225 50  0001 C CNN
F 1 "Prototype_21" H 11650 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11650 7275 50  0001 C CNN
F 3 "" H 11650 7275 50  0001 C CNN
	1    11650 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P20
U 1 1 5E0107A6
P 11700 7275
F 0 "P20" H 11700 7225 50  0001 C CNN
F 1 "Prototype_21" H 11700 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11700 7275 50  0001 C CNN
F 3 "" H 11700 7275 50  0001 C CNN
	1    11700 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P21
U 1 1 5E0107B2
P 11750 7275
F 0 "P21" H 11750 7225 50  0001 C CNN
F 1 "Prototype_21" H 11750 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11750 7275 50  0001 C CNN
F 3 "" H 11750 7275 50  0001 C CNN
	1    11750 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P22
U 1 1 5E0107B8
P 11800 7275
F 0 "P22" H 11800 7225 50  0001 C CNN
F 1 "Prototype_21" H 11800 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11800 7275 50  0001 C CNN
F 3 "" H 11800 7275 50  0001 C CNN
	1    11800 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P23
U 1 1 5E0107BE
P 11850 7275
F 0 "P23" H 11850 7225 50  0001 C CNN
F 1 "Prototype_21" H 11850 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11850 7275 50  0001 C CNN
F 3 "" H 11850 7275 50  0001 C CNN
	1    11850 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P24
U 1 1 5E0107C4
P 11900 7275
F 0 "P24" H 11900 7225 50  0001 C CNN
F 1 "Prototype_21" H 11900 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11900 7275 50  0001 C CNN
F 3 "" H 11900 7275 50  0001 C CNN
	1    11900 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P25
U 1 1 5E0107CA
P 11950 7275
F 0 "P25" H 11950 7225 50  0001 C CNN
F 1 "Prototype_21" H 11950 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 11950 7275 50  0001 C CNN
F 3 "" H 11950 7275 50  0001 C CNN
	1    11950 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P26
U 1 1 5E0107D0
P 12000 7275
F 0 "P26" H 12000 7225 50  0001 C CNN
F 1 "Prototype_21" H 12000 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 12000 7275 50  0001 C CNN
F 3 "" H 12000 7275 50  0001 C CNN
	1    12000 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P27
U 1 1 5E0107D6
P 12050 7275
F 0 "P27" H 12050 7225 50  0001 C CNN
F 1 "Prototype_21" H 12050 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 12050 7275 50  0001 C CNN
F 3 "" H 12050 7275 50  0001 C CNN
	1    12050 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P28
U 1 1 5E0107DC
P 12100 7275
F 0 "P28" H 12100 7225 50  0001 C CNN
F 1 "Prototype_21" H 12100 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 12100 7275 50  0001 C CNN
F 3 "" H 12100 7275 50  0001 C CNN
	1    12100 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P29
U 1 1 5E0107E2
P 12150 7275
F 0 "P29" H 12150 7225 50  0001 C CNN
F 1 "Prototype_21" H 12150 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 12150 7275 50  0001 C CNN
F 3 "" H 12150 7275 50  0001 C CNN
	1    12150 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P30
U 1 1 5E0107E8
P 12200 7275
F 0 "P30" H 12200 7225 50  0001 C CNN
F 1 "Prototype_21" H 12200 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 12200 7275 50  0001 C CNN
F 3 "" H 12200 7275 50  0001 C CNN
	1    12200 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P31
U 1 1 5E0107EE
P 12250 7275
F 0 "P31" H 12250 7225 50  0001 C CNN
F 1 "Prototype_21" H 12250 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 12250 7275 50  0001 C CNN
F 3 "" H 12250 7275 50  0001 C CNN
	1    12250 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P32
U 1 1 5E0107F4
P 12300 7275
F 0 "P32" H 12300 7225 50  0001 C CNN
F 1 "Prototype_21" H 12300 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 12300 7275 50  0001 C CNN
F 3 "" H 12300 7275 50  0001 C CNN
	1    12300 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P33
U 1 1 5E0107FA
P 12350 7275
F 0 "P33" H 12350 7225 50  0001 C CNN
F 1 "Prototype_21" H 12350 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 12350 7275 50  0001 C CNN
F 3 "" H 12350 7275 50  0001 C CNN
	1    12350 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P34
U 1 1 5E010800
P 12400 7275
F 0 "P34" H 12400 7225 50  0001 C CNN
F 1 "Prototype_21" H 12400 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 12400 7275 50  0001 C CNN
F 3 "" H 12400 7275 50  0001 C CNN
	1    12400 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P35
U 1 1 5E010806
P 12450 7275
F 0 "P35" H 12450 7225 50  0001 C CNN
F 1 "Prototype_21" H 12450 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 12450 7275 50  0001 C CNN
F 3 "" H 12450 7275 50  0001 C CNN
	1    12450 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P36
U 1 1 5E01080C
P 12500 7275
F 0 "P36" H 12500 7225 50  0001 C CNN
F 1 "Prototype_21" H 12500 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 12500 7275 50  0001 C CNN
F 3 "" H 12500 7275 50  0001 C CNN
	1    12500 7275
	1    0    0    -1  
$EndComp
$Comp
L Prototype_21 P37
U 1 1 5E010812
P 12550 7275
F 0 "P37" H 12550 7225 50  0001 C CNN
F 1 "Prototype_21" H 12550 7150 50  0001 C CNN
F 2 "prototype:prototype_21" H 12550 7275 50  0001 C CNN
F 3 "" H 12550 7275 50  0001 C CNN
	1    12550 7275
	1    0    0    -1  
$EndComp
$EndSCHEMATC
