module jkff_tb;
    reg clk;
    reg [1:0] jk;
    wire q, qb;
    jkff uut (
        .jk(jk),
        .clk(clk),
        .q(q),
        .qb(qb)
    );
    always begin
        clk = 0;
        #5 clk = 1;
        #5;
    end
    initial begin
        jk = 2'b00;
        #10;
        jk = 2'b01;
        #10;
        jk = 2'b10;
        #10;
        jk = 2'b11;
        #10;
        jk = 2'b00;
        #10;
        $finish;
    end
endmodule
