module async_fifo #(parameter DEPTH = 8, WIDTH = 8) (
input logic wclk, rclk, rst, wr_en, rd_en,
input logic [WIDTH-1:0] din,
output logic [WIDTH-1:0] dout,
output logic full, empty
);
logic [WIDTH-1:0] mem [DEPTH-1:0];
logic [$clog2(DEPTH):0] wptr, rptr;
logic [$clog2(DEPTH):0] wptr_gray, rptr_gray;
function automatic logic [$clog2(DEPTH):0] bin2gray(logic [$clog2(DEPTH):0] bin);
return (bin >> 1) ^ bin;
endfunction
assign full = (wptr_gray == bin2gray(rptr + 1));
assign empty = (rptr_gray == wptr_gray);
always_ff @(posedge wclk or posedge rst) begin
if (rst) begin
wptr <= 0;
wptr_gray <= 0;
end else if (wr_en && !full) begin
mem[wptr] <= din;
wptr <= wptr + 1;
wptr_gray <= bin2gray(wptr + 1);
end
end
always_ff @(posedge rclk or posedge rst) begin
if (rst) begin
rptr <= 0;
rptr_gray <= 0;
end else if (rd_en && !empty) begin
dout <= mem[rptr];
rptr <= rptr + 1;
rptr_gray <= bin2gray(rptr + 1);
end
end
endmodule