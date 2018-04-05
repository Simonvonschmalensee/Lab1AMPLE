`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2018 11:40:54 AM
// Design Name: 
// Module Name: counter
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


module counter(
    input [3:0] value_i,
    output [3:0] value_o,
    input clk,
    input reset
    );
    //wire reset = 1'b0;
     reg[3:0] value_int;
     always@(posedge clk)
     begin 
          if (reset)
          begin
              value_int = 4'h0;
          end
          
          else
              value_int = value_i;
        
     end
     
     d_flipflop d0 (.data_i(value_int[0]),.data_o(value_o[0]),.clk(clk),.reset(reset));
     d_flipflop d1 (.data_i(value_int[1]),.data_o(value_o[1]),.clk(clk),.reset(reset));
     d_flipflop d2 (.data_i(value_int[2]),.data_o(value_o[2]),.clk(clk),.reset(reset));
     d_flipflop d3 (.data_i(value_int[3]),.data_o(value_o[3]),.clk(clk),.reset(reset));

endmodule