`timescale 	1s				/ 100ps
`include "contadores.v"
`include "Probador.v"
`include "contadores_synth.v"
`include "cmos_cells.v"

module Banco_pruebas;
	wire [2:0] idx;
	wire reset_L;
	wire clk;
	wire pop_0, pop_1, pop_2, pop_3, pop_4;
	wire  valid;
	wire [4:0] data_out;

	contadores contadores_cond(
		.idx( idx[2:0]),
		.reset_L( reset_L),
		.clk( clk),
		.pop_0( pop_0),
		.pop_1( pop_1),
		.pop_2( pop_2),
		.pop_3( pop_3),
		.pop_4( pop_4),
		.valid( valid),
		.data_out( data_out[4:0]) );

	contadores_synth contadores_Estructural(
	.idx( idx[2:0]),
	.reset_L( reset_L),
	.clk( clk),
	.pop_0( pop_0),
	.pop_1( pop_1),
	.pop_2( pop_2),
	.pop_3( pop_3),
	.pop_4( pop_4),
	.valid( valid),
	.data_out( data_out[4:0]));

	Probador Probador(
	.idx( idx[2:0]),
	.reset_L( reset_L),
	.clk( clk),
	.pop_0( pop_0),
	.pop_1( pop_1),
	.pop_2( pop_2),
	.pop_3( pop_3),
	.pop_4( pop_4),
	.valid( valid),
	.data_out( data_out[4:0]) );

endmodule
