`timescale 	1ns				/ 100ps
`include "Transaction_c.v"
`include "Probador.v"
//`include "Transaction_e.v"


module BancoPruebas;
    wire [11:0]		data_in0, data_in1, data_in2, data_in3, data_out0_c, data_out1_c, data_out2_c, data_out3_c, data_out0_e, data_out1_e, data_out2_e, data_out3_e;
	wire [4:0]		contador_c, contador_e;	
    wire [2:0]		Umbral_alto, Umbral_bajo, idx;
	wire [1:0]  	class;	
	wire			clk, idle, init, req, reset, valid_c, valid_e, valid_0, valid_1, valid_2, valid_3, valid_4, valid_5, valid_6, valid_7;					
    wire			pop_in0, pop_in1, pop_in2, pop_in3, push_in0, push_in1, push_in2, push_in3;			

    Transaction_c TL_conductual (/*AUTOINST*/
		// Outputs
			.data_out0	(data_out0_c),
			.data_out1	(data_out1_c),
			.data_out2	(data_out2_c),
			.data_out3	(data_out3_c),
			.contador	(contador_c),
			.valid		(valid_c),
			.valid_0		(valid_0),
			.valid_1		(valid_1),
			.valid_2		(valid_2),
			.valid_3		(valid_3),
		// Inputs
			.class 		(class),
			.clk		(clk),
			.req		(req),
			.idx		(idx[2:0]),
			.idle	(idle),
			.data_in0	(data_in0[11:0]),
			.data_in1	(data_in1[11:0]),
			.data_in2	(data_in2[11:0]),
			.data_in3	(data_in3[11:0]),
			.reset		(reset),
			.init		(init),
			.Umbral_bajo	(Umbral_bajo[2:0]),
			.Umbral_alto	(Umbral_alto[2:0]),
			.push_in0	(push_in0),
			.push_in1	(push_in1),
			.push_in2	(push_in2),
			.push_in3	(push_in3),
			.pop_in0		(pop_in0),
			.pop_in1		(pop_in1),
			.pop_in2		(pop_in2),
			.pop_in3		(pop_in3)
	);


	Probador testbench (/*AUTOINST*/
		// Outputs
			.clk		(clk),
			.req		(req),
			.idle 		(idle),
			.idx		(idx[2:0]),
			.class		(class),
			.data_in0		(data_in0[11:0]),
			.data_in1		(data_in1[11:0]),
			.data_in2		(data_in2[11:0]),
			.data_in3		(data_in3[11:0]),
			.reset		(reset),
			.init		(init),
			.Umbral_bajo	(Umbral_bajo[2:0]),
			.Umbral_alto	(Umbral_alto[2:0]),
			.push_in0		(push_in0),
			.push_in1		(push_in1),
			.push_in2		(push_in2),
			.push_in3		(push_in3),
			.pop_in0		(pop_in0),
			.pop_in1		(pop_in1),
			.pop_in2		(pop_in2),
			.pop_in3		(pop_in3),
		// Inputs
			.data_out0_c	(data_out0_c[11:0]),
			.data_out1_c	(data_out1_c[11:0]),
			.data_out2_c	(data_out2_c[11:0]),
			.data_out3_c	(data_out3_c[11:0]),
			.data_out0_e	(data_out0_e[11:0]),
			.data_out1_e	(data_out1_e[11:0]),
			.data_out2_e	(data_out2_e[11:0]),
			.data_out3_e	(data_out3_e[11:0]),
			.contador_c		(contador_c[4:0]),
			.contador_e		(contador_e[4:0]),
			.valid_c		(valid_c),
			.valid_e		(valid_e),
			.valid_0		(valid_0),
			.valid_1		(valid_1),
			.valid_2		(valid_2),
			.valid_3		(valid_3),
			.valid_4		(valid_4),
			.valid_5		(valid_5),
			.valid_6		(valid_6),
			.valid_7		(valid_7)
	);

    //TransactionLayerPCIe_e estructural (/*AUTOINST*/

	//);
    
endmodule

