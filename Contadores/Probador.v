module Probador(
	output reg [2:0] idx,
	output reg reset_L,
	output reg clk,
	output reg pop_0, pop_1, pop_2, pop_3, pop_4, idle,
	input wire  valid,
	input wire [4:0] data_out
	);

	initial begin
		$dumpfile("contadores.vcd");
		$dumpvars;

		reset_L = 0;
		pop_0 = 0;
		pop_1 = 0;
		pop_2 = 0;
		pop_3 = 0;
		pop_4 = 0;
		idle = 0;
		idx = 0;

		@(posedge clk);


		@(posedge clk);
		reset_L = 1;

		@(posedge clk);

    @(posedge clk);
		pop_2 <= 1;
		pop_0 <= 1;

		@(posedge clk);

		@(posedge clk);
		pop_0 <= 0;
		idle <= 1;

		@(posedge clk);
		idx <= 0;

		@(posedge clk);
		pop_1 <= 1;

		@(posedge clk);
		pop_1 <= 0;
		pop_2 <= 0;
		pop_3 <= 1;
		idle <= 0;

		@(posedge clk);

		@(posedge clk);
		idle <= 1;

		@(posedge clk);
		idx <= 1;

		@(posedge clk);
		idx <= 2;
		pop_3 <= 0;

		@(posedge clk);
		pop_4 <= 1;
		idx <= 3;

		@(posedge clk);
		pop_4 <= 0;

		@(posedge clk);
		idx <= 4;

		@(posedge clk);

		@(posedge clk);

		@(posedge clk);

		@(posedge clk);

		$finish;
	end

	// Reloj
	initial	clk	<= 0;			// Valor inicial al reloj, sino siempre será indeterminado
	always  #1 clk 	<= ~clk;		// Hace "toggle" cada 4 segundos


endmodule
