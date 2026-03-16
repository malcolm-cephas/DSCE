module LFSR8_11D_tb;
    reg clk;
    wire [7:0] LFSR;

    LFSR8_11D uut (
        .clk(clk),
        .LFSR(LFSR)
    );

     initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
endmodule
