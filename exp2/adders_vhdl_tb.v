`timescale 1ns / 1ps

module adders_vhdl_tb;
    reg a, b, c;
    wire sum_ha, carry_ha;
    wire sum_fa, carry_fa;

    half_adder uut_ha (.a(a), .b(b), .sum(sum_ha), .carry(carry_ha));
    full_adder uut_fa (.a(a), .b(b), .c(c), .sum(sum_fa), .carry(carry_fa));

    initial begin
        $dumpfile("adders_vhdl.vcd");
        $dumpvars(0, adders_vhdl_tb);

        a = 0; b = 0; c = 0; #100;
        a = 0; b = 0; c = 1; #100;
        a = 0; b = 1; c = 0; #100;
        a = 0; b = 1; c = 1; #100;
        a = 1; b = 0; c = 0; #100;
        a = 1; b = 0; c = 1; #100;
        a = 1; b = 1; c = 0; #100;
        a = 1; b = 1; c = 1; #100;

        $finish;
    end
endmodule