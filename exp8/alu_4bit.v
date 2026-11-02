module alu_4bit (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] Sel,
    output reg [3:0] ALU_Out,
    output reg CarryOut
);

always @(*) begin
    CarryOut = 1'b0;
    case (Sel)
        3'b000: {CarryOut, ALU_Out} = A + B;       // Addition
        3'b001: {CarryOut, ALU_Out} = A - B;       // Subtraction
        3'b010: ALU_Out = A & B;                   // Bitwise AND
        3'b011: ALU_Out = A | B;                   // Bitwise OR
        3'b100: ALU_Out = A ^ B;                   // Bitwise XOR
        3'b101: ALU_Out = ~A;                      // Bitwise NOT
        3'b110: {CarryOut, ALU_Out} = A + 4'b0001; // Increment A
        3'b111: {CarryOut, ALU_Out} = A - 4'b0001; // Decrement A
        default: ALU_Out = 4'b0000;
    endcase
end

endmodule