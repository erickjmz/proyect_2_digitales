`timescale 1ns/1ns

module Probador(
        output reg clk,
        output reg almost_full0,
        output reg almost_full1,
        output reg almost_full2,
        output reg almost_full3,
        output reg empty,
        output reg [3:0] state,
        input wire pop,
        input wire push0,
        input wire push1,
        input wire push2,
        input wire push3
);

initial clk=0;
always #2 clk=~clk;

initial begin
        $dumpfile("Arbitro_2.vcd");
        $dumpvars;
        empty = 0;
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
        empty<=1;


        @(posedge clk)
        almost_full0<=0;
        almost_full1<=1;
        almost_full2<=0;
        almost_full3<=0;

        @(posedge clk)
        empty<=1;

        @(posedge clk)
        almost_full0<=1;
        almost_full0<=0;
        almost_full0<=0;
        almost_full0<=0;

 //********************************************************
        @(posedge clk)
        empty<=1;

        @(posedge clk)
        almost_full0<=0;
        almost_full0<=0;
        almost_full0<=1;
        almost_full0<=0;

 //*************************************************
        @(posedge clk)
        empty=1;

        @(posedge clk)
        almost_full0<=0;
        almost_full0<=0;
        almost_full0<=0;
        almost_full0<=1;

 //**************************************************
        @(posedge clk)
        empty<=0;

        @(posedge clk)
        almost_full0<=0;
        almost_full1<=0;
        almost_full2<=0;
        almost_full3<=0;
        @(posedge clk)
        empty<=0;

        @(posedge clk)
        almost_full0<=0;
        almost_full1<=0;
        almost_full2<=0;
        almost_full3<=0;
        @(posedge clk)
        empty<=0;

        @(posedge clk)
        almost_full0<=0;
        almost_full1<=0;
        almost_full2<=0;
        almost_full3<=0;

//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

        @(posedge clk)
        empty<=1;

        @(posedge clk)
        empty<=1;

        #25 $finish;

    end

endmodule
