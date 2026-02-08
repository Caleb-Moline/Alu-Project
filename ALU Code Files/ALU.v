`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2026 06:07:03 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [7:0] A,
    input [7:0] B,
    input [2:0] ctrl,
    output reg [7:0] Y
    );
    
always @(*)
begin
    case (ctrl) 
    
        3'b000: Y = A + B;
        3'b001: Y = A + 1;
        3'b010: Y = A - B;
        3'b011: Y = A ^ B;
        3'b100: Y = A | B;
        3'b101: Y = A & B;
        3'b110: Y = 8'b00000000;
        3'b111: Y = 8'b00000000;
      
    endcase
end
endmodule
