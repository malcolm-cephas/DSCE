module Counter_tb;
    reg clk;
    reg rst;
    wire [3:0] Q;

    Counter uut (
        .clk(clk),
        .rst(rst),
        .Q(Q)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        $monitor("Time: %0d, Reset: %b, Q: %b", $time, rst, Q);
        rst = 1; 
        #10;
        rst = 0; 
        #100;
        $finish; 
    end
endmodule
