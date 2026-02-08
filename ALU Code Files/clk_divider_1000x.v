`timescale 1ns / 1ps


module clk_divider_100Mhz_to_1Khz(
    input clk,
    output reg div_signal = 0
    );
reg [15:0] count = 0;
always @(posedge clk)
begin
    if (count == 16'd49999) begin
    div_signal <= ~div_signal;
    count <= 0;
    end else count <= count + 1;
end
endmodule

module clk_dividor_1khz_to_1hz(
input clk,
output reg div_signal);

reg [8:0] count;
always @(posedge clk)
if (count == 9'd499)begin
    count <= 0;
    div_signal <= ~div_signal;
end else begin
    count <= count + 1;
end


endmodule
