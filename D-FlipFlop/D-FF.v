`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:56:03 04/20/2020 
// Design Name: 
// Module Name:    D-FF 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module D_FF(D, clk, asyncReset, Q);

input D, clk , asyncReset;
output reg Q;
initial
begin
Q = 0;
end
always @(posedge clk or posedge asyncReset)
begin
 if(asyncReset == 1)
  Q = 0; 
 else 
  Q = D; 
end 

endmodule
