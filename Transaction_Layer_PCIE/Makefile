#Makefile
CC1=iverilog
CC2=gtkwave
CC3=yosys
OBjetivo1: dependencia1
	echo Se ejecutaron los comandos de iverilog y gtkwave con éxtio y se mostró la simulación de forma automática. 
dependencia1:
	$(CC3) -s Script_Yosys
	sed -i 's/Transaction_c/Transaction_e/g' Transaction_e.v
	sed -i 's/true_dpram_sclk/true_dpram_sclk_e/g' Transaction_e.v
	sed -i 's/FIFO/FIFO_e/g' Transaction_e.v
	sed -i 's/contadores/contadores_e/g' Transaction_e.v
	sed -i 's/arbitro_1/arbitro_1_e/g' Transaction_e.v
	sed -i 's/arbitro_2/arbitro_2_e/g' Transaction_e.v
	sed -i 's/mux/mux_e/g' Transaction_e.v
	sed -i 's/demux/demux_e/g' Transaction_e.v
	sed -i 's/StateMachine/StateMachine_e/g' Transaction_e.v
	$(CC1) -o BancoPruebas BancoPruebas.v 
	$(CC1) -o Probador Probador.v
	vvp BancoPruebas
	$(CC2) Interconexion.vcd
