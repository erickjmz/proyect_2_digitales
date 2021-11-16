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

	contadores contadores_cond( /*AUTOINST*/
				   // Outputs
				   .valid		(valid),
				   .data_out		(data_out[4:0]),
				   // Inputs
				   .idx			(idx[2:0]),
				   .reset_L		(reset_L),
				   .clk			(clk),
				   .pop_0		(pop_0),
				   .pop_1		(pop_1),
				   .pop_2		(pop_2),
				   .pop_3		(pop_3),
				   .pop_4		(pop_4));

	contadores_synth contadores_Estructural( /*AUTOINST*/
						// Outputs
						.data_out	(data_out[4:0]),
						.valid		(valid),
						// Inputs
						.clk		(clk),
						.idx		(idx[2:0]),
						.pop_0		(pop_0),
						.pop_1		(pop_1),
						.pop_2		(pop_2),
						.pop_3		(pop_3),
						.pop_4		(pop_4),
						.reset_L	(reset_L));

	Probador Probador( /*AUTOINST*/
			  // Outputs
			  .idx			(idx[2:0]),
			  .reset_L		(reset_L),
			  .clk			(clk),
			  .pop_0		(pop_0),
			  .pop_1		(pop_1),
			  .pop_2		(pop_2),
			  .pop_3		(pop_3),
			  .pop_4		(pop_4),
			  // Inputs
			  .valid		(valid),
			  .data_out		(data_out[4:0]));

endmodule
