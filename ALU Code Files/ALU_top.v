`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2026 06:23:26 PM
// Design Name: 
// Module Name: ALU_top
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


module ALU_top(
    input [7:0] D,
    input En_A,
    input En_B,
    input clk,
    input [2:0] ctrl,
    output [7:0] seg,
    output [3:0] anodes
    );
    
wire [7:0] regA_out;
register_8_bit regA (.D(D),.en(En_A),.clk(clk),.Q(regA_out));
wire [7:0] regB_out;
register_8_bit regB (.D(D),.en(En_B),.clk(clk),.Q(regB_out));
wire [7:0] alu_out;
ALU alu (.A(regA_out),.B(regB_out),.ctrl(ctrl),.Y(alu_out));
wire [15:0] bcd_out;
wire [13:0] corrected_alu_out = {6'b000000, alu_out};
bin2bcd bcd_conv (.bin(corrected_alu_out), .bcd(bcd_out));

hex_7_seg_controller seven_seg (.clk(clk), .D(bcd_out), .seg(seg), .anodes(anodes));
endmodule
