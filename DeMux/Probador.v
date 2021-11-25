module Probador(
	output  reg reset_L,
	output  reg clk,
	output  reg [11:0] data_in,
	output  reg [1:0] class,
	input wire [11:0] data_out0, data_out1, data_out2, data_out3,
	input wire valid_0, valid_1, valid_2, valid_3
	);

	initial begin
		$dumpfile("demux.vcd");
		$dumpvars;

		reset_L = 0;
		class = 0;
		data_in = 0;

		@(posedge clk);
		reset_L = 1;

		@(posedge clk);
		data_in = 1;
		class = 0;

		@(posedge clk);
		data_in = 2;
		class = 1;

		@(posedge clk);
		data_in = 3;
		class = 2;

		@(posedge clk);
		data_in = 4;
		class = 3;

		@(posedge clk);
		@(posedge clk);
		data_in = 1;
		class	= 0;
		@(posedge clk);
		@(posedge clk);

		$finish;
	end

	// Reloj
	initial	clk	<= 0;			// Valor inicial al reloj, sino siempre será indeterminado
	always  #1 clk 	<= ~clk;		// Hace "toggle" cada 4 segundos


endmodule
