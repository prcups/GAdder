module fulladd(F, X1, X2);
	input [31:0] X1, X2;
	output [31:0] F;
	wire [31:0] G;
	
	bitadd add0 (.F(F[0]), .G1(G[0]), .A(X1[0]), .B(X2[0]), .G0(1'b0));
	bitadd add1 (.F(F[1]), .G1(G[1]), .A(X1[1]), .B(X2[1]), .G0(G[0]));
	bitadd add2 (.F(F[2]), .G1(G[2]), .A(X1[2]), .B(X2[2]), .G0(G[1]));
	bitadd add3 (.F(F[3]), .G1(G[3]), .A(X1[3]), .B(X2[3]), .G0(G[2]));
	bitadd add4 (.F(F[4]), .G1(G[4]), .A(X1[4]), .B(X2[4]), .G0(G[3]));
	bitadd add5 (.F(F[5]), .G1(G[5]), .A(X1[5]), .B(X2[5]), .G0(G[4]));
	bitadd add6 (.F(F[6]), .G1(G[6]), .A(X1[6]), .B(X2[6]), .G0(G[5]));
	bitadd add7 (.F(F[7]), .G1(G[7]), .A(X1[7]), .B(X2[7]), .G0(G[6]));
	bitadd add8 (.F(F[8]), .G1(G[8]), .A(X1[8]), .B(X2[8]), .G0(G[7]));
	bitadd add9 (.F(F[9]), .G1(G[9]), .A(X1[9]), .B(X2[9]), .G0(G[8]));
	bitadd add10 (.F(F[10]), .G1(G[10]), .A(X1[10]), .B(X2[10]), .G0(G[9]));
	bitadd add11 (.F(F[11]), .G1(G[11]), .A(X1[11]), .B(X2[11]), .G0(G[10]));
	bitadd add12 (.F(F[12]), .G1(G[12]), .A(X1[12]), .B(X2[12]), .G0(G[11]));
	bitadd add13 (.F(F[13]), .G1(G[13]), .A(X1[13]), .B(X2[13]), .G0(G[12]));
	bitadd add14 (.F(F[14]), .G1(G[14]), .A(X1[14]), .B(X2[14]), .G0(G[13]));
	bitadd add15 (.F(F[15]), .G1(G[15]), .A(X1[15]), .B(X2[15]), .G0(G[14]));
	bitadd add16 (.F(F[16]), .G1(G[16]), .A(X1[16]), .B(X2[16]), .G0(G[15]));
	bitadd add17 (.F(F[17]), .G1(G[17]), .A(X1[17]), .B(X2[17]), .G0(G[16]));
	bitadd add18 (.F(F[18]), .G1(G[18]), .A(X1[18]), .B(X2[18]), .G0(G[17]));
	bitadd add19 (.F(F[19]), .G1(G[19]), .A(X1[19]), .B(X2[19]), .G0(G[18]));
	bitadd add20 (.F(F[20]), .G1(G[20]), .A(X1[20]), .B(X2[20]), .G0(G[19]));
	bitadd add21 (.F(F[21]), .G1(G[21]), .A(X1[21]), .B(X2[21]), .G0(G[20]));
	bitadd add22 (.F(F[22]), .G1(G[22]), .A(X1[22]), .B(X2[22]), .G0(G[21]));
	bitadd add23 (.F(F[23]), .G1(G[23]), .A(X1[23]), .B(X2[23]), .G0(G[22]));
	bitadd add24 (.F(F[24]), .G1(G[24]), .A(X1[24]), .B(X2[24]), .G0(G[23]));
	bitadd add25 (.F(F[25]), .G1(G[25]), .A(X1[25]), .B(X2[25]), .G0(G[24]));
	bitadd add26 (.F(F[26]), .G1(G[26]), .A(X1[26]), .B(X2[26]), .G0(G[25]));
	bitadd add27 (.F(F[27]), .G1(G[27]), .A(X1[27]), .B(X2[27]), .G0(G[26]));
	bitadd add28 (.F(F[28]), .G1(G[28]), .A(X1[28]), .B(X2[28]), .G0(G[27]));
	bitadd add29 (.F(F[29]), .G1(G[29]), .A(X1[29]), .B(X2[29]), .G0(G[28]));
	bitadd add30 (.F(F[30]), .G1(G[30]), .A(X1[30]), .B(X2[30]), .G0(G[29]));
	bitadd add31 (.F(F[31]), .G1(G[31]), .A(X1[31]), .B(X2[31]), .G0(G[30]));

	
endmodule
