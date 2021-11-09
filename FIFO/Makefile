all: sintesis execute sim gtkwave

sintesis: FIFO.ys
	yosys FIFO.ys
	sed -i 's/FIFO/FIFO_estruct/' FIFO_estruct.v
	sed -i 's/true_dpram_sclk/true_dpram_sclk_estruct/' FIFO_estruct.v



execute: BancoPruebas_FIFO.v
	iverilog -o BancoPruebas_FIFO.vvp BancoPruebas_FIFO.v

sim: BancoPruebas_FIFO.vvp
	vvp BancoPruebas_FIFO.vvp
	
gtkwave: FIFO.vcd
	gtkwave FIFO.vcd FIFO.gtkw