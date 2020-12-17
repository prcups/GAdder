module calc (F,
		a00,a01,a02,a03,a04,a05,
		a10,a11,a12,a13,a14,a15,
		a20,a21,a22,a23,a24,a25,
		a30,a31,a32,a33,a34,a35,
		a40,a41,a42,a43,a44,a45,
		a50,a51,a52,a53,a54,a55,						
		b00,b01,b02,b03,b04,b05,
		b10,b11,b12,b13,b14,b15,
		b20,b21,b22,b23,b24,b25,			
		b30,b31,b32,b33,b34,b35,
		b40,b41,b42,b43,b44,b45,
		b50,b51,b52,b53,b54,b55
	);
	output [31:0] F;
	input [31:0] a00,a01,a02,a03,a04,a05,
	a10,a11,a12,a13,a14,a15,
	a20,a21,a22,a23,a24,a25,			
	a30,a31,a32,a33,a34,a35,			
	a40,a41,a42,a43,a44,a45,			
	a50,a51,a52,a53,a54,a55,						
	b00,b01,b02,b03,b04,b05,			
	b10,b11,b12,b13,b14,b15,
	b20,b21,b22,b23,b24,b25,			
	b30,b31,b32,b33,b34,b35,
	b40,b41,b42,b43,b44,b45,
	b50,b51,b52,b53,b54,b55;

	wire [31:0] c00,c01,c02,c03,c04,c05,
	c10,c11,c12,c13,c14,c15,
	c20,c21,c22,c23,c24,c25,			
	c30,c31,c32,c33,c34,c35,			
	c40,c41,c42,c43,c44,c45,			
	c50,c51,c52,c53,c54,c55,
	addr00,addr01,addr02,addr03,addr04,addr05,
	addr10,addr11,addr12,addr13,addr14,addr15,
	addr20,addr21,addr22,addr23,addr24,addr25,
	addrb00,addrb01,addrb02,addrb10,addrb11,addrb12,addrb20,addrb21,addrb22,
	addrc0, addrc1, addrc2, addrc3, addrc4,
	addrd0, addrd1;
	
	multiply mul00 (c00, a00, b00);
	multiply mul01 (c01, a01, b01);
	multiply mul02 (c02, a02, b02);
	multiply mul03 (c03, a03, b03);
	multiply mul04 (c04, a04, b04);
	multiply mul05 (c05, a05, b05);
	multiply mul10 (c10, a10, b10);
	multiply mul11 (c11, a11, b11);
	multiply mul12 (c12, a12, b12);
	multiply mul13 (c13, a13, b13);
	multiply mul14 (c14, a14, b14);
	multiply mul15 (c15, a15, b15);
	multiply mul20 (c20, a20, b20);
	multiply mul21 (c21, a21, b21);
	multiply mul22 (c22, a22, b22);
	multiply mul23 (c23, a23, b23);
	multiply mul24 (c24, a24, b24);
	multiply mul25 (c25, a25, b25);
	multiply mul30 (c30, a30, b30);
	multiply mul31 (c31, a31, b31);
	multiply mul32 (c32, a32, b32);
	multiply mul33 (c33, a33, b33);
	multiply mul34 (c34, a34, b34);
	multiply mul35 (c35, a35, b35);
	multiply mul40 (c40, a40, b40);
	multiply mul41 (c41, a41, b41);
	multiply mul42 (c42, a42, b42);
	multiply mul43 (c43, a43, b43);
	multiply mul44 (c44, a44, b44);
	multiply mul45 (c45, a45, b45);
	multiply mul50 (c50, a50, b50);
	multiply mul51 (c51, a51, b51);
	multiply mul52 (c52, a52, b52);
	multiply mul53 (c53, a53, b53);
	multiply mul54 (c54, a54, b54);
	multiply mul55 (c55, a55, b55);
	fulladd adda00 (addr00, c00,c50);
	fulladd adda01 (addr01, c01,c51);
	fulladd adda02 (addr02, c02,c52);
	fulladd adda03 (addr03, c03,c53);
	fulladd adda04 (addr04, c04,c54);
	fulladd adda05 (addr05, c05,c55);
	fulladd adda10 (addr10, c10,c40);
	fulladd adda11 (addr11, c11,c41);
	fulladd adda12 (addr12, c12,c42);
	fulladd adda13 (addr13, c13,c43);
	fulladd adda14 (addr14, c14,c44);
	fulladd adda15 (addr15, c15,c45);
	fulladd adda20 (addr20, c20,c30);
	fulladd adda21 (addr21, c21,c31);
	fulladd adda22 (addr22, c22,c32);
	fulladd adda23 (addr23, c23,c33);
	fulladd adda24 (addr24, c24,c34);
	fulladd adda25 (addr25, c25,c35);
	fulladd addb00 (addrb00, addr00,addr05);
	fulladd addb01 (addrb01, addr01,addr04);
	fulladd addb02 (addrb02, addr02,addr03);
	fulladd addb10 (addrb10, addr10,addr15);
	fulladd addb11 (addrb11, addr11,addr14);
	fulladd addb12 (addrb12, addr12,addr13);
	fulladd addb20 (addrb20, addr20,addr25);
	fulladd addb21 (addrb21, addr21,addr24);
	fulladd addb22 (addrb22, addr22,addr23);
	fulladd addc0 (addrc0, addrb00, addrb01);
	fulladd addc1 (addrc1, addrb02, addrb10);
	fulladd addc2 (addrc2, addrb11, addrb12);
	fulladd addc3 (addrc3, addrb20, addrb21);
	fulladd addc4 (addrc4, addrb22, addrc0);
	fulladd addd0 (addrd0, addrc1, addrc2);
	fulladd addd1 (addrd1, addrc3, addrc4);
	fulladd addd2 (F, addrd0, addrd1);
		
endmodule

