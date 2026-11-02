`timescale 1ns / 1ps

module mux_demux_tb;
    reg A, B, C, D, s0, s1;
    reg [1:0] s_demux;
    reg a_demux;
    wire OUT_mux;
    wire [3:0] out_demux;

    MUX_4_1 m1 (.OUT(OUT_mux), .A(A), .B(B), .C(C), .D(D), .s1(s1), .s0(s0));
    DEMUX_4_1 d1 (.out(out_demux), .s(s_demux), .a(a_demux));

    initial begin
        $dumpfile("mux_demux.vcd");
        $dumpvars(0, mux_demux_tb);

        s1 = 0; s0 = 0; A = 1; B = 0; C = 0; D = 0; #100;
        s1 = 0; s0 = 1; A = 0; B = 1; C = 0; D = 0; #100;
        s1 = 1; s0 = 0; A = 0; B = 0; C = 1; D = 0; #100;
        s1 = 1; s0 = 1; A = 0; B = 0; C = 0; D = 1; #100;

        a_demux = 1;
        s_demux = 2'b00; #10;
        s_demux = 2'b01; #10;
        s_demux = 2'b10; #10;
        s_demux = 2'b11; #10;

        $finish;
    end
endmodule