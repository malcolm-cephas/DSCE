module demux1_8_tb;

reg I;
reg [2:0] S;
wire [7:0] D;

// Instantiate the DUT
demux1_8 uut (
    .I(I),
    .S(S),
    .D(D)
);

initial begin
    // Test with I = 1
    I = 1'b1;

    S = 3'd0; #10;
    S = 3'd1; #10;
    S = 3'd2; #10;
    S = 3'd3; #10;
    S = 3'd4; #10;
    S = 3'd5; #10;
    S = 3'd6; #10;
    S = 3'd7; #10;

    // Test with I = 0
    I = 1'b0;

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