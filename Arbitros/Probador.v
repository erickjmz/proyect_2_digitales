`timescale 1ns/1ns

module Probador(
    //FIFOS
    output reg clk,
    output reg [3:0] state,
    output reg empty0_orange, empty1_orange, empty2_orange, empty3_orange, empty0_purple, empty1_purple, empty2_purple, empty3_purple, 
    output reg almost_full0, almost_full1,almost_full2, almost_full3,
    input [7:0] empties, empties_estruct,
    input push, push_estruct,
    input pop0,pop1,pop2,pop3
);

initial clk=0;
always #2 clk=~clk;

initial begin
        $dumpfile("Arbitro.vcd");
        $dumpvars;
        empty0_orange<=0;
        empty1_orange<=0;
        empty2_orange<=0;
        empty3_orange<=0;
        empty0_purple<=0;
        empty1_purple<=0;
        empty2_purple<=0;
        empty3_purple<=0;
        almost_full0<=0;
        almost_full1<=0;
        almost_full2<=0;
        almost_full3<=0;
        state <= 4'b0001;
        @(posedge clk)
        @(posedge clk)
        state<=4'b0010;
        @(posedge clk)
        
       @(posedge clk)
        empty0_orange<=1;
        empty1_orange<=0;
        empty2_orange<=0;
        empty3_orange<=0;

        @(posedge clk)
        almost_full0<=0;
        almost_full1<=1;
        almost_full2<=0;
        almost_full3<=0;
 
        @(posedge clk)
        empty0_orange<=1;
        empty1_orange<=1;
        empty2_orange<=0;
        empty3_orange<=0;
        
        @(posedge clk)
        almost_full0<=1;
        almost_full0<=0;
        almost_full0<=0;
        almost_full0<=0;

 //********************************************************
        @(posedge clk)
        empty0_orange<=1;
        empty1_orange<=1;
        empty2_orange<=1;
        empty3_orange<=0;
        
        @(posedge clk)
        almost_full0<=0;
        almost_full0<=0;
        almost_full0<=1;
        almost_full0<=0;

 //*************************************************
        @(posedge clk)
        empty0_orange<=1;
        empty1_orange<=1;
        empty2_orange<=1;
        empty3_orange<=1;
        
        @(posedge clk)
        almost_full0<=0;
        almost_full0<=0;
        almost_full0<=0;
        almost_full0<=1;

 //**************************************************
        @(posedge clk)
        empty0_orange<=0;
        empty1_orange<=0;
        empty2_orange<=0;
        empty3_orange<=0;
        
        @(posedge clk)
        almost_full0<=0;
        almost_full1<=0;
        almost_full2<=0;
        almost_full3<=0;
        @(posedge clk)
        empty0_orange<=0;
        empty1_orange<=0;
        empty2_orange<=0;
        empty3_orange<=0;
        
        @(posedge clk)
        almost_full0<=0;
        almost_full1<=0;
        almost_full2<=0;
        almost_full3<=0;
        @(posedge clk)
        empty0_orange<=0;
        empty1_orange<=0;
        empty2_orange<=0;
        empty3_orange<=0;
        
        @(posedge clk)
        almost_full0<=0;
        almost_full1<=0;
        almost_full2<=0;
        almost_full3<=0;

//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

        @(posedge clk)
        empty0_orange<=1;
        empty1_orange<=0;
        empty2_orange<=1;
        empty3_orange<=0;

        @(posedge clk)
        empty0_orange<=1;
        empty1_orange<=1;
        empty2_orange<=0;
        empty3_orange<=1;

        #25 $finish;

    end

endmodule
