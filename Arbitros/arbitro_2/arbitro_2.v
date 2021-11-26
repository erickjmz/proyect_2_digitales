module arbitro_2(
    input clk,
    input almost_full0,
    input almost_full1,
    input almost_full2,
    input almost_full3,
    input empty,
    input [3:0] state,
    output reg pop,
    output reg push0,
    output reg push1,
    output reg push2,
    output reg push3
);
reg [1:0] contador;
//Lógica de prioridades

always@(*)begin
    if(state == 4'b0001 || empty == 1)begin
        push0=0;
        push1=0;
        push2=0;
        push3=0;
    end else begin
      if (contador == 0) begin
        push0=1;
        push1=0;
        push2=0;
        push3=0;

      end else if (contador == 1) begin
        push1=1;
        push0=0;
        push2=0;
        push3=0;

      end else if (contador == 2) begin
        push2=1;
        push1=0;
        push0=0;
        push3=0;

      end else if (contador == 3) begin
        push3=1;
        push1=0;
        push2=0;
        push0=0;

      end
    end
end

always@(*)begin
     pop = 1;
     if (almost_full0 == 1 | almost_full1 == 1 | almost_full2 == 1 | almost_full3 == 1 || empty == 1) begin
       pop = 0;
     end else begin
       pop = 1;
     end
end

always@(posedge clk)begin
    if (state == 4'b0001 ) begin
      contador <= 0;
    end else begin
      if (!empty && contador < 3) begin
        contador <= contador + 1;
      end else
      if (contador == 3) begin
        contador <= 0;
      end
    end
end

endmodule
