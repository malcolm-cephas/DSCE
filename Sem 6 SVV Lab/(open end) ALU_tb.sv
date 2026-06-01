module ALU_tb;

    logic [3:0] A, B;
    logic [2:0] opcode;
    logic [3:0] result;
    logic carry_out, zero_flag;

    ALU uut (
        .A(A), .B(B), .opcode(opcode),
        .result(result), .carry_out(carry_out), .zero_flag(zero_flag)
    );

    initial begin
        $display("Time\tA\tB\tOpcode\tResult\tCarry\tZero");
        foreach (opcode) begin
            A = 4'b0011; // 3
            B = 4'b0101; // 5
            opcode = opcode;
            #5;
            $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b", $time, A, B, opcode, result, carry_out, zero_flag);
        end
        $finish;
    end
endmodule
