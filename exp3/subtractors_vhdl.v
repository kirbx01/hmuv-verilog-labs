module half_sub (
    input  a, b,
    output diff, borrow
);
    assign diff   = a ^ b;
    assign borrow = (~a) & b;
endmodule

module full_sub (
    input  [2:0] i,
    output diff, borrow
);
    assign diff   = i[0] ^ i[1] ^ i[2];
    assign borrow = (~i[2] & i[0]) | (~i[2] & i[1]) | (i[1] & i[0]);
endmodule