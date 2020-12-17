main.vcd: main.v multiply.v fulladd.v bitadd.v calc.v
	iverilog -o main -y ./ main.v
	vvp -n main -lxt2
	rm -f main

wave:main.vcd
	gtkwave main.vcd
