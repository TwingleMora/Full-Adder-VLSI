* SPICE NETLIST
***************************************

.SUBCKT pmos25x_Auto_2_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25x_Auto_3_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT NAND Gnd A Out Vdd B
** N=6 EP=5 IP=18 FDC=4
X0 Vdd Vdd Out A pmos25x_Auto_2_1 $T=700 6170 0 0 $X=-1750 $Y=5420
X1 Vdd Vdd Out B pmos25x_Auto_2_1 $T=8900 6170 0 0 $X=6450 $Y=5420
X2 Gnd 6 Gnd B nmos25x_Auto_3_1 $T=4795 -2440 0 0 $X=2845 $Y=-2740
X3 6 Out Gnd A nmos25x_Auto_3_1 $T=4805 1770 0 0 $X=2855 $Y=1470
.ENDS
***************************************
.SUBCKT XOR Gnd Out Vdd B A
** N=6 EP=5 IP=27 FDC=6
X0 Vdd B Out A pmos25x_Auto_2_1 $T=205 2580 0 0 $X=-2245 $Y=1830
X1 Vdd A Out B pmos25x_Auto_2_1 $T=4450 3555 0 270 $X=3700 $Y=1905
X2 Vdd Vdd 6 B pmos25x_Auto_2_1 $T=10325 7070 0 0 $X=7875 $Y=6320
X3 6 Out Gnd A nmos25x_Auto_3_1 $T=205 -1445 0 0 $X=-1745 $Y=-1745
X4 A Out Gnd 6 nmos25x_Auto_3_1 $T=5950 145 0 90 $X=4150 $Y=-1805
X5 Gnd 6 Gnd B nmos25x_Auto_3_1 $T=10325 2275 0 0 $X=8375 $Y=1975
.ENDS
***************************************
.SUBCKT INVERTER Gnd Vdd In Out
** N=4 EP=4 IP=9 FDC=2
X0 Vdd Vdd Out In pmos25x_Auto_2_1 $T=705 1605 0 0 $X=-1745 $Y=855
X1 Gnd Out Gnd In nmos25x_Auto_3_1 $T=705 -1990 0 0 $X=-1245 $Y=-2290
.ENDS
***************************************
.SUBCKT OneBitFA Gnd Vdd B A CIN S COUT
** N=14 EP=7 IP=50 FDC=30
X0 Vdd 13 14 12 pmos25x_Auto_2_1 $T=26635 15125 0 0 $X=24185 $Y=14375
X1 Vdd Vdd 13 11 pmos25x_Auto_2_1 $T=26675 19265 0 0 $X=24225 $Y=18515
X2 Gnd 14 Gnd 11 nmos25x_Auto_3_1 $T=22535 9330 0 0 $X=20585 $Y=9030
X3 Gnd 14 Gnd 12 nmos25x_Auto_3_1 $T=30735 9330 0 0 $X=28785 $Y=9030
X4 Gnd 8 9 Vdd CIN NAND $T=-95 21870 0 0 $X=-1845 $Y=17150
X5 Gnd A 10 Vdd B NAND $T=5 2970 0 0 $X=-1745 $Y=-1750
X6 Gnd 8 Vdd B A XOR $T=1765 40890 0 0 $X=-970 $Y=35125
X7 Gnd S Vdd CIN 8 XOR $T=22205 40640 0 0 $X=19470 $Y=34875
X8 Gnd Vdd 10 12 INVERTER $T=15830 1535 0 0 $X=14085 $Y=-1745
X9 Gnd Vdd 9 11 INVERTER $T=17115 20385 0 0 $X=15370 $Y=17105
X10 Gnd Vdd 14 COUT INVERTER $T=34625 15150 0 0 $X=32880 $Y=11870
.ENDS
***************************************
.SUBCKT FourBitFA Gnd Vdd A3 B3 S3 COUT A2 B2 S2 A1 B1 S1 A0 B0 CIN S0
** N=19 EP=16 IP=28 FDC=120
X0 Gnd Vdd B3 A3 3 S3 COUT OneBitFA $T=5310 3550 0 0 $X=-1745 $Y=-1665
X1 Gnd Vdd B2 A2 4 S2 3 OneBitFA $T=5310 64575 0 0 $X=-1745 $Y=59360
X2 Gnd Vdd B1 A1 5 S1 4 OneBitFA $T=5310 125600 0 0 $X=-1745 $Y=120385
X3 Gnd Vdd B0 A0 CIN S0 5 OneBitFA $T=5310 186630 0 0 $X=-1745 $Y=181415
.ENDS
***************************************
