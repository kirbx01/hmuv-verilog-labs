`timescale 1ns / 1ps

module binary_adders_tb;
    reg a, b;
    reg [2:0] a_fa;
    wire sum_ha, carry_ha;
    wire sum_fa, carry_fa;
    integer i;

    HALF_ADDER h1 (.sum(sum_ha), .carry(carry_ha), .a(a), .b(b));
    FULL_ADDER f1 (.sum(sum_fa), .carry(carry_fa), .a(a_fa));

    initial begin
        $dumpfile("binary_adders.vcd");
        $dumpvars(0, binary_adders_tb);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        for (i = 0; i < 8; i = i + 1) begin
            a_fa = i;
            #10;
        end

        $finish;
    end
endmodule