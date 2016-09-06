EESchema Schematic File Version 2
LIBS:device
LIBS:AmpliGSR-cache
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
L LM324N U1
U 1 1 574C29FA
P 2300 1950
F 0 "U1" H 2350 2150 60  0000 C CNN
F 1 "LM324N" H 2450 1750 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 2300 1950 60  0001 C CNN
F 3 "" H 2300 1950 60  0000 C CNN
	1    2300 1950
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 574C2A2B
P 1450 1550
F 0 "R1" V 1530 1550 40  0000 C CNN
F 1 "10k" V 1457 1551 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 1380 1550 30  0001 C CNN
F 3 "" H 1450 1550 30  0000 C CNN
	1    1450 1550
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 574C2A6C
P 1450 2150
F 0 "R2" V 1530 2150 40  0000 C CNN
F 1 "1k" V 1457 2151 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 1380 2150 30  0001 C CNN
F 3 "" H 1450 2150 30  0000 C CNN
	1    1450 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 574C2A96
P 1450 2450
F 0 "#PWR01" H 1450 2450 30  0001 C CNN
F 1 "GND" H 1450 2380 30  0001 C CNN
F 2 "" H 1450 2450 60  0000 C CNN
F 3 "" H 1450 2450 60  0000 C CNN
	1    1450 2450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 574C2AE5
P 1450 1250
F 0 "#PWR02" H 1450 1340 20  0001 C CNN
F 1 "+5V" H 1450 1340 30  0000 C CNN
F 2 "" H 1450 1250 60  0000 C CNN
F 3 "" H 1450 1250 60  0000 C CNN
	1    1450 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 574C2B23
P 2200 2350
F 0 "#PWR03" H 2200 2350 30  0001 C CNN
F 1 "GND" H 2200 2280 30  0001 C CNN
F 2 "" H 2200 2350 60  0000 C CNN
F 3 "" H 2200 2350 60  0000 C CNN
	1    2200 2350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 574C2B31
P 2200 1550
F 0 "#PWR04" H 2200 1640 20  0001 C CNN
F 1 "+5V" H 2200 1640 30  0000 C CNN
F 2 "" H 2200 1550 60  0000 C CNN
F 3 "" H 2200 1550 60  0000 C CNN
	1    2200 1550
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 574C2BB5
P 2950 1650
F 0 "R3" V 3030 1650 40  0000 C CNN
F 1 "10k" V 2957 1651 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2880 1650 30  0001 C CNN
F 3 "" H 2950 1650 30  0000 C CNN
	1    2950 1650
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 574C2C27
P 2950 2200
F 0 "R4" V 3030 2200 40  0000 C CNN
F 1 "10k" V 2957 2201 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2880 2200 30  0001 C CNN
F 3 "" H 2950 2200 30  0000 C CNN
	1    2950 2200
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 574C2C5D
P 2950 1100
F 0 "R5" V 3030 1100 40  0000 C CNN
F 1 "150k" V 2957 1101 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2880 1100 30  0001 C CNN
F 3 "" H 2950 1100 30  0000 C CNN
	1    2950 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 574C2CFD
P 2950 800
F 0 "#PWR05" H 2950 800 30  0001 C CNN
F 1 "GND" H 2950 730 30  0001 C CNN
F 2 "" H 2950 800 60  0000 C CNN
F 3 "" H 2950 800 60  0000 C CNN
	1    2950 800 
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 574C2E39
P 2700 2450
F 0 "C2" H 2700 2550 40  0000 L CNN
F 1 "100n" H 2706 2365 40  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2_P5" H 2738 2300 30  0001 C CNN
F 3 "" H 2700 2450 60  0000 C CNN
	1    2700 2450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 574C2E96
P 2450 2450
F 0 "#PWR06" H 2450 2450 30  0001 C CNN
F 1 "GND" H 2450 2380 30  0001 C CNN
F 2 "" H 2450 2450 60  0000 C CNN
F 3 "" H 2450 2450 60  0000 C CNN
	1    2450 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 1850 1450 1850
Wire Wire Line
	1450 1800 1450 1900
