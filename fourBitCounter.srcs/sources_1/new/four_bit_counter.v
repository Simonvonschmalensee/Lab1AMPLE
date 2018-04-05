`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Simon von Schmalensee
// 
// Create Date: 03/27/2018 10:25:14 AM
// Design Name: 
// Module Name: four_bit_counter
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

//`define dataflow;
module four_bit_counter(
    input [3:0] value_i,
    input preset_i,
    input count_i,
    input clk,
    input reset,
    output [3:0] value_o,
    output timeout_o
    );
    
    
    
    
   // For Behavourial
      reg [3:0] value_o_int;
      reg timeout_o_int;
    
    // For dataflow
     wire [3:0]int0, int1, int2,int4;
     wire [3:0] int3;
     
`ifdef dataflow
 
     assign int4 = (count_i) ? int3 : int2;
     assign int0 = (timeout_o) ?  4'hf : int4;
     assign int1 = (preset_i) ? value_i : int0;
     counter r1 (.value_i(int1),.value_o(int2),.clk(clk), .reset(reset));
     adder a1(.value_i(int2), .value_o(int3));
     assign value_o = int2;
     and(timeout_o, int2[0],int2[1],int2[2],int2[3],1'b1,1'b1,1'b1,1'b1);

`else   //Behaviroual Design
    
    always@(posedge clk)
    begin
        if (reset)
        begin
             timeout_o_int <= 0; 
             value_o_int <= 4'h0;
        end
        else
            if(preset_i)
            begin
                value_o_int <= value_i;
            end
            
            if(count_i && value_o_int < 4'hf)
            begin
                value_o_int = value_o_int + 1'h1;
            end
            
            if (value_o_int == 4'h9)
            begin
                timeout_o_int <= 1;
            end
            else
               timeout_o_int <= 0;
     end
            
                
            
  assign value_o = value_o_int;
  assign timeout_o = timeout_o_int; 


`endif


endmodule     
             
