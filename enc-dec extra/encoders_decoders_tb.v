`timescale 1ns / 1ps

module encoders_decoders_tb;
    reg [7:0] enc_in;
    wire [2:0] enc_out;
    reg [2:0] dec_in;
    wire [7:0] dec_out;
    integer k;

    encoder_8to3 enc (.in(enc_in), .out(enc_out));
    decoder_3to8 dec (.in(dec_in), .out(dec_out));

    initial begin
        $dumpfile("encoders_decoders.vcd");
        $dumpvars(0, encoders_decoders_tb);

        for (k = 0; k < 8; k = k + 1) begin
            enc_in = (1 << k);
            dec_in = k;
            #10;
        end

        $finish;
    end
endmodule