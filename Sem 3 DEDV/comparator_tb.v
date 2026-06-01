module comparator_tb;

reg [3:0] a, b;
wire alb, aeb, agb;

// Instantiate the DUT
comparator uut (
    .a(a),
    .b(b),
    .alb(alb),
    .aeb(aeb),
    .agb(agb)
);

initial begin
    // Test cases

    a = 4'd3; b = 4'd5; #10;   // a < b
    a = 4'd7; b = 4'd2; #10;   // a > b
    a = 4'd4; b = 4'd4; #10;   // a = b

    a = 4'd0; b = 4'd15; #10;
    a = 4'd15; b = 4'd0; #10;
    a = 4'd8; b = 4'd8; #10;

    $finish;
end

endmodule