module ALU (
    input  logic [3:0] A, B,       // 4-bit inputs
    input  logic [2:0] opcode,     // 3-bit operation selector
    output logic [3:0] result,     // 4-bit output
    output logic       carry_out, // Carry out for addition
    output logic       zero_flag  // Result is zero
);

    always_comb begin
        carry_out = 0;
        case (opcode)
            3'b000: result = A + B;                      // Addition
            3'b001: result = A - B;                      // Subtraction
            3'b010: result = A & B;                      // Bitwise AND
            3'b011: result = A | B;                      // Bitwise OR
            3'b100: result = A ^ B;                      // Bitwise XOR
            3'b101: result = ~A;                         // Bitwise NOT (A)
            3'b110: result = A << 1;                     // Logical Shift Left
            3'b111: result = A >> 1;                     // Logical Shift Right
            default: result = 4'b0000;
        endcase
        if (opcode == 3'b000 && (A + B) > 4'b1111)
            carry_out = 1;
        zero_flag = (result == 4'b0000);
    end

endmodule
