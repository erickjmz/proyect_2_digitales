module StateMachine (
    input clk,
    input reset,
    input init,
    input [2:0] High_Threshold, Low_Threshold,
    input [7:0] empties,
    output reg [2:0] sup_Threshold, inf_Threshold,
    output reg [3:0] state,
    output reg reset_L
);
reg [3:0] ProximoEstado, Estado;

parameter [3:0] RESET = 4'b0001;
parameter [3:0] INIT = 4'b0010;
parameter [3:0] IDLE = 4'b0100;
parameter [3:0] ACTIVE = 4'b1000;

always@(posedge clk)begin
    if (reset)begin
        reset_L <= 0;
        Estado <= RESET;
        sup_Threshold<=0;
        inf_Threshold<=0;
    end
    else begin
        if (init)begin
            reset_L <= 1;
            Estado <= INIT;
            sup_Threshold <= High_Threshold;
            inf_Threshold <= Low_Threshold;
        end
        else begin
            Estado <= ProximoEstado;
        end
    end
end

always@(*)begin

    if(reset)begin
        state = RESET;
        ProximoEstado = 0;
        reset_L = 0;
    end
    else begin
    state = Estado;
    ProximoEstado = Estado;
    case(Estado)

        RESET: begin
            ProximoEstado = INIT;
        end

        INIT: begin
            ProximoEstado = IDLE;
        end

        IDLE: begin
            if(empties != 8'hFF)begin
                ProximoEstado = ACTIVE;
            end
            else begin
                ProximoEstado = IDLE;
            end
        end

        ACTIVE: begin
            if(empties != 8'hFF)begin
                ProximoEstado = ACTIVE;
            end
            else begin
                ProximoEstado = IDLE;
            end
        end
    endcase

    end
end

endmodule
