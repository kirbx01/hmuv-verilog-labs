`timescale 1ns / 1ps

module logic_gates_vhdl_tb;
    reg a, b;
    wire y_not, y_or, y_nor, y_and, y_nand, y_xor, y_xnor;

    not_gate  u1 (.a(a), .y(y_not));
    or_gate   u2 (.a(a), .b(b), .y(y_or));
    nor_gate  u3 (.a(a), .b(b), .y(y_nor));
    and_gate  u4 (.a(a), .b(b), .y(y_and));
    nand_gate u5 (.a(a), .b(b), .y(y_nand));
    xor_gate  u6 (.a(a), .b(b), .y(y_xor));
    xnor_gate u7 (.a(a), .b(b), .y(y_xnor));

    initial begin
        $dumpfile("logic_gates_vhdl.vcd");
        $dumpvars(0, logic_gates_vhdl_tb);

        a = 0; b = 0; #100;
        a = 0; b = 1; #100;
        a = 1; b = 0; #100;
        a = 1; b = 1; #100;

        $finish;
    end
endmodule