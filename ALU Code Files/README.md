Codes files to describe an ALU on a Boolean Board.

ALU_top is the top file
  ALU_top holds Modules of
    -> register_8_bit
    -> ALU
    ->Bin2Bcd converter
    ->hex_7_seg_controller which holds modules of 
        --> clk_divider_100mhz_to_1khz
        --> mux_4_to_1_4_bit
        --> seven_segment_decoder
        --> counter_two_bit
        --> decoder_2_4
