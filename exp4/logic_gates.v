module NOT_GATE (
    output out,
    input  in
);
    assign out = ~in;
endmodule

module OR_GATE (
    output out,
    input  a, b
);
    assign out = a | b;
endmodule

module NOR_GATE (
    output y,
    input  a, b
);
    assign y = ~(a | b);
endmodule

module AND_GATE (
    input  a, b,
    output y
);
    and (y, a, b);
endmodule

module NAND_GATE (
    output out,
    input  [1:0] a
);
    nand (out, a[0], a[1]);
endmodule

module xorgate (
    output out,
    input  a, b
);
    xor (out, a, b);
endmodule

module XNOR_GATE (
    output out,
    input  a, b
);
    assign out = !(a ^ b);
endmodule