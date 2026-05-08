module syncbinary_tb;
    reg clk;
    reg rst;
    wire [3:0] q;

    syncbinary uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 time units clock period
    end

    // Test procedure
    initial begin
        // Initialize signals
        rst = 1; // Apply reset
        #10;
        
        rst = 0; // Release reset
        #100; // Run the simulation for some time to observe behavior

        // Apply reset again
        rst = 1;
        #10;
        
        rst = 0;
        #50;

        // End simulation
        $finish;
    end
endmodule
