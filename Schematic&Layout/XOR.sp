* SPICE NETLIST
***************************************

.SUBCKT pmos25x_Auto_5_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25x_Auto_4_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT XOR Gnd Out Vdd B A
** N=6 EP=5 IP=27 FDC=6
X0 Vdd B Out A pmos25x_Auto_5_1 $T=205 2580 0 0 $X=-2245 $Y=1830
X1 Vdd A Out B pmos25x_Auto_5_1 $T=4450 3555 0 270 $X=3700 $Y=1905
X2 Vdd Vdd 6 B pmos25x_Auto_5_1 $T=10325 7070 0 0 $X=7875 $Y=6320
X3 6 Out Gnd A nmos25x_Auto_4_1 $T=205 -1445 0 0 $X=-1745 $Y=-1745
X4 A Out Gnd 6 nmos25x_Auto_4_1 $T=5950 145 0 90 $X=4150 $Y=-1805
X5 Gnd 6 Gnd B nmos25x_Auto_4_1 $T=10325 2275 0 0 $X=8375 $Y=1975
.ENDS
***************************************
