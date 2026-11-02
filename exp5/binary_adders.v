module HALF_ADDER (
    output reg sum, carry,
    input  a, b
);
    always @(*) begin
        case ({a, b})
            2'b00: begin sum = 0; carry = 0; end
            2'b01: begin sum = 1; carry = 0; end
            2'b10: begin sum = 1; carry = 0; end
            2'b11: begin sum = 0; carry = 1; end
        endcase
    end
endmodule

module FULL_ADDER (
    output sum, carry,
    input  [2:0] a
);
    assign {carry, sum} = a[0] + a[1] + a[2];
endmodule