Connection ~ 1450 1850
Wire Wire Line
	1450 2400 1450 2450
Wire Wire Line
	1450 1300 1450 1250
Wire Wire Line
	1800 2050 1800 2250
Wire Wire Line
	1800 2250 2800 2250
Wire Wire Line
	2800 2250 2800 1950
Wire Wire Line
	2450 2450 2500 2450
Wire Wire Line
	2900 2450 3350 2450
Wire Wire Line
	2950 2450 2950 2750
Wire Wire Line
	2800 1950 2950 1950
Wire Wire Line
	2950 1950 2950 1900
Wire Wire Line
	2950 1400 2950 1350
Wire Wire Line
	2950 850  2950 800 
Connection ~ 2800 1950
Connection ~ 2950 1950
Connection ~ 2950 2450
Wire Wire Line
	2950 850  3200 850 
Connection ~ 2950 850 
$Comp
L CONN_01X01 P2
U 1 1 574C3106
P 3400 850
F 0 "P2" H 3400 950 50  0000 C CNN
F 1 "CONN_01X01" H 3400 750 50  0000 C CNN
F 2 "Connect:1pin" H 3400 850 60  0001 C CNN
F 3 "" H 3400 850 60  0000 C CNN
	1    3400 850 
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P1
U 1 1 574C3145
P 3150 2750
F 0 "P1" H 3150 2850 50  0000 C CNN
F 1 "CONN_01X01" H 3000 2650 50  0000 C CNN
F 2 "Connect:1pin" H 3150 2750 60  0001 C CNN
F 3 "" H 3150 2750 60  0000 C CNN
	1    3150 2750
	1    0    0    -1  
$EndComp
$Comp
L LM324N U1
U 2 1 574C33AF
P 3850 1450
F 0 "U1" H 3900 1650 60  0000 C CNN
F 1 "LM324N" H 4000 1250 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 3850 1450 60  0001 C CNN
F 3 "" H 3850 1450 60  0000 C CNN
	2    3850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1350 3350 1350
Wire Wire Line
	3350 1550 3350 1750
Wire Wire Line
	3350 1750 4350 1750
Wire Wire Line
	4350 1750 4350 1450
Wire Wire Line
	4350 1450 4550 1450
Connection ~ 4350 1450
Connection ~ 2950 1350
$Comp
L LM324N U1
U 3 1 574C3588
P 3850 2550
F 0 "U1" H 3900 2750 60  0000 C CNN
F 1 "LM324N" H 4000 2350 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 3850 2550 60  0001 C CNN
F 3 "" H 3850 2550 60  0000 C CNN
	3    3850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2650 3350 2850
Wire Wire Line
	3350 2850 4350 2850
Wire Wire Line
	4350 2850 4350 2550
Wire Wire Line
	4350 2550 4500 2550
Connection ~ 4350 2550
$Comp
L R R6
U 1 1 574C36A7
P 4750 2550
F 0 "R6" V 4830 2550 40  0000 C CNN
F 1 "2.2k" V 4757 2551 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4680 2550 30  0001 C CNN
F 3 "" H 4750 2550 30  0000 C CNN
	1    4750 2550
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 574C3737
P 4800 1450
F 0 "R8" V 4880 1450 40  0000 C CNN
F 1 "2.2k" V 4807 1451 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4730 1450 30  0001 C CNN
F 3 "" H 4800 1450 30  0000 C CNN
	1    4800 1450
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 574C37D0
P 5000 2850
F 0 "R7" V 5080 2850 40  0000 C CNN
F 1 "47k" V 5007 2851 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4930 2850 30  0001 C CNN
F 3 "" H 5000 2850 30  0000 C CNN
	1    5000 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 574C384A
P 5000 3100
F 0 "#PWR07" H 5000 3100 30  0001 C CNN
F 1 "GND" H 5000 3030 30  0001 C CNN
F 2 "" H 5000 3100 60  0000 C CNN
F 3 "" H 5000 3100 60  0000 C CNN
	1    5000 3100
	1    0    0    -1  
