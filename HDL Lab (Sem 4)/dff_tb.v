module dff_tb;
    reg d, rst, clk;
    wire q, qb;

    dff uut (
        .d(d),
        .rst(rst),
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
        rst = 1;
        d = 0;
        #10;

        rst = 0;
        d = 1;
        #10;

        d = 0;
        #10;

        d = 1;
        #10;

        rst = 1;
        #10;

        rst = 0;
        d = 0;
        #10;

        d = 1;
        #10;

        $finish;
    end
endmodule
