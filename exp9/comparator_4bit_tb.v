`timescale 1ns / 1ps

module comparator_4bit_tb;
    reg [3:0] A;
    reg [3:0] B;
    wire A_gt_B;
    wire A_eq_B;
    wire A_lt_B;

    comparator_4bit uut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B)
    );

    initial begin
        $dumpfile("comparator_4bit.vcd");
        $dumpvars(0, comparator_4bit_tb);

        A = 4'b0000; B = 4'b0000; #10;
        A = 4'b1010; B = 4'b0101; #10;
        A = 4'b0011; B = 4'b1000; #10;
        A = 4'b1111; B = 4'b1111; #10;
        A = 4'b1111; B = 4'b0000; #10;
        A = 4'b0000; B = 4'b1111; #10;

        $finish;
    end
endmodule