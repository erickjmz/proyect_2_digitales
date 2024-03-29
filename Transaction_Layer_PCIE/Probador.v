module Probador(
    output reg clk,
    output reg req,
    output reg idle,
    output reg [1:0] class,
    output reg [2:0] idx,
    output reg [11:0] data_in0, data_in1, data_in2, data_in3,
    output reg reset, init,
    output reg [2:0] Umbral_bajo, Umbral_alto,
    output reg push_in0, push_in1, push_in2, push_in3,
    output reg pop_in0, pop_in1, pop_in2, pop_in3, pop_in4,
    input valid_0, valid_1, valid_2, valid_3, valid_4, valid_5, valid_6, valid_7,
    input [11:0] data_out0_c, data_out1_c, data_out2_c, data_out3_c,
    input [11:0] data_out0_e, data_out1_e, data_out2_e, data_out3_e,
    input [4:0] contador_c, contador_e,
    input valid_c, valid_e
);

initial begin
    $dumpfile("Interconexion.vcd");
    $dumpvars();

    req <= 0;
    idle <= 0;
    idx <= 2'b00;
    data_in0 <= 10'b0000000000;
    reset <= 1;
    init <= 0;
    Umbral_bajo <= 3'b000;
    Umbral_alto <= 3'b000;
    push_in0 <= 0;
    @(posedge clk);

    // 1. Saque el bloque de RESET, manteniendo el estado de INIT (señal init)

    reset <= 1;
    init <= 1;
    @(posedge clk);
    reset <= 0;
    init <= 1;
    @(posedge clk);

    // 2. Modifique 2 veces los umbrales altos y bajos de los FIFOs (son el mismo umbral bajo
    // y alto para todos). Libere la señal init.

    Umbral_bajo <= 3'b000;
    Umbral_alto <= 3'b111;
    @(posedge clk);
    Umbral_bajo <= 3'b001;
    Umbral_alto <= 3'b110;
    @(posedge clk);
    reset <= 0;
    init <= 0;
    @(posedge clk);

    // 3. Provoque un Almost Full en todos los FIFOs de salida, el árbitro no le permitirá hacerlo
    // de forma simultánea. Desde el probador, haga la menor cantidad de POPs. Verifique que las
    // palabras que salieron son las mismas que entraron y que salieron por la salida correcta
    // en la prioridad correcta.

    push_in0 <= 1;
    @(posedge clk);
    data_in0 <= 12'b000000000001;
    @(posedge clk);
    pop_in0 <= 1;
    data_in0 <= 12'b000000000001;
    @(posedge clk);
    data_in0 <= 12'b000000000001;
    @(posedge clk);
    data_in0 <= 12'b000000000001;

    @(posedge clk);
    data_in0 <= 12'b000100000001;
    @(posedge clk);
    data_in0 <= 12'b000100000001;
    @(posedge clk);
    data_in0 <= 12'b000100000001;
    @(posedge clk);
    data_in0 <= 12'b000100000001;

    @(posedge clk);
    data_in0 <= 12'b001000000001;
    @(posedge clk);
    data_in0 <= 12'b001000000001;
    @(posedge clk);
    data_in0 <= 12'b001000000001;
    @(posedge clk);
    data_in0 <= 12'b001000000001;

    @(posedge clk);
    data_in0 <= 12'b001100000001;
    @(posedge clk);
    data_in0 <= 12'b001100000001;
    @(posedge clk);
    data_in0 <= 12'b001100000001;
    @(posedge clk);
    data_in0 <= 12'b001100000001;

    pop_in0 <= 0;
    push_in0 <=0;

    
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);




    #25 $finish;
end

//Reloj
initial clk <= 1'b0;
always #10 clk <= ~clk;

endmodule
