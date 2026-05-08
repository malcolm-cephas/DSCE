module dff_tb;

reg d, rst, clk;
wire q, qb;

// Instantiate DUT
dff uut (
    .d(d),
    .rst(rst),
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
    rst = 1;
    d = 0;
    #10;

    // Release reset
    rst = 0;

    // Apply inputs
    d = 1; #10;
    d = 0; #10;
    d = 1; #10;

    // Apply reset again
    rst = 1; #10;
    rst = 0;

    d = 0; #10;
    d = 1; #10;

    $finish;
end

endmodule