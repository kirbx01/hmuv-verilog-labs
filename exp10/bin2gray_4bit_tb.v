`timescale 1ns / 1ps

module bin2gray_4bit_tb;
    reg [3:0] binary;
    wire [3:0] gray;
    integer i;

    bin2gray_4bit uut (
        .binary(binary),
        .gray(gray)
    );

    initial begin
        $dumpfile("bin2gray_4bit.vcd");
        $dumpvars(0, bin2gray_4bit_tb);

        for (i = 0; i < 16; i = i + 1) begin
            binary = i;
            #10;
        end

        $finish;
    end
endmodule