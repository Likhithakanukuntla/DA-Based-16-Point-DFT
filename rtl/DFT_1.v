`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2026 17:21:29
// Design Name: 
// Module Name: DFT_1
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


module DFT_1(
output signed [27:0]sum,
input signed [27:0] y_0,y_1,y_2,y_3,y_4,y_5,y_6,y_7
);

wire signed [27:0]temp_sum[8:0];

assign temp_sum[7] = -y_7 ;  //msb is sign bit in 2's compliment representation
assign temp_sum[6] = (y_6)>>>1;  //scale partial sums according to bit significance
assign temp_sum[5] = (y_5)>>>2;
assign temp_sum[4] = (y_4)>>>3;
assign temp_sum[3] = (y_3)>>>4;
assign temp_sum[2] = (y_2)>>>5;
assign temp_sum[1] = (y_1)>>>6;
assign temp_sum[0] = (y_0)>>>7;
assign temp_sum[8] = temp_sum[0]+temp_sum[1]+temp_sum[2]+temp_sum[3]+   // sum of all DA partial results
                     temp_sum[4]+temp_sum[5]+temp_sum[6]+temp_sum[7];
assign sum = (temp_sum[8])<<<3;  // restore scaling factor

endmodule
