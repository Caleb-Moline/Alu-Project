`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2026 06:17:28 PM
// Design Name: 
// Module Name: hex_7_seg_controller
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


module hex_7_seg_controller(
    input clk,
    input [15:0] D,
    output [7:0] seg,
    output [3:0] anodes
    );
    wire one_khz_signal;
    clk_divider_100Mhz_to_1Khz one_Khz_clk (.clk(clk), .div_signal(one_khz_signal));
    wire [3:0] mux_out;
    mux_4_to_1_4_bit mux (.In0(D[15:12]), .In1(D[11:8]), .In2(D[7:4]), .In3(D[3:0]), .sel(mux_demux_sel), .Y(mux_out));
    
    seven_segment_decoder seg_decoder (.B(mux_out), .seg(seg));
    wire [1:0] mux_demux_sel;
    counter_two_bit counter (.clk(one_khz_signal) , .C(mux_demux_sel));
    
    wire [3:0] decoder_out;
    decoder_2_4 decoder (.sel(mux_demux_sel), .Y(decoder_out));
    // anodes are acive low, decoder does 1000, so to turn on the correct anode it should be 0111
    assign anodes = ~decoder_out;
endmodule
