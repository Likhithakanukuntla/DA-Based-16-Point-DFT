`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2026 15:50:59
// Design Name: 
// Module Name: decoder
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


module decoder(
output signed [27:0] out,
input signed [27:0] tw_b0,tw_b1,tw_b2,tw_b3,tw_b4,tw_b5,tw_b6,tw_b7,
              tw_b8,tw_b9,tw_b10,tw_b11,tw_b12,tw_b13,tw_b14,tw_b15,
input in_0,in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8,
      in_9,in_10,in_11,in_12,in_13,in_14,in_15,
input clk,reset
);

wire m0,m1,m2,m3;
wire signed [27:0] tw_o_0,tw_o_1,tw_o_2,tw_o_3;
wire signed [27:0] temp_out;

reg [1:0] sel=2'd0;

//out of 16 numbers 4 numbers are taken at a time using single mux
always @(posedge clk)begin
   if (reset)
        sel<=2'd0;
    else
        sel<=(sel==2'd3) ? 2'd0 : sel + 1;
end
//selects inputs based on select line
MUX B1(sel,in_0,in_4,in_8,in_12,m0);
MUX B2(sel,in_1,in_5,in_9,in_13,m1);
MUX B3(sel,in_2,in_6,in_10,in_14,m2);
MUX B4(sel,in_3,in_7,in_11,in_15,m3);

// corresponding twiddle factor group
MUX_4_4 M1(sel,tw_b0,tw_b4,tw_b8,tw_b12,tw_o_0);
MUX_4_4 M2(sel,tw_b1,tw_b5,tw_b9,tw_b13,tw_o_1);
MUX_4_4 M3(sel,tw_b2,tw_b6,tw_b10,tw_b14,tw_o_2);
MUX_4_4 M4(sel,tw_b3,tw_b7,tw_b11,tw_b15,tw_o_3);

//ROM generates DA partial sum using selected bits and coefficients
ROM rom1(m0,m1,m2,m3,tw_o_0,tw_o_1,tw_o_2,tw_o_3,temp_out);

//Accumulate ROM outputs over multiple cycles
AC acc(out,temp_out,clk,reset);

endmodule

