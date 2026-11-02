module MUX_4_1 (
    output OUT,
    input  A, B, C, D, s1, s0
);
    assign OUT = (~s0 & ~s1 & A) | (s0 & ~s1 & B) | (~s0 & s1 & C) | (s0 & s1 & D);
endmodule

module DEMUX_4_1 (
    output reg [3:0] out,
    input  [1:0] s,
    input  a
);
    always @(*) begin
        case (s)
            2'b00: begin out[0] = a; out[3:1] = 0; end
            2'b01: begin out[1] = a; out[0] = 0; out[3:2] = 0; end
            2'b10: begin out[2] = a; out[1:0] = 0; out[3] = 0; end
            2'b11: begin out[3] = a; out[2:0] = 0; end
        endcase
    end
endmodule