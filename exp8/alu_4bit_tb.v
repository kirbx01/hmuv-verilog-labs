`timescale 1ns / 1ps

module alu_4bit_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] Sel;
    wire [3:0] ALU_Out;
    wire CarryOut;

    alu_4bit uut (
        .A(A),
        .B(B),
        .Sel(Sel),
        .ALU_Out(ALU_Out),
        .CarryOut(CarryOut)
    );

    initial begin
        $dumpfile("alu_4bit.vcd");
        $dumpvars(0, alu_4bit_tb);

        A = 4'b1010; B = 4'b0101; Sel = 3'b000; #10;
        A = 4'b1111; B = 4'b0001; Sel = 3'b000; #10;
        A = 4'b1000; B = 4'b0011; Sel = 3'b001; #10;
        A = 4'b0100; B = 4'b0110; Sel = 3'b001; #10;
        A = 4'b1100; B = 4'b1010; Sel = 3'b010; #10;
        A = 4'b1100; B = 4'b1010; Sel = 3'b011; #10;
        A = 4'b1100; B = 4'b1010; Sel = 3'b100; #10;
        A = 4'b1010; B = 4'b0000; Sel = 3'b101; #10;
        A = 4'b1111; B = 4'b0000; Sel = 3'b110; #10;
        A = 4'b0000; B = 4'b0000; Sel = 3'b111; #10;

        $finish;
    end
endmodule