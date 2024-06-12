module ripple_carry_adder(A,B,CIN,COUT,SUM);
input [3:0] A,B;
input CIN;
output [3:0] SUM;
output COUT;
wire [3:0] C,P,Q;
assign P = A^B;
assign Q = A&B;
assign C[0] = (Q[0])|(CIN&P[0]);
assign C[1] = (Q[1])|(C[0]&P[1]);
assign C[2] = (Q[2])|(C[1]&P[2]);
assign C[3] = (Q[3])|(C[2]&P[3]);
assign COUT = C[3];

assign SUM[0] = P[0]^CIN; 
assign SUM[1] = P[1]^C[0]; 
assign SUM[2] = P[2]^C[1]; 
assign SUM[3] = P[3]^C[2]; 
endmodule