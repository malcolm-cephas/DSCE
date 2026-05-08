module sync_fifo #(parameter DEPTH = 8, WIDTH = 8) (
input logic clk, rst, wr_en, rd_en,
input logic [WIDTH-1:0] din,
output logic [WIDTH-1:0] dout,
output logic full, empty
);
logic [WIDTH-1:0] mem [DEPTH-1:0];
logic [$clog2(DEPTH):0] wptr, rptr;
assign full = (wptr == DEPTH-1);
assign empty = (wptr == rptr);
always_ff @(posedge clk or posedge rst) begin
if (rst) begin
wptr <= 0;
rptr <= 0;
end else begin
if (wr_en && !full) begin
mem[wptr] <= din;
wptr <= wptr + 1;
end
if (rd_en && !empty) begin
dout <= mem[rptr];
rptr <= rptr + 1;
end
end
end
endmodule