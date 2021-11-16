// Verilog HDL True Dual-Port RAM with Single Clock by Intel
// https://www.intel.com/content/www/us/en/support/programmable/support-resources/design-examples/horizontal/ver-true-dual-port-ram-sclk.html
// Utilizado y modificado con fines educativos

module contadores
(
	input wire [2:0] idx,
	input wire reset_L,
	input wire clk,
	input wire pop_0, pop_1, pop_2, pop_3, pop_4,
	output reg  valid,
	output reg [4:0] data_out
);

	reg [4:0] data_0, data_1, data_2, data_3, data_4;

	always @ (posedge clk)
	begin
		if (reset_L == 0) begin
			data_out <= 0;
			data_0 = 0;
			data_1 = 0;
			data_2 = 0;
			data_3 = 0;
			data_4 = 0;
			valid = 0;
		end else begin
			valid = 1;

			if (pop_0 == 1) begin
				data_0 = data_0 + 1;
			end else if (pop_1 == 1) begin
				data_1 = data_1 + 1;
			end else if (pop_2 == 1) begin
				data_2 = data_2 + 1;
			end else if (pop_3 == 1) begin
				data_3 = data_3 + 1;
			end else if (pop_4 == 1) begin
				data_4 = data_4 + 1;
			end

			if (idx == 0 & data_0 != 0) begin
				data_out <= data_0;
			end else if (idx == 3'b001 & data_1 != 0 ) begin
				data_out <= data_1;
			end else if (idx == 3'b010 & data_2 != 0) begin
				data_out <= data_2;
			end else if (idx == 3'b011 & data_3 != 0) begin
				data_out <= data_3;
			end else if (idx == 3'b100 & data_4 != 0) begin
				data_out <= data_4;
			end
		end
	end

endmodule
