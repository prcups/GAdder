module mul1 (F, X1, X2);
	input [31:0] X1, X2;
	output [31:0] F;
	
	reg [7:0] i, j;
	reg [31:0] result, temp;
	reg [31:0] F;
	
	always @(X1, X2)
	begin
		result = 0;
		temp = 0;
		for (i = 32; i >= 1; i = i - 1)
		begin
			for (j = 32; j >= 1; j = j - 1)
			begin
				temp[j - 1] = X1[j - 1] & X2[i - 1];
			end
			result = result + temp;
			result = result << 1;
		end
		F = result;
	end

endmodule
