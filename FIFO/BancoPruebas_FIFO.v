`timescale 	1ns				/ 100ps
`include "FIFO.v"
`include "Probador_FIFO.v"
`include "cmos_cells.v"
`include "FIFO_estruct.v"


module BancoPruebas_FIFO; // Testbench

    wire empty_conduct, empty_estruct, almost_full_estruct, almost_full_conduct;	
    wire [9:0] data_out_conduct, data_out_estruct;	
    /*AUTOWIRE*/
    // Beginning of automatic wires (for undeclared instantiated-module outputs)
    wire		alm_empty;		// From conductual of FIFO.v, ...
    wire		alm_full;		// From estructural of FIFO_estruct.v
    wire		clk;			// From prob of Probador_FIFO.v
    wire [9:0]		data_in;		// From prob of Probador_FIFO.v
    wire		pop;			// From prob of Probador_FIFO.v
    wire		push;			// From prob of Probador_FIFO.v
    wire [3:0]		state;			// From prob of Probador_FIFO.v
    wire [2:0]		inf_Threshold;	// From prob of Probador_FIFO.v
    wire [2:0]		sup_Threshold;	// From prob of Probador_FIFO.v
    // End of automatics



    FIFO conductual (
            .data_out(data_out_conduct),
            .empty(empty_conduct),
            .alm_full(almost_full_conduct),
        /*AUTOINST*/
		     // Outputs
		     .alm_empty		(alm_empty),
		     // Inputs
		     .clk		(clk),
		     .push		(push),
		     .pop		(pop),
		     .sup_Threshold		(sup_Threshold[2:0]),
		     .inf_Threshold		(inf_Threshold[2:0]),
		     .state		(state[3:0]),
		     .data_in		(data_in[9:0]));

	Probador_FIFO prob (
            .data_out_conduct(data_out_conduct),
            .data_out_estruct(data_out_estruct),
            .empty_conduct(empty_conduct),
            .almost_full_conduct(almost_full_conduct),
            .empty_estruct(empty_estruct),
            .almost_full_estruct(almost_full_estruct),
        /*AUTOINST*/
			    // Outputs
			    .clk		(clk),
			    .state		(state[3:0]),
			    .push		(push),
			    .pop		(pop),
			    .data_in		(data_in[9:0]),
			    .sup_Threshold	(sup_Threshold[2:0]),
			    .inf_Threshold	(inf_Threshold[2:0]));

    FIFO_estruct estructural (
            .data_out(data_out_estruct),
            .empty(empty_estruct),
            .alm_full(almost_full_estruct),
        /*AUTOINST*/
			      // Outputs
			      .alm_empty	(alm_empty),
			      // Inputs
			      .clk		(clk),
			      .data_in		(data_in[9:0]),
			      .pop		(pop),
			      .push		(push),
			      .state		(state[3:0]),
			      .inf_Threshold		(inf_Threshold[2:0]),
			      .sup_Threshold		(sup_Threshold[2:0]));
    
endmodule
// Local Variable:
   // eval:(verilog-read-defines)
   // eval:(verilog-read-includes)
   // End:
