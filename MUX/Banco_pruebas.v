`timescale 	1s				/ 100ps
`include "mux.v"
`include "Probador.v"
`include "mux_synth.v"
`include "cmos_cells.v"

module Banco_pruebas;
	wire reset_L;
	wire clk;
	wire [11:0] data_in0, data_in1, data_in2, data_in3;
	wire [11:0] data_out;

	mux mux_cond(
						.reset_L( reset_L),
						.clk( clk),
						.data_in0( data_in0),
						.data_in1( data_in1),
						.data_in2( data_in2),
						.data_in3( data_in3),
						.data_out( data_out)
					 );

	mux_synth mux_Estructural(
						.reset_L( reset_L),
						.clk( clk),
						.data_in0( data_in0),
						.data_in1( data_in1),
						.data_in2( data_in2),
						.data_in3( data_in3),
						.data_out( data_out)
						);

	Probador Probador(
						.reset_L( reset_L),
						.clk( clk),
						.data_in0( data_in0),
						.data_in1( data_in1),
						.data_in2( data_in2),
						.data_in3( data_in3),
						.data_out( data_out)
						);

endmodule
