module leftmove(F, I);
	input [31:0] I;
	output [31:0] F;
	
	buf(F[31], I[30]);
	buf(F[30], I[29]);
	buf(F[29], I[28]);
	buf(F[28], I[27]);
	buf(F[27], I[26]);
	buf(F[26], I[25]);
	buf(F[25], I[24]);
	buf(F[24], I[23]);
	buf(F[23], I[22]);
	buf(F[22], I[21]);
	buf(F[21], I[20]);
	buf(F[20], I[19]);
	buf(F[19], I[18]);
	buf(F[18], I[17]);
	buf(F[17], I[16]);
	buf(F[16], I[15]);
	buf(F[15], I[14]);
	buf(F[14], I[13]);
	buf(F[13], I[12]);
	buf(F[12], I[11]);
	buf(F[11], I[10]);
	buf(F[10], I[9]);
	buf(F[9], I[8]);
	buf(F[8], I[7]);
	buf(F[7], I[6]);
	buf(F[6], I[5]);
	buf(F[5], I[4]);
	buf(F[4], I[3]);
	buf(F[3], I[2]);
	buf(F[2], I[1]);
	buf(F[1], I[0]);
	buf(F[0], 1'b0);
	
endmodule
