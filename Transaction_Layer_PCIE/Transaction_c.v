`include "FIFO.v"
`include "contadores.v"
`include "arbitro.v"
`include "mux.v"
`include "demux.v"
`include "StateMachine.v"

module Transaction_c(
    input clk,
    input req,
	input idle,
	input [1:0] class,
    input [2:0] idx,
    input [11:0] data_in0, data_in1, data_in2, data_in3,
    input reset, init,
    input [2:0] Umbral_bajo, Umbral_alto,
    input push_in0, push_in1, push_in2, push_in3,
    input pop_in0, pop_in1, pop_in2, pop_in3, pop_in4,
    output [11:0] data_out0, data_out1, data_out2, data_out3,
    output [4:0] contador,
    output valid, valid_0, valid_1, valid_2, valid_3);

wire pop_Ar0, pop_Ar1, pop_Ar2, pop_Ar3; 
wire push_Ar0, push_Ar1, push_Ar2, push_Ar3;

wire almost_full0, almost_full1, almost_full2, almost_full3;
wire empty0, empty1, empty2, empty3, empty4, empty5, empty6, empty7;

wire [11:0] inFIFO_out0, inFIFO_out1, inFIFO_out2, inFIFO_out3;
wire [11:0] outFIFO_in0, outFIFO_in1, outFIFO_in2, outFIFO_in3;

wire			almost_empty;		
wire			almost_full;		
wire [9:0]		empties;		
wire			push;			
wire [3:0]		state;			
wire [2:0]		umbral_inferior;	
wire [2:0]		umbral_superior;	



//------------------------------------- FIFOS de entrada -------------------------------//
FIFO FIFO_in0( 
    .push				(push_in0),
    .pop				(pop_Ar0),
    .data_in			(data_in0),
    .data_out			(outFIFO_in0),
    .empty				(empty0),
    /*AUTOINST*/
	// Outputs
	.alm_full			(almost_full),
	.alm_empty			(almost_empty),
	// Inputs
	.clk				(clk),
	.state				(state[3:0]),
	.um_sup				(umbral_superior[2:0]),
	.um_inf				(umbral_inferior[2:0])
);

FIFO FIFO_in1( 
    .push				(push_in1),
    .pop				(pop_Ar1),
    .data_in			(data_in1),
    .data_out			(outFIFO_in1),
    .empty				(empty1),
    /*AUTOINST*/
	// Outputs
	.alm_full			(almost_full),
	.alm_empty			(almost_empty),
	// Inputs
	.clk				(clk),
	.state				(state[3:0]),
	.um_sup				(umbral_superior[2:0]),
	.um_inf				(umbral_inferior[2:0])
);

FIFO FIFO_in2( 
    .push				(push_in2),
    .pop				(pop_Ar2),
    .data_in			(data_in2),
    .data_out			(outFIFO_in2),
    .empty				(empty2),
    /*AUTOINST*/
	// Outputs
	.alm_full			(almost_full),
	.alm_empty			(almost_empty),
	// Inputs
	.clk				(clk),
	.state				(state[3:0]),
	.um_sup				(umbral_superior[2:0]),
	.um_inf				(umbral_inferior[2:0])
);

FIFO FIFO_in3( 
    .push				(push_in3),
    .pop				(pop_Ar3),
    .data_in			(data_in3),
    .data_out			(outFIFO_in3),
    .empty				(empty3),
    /*AUTOINST*/
	// Outputs
	.alm_full			(almost_full),
	.alm_empty			(almost_empty),
	// Inputs
	.clk				(clk),
	.state				(state[3:0]),
	.um_sup				(umbral_superior[2:0]),
	.um_inf				(umbral_inferior[2:0])
);



//------------------------------------- FIFOS de salida -------------------------------//

FIFO FIFO_out0( 
    .pop				(pop_in0),
    .data_in			(inFIFO_out0),
    .data_out			(data_out0),
    .empty				(empty4),
    .alm_full			(almost_full0),
    /*AUTOINST*/
	// Outputs
	.alm_empty			(almost_empty),
	// Inputs
	.clk				(clk),
	.state				(state[3:0]),
	.push				(push),
	.um_sup				(umbral_superior[2:0]),
	.um_inf				(umbral_inferior[2:0])
);

