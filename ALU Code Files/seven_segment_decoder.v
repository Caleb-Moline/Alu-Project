module seven_segment_decoder(
    input  [3:0] B,
    output [7:0] seg
);

reg [7:0] tmp;

always @(*) begin
    case (B)
        4'h0: tmp = 8'b11000000; // 0
        4'h1: tmp = 8'b11111001; // 1
        4'h2: tmp = 8'b10100100; // 2
        4'h3: tmp = 8'b10110000; // 3
        4'h4: tmp = 8'b10011001; // 4
        4'h5: tmp = 8'b10010010; // 5
        4'h6: tmp = 8'b10000010; // 6
        4'h7: tmp = 8'b11111000; // 7
        4'h8: tmp = 8'b10000000; // 8
        4'h9: tmp = 8'b10010000; // 9

        // Hex digits (lowercase-style)
        4'hA: tmp = 8'b10001000; // A
        4'hB: tmp = 8'b10000011; // b
        4'hC: tmp = 8'b11000110; // C
        4'hD: tmp = 8'b10100001; // d
        4'hE: tmp = 8'b10000110; // E
        4'hF: tmp = 8'b10001110; // F

        default: tmp = 8'b11111111; // all off
    endcase
end

assign seg = tmp;

endmodule