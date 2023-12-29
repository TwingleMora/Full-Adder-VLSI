* SPICE NETLIST
***************************************

.SUBCKT nmos25x_Auto_0_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT pmos25x_Auto_1_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT NOR Gnd A Vdd B Out
** N=6 EP=5 IP=18 FDC=4
X0 Gnd Out Gnd A nmos25x_Auto_0_1 $T=205 -2460 0 0 $X=-1745 $Y=-2760
X1 Gnd Out Gnd B nmos25x_Auto_0_1 $T=8405 -2460 0 0 $X=6455 $Y=-2760
X2 Vdd 5 Out B pmos25x_Auto_1_1 $T=4305 3335 0 0 $X=1855 $Y=2585
X3 Vdd Vdd 5 A pmos25x_Auto_1_1 $T=4345 7475 0 0 $X=1895 $Y=6725
.ENDS
***************************************
