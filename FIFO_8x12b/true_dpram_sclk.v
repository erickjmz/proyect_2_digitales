// Verilog HDL True Dual-Port RAM with Single Clock by Intel
// https://www.intel.com/content/www/us/en/support/programmable/support-resources/design-examples/horizontal/ver-true-dual-port-ram-sclk.html
// Utilizado y modificado con fines educativos

module true_dpram_sclk
(
	input [11:0] data_a,
	input [2:0] addr_wa, addr_ra,
	input we_a, re_a, clk,
	input [3:0] state,
	output reg [11:0] q_a
);
	// Declare the RAM variable
	reg [11:0] ram[7:0];
	
	always @ (posedge clk)
	begin
		if (we_a) 
			begin
				ram[addr_wa] <= data_a;
			end
		if (re_a) 
			begin
				q_a <= ram[addr_ra];
			end
		else
			begin
				q_a <= 10'b0;
			end
	end

endmodule
