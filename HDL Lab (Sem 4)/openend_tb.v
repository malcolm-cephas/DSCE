module random_counter_tb;

    reg clk;
    reg rst;
    wire [3:0] q;

    random_counter uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1;
        #10;
        rst = 0;
        
        #300; 
        
         $stop;
    end
endmodule


