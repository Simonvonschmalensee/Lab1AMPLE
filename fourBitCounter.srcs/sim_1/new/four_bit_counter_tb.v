`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2018 13:02:51
// Design Name: 
// Module Name: four_bit_counter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module four_bit_counter_tb(

    );
    reg [3:0] value_i;
        reg preset_i;
        reg count_i;
        reg clk;
        reg reset;
        wire timeout_o;
        wire  [3:0] value_o;
        
        four_bit_counter U1(.value_i(value_i), .preset_i(preset_i),.count_i(count_i),
                            .clk(clk), .reset(reset), .value_o(value_o),.timeout_o(timeout_o)
                            );
                            
        initial begin
            
            value_i = 4'h9;
            clk =   1'b0;
            reset = 1'b1;  
            count_i = 1'b1;
            preset_i = 1'b0;
            #100;
            reset = 1'b0;   
            #100;
            count_i = 1'b1;
            
            #20;
          //  preset_i = 1'b1;
            #50
            value_i = 4'h7;
            #50;
            //count_i = ~count_i;
            //preset_i = !preset_i;
            #50;
            //count_i = !count_i;   
            #200;
            reset = !reset;
        end
        
        always begin
        #20 clk = !clk;      
        end
       
        
        
        
endmodule
