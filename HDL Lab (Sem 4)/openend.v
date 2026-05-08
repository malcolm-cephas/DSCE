module random_counter (
    input clk,
    input rst,
    output reg [3:0] q
);

    reg [3:0] lfsr;
    wire feedback;

     assign feedback = lfsr[3] ^ lfsr[0];

    initial begin
        lfsr = 4'b0001; 
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            lfsr <= 4'b0001; 
        end else begin
            lfsr <= {lfsr[2:0], feedback}; 
        end
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 4'b0000; 
        end else begin
            q <= lfsr; 
        end
    end
endmodule
