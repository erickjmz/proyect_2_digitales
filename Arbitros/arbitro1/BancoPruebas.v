`timescale 	1ns				/ 100ps
`include "Probador.v"
`include "cmos_cells.v"
`include "arbitro_1.v"
`include "arbitro_1_estruct.v"


module BancoPruebas; // Testbench

    wire almost_full0,almost_full1,almost_full2,almost_full3;
    wire empty0, empty1, empty2, empty3;
    wire push;
    wire pop0,pop1,pop2,pop3;
    wire push0,push1,push2,push3;
    wire push_estruct;
    wire [1:0] dest;
    wire valid_0, valid_1, valid_2, valid_3;
    /*AUTOWIRE*/

    wire		clk;			// From prob of Probador_Contador.v
    wire [3:0] state;
    // End of automatics



    ///////////////////////////////// arbitro_1 /////////////////////////
arbitro_1 arbitro_1_conductual (
          .almost_full0(almost_full0),
          .almost_full1(almost_full1),
          .almost_full2(almost_full2),
          .almost_full3(almost_full3),
          .empty0(empty0),
          .empty1(empty1),
          .empty2(empty2),
          .empty3(empty3),
          .valid_0(valid_0),
          .valid_1(valid_1),
          .valid_2(valid_2),
          .valid_3(valid_3),
          .pop0(pop0),
          .pop1(pop1),
          .pop2(pop2),
          .pop3(pop3),
          .dest(dest[1:0]),
          .push0(push0),
          .push1(push1),
          .push2(push2),
          .push3(push3),
          /*AUTOINST*/
			    // Inputs
			    .clk		(clk),
			    .state		(state[3:0]));


arbitro_1_estruct arbitro_1_estructural (
          .almost_full0(almost_full0),
          .almost_full1(almost_full1),
          .almost_full2(almost_full2),
          .almost_full3(almost_full3),
          .empty0(empty0),
          .empty1(empty1),
          .empty2(empty2),
          .empty3(empty3),
          .valid_0(valid_0),
          .valid_1(valid_1),
          .valid_2(valid_2),
          .valid_3(valid_3),
          .pop0(pop0),
          .pop1(pop1),
          .pop2(pop2),
          .pop3(pop3),
          .dest(dest[1:0]),
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
          .empty0(empty0),
          .empty1(empty1),
          .empty2(empty2),
          .empty3(empty3),
          .valid_0(valid_0),
          .valid_1(valid_1),
          .valid_2(valid_2),
          .valid_3(valid_3),
          .pop0(pop0),
          .pop1(pop1),
          .pop2(pop2),
          .pop3(pop3),
          .dest(dest[1:0]),
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
