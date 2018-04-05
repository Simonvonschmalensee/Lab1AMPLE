`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2018 13:18:51
// Design Name: 
// Module Name: adder_tb
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


module adder_tb(

    );
    
    reg [3:0] value_i;
    wire [3:0] value_o;
    
    adder U1(.value_i(value_i),.value_o(value_o));
    
    initial begin
        value_i = 4'b0000;
        #10;
        value_i = 4'b0001;
        #10;
        value_i = 4'b0010;
        #10;
        value_i = 4'b0011;
        #10;
        value_i  = 4'b1000;
    end
    

    
    
    
    
endmodule
