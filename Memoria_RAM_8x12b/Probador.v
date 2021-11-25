module Probador(
	output reg [11:0] data_a,
	output reg [2:0] addr_wa, addr_ra,
	output reg we_a, re_a, clk,
	output reg [3:0] state,
	input [11:0] q_a
	);
	
	initial begin
		$dumpfile("Memoria_RAM.vcd");
		$dumpvars;      
		
		data_a <= 'b0;
		addr_wa <= 'b0;
		addr_ra <= 'b0;
		we_a <= 1;
		re_a <= 'b0;
		state <= 'b0;
	
        @(posedge clk);
		we_a <= 1;
		re_a <= 0;
		data_a <= 111111111111;

		@(posedge clk);
		addr_wa <= addr_wa+1;
		we_a <= 1;
		re_a <= 0;
		data_a <= 101010101010;
		
		@(posedge clk);
		addr_wa <= addr_wa+1;
		we_a <= 1;
		re_a <= 0;
		data_a <= 010101010101;


		@(posedge clk);
		addr_wa <= addr_wa+1;
		we_a <= 1;
		re_a <= 0;
		data_a <= 111111000000;

		@(posedge clk);
		re_a <= 1;
		we_a <= 0;
		
		@(posedge clk);
		addr_ra <= addr_ra+1;
		re_a <= 1;
		we_a <= 0;

		@(posedge clk);
		addr_ra <= addr_ra+1;
		re_a <= 1;
		we_a <= 0;

		@(posedge clk);
		addr_ra <= addr_ra+1;
		re_a <= 1;
		we_a <= 0;

		@(posedge clk);
		addr_wa <= addr_wa+1;
		we_a <= 1;
		re_a <= 0;
		data_a <= 000000000001;

		@(posedge clk);
		addr_wa <= addr_wa+1;
		we_a <= 1;
		re_a <= 0;
		data_a <= 000000000010;

		@(posedge clk);
		addr_wa <= addr_wa+1;
		we_a <= 1;
		re_a <= 0;
		data_a <= 000000000100;

		$finish;
	end
	
	// Reloj
	initial	clk	<= 0;			// Valor inicial al reloj, sino siempre será indeterminado
	always  #1 clk 	<= ~clk;		// Hace "toggle" cada 4 segundos

	
endmodule