`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2026 07:25:30 PM
// Design Name: 
// Module Name: counter_two_bit
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


module counter_two_bit(
    input clk,
    output reg [1:0] C = 2'b00
    );
    
always @ (posedge clk) begin
C <= C + 2'b01;
end
endmodule
