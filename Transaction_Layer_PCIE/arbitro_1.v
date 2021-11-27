module arbitro_1(
    input clk,
    input almost_full0,
    input almost_full1,
    input almost_full2,
    input almost_full3,
    input empty0,
    input empty1,
    input empty2,
    input empty3,
    input wire[1:0] dest,
    input valid_0,
    input valid_1,
    input valid_2,
    input valid_3,
    input [3:0] state,
    output reg pop0,
    output reg pop1,
    output reg pop2,
    output reg pop3,
    output reg push0,
    output reg push1,
    output reg push2,
    output reg push3
);
reg [2:0] contador0;
reg [2:0] contador1;
reg [2:0] contador2;
reg [2:0] contador3;
//Lógica de prioridades

always@(*)begin
  pop0=0;
  pop1=0;
  pop2=0;
  pop3=0;
    if(state == 4'b0001)begin
        pop0=0;
        pop1=0;
        pop2=0;
        pop3=0;
    end else begin
      if (almost_full0 == 1 || almost_full1 == 1 || almost_full2 == 1 || almost_full3 == 1) begin
        pop0=0;
        pop1=0;
        pop2=0;
        pop3=0;
      end else
      if (contador0 < 4 && empty0 == 0) begin
        pop0 = 1;
      end else
      if (contador1 < 3 && empty1 == 0) begin
        pop1 = 1;
      end else
      if (contador2 < 2 && empty2 == 0) begin
        pop2 = 1;
      end else
      if (contador3 < 1 && empty3 == 0) begin
        pop3 = 1;
      end
    end
end

always@(*)begin
    push0=0;
    push1=0;
    push2=0;
    push3=0;
    if (almost_full0 == 1 || almost_full1 == 1 || almost_full2 == 1 || almost_full3 == 1) begin
      push0=0;
      push1=0;
      push2=0;
      push3=0;
    end else
     if (dest == 0 && valid_0 == 1 ) begin
       push0 = 1;
     end else
     if (dest == 1 && valid_1 == 1 ) begin
       push1 = 1;
     end else
     if (dest == 2 && valid_2 == 1) begin
       push2 = 1;
     end else
     if (dest == 3 && valid_3 == 1) begin
       push3 = 1;
     end
end

always@(posedge clk)begin
    if (state == 4'b0001 ) begin
      contador0 <= 0;
      contador1 <= 0;
      contador2 <= 0;
      contador3 <= 0;

    end else begin
      if (pop0 == 1) begin
        contador0 = contador0 + 1;
        contador3 = 0;
      end else
      if (pop1 == 1) begin
        contador1 = contador1 + 1;
      end
      if (pop2 == 1) begin
        contador2 = contador2 + 1;
      end
      if (pop3 == 1) begin
        contador3 = contador3 + 1;
        contador1 = 0;
        contador2 = 0;
        contador0 = 0;
      end
    end
end

endmodule
