module bitadd(F, G1, A, B, G0);
	input A, B, G0;
	output F, G1;
	wire xor0, and0, xor1, and1;
	
	xor (xor0, A, B);
	and (and0, A, B);
	xor (F, xor0, G0);
	and (and1, xor0, G0);
	or (G1, and1, and0);
	
endmodule
