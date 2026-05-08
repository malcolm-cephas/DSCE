module tff_tb;
    reg t, clk, rstn;
    wire q, qb;

    tff uut (
        .t(t),
        .clk(clk),
        .rstn(rstn),
        .q(q),
        .qb(qb)
    );

    always begin
        clk = 0;
        #5 clk = 1;
        #5;
    end

    initial begin
        rstn = 0;
        t = 0;
        #10;

        rstn = 1;
        #10;

        t = 1;
        #10;

        t = 0;
        #10;

        t = 1;
        #10;

        rstn = 0;
        #10;

        rstn = 1;
        #10;

        t = 1;
        #10;

        $finish;
    end
endmodule
