test.vcd: test.v multiply.v fulladd.v bitadd.v leftmove.v
	iverilog -o wave -y ./ test.v
	vvp -n wave -lxt2
	rm -f wave

wave:test.vcd
	gtkwave test.vcd
