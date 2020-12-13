module test;
	reg [31:0] X1, X2;
	wire [31:0] Y;

	multiply mul (Y, X1, X2);
	
	initial
		begin
			$dumpfile("test.vcd");
			$dumpvars(0,test);
		end
		
		initial
		begin
				X1<=111;X2<=844;
			#10 X1<=29;X2<=39;
			#10 X1<=16;X2<=16;
			#10 $stop;
		end

endmodule
