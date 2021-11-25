`timescale 	1s				/ 100ps
`include "demux.v"
`include "Probador.v"
`include "demux_synth.v"
`include "cmos_cells.v"

module Banco_pruebas;
	wire [1:0] class;
	wire reset_L;
	wire clk;
	wire push_0, push_1, push_2, push_3;
	wire [11:0] data_out0, data_out1, data_out2, data_out3;
	wire [11:0] data_in;

	demux demux_cond(
					 .reset_L	( reset_L),
					 .clk	( clk),
					 .data_in	( data_in[11:0]),
					 .class	( class[1:0]),
	 			 	 .data_out0	( data_out0[11:0]),
					 .data_out1	( data_out1[11:0]),
					 .data_out2	( data_out2[11:0]),
					 .data_out3	( data_out3[11:0]),
	 		 		 .push_0	( push_0),
					 .push_1	( push_1),
					 .push_2	( push_2),
					 .push_3	( push_3));

	demux_synth demux_Estructural(
					 .reset_L	( reset_L),
					 .clk	( clk),
					 .data_in	( data_in[11:0]),
					 .class	( class[1:0]),
					 .data_out0	( data_out0[11:0]),
					 .data_out1	( data_out1[11:0]),
					 .data_out2	( data_out2[11:0]),
					 .data_out3	( data_out3[11:0]),
					 .push_0	( push_0),
					 .push_1	( push_1),
					 .push_2	( push_2),
					 .push_3	( push_3));

	Probador Probador(
						.reset_L	( reset_L),
						.clk	( clk),
						.data_in	( data_in[11:0]),
						.class	( class[1:0]),
						.data_out0	( data_out0[11:0]),
						.data_out1	( data_out1[11:0]),
						.data_out2	( data_out2[11:0]),
						.data_out3	( data_out3[11:0]),
						.push_0	( push_0),
						.push_1	( push_1),
						.push_2	( push_2),
						.push_3	( push_3));

endmodule
