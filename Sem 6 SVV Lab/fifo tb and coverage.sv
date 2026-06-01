module fifo_tb;
logic clk, rst, wr_en, rd_en;
logic [7:0] din, dout;
logic full, empty;
sync_fifo #(.DEPTH(8), .WIDTH(8)) dut (
.clk(clk), .rst(rst), .wr_en(wr_en), .rd_en(rd_en), .din(din), .dout(dout), .full(full), .empty(empty)
);
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
rst = 1; wr_en = 0; rd_en = 0; din = 0;
#10 rst = 0;
#10 wr_en = 1; din = 8'hAA;
#10 wr_en = 1; din = 8'hBB;
#10 wr_en = 0; rd_en = 1;
#10 rd_en = 0;
#50 $finish;
end
// Coverage and assertions
covergroup fifo_cov;
coverpoint wr_en;
coverpoint rd_en;
coverpoint full;
coverpoint empty;
endgroup
fifo_cov cov_inst = new();
always @(posedge clk) begin
cov_inst.sample();
assert (!(full && wr_en)) else $error("Write attempted on full FIFO");
assert (!(empty && rd_en)) else $error("Read attempted on empty FIFO");
end
endmodule