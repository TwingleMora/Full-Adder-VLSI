module carry_lookahead(CIN,G0,P0,G1,P1,G2,P2,G3,P3,C1,C2,C3,C4);
    
 input CIN,P0,P1,P2,P3,G0,G1,G2,G3;
 output C1,C2,C3,C4;
    

  
    assign C1 = G0 | (P0 & CIN);
    assign C2 = G1 | (	P1 & G0) | (P1 & P0 & CIN);
    assign C3 = G2 | (P2 & G1) | (P2 & P1 & G0) | (P2 & P1 & P0 & CIN);
    assign C4 = G3 | (P3 & G2) | (P3 & P2 & G1) | (P3 & P2 & P1 & G0) | (P3 & P2 & P1 & P0 & CIN);

endmodule

