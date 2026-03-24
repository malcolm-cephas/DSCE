module asyncbinary_tb;

reg clk, rst;
wire [3:0] q;

// Instantiate DUT
asyncbinary uut (
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
    #100;

    // Apply asynchronous reset
    rst = 1; #10;
    rst = 0;

    #50;

    $finish;
end

endmodule