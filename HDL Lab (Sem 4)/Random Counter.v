module TFF (
    input T,
    input clk,
    input rst,
    output reg Q
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            Q <= 0;
        else if (T)
            Q <= ~Q;
    end
endmodule
module Counter (
    input clk,
    input rst,
    output [3:0] Q
);
    wire [3:0] T;
    assign T[0] = 1;
    assign T[1] = Q[0];
    assign T[2] = Q[0] & Q[1];
    assign T[3] = Q[0] & Q[1] & Q[2];
    TFF tff0 (.T(T[0]), .clk(clk), .rst(rst), .Q(Q[0]));
    TFF tff1 (.T(T[1]), .clk(clk), .rst(rst), .Q(Q[1]));
    TFF tff2 (.T(T[2]), .clk(clk), .rst(rst), .Q(Q[2]));
    TFF tff3 (.T(T[3]), .clk(clk), .rst(rst), .Q(Q[3]));
endmodule
