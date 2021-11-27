all: sintesis execute sim gtkwave

sintesis: arbitro_1.ys
	yosys arbitro_1.ys
	sed -i 's/arbitro_1/arbitro_1_estruct/' arbitro_1_estruct.v


execute: BancoPruebas.v
	iverilog -o BancoPruebas.vvp BancoPruebas.v

sim: BancoPruebas.vvp
	vvp BancoPruebas.vvp

gtkwave: Arbitro_1.vcd
	gtkwave Arbitro_1.vcd Arbitro_1.gtkw
