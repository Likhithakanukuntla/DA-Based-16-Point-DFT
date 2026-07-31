`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2026 18:12:49
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


module AC(
output reg signed [27:0] out,
input signed [27:0] in,
input clk,reset
);


reg [3:0] count;

always @(posedge clk) begin
    if (reset) begin   // Clears accumulator and cycle counter
        out <= 0;
        count <= 0;
    end 
    else if (count < 8) begin
        out <= out + in;  //accumulated output
        count <= count + 1; 
    end
end

endmodule
