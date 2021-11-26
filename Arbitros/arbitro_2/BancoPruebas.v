`timescale 	1ns				/ 100ps
`include "Probador.v"
`include "cmos_cells.v"
`include "arbitro_2.v"
`include "arbitro_2_estruct.v"


module BancoPruebas; // Testbench

    wire almost_full0,almost_full1,almost_full2,almost_full3;
    wire empty0_orange,empty1_orange,empty2_orange,empty3_orange, empty0_purple, empty1_purple ,empty2_purple,empty3_purple;
    wire [7:0] empties, empties_estruct;
    wire push;
    wire pop0,pop1,pop2,pop3;
    wire push_estruct;
    wire pop0_estruct,pop1_estruct,pop2_estruct,pop3_estruct;
    /*AUTOWIRE*/

    wire		clk;			// From prob of Probador_Contador.v
    wire [3:0] state;
    // End of automatics



    ///////////////////////////////// arbitro_2 /////////////////////////
arbitro_2 arbitro_2_conductual (
          .almost_full0(almost_full0),
          .almost_full1(almost_full1),
          .almost_full2(almost_full2),
          .almost_full3(almost_full3),
          .empty(empty),
          .pop(pop),
          .push0(push0),
          .push1(push1),
          .push2(push2),
          .push3(push3),
          /*AUTOINST*/
			    // Inputs
			    .clk		(clk),
			    .state		(state[3:0]));


arbitro_2_estruct arbitro_2_estructural (
          .almost_full0(almost_full0),
          .almost_full1(almost_full1),
          .almost_full2(almost_full2),
          .almost_full3(almost_full3),
          .empty(empty),
          .pop(pop),
          .push0(push0),
          .push1(push1),
          .push2(push2),
          .push3(push3),
          /*AUTOINST*/
			    // Inputs
			    .clk		(clk),
			    .state		(state[3:0]));


Probador Probador(
          .almost_full0(almost_full0),
          .almost_full1(almost_full1),
          .almost_full2(almost_full2),
          .almost_full3(almost_full3),
          .empty(empty),
          .pop(pop),
          .push0(push0),
          .push1(push1),
          .push2(push2),
          .push3(push3),
          /*AUTOINST*/
			    // Inputs
			    .clk		(clk),
			    .state		(state[3:0]));







endmodule
// Local Variable:
   // eval:(verilog-read-defines)
   // eval:(verilog-read-includes)
   // End:
