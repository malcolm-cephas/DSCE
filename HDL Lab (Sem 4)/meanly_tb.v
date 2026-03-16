module seq_mealy_tb;
// Inputs
reg x; reg clk; reg rst;
// Outputs
wire y;
// Instantiate the Unit Under Test (UUT)
seq_mealy uut (
.x(x),
.clk(clk),
.rst(rst),
.y(y)
);
reg [19:0]data;
integer k;
initial begin
// Initialize Inputs
data = 20'b10100101011101010101;
clk = 0;
k=0;
rst = 1;
#60 rst =0 ;
// Wait 100 ns for global reset to finish
#340; // Add stimulus here
end
always@(posedge clk)
begin
x = data>>k;
k = k+1;
end
always #20 clk=~clk;
endmodule