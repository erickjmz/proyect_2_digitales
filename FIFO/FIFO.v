`include "true_dpram_sclk.v"

module FIFO (
    input clk,                      
    input push,
    input pop,
    input [2:0] um_sup,            
    input [2:0] um_inf,
    input [3:0] state, 
    input [9:0] data_in,          
    output [9:0] data_out,
    output reg alm_full,
    output reg alm_empty, empty
);

reg [2:0] wr_ptr, rd_ptr;
reg [2:0] low_space, much_space;
reg [3:0] contador;
reg we_a, re_a;
reg full, empty_aux;

true_dpram_sclk memory (
    .data_a(data_in),
    .addr_wa(wr_ptr),
    .addr_ra(rd_ptr),
    .clk(clk),
    .we_a(we_a),
    .re_a(re_a),
    .q_a(data_out),
    .state(state)
);


always@(posedge clk)begin
    if(state == 4'b0001)begin 
        low_space <= 0;
        much_space <= 0;
    end  
    if(state == 4'b0010)begin
        low_space <= um_sup;
        much_space <= um_inf;
    end
end

always@(posedge clk)begin
    if(state == 4'b0001)begin
        wr_ptr <= 3'b0;
        rd_ptr <= 3'b0;
        contador <= 3'b0;
        empty = 1;
    end
    else begin
        
        if((push == 1) & (contador != 4'b1000) & (data_in != 10'b0))begin
            wr_ptr <= wr_ptr + 1; 
            contador <= contador + 1;
            empty <= 0;
      
        if(contador == 4'b1000) begin
            full <= 1;
        end
        end

        
        if((pop == 1)  & (contador != 4'b0000))begin
            rd_ptr <= rd_ptr + 1; 
            contador <= contador - 1;
            full <= 0;
      
            if(contador == 4'b0001)begin
                empty <= 1;
            end
        end
        
    end
end

always@(*)begin
    
    if(state == 4'b0001)begin
        we_a <= 0;
        re_a <= 0;
        
    end
    else begin
        if((push == 1) & (contador != 4'b1000))begin
            we_a = 1;
        end
        else if(we_a <= 1)begin
            we_a = 0;
        end
        if((pop == 1) & (contador != 4'b0000))begin
            re_a = 1;
        end
        else if(re_a <= 1)begin
            re_a = 0;
        end
    end
end

always@(*)begin

    if(state==4'b0001)begin
        alm_full = 0;
        alm_empty = 0;
    end
    else begin
        
        if(contador >= low_space)begin
            alm_full = 1;
        end
        else begin
            alm_full = 0;
        end
        if(contador <= much_space)begin
            alm_empty = 1;
        end
        else begin
            alm_empty = 0;
        end
    end
end

endmodule