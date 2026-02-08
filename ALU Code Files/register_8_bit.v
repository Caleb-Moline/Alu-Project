`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2026 06:07:03 PM
// Design Name: 
// Module Name: register_8_bit
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


module register_8_bit(
    input [7:0] D,
    input en,
    input clk,
    output reg [7:0] Q
    );
always @(posedge clk) begin
if (en) Q <= D;
end
endmodule
