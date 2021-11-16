all: sintesis execute sim gtkwave

sintesis: arbitro.ys
	yosys arbitro.ys
	sed -i 's/arbitro/arbitro_estruct/' arbitro_estruct.v


execute: BancoPruebas.v
	iverilog -o BancoPruebas.vvp BancoPruebas.v

sim: BancoPruebas.vvp
	vvp BancoPruebas.vvp
	
gtkwave: Arbitro.vcd
	gtkwave Arbitro.vcd Arbitro.gtkw