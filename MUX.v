`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2026 13:42:44
// Design Name: 
// Module Name: MUX
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


module MUX( 
input [1:0]sel,
input K0,K1,K2,K3, 
output reg  out);

always@(*)
begin
case(sel)
2'd0: out=K0;
2'd1: out=K1;
2'd2: out=K2;
2'd3: out=K3;
default: out=1'd0;
endcase
end
endmodule