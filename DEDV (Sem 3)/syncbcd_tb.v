module syncbcd_tb;

reg clk, rst;
wire [3:0] q;

// Instantiate DUT
syncbcd uut (
    .clk(clk),
    .rst(rst),
    .q(q)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    // Initialize
    rst = 1;
    #10;

    // Release reset
    rst = 0;

    // Let counter run
    #120;

    // Apply reset again
    rst = 1; #10;
    rst = 0;

    #60;

    $finish;
end

endmodule