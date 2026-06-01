module jkff_tb;

reg clk;
reg [1:0] jk;
wire q, qb;

// Instantiate DUT
jkff uut (
    .jk(jk),
    .clk(clk),
    .q(q),
    .qb(qb)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    // Initialize
    jk = 2'b00;
    #10;

    // Test all JK combinations
    jk = 2'b00; #10; // No change
    jk = 2'b01; #10; // Reset
    jk = 2'b10; #10; // Set
    jk = 2'b11; #10; // Toggle
    jk = 2'b11; #10; // Toggle again

    jk = 2'b00; #10;
    jk = 2'b10; #10;
    jk = 2'b01; #10;

    $finish;
end

endmodule