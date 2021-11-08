#Makefile
CC1=iverilog
CC2=gtkwave
CC3=yosys
OBjetivo1: dependencia1
	echo Se ejecutaron los comandos de iverilog y gtkwave con éxtio y se mostró la simulación de forma automática. 
dependencia1:
	$(CC3) -s Script_Yosys
	sed -i 's/true_dpram_sclk/Memoria_synth/g' Memoria_synth.v
	$(CC1) -o Banco_pruebas Banco_pruebas.v 
	$(CC1) -o Probador Probador.v
	vvp Banco_pruebas
	$(CC2) Memoria_RAM.vcd Memoria_RAM.gtkw


	