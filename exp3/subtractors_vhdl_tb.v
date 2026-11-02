`timescale 1ns / 1ps

module subtractors_vhdl_tb;
    reg a, b;
    reg [2:0] i;
    wire diff_hs, borrow_hs;
    wire diff_fs, borrow_fs;

    half_sub uut_hs (.a(a), .b(b), .diff(diff_hs), .borrow(borrow_hs));
    full_sub uut_fs (.i(i), .diff(diff_fs), .borrow(borrow_fs));

    integer idx;

    initial begin
        $dumpfile("subtractors_vhdl.vcd");
        $dumpvars(0, subtractors_vhdl_tb);

        a = 0; b = 0; #100;
        a = 0; b = 1; #100;
        a = 1; b = 0; #100;
        a = 1; b = 1; #100;

        for (idx = 0; idx < 8; idx = idx + 1) begin
            i = idx;
            #20;
        end

        $finish;
    end
endmodule