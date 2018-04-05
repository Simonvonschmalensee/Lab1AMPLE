`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2018 12:20:59 PM
// Design Name: 
// Module Name: adder
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


module adder(
    input [3:0] value_i,
    output [3:0] value_o
    );
    wire [3:0] c_int;
    wire one = 1'b1;

    half_adder h1 (.i1(one), .i2(value_i[0]), .c_o(c_int[0]), .s_o(value_o[0]));
    half_adder h2 (.i1(c_int[0]), .i2(value_i[1]), .c_o(c_int[1]), .s_o(value_o[1]));
    half_adder h3 (.i1(c_int[1]), .i2(value_i[2]), .c_o(c_int[2]), .s_o(value_o[2]));
    half_adder h4 (.i1(c_int[2]), .i2(value_i[3]), .c_o(c_int[3]), .s_o(value_o[3]));
             
endmodule
