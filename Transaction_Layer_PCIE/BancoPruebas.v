`timescale 	1ns				/ 100ps
`include "Transaction_c.v"
`include "Transaction_e.v"
`include "Probador.v"
`include "cmos_cells.v"

module BancoPruebas;
    wire [11:0]		data_in0, data_in1, data_in2, data_in3, data_out0_c, data_out1_c, data_out2_c, data_out3_c, data_out0_e, data_out1_e, data_out2_e, data_out3_e;
	wire [4:0]		contador_c, contador_e;	
    wire [2:0]		Umbral_alto, Umbral_bajo, idx;
	wire [1:0]  	class;	
	wire			clk, idle, init, req, reset, valid_c, valid_e, valid_0, valid_1, valid_2, valid_3, valid_4, valid_5, valid_6, valid_7;					
    wire			pop_in0, pop_in1, pop_in2, pop_in3, push_in0, push_in1, push_in2, push_in3;			

    Transaction_c TL_conductual (/*AUTOINST*/
				 // Inputs
				 .clk			(clk),
				 .req			(req),
				 .idle			(idle));


	Probador testbench (/*AUTOINST*/
			    // Outputs
			    .clk		(clk),
			    .req		(req),
			    .idle		(idle));

    Transaction_e TL_estructural (/*AUTOINST*/
				  // Outputs
				  .contador		(contador_e[4:0]),
				  .data_out0		(data_out0_e[11:0]),
				  .data_out1		(data_out1_e[11:0]),
				  .data_out2		(data_out2_e[11:0]),
				  .data_out3		(data_out3_e[11:0]),
				  .valid		(valid),
				  .valid_0		(valid_0),
				  .valid_1		(valid_1),
				  .valid_2		(valid_2),
				  .valid_3		(valid_3),
				  .valid_4		(valid_4),
				  .valid_5		(valid_5),
				  .valid_6		(valid_6),
				  .valid_7		(valid_7),
				  // Inputs
				  .Umbral_alto		(Umbral_alto[2:0]),
				  .Umbral_bajo		(Umbral_bajo[2:0]),
				  .\class 		(\class [1:0]),
				  .clk			(clk),
				  .data_in0		(data_in0[11:0]),
				  .data_in1		(data_in1[11:0]),
				  .data_in2		(data_in2[11:0]),
				  .data_in3		(data_in3[11:0]),
				  .idle			(idle),
				  .idx			(idx[2:0]),
				  .init			(init),
				  .pop_in0		(pop_in0),
				  .pop_in1		(pop_in1),
				  .pop_in2		(pop_in2),
				  .pop_in3		(pop_in3),
				  .pop_in4		(pop_in4),
				  .push_in0		(push_in0),
				  .push_in1		(push_in1),
				  .push_in2		(push_in2),
				  .push_in3		(push_in3),
				  .req			(req),
				  .reset		(reset));
    
endmodule

