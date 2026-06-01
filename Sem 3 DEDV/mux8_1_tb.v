module mux8_1_tb;

reg [7:0] I;
reg [2:0] S;
wire D;

// Instantiate the DUT
mux8_1 uut (
    .I(I),
    .S(S),
    .D(D)
);

initial begin
    // Initialize inputs
    I = 8'b10101010;

    // Apply all select inputs
    S = 3'd0; #10;
    S = 3'd1; #10;
    S = 3'd2; #10;
    S = 3'd3; #10;
    S = 3'd4; #10;
    S = 3'd5; #10;
    S = 3'd6; #10;
    S = 3'd7; #10;

    // Change input pattern
    I = 8'b11001100;

    S = 3'd0; #10;
    S = 3'd1; #10;
    S = 3'd2; #10;
    S = 3'd3; #10;
    S = 3'd4; #10;
    S = 3'd5; #10;
    S = 3'd6; #10;
    S = 3'd7; #10;

    $finish;
end

endmodule