`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2018 11:12:58 AM
// Design Name: 
// Module Name: half_adder
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


module half_adder(
    input i1,
    input i2,
    output c_o,
    output s_o
    );
    
    
    //Structrual
    //xor(s_o, i1,i2);
    //and(c_o, i1,i2);
     
    // dataflow 
   //   assign c_o = i1^i2;
   //   assign s_o = i1&i2;
    
  
    //behavouiral
    reg [1:0] result;
    
      always@(i1 or i2)
      begin
          result = i1+i2;
      end
      
      assign c_o = result[1];
      assign s_o = result[0];
                  
    
      
    
     
      
       
    
    
endmodule