FIFO FIFO_out1( 
    .pop				(pop_in1),
    .data_in			(inFIFO_out1),
    .data_out			(data_out1),
    .empty				(empty5),
    .alm_full			(almost_full1),
    /*AUTOINST*/
	// Outputs
	.alm_empty			(almost_empty),
	// Inputs
	.clk				(clk),
	.state				(state[3:0]),
	.push				(push),
	.um_sup				(umbral_superior[2:0]),
	.um_inf				(umbral_inferior[2:0])
);

FIFO FIFO_out2( 
    .pop				(pop_in2),
    .data_in			(inFIFO_out2),
    .data_out			(data_out2),
    .empty				(empty6),
    .alm_full			(almost_full2),
    /*AUTOINST*/
	// Outputs
	.alm_empty			(almost_empty),
	// Inputs
	.clk				(clk),
	.state				(state[3:0]),
	.push				(push),
	.um_sup				(umbral_superior[2:0]),
	.um_inf				(umbral_inferior[2:0])
);

FIFO FIFO_out3( 
    .pop				(pop_in3),
    .data_in			(inFIFO_out3),
    .data_out			(data_out3),
    .empty				(empty7),
    .alm_full			(almost_full3),
    /*AUTOINST*/
	// Outputs
	.alm_empty			(almost_empty),
	// Inputs
	.clk				(clk),
	.state				(state[3:0]),
	.push				(push),
	.um_sup				(umbral_superior[2:0]),
	.um_inf				(umbral_inferior[2:0])
);



//------------------------------------- MUX -------------------------------//

mux MUX(
    .reset_L		(reset),
    .clk			(clk),
    .data_in0 		(),
	.data_in1 		(),
	.data_in2 		(),
	.data_in3 		(),
	.data_out		(),
);



//------------------------------------- DEMUX -------------------------------//

demux DEMUX(
    .reset_L		(reset),
    .clk			(clk),
    .data_in 		(),
	.class 			(),
	.data_out0 		(),
	.data_out1 		(),
	.data_out2 		(),
	.data_out3		(),
	.valid_0 		(),
	.valid_1 		(),
	.valid_2 		(),
	.valid_3 		(),
);



//------------------------------------- Contadores -------------------------------//

contadores Contadores(
    .pop_0				(pop_in0),
    .pop_1				(pop_in1),
    .pop_2				(pop_in2),
    .pop_3				(pop_in3),
	.pop_4				(pop_in4),
    .data_out			(contador),
    /*AUTOINST*/
	// Outputs
	.valid				(valid),
	// Inputs
	.idle				(idle),
	.clk				(clk),
	.reset_L			(reset),
	.idx				(idx[2:0])
);




//------------------------------------- Arbitro ------------------------------------------//

arbitro arbitro(
    .empty0_orange			(empty0),
    .empty1_orange			(empty1),
    .empty2_orange			(empty2),
    .empty3_orange			(empty3),
    .empty0_purple			(empty4),
    .empty1_purple			(empty5),
    .empty2_purple			(empty6),
    .empty3_purple			(empty7),
    .pop0					(pop_Ar0),
    .pop1					(pop_Ar1),
    .pop2					(pop_Ar2),
    .pop3					(pop_Ar3),
    /*AUTOINST*/
	// Outputs
	.push					(push),
	.empties				(empties[9:0]),
	// Inputs
	.clk					(clk),
	.almost_full0			(almost_full0),
	.almost_full1			(almost_full1),
	.almost_full2			(almost_full2),
	.almost_full3			(almost_full3),
	.state					(state[3:0])
);



//------------------------------------- Maquina de estados  -------------------------------//

StateMachine FSM (
    /*AUTOINST*/
	// Outputs
	.sup_Threshold			(umbral_superior[2:0]),
	.inf_Threshold			(umbral_inferior[2:0]),
	.state					(state[3:0]),
	// Inputs
	.clk					(clk),
	.High_Threshold			(Umbral_alto[2:0]),
	.Low_Threshold			(Umbral_bajo[2:0]),
	.reset					(reset),
	.init					(init),
	.empties				(empties[9:0]));

endmodule

