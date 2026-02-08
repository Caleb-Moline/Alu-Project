`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2026 06:17:28 PM
// Design Name: 
// Module Name: decoder_2_4
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


module decoder_2_4(
    input [1:0] sel,
    output reg [3:0] Y
    );
    
always @(sel)
begin
    case(sel)
        2'b00: Y = 4'b1000;
        2'b01: Y = 4'b0100;
        2'b10: Y = 4'b0010;
        2'b11: Y = 4'b0001;
        
    endcase
end
endmodule
