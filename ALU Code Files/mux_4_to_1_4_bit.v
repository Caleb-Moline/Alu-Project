`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2026 06:17:28 PM
// Design Name: 
// Module Name: mux_4_to_1_4_bit
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


module mux_4_to_1_4_bit(
    input [3:0] In0,
    input [3:0] In1,
    input [3:0] In2,
    input [3:0] In3,
    input [1:0] sel,
    output reg [3:0] Y
    );
    
always @(*)
begin

case(sel)
    2'b00: Y = In0;
    2'b01: Y = In1;
    2'b10: Y = In2;
    2'b11: Y = In3;
endcase
end
endmodule
