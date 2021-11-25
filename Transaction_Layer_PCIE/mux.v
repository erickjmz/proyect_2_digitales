
module mux
(
	input wire reset_L,
	input wire clk,
	input wire [11:0] data_in0, data_in1, data_in2, data_in3,
	output  reg [11:0] data_out
);
	reg [3:0]hola;
	always @ (*)
	begin
		if (reset_L == 0) begin
			data_out <= 0;
		end else begin
			if (data_in0 != 0 && data_in0[11:10] == 0) begin
				data_out <= data_in0;
				hola = 1;
			end else
			if (data_in1 != 0 && data_in1[11:10] == 1) begin
				data_out <= data_in1;
				hola = 2;

			end else
			if (data_in2 != 0 && data_in2[11:10] == 2) begin
				data_out <= data_in2;
				hola = 3;

			end else
			if (data_in3 != 0 && data_in3[11:10] == 3) begin
				data_out <= data_in3;
				hola = 4;

			end
		end
	end
endmodule