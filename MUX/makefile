#Makefile
CC1=iverilog
CC2=gtkwave
CC3=yosys
OBjetivo1: dependencia1
	echo Se ejecutaron los comandos de iverilog y gtkwave con éxtio y se mostró la simulación de forma automática.
dependencia1:
	$(CC3) -s Script_Yosys
	sed -i 's/mux/mux_synth/g' mux_synth.v
	$(CC1) -o Banco_pruebas Banco_pruebas.v
	$(CC1) -o Probador Probador.v
	vvp Banco_pruebas
	$(CC2) mux.vcd mux.gtkw
