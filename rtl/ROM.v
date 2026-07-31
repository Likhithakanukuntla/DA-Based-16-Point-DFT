`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2026 17:39:49
// Design Name: 
// Module Name: ROM
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


module ROM (
input addr_0,addr_1,addr_2,addr_3,
input signed [27:0] twf_0,twf_1,twf_2,twf_3,
output reg signed [27:0]out);

wire [3:0]addr;
assign addr = {addr_3,addr_2,addr_1,addr_0};
always@(*)
begin
case(addr)  //ROM LOOK-UP TABLE
4'd0: out=28'sd0;
4'd1: out=twf_0;
4'd2:out=twf_1;
4'd3:out=twf_1+twf_0;
4'd4:out=twf_2;
4'd5:out=twf_2+twf_0;
4'd6:out=twf_2+twf_1;
4'd7:out=twf_2+twf_1+twf_0;
4'd8:out=twf_3;
4'd9:out=twf_3+twf_0;
4'd10:out=twf_3+twf_1;
4'd11:out=twf_3+twf_1+twf_0;
4'd12:out=twf_3+twf_2;
4'd13:out=twf_3+twf_2+twf_0;
4'd14:out=twf_3+twf_2+twf_1;
4'd15:out=twf_3+twf_2+twf_1+twf_0;
default:out=28'sd0;
endcase
end
endmodule