`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
 
// Create Date: 03/26/2018 01:32:41 PM
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
 
// Dependencies: 
 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(
    input i1,
    input i2,
    input c_i,
    output c_o,
    output s_o
    );
    
    wire s_oINT;
    wire c_oINT1;
    wire c_oINT2;

    half_adder ha1(i1,i2,c_oINT1, s_oINT);
    half_adder ha2(s_oINT,c_i, c_oINT2,s_o);
    or o1(c_o ,c_oINT1, c_oINT2);  
    
    
 endmodule
