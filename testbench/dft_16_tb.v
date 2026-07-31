`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2026 20:12:31
// Design Name: 
// Module Name: DFT_16_TB
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


module DFT_16_TB( );
reg clk,reset;
reg signed [7:0] x_0,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15;

wire [27:0] Re_0,Re_1,Re_2,Re_3,Re_4,Re_5,Re_6,Re_7,Re_8,Re_9,Re_10,Re_11,Re_12,Re_13,Re_14,Re_15;
wire [27:0] Im_0,Im_1,Im_2,Im_3,Im_4,Im_5,Im_6,Im_7,Im_8,Im_9,Im_10,Im_11,Im_12,Im_13,Im_14,Im_15;

DFT_16_POINT DUT (
    Re_0,Re_1,Re_2,Re_3,Re_4,Re_5,Re_6,Re_7,Re_8,Re_9,Re_10,Re_11,Re_12,Re_13,Re_14,Re_15,
    Im_0,Im_1,Im_2,Im_3,Im_4,Im_5,Im_6,Im_7,Im_8,Im_9,Im_10,Im_11,Im_12,Im_13,Im_14,Im_15,
    x_0,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,
    clk,reset
);

always #5 clk = ~clk;

integer i;

initial begin
    clk = 0;
 
   reset = 1;
#20;
reset = 0;


//1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16
x_0 = 8'd1;
x_1 = 8'd2; x_2 = 8'd3; x_3 = 8'd4;
x_4 = 8'd5; x_5 = -8'd6; x_6 =- 8'd7; x_7 = -8'd8;
x_8 = -8'd9; x_9 = -8'd10; x_10 = -8'd11; x_11 = -8'd12;
x_12 = 8'd13; x_13 = 8'd14; x_14 = 8'd15; x_15 = 8'd16;

//1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0
//x_0 = 8'd1;
//x_1 = 8'd0; x_2 = 8'd1; x_3 = 8'd0;
//x_4 = 8'd1; x_5 = -8'd0; x_6 =- 8'd1; x_7 = -8'd0;
//x_8 = -8'd1; x_9 = -8'd0; x_10 = -8'd1; x_11 = -8'd0;
//x_12 = 8'd1; x_13 = 8'd0; x_14 = 8'd1; x_15 = 8'd0;



endmodule
