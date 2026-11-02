`timescale 1ns / 1ps

module logic_gates_tb;
    reg in;
    reg A, B;
    reg [1:0] a_vec;
    wire out_not, out_or, y_nor, y_and, out_nand, out_xor, out_xnor;
    integer j;

    NOT_GATE  n1 (.out(out_not), .in(in));
    OR_GATE   o1 (.out(out_or), .a(A), .b(B));
    NOR_GATE  nr1 (.y(y_nor), .a(A), .b(B));
    AND_GATE  a1 (.a(A), .b(B), .y(y_and));
    NAND_GATE nd1 (.out(out_nand), .a(a_vec));
    xorgate   x1 (.out(out_xor), .a(A), .b(B));
    XNOR_GATE xn1 (.out(out_xnor), .a(A), .b(B));

    initial begin
        $dumpfile("logic_gates.vcd");
        $dumpvars(0, logic_gates_tb);

        in = 0; A = 0; B = 0; a_vec = 2'b00; #10;
        in = 1; A = 0; B = 1; a_vec = 2'b01; #10;
        A = 1; B = 0; a_vec = 2'b10; #10;
        A = 1; B = 1; a_vec = 2'b11; #10;

        $finish;
    end
endmodule