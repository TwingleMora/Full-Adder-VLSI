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
.SUBCKT NAND Gnd A Out Vdd B
** N=6 EP=5 IP=18 FDC=4
X0 Vdd Vdd Out A pmos25x_Auto_5_1 $T=700 6170 0 0 $X=-1750 $Y=5420
X1 Vdd Vdd Out B pmos25x_Auto_5_1 $T=8900 6170 0 0 $X=6450 $Y=5420
X2 Gnd 3 Gnd B nmos25x_Auto_4_1 $T=4795 -2440 0 0 $X=2845 $Y=-2740
X3 3 Out Gnd A nmos25x_Auto_4_1 $T=4805 1770 0 0 $X=2855 $Y=1470
.ENDS
***************************************
