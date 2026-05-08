module tff_tb;

reg t, clk, rstn;
wire q, qb;

// Instantiate DUT
tff uut (
    .t(t),
    .clk(clk),
    .rstn(rstn),
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
    rstn = 0;
    t = 0;
    #10;

    // Release reset
    rstn = 1;

    // Apply inputs
    t = 1; #10;
    t = 0; #10;
    t = 1; #10;
    t = 1; #10;
    t = 0; #10;

    // Apply reset again
    rstn = 0; #10;
    rstn = 1;

    t = 1; #10;
    t = 0; #10;

    $finish;
end

endmodule