`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2018 04:54:11 PM
// Design Name: 
// Module Name: d_flipflop
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


module d_flipflop(
    input data_i,
    input clk,
    input reset,
    output data_o
    );

   reg d;
   always@(posedge clk)
   begin
        if(reset == 1'b1)
             d<=1'b0;
        else
             d<=data_i;
   end
       assign data_o = d;
endmodule                         