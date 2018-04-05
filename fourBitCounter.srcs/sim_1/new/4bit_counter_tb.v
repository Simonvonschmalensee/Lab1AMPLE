`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2018 12:11:53
// Design Name: 
// Module Name: 4bit_counter_tb
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


module 4bit_counter_tb(

    );
    
    reg [3:0] value_i;
    reg preset_i;
    reg count_i;
    reg clk;
    wire timeout_o;
    wire  [3:0] value_o;
    
    four_bit_counter U1(.value_i(value_i), .preset_i(preset_i),.count_i(count_i),
                        .clk(clk), .reset(reset), .value_o(value_o),.timeout_o(timeout_o)
                        );
                        
    initial begin
        reset = 1'b0;
        clk =   1'b0;
        count_i = 1'b1;
        forever
            #20 clk = !clk;
    end
    
    always begin
         
    end
   
    
    
    
    
endmodule
