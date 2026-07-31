`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2026 13:57:02
// Design Name: 
// Module Name: MUX_4_4
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


module MUX_4_4( 
input [1:0]sel,
input signed [27:0]in0,in1,in2,in3, 
output reg signed [27:0]out);

always@(*)
begin
case(sel)
2'd0: out = in0;
2'd1: out = in1;
2'd2: out = in2;
2'd3: out = in3;
default: out = 28'd0;
endcase
end
endmodule