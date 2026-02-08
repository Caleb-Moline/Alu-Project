`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2025 12:58:52 PM
// Design Name: 
// Module Name: clk_divider_1_hz
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


module clk_divider_1_hz(
    input clk,
    output wire div_signal
    );
wire clk_1khz;
clk_divider_100Mhz_to_1Khz div_to_1khz (.clk(clk), .div_signal(clk_1khz));
clk_dividor_1khz_to_1hz divider_to_1hz (.clk(clk_1khz), .div_signal(div_signal));
endmodule
