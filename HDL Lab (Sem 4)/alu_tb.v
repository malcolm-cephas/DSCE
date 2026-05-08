module alu_tb;
    reg [3:0] a, b;
    reg [2:0] code;
    wire [7:0] aluout;
    alu uut (
        .a(a),
        .b(b),
        .code(code),
        .aluout(aluout)
    );
    initial begin
        a = 4'b0010; b = 4'b0011; code = 3'd0; 
        #10;
        a = 4'b0110; b = 4'b0011; code = 3'd1; 
        #10;
        a = 4'b0101; code = 3'd2; 
        #10;
        a = 4'b0011; b = 4'b0010; code = 3'd3; 
        #10;
        a = 4'b1100; b = 4'b1010; code = 3'd4; 
        #10;
        a = 4'b1100; b = 4'b1010; code = 3'd5; 
        #10;
        a = 4'b1100; b = 4'b1010; code = 3'd6; 
        #10;
        a = 4'b1100; b = 4'b1010; code = 3'd7; 
        #10;
        $finish;
    end
endmodule
