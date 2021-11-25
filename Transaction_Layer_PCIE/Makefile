#Makefile
CC1=iverilog
CC2=gtkwave
CC3=yosys
OBjetivo1: dependencia1
	echo Se ejecutaron los comandos de iverilog y gtkwave con éxtio y se mostró la simulación de forma automática. 
dependencia1:
	$(CC1) -o BancoPruebas BancoPruebas.v 
	$(CC1) -o Probador Probador.v
	vvp BancoPruebas
	$(CC2) Interconexion.vcd
