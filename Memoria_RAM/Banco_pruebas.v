`timescale 	1s				/ 100ps
`include "true_dpram_sclk.v"
`include "Probador.v"
`include "Memoria_synth.v"
`include "cmos_cells.v"

module Banco_pruebas;
	wire [9:0] data_a, q_a;
    wire [2:0] addr_wa, addr_ra;
	wire we_a, re_a, clk;
	wire [3:0] state;

	true_dpram_sclk Memoria_RAM_Conductual( /*AUTOINST*/
					       // Outputs
					       .q_a		(q_a[9:0]),
					       // Inputs
					       .data_a		(data_a[9:0]),
					       .addr_wa		(addr_wa[2:0]),
					       .addr_ra		(addr_ra[2:0]),
					       .we_a		(we_a),
					       .re_a		(re_a),
					       .clk		(clk),
					       .state		(state[3:0]));

	Memoria_synth Memoria_RAM_Estructural( /*AUTOINST*/
					     // Outputs
					     .q_a		(q_a[9:0]),
					     // Inputs
					     .addr_ra		(addr_ra[2:0]),
					     .addr_wa		(addr_wa[2:0]),
					     .clk		(clk),
					     .data_a		(data_a[9:0]),
					     .re_a		(re_a),
					     .state		(state[3:0]),
					     .we_a		(we_a));
						     
	Probador Probador( /*AUTOINST*/
			  // Outputs
			  .data_a		(data_a[9:0]),
			  .addr_wa		(addr_wa[2:0]),
			  .addr_ra		(addr_ra[2:0]),
			  .we_a			(we_a),
			  .re_a			(re_a),
			  .clk			(clk),
			  .state		(state[3:0]),
			  // Inputs
			  .q_a			(q_a[9:0]));

endmodule
