main.vcd: main.v mul1.v mul2.v fulladd.v bitadd.v leftmove.v
	iverilog -o main -y ./ main.v
	vvp -n main -lxt2
	rm -f main

wave:main.vcd
	gtkwave main.vcd
