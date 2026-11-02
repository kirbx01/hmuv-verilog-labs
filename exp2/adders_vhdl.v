module half_adder (
    input  a, b,
    output sum, carry
);
    assign sum   = a ^ b;
    assign carry = a & b;
endmodule

module full_adder (
    input  a, b, c,
    output sum, carry
);
    assign sum   = a ^ b ^ c;
    assign carry = (a & b) | (b & c) | (c & a);
endmodule