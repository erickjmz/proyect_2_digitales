`timescale 	1s				/ 100ps
`include "true_dpram_sclk.v"
`include "Probador.v"

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
