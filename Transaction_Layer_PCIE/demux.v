// USAR CLASS COMO data_in[11:10] desde afuera
module demux
(
	input wire reset_L,
	input wire clk,
	input wire [11:0] data_in,
	input wire [1:0] class,
	output reg [11:0] data_out0, data_out1, data_out2, data_out3,
	output reg valid_0, valid_1, valid_2, valid_3
);

	always @ (*)
	begin
		valid_0 = 0;
		valid_1 = 0;
		valid_2 = 0;
		valid_3 = 0;
		data_out0 = 0;
		data_out1 = 0;
		data_out2 = 0;
		data_out3 = 0;
		if (reset_L == 0) begin
			valid_0 = 0;
			valid_1 = 0;
			valid_2 = 0;
			valid_3 = 0;
			data_out0 = 0;
			data_out1 = 0;
			data_out2 = 0;
			data_out3 = 0;
		end else begin
			if (class == 2'b00) begin
				data_out0 = data_in;
				data_out1 = 0;
				data_out2 = 0;
				data_out3 = 0;
				valid_0 = 1;
				valid_1 = 0;
				valid_2 = 0;
				valid_3 = 0;
			end
			if (class == 2'b01) begin
				data_out1 = data_in;
				data_out0 = 0;
				data_out2 = 0;
				data_out3 = 0;
				valid_1 = 1;
				valid_0 = 0;
				valid_2 = 0;
				valid_3 = 0;
			end
			if (class == 2'b10) begin
				data_out2 = data_in;
				data_out1 = 0;
				data_out0 = 0;
				data_out3 = 0;
				valid_2 = 1;
				valid_0 = 0;
				valid_1 = 0;
				valid_3 = 0;
			end
			if (class == 2'b11) begin
				data_out3 = data_in;
				data_out1 = 0;
				data_out2 = 0;
				data_out0 = 0;
				valid_3 = 1;
				valid_0 = 0;
				valid_1 = 0;
				valid_2 = 0;
			end
		end
	end
endmodule
