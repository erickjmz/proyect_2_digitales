module arbitro(
    input clk,
    input almost_full0,
    input almost_full1,
    input almost_full2,
    input almost_full3,
    input empty0_orange,
    input empty1_orange,
    input empty2_orange,
    input empty3_orange,
    input empty0_purple,
    input empty1_purple,
    input empty2_purple,
    input empty3_purple,
    input [3:0] state,
    output reg push,
    output reg pop0,
    output reg pop1,
    output reg pop2,
    output reg pop3,
    output reg [7:0] empties
);

always@(posedge clk)begin
    if(state == 4'b0001)begin
        push <= 0;
    end
    else begin
        push <= 1;
    end

end
//Lógica de prioridades

always@(*)begin
    if(state == 4'b0001)begin
        pop0=0;
        pop1=0;
        pop2=0;
        pop3=0;
    end
    else begin

        if(almost_full0 | almost_full1 | almost_full2 | almost_full3)begin          
            pop0=0;
            pop1=0;
            pop2=0;
            pop3=0; 
        end
        else begin 
        
        if (empty0_orange ==0 )begin              
            pop0=1;
            pop1=0;
            pop2=0;
            pop3=0;
        end
        else begin 
            if (empty1_orange == 0  )begin           
                pop0=0;
                pop1=1;
                pop2=0;
                pop3=0;
            end
            else begin 
                if (empty2_orange==0 )begin           
                    pop0=0;
                    pop1=0;
                    pop2=1;
                    pop3=0;
                end
                else begin 
                    if (empty3_orange==0 )begin               
                        pop0=0;
                        pop1=0;
                        pop2=0;
                        pop3=1;
                    end 
                    else begin 
                        pop0=0;
                        pop1=0;
                        pop2=0;
                        pop3=0;          
                    end
                end
            end
        end
    end
    end
end

//encapsulamiento de los empties para eventual entrada de FSM
always@(*)begin
     if(state== 4'b0001)begin
       empties<=8'b00000000;  
     end
     else begin
        empties[0] = empty0_orange;
        empties[1] = empty1_orange;
        empties[2] = empty2_orange;
        empties[3] = empty3_orange;
        empties[4] = empty0_purple;
        empties[5] = empty1_purple;
        empties[6] = empty2_purple;
        empties[7] = empty3_purple;
     end
end

endmodule