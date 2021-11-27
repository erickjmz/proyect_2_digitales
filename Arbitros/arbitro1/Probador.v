`timescale 1ns/1ns

module Probador(
          output reg clk,
          output reg almost_full0,
          output reg almost_full1,
          output reg almost_full2,
          output reg almost_full3,
          output reg empty0,
          output reg empty1,
          output reg empty2,
          output reg empty3,
          output reg [3:0] state,
          output reg [1:0] dest,
          output reg valid_0,
          output reg valid_1,
          output reg valid_2,
          output reg valid_3,
          input wire pop0,
          input wire pop1,
          input wire pop2,
          input wire pop3,
          input wire push0,
          input wire push1,
          input wire push2,
          input wire push3
);

initial clk=0;
always #2 clk=~clk;

initial begin
        $dumpfile("Arbitro_1.vcd");
        $dumpvars;
        empty0 = 0;
        empty1 = 0;
        empty2 = 0;
        empty3 = 0;
        dest = 0;
        almost_full0<=0;
        almost_full1<=0;
        almost_full2<=0;
        almost_full3<=0;
        state <= 4'b0001;
        @(posedge clk)
        @(posedge clk)
        state<=4'b0010;
        @(posedge clk)
        valid_0 <= 1;
       @(posedge clk)


        @(posedge clk)
        almost_full0<=0;
        almost_full1<=0;
        almost_full2<=0;
        almost_full3<=0;
        dest <= 1;
        valid_1 <= 1;


        @(posedge clk)

        @(posedge clk)
        almost_full0<=1;
        almost_full0<=0;
        almost_full0<=0;
        almost_full0<=0;
        dest = 2;
        valid_2 <= 1;

 //********************************************************
        @(posedge clk)

        @(posedge clk)
        almost_full0<=0;
        almost_full0<=0;
        almost_full0<=1;
        almost_full0<=0;
        dest = 3;
        valid_3 <= 1;


 //*************************************************
        @(posedge clk)

        @(posedge clk)
        almost_full0<=0;
        almost_full0<=0;
        almost_full0<=0;
        almost_full0<=1;

 //**************************************************
        @(posedge clk)

        @(posedge clk)
        almost_full0<=0;
        almost_full1<=0;
        almost_full2<=0;
        almost_full3<=0;
        @(posedge clk)

        @(posedge clk)
        almost_full0<=0;
        almost_full1<=0;
        almost_full2<=0;
        almost_full3<=0;
        @(posedge clk)

        @(posedge clk)
        almost_full0<=0;
        almost_full1<=0;
        almost_full2<=0;
        almost_full3<=0;

//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

        @(posedge clk)

        @(posedge clk)

        #25 $finish;

    end

endmodule
