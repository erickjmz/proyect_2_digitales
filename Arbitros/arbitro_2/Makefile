all: sintesis execute sim gtkwave

sintesis: arbitro_2.ys
	yosys arbitro_2.ys
	sed -i 's/arbitro_2/arbitro_2_estruct/' arbitro_2_estruct.v


execute: BancoPruebas.v
	iverilog -o BancoPruebas.vvp BancoPruebas.v

sim: BancoPruebas.vvp
	vvp BancoPruebas.vvp

gtkwave: Arbitro_2.vcd
	gtkwave Arbitro_2.vcd Arbitro_2.gtkw