$EndComp
$Comp
L LM324N U1
U 4 1 574C38B3
P 5700 2000
F 0 "U1" H 5750 2200 60  0000 C CNN
F 1 "LM324N" H 5850 1800 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 5700 2000 60  0001 C CNN
F 3 "" H 5700 2000 60  0000 C CNN
	4    5700 2000
	1    0    0    1   
$EndComp
$Comp
L R R9
U 1 1 574C3ACE
P 5950 1450
F 0 "R9" V 6030 1450 40  0000 C CNN
F 1 "47k" V 5957 1451 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 5880 1450 30  0001 C CNN
F 3 "" H 5950 1450 30  0000 C CNN
	1    5950 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1450 5700 1450
Wire Wire Line
	5200 1900 5200 1450
Connection ~ 5200 1450
Wire Wire Line
	5000 2600 5000 2550
Wire Wire Line
	5200 2100 5200 2550
Wire Wire Line
	5200 2550 5000 2550
Wire Wire Line
	6200 1450 6200 2000
Wire Wire Line
	6200 2000 6400 2000
$Comp
L C C1
U 1 1 574C3E00
P 6950 2250
F 0 "C1" H 6950 2350 40  0000 L CNN
F 1 "100n" H 6956 2165 40  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2_P5" H 6988 2100 30  0001 C CNN
F 3 "" H 6950 2250 60  0000 C CNN
	1    6950 2250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 574C3F08
P 6950 2450
F 0 "#PWR08" H 6950 2450 30  0001 C CNN
F 1 "GND" H 6950 2380 30  0001 C CNN
F 2 "" H 6950 2450 60  0000 C CNN
F 3 "" H 6950 2450 60  0000 C CNN
	1    6950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2000 7650 2000
Wire Wire Line
	6950 2050 6950 2000
Connection ~ 6950 2000
$Comp
L R R10
U 1 1 574C40A7
P 6650 2000
F 0 "R10" V 6730 2000 40  0000 C CNN
F 1 "2.2k" V 6657 2001 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 6580 2000 30  0001 C CNN
F 3 "" H 6650 2000 30  0000 C CNN
	1    6650 2000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X03 P3
U 1 1 574C43EF
P 7850 2100
F 0 "P3" H 7850 2300 50  0000 C CNN
F 1 "CONN_01X03" V 7950 2100 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK_6410-03" H 7850 2100 60  0001 C CNN
F 3 "" H 7850 2100 60  0000 C CNN
	1    7850 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 574C4461
P 7650 2250
F 0 "#PWR09" H 7650 2250 30  0001 C CNN
F 1 "GND" H 7650 2180 30  0001 C CNN
F 2 "" H 7650 2250 60  0000 C CNN
F 3 "" H 7650 2250 60  0000 C CNN
	1    7650 2250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 574C4517
P 7600 2100
F 0 "#PWR010" H 7600 2190 20  0001 C CNN
F 1 "+5V" H 7600 2190 30  0000 C CNN
F 2 "" H 7600 2100 60  0000 C CNN
F 3 "" H 7600 2100 60  0000 C CNN
	1    7600 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 2100 7650 2100
Wire Wire Line
	7650 2200 7650 2250
Text Notes 1850 3600 0    60   ~ 0
VG = VS * ([Rx /{R4 + Rx}] – [R5/{R3 + R5}])\n       = 0.5 * ( Rx/(2k + Rx) - 0.96)
$Comp
L CP2 C3
U 1 1 57CEF5FA
P 7150 2200
F 0 "C3" H 7150 2300 40  0000 L CNN
F 1 "10u" H 7156 2115 40  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L11_P2" H 7188 2050 30  0001 C CNN
F 3 "" H 7150 2200 60  0000 C CNN
	1    7150 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 57CEF81F
P 7150 2450
F 0 "#PWR011" H 7150 2450 30  0001 C CNN
F 1 "GND" H 7150 2380 30  0001 C CNN
F 2 "" H 7150 2450 60  0000 C CNN
F 3 "" H 7150 2450 60  0000 C CNN
	1    7150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2450 7150 2400
Connection ~ 7150 2000
$EndSCHEMATC
