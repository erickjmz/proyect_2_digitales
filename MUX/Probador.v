module Probador(
	output reg reset_L,
	output reg clk,
	output reg [11:0] data_in0, data_in1, data_in2, data_in3,
	input wire [11:0] data_out
	);

	initial begin
		$dumpfile("mux.vcd");
		$dumpvars;

		reset_L = 0;
		data_in0 = 0;
		data_in1 = 0;
		data_in2 = 0;
		data_in3 = 0;

		@(posedge clk);
		reset_L = 1;

		@(posedge clk);
		data_in1 = 0;
		data_in2 = 0;
		data_in3 = 0;
		data_in0 = 12'b000000000001;

		@(posedge clk);
		data_in0 = 0;
		data_in2 = 0;
		data_in3 = 0;
		data_in1 = 12'b010000000010;

		@(posedge clk);
		data_in1 = 0;
		data_in0 = 0;
		data_in3 = 0;
		data_in2 = 12'b100000000011;

		@(posedge clk);
		data_in1 = 0;
		data_in2 = 0;
		data_in0 = 0;
		data_in3 = 12'b110000000100;

		@(posedge clk);
		data_in1 = 0;
		data_in2 = 0;
		data_in3 = 0;
		data_in0 = 1;

		@(posedge clk);
		@(posedge clk);

		$finish;
	end

	// Reloj
	initial	clk	<= 0;			// Valor inicial al reloj, sino siempre será indeterminado
	always  #1 clk 	<= ~clk;		// Hace "toggle" cada 4 segundos


endmodule
