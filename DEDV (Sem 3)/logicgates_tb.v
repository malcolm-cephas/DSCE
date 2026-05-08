module logicgates_tb;
reg a1,b1;
wire [6:0] y1;
//Connect the testbench with the file you want to run
logicgates l1 (.a(a1),.b(b1),.y(y1));
initial begin
#100
// Initialize Inputs that you want to pass
a1=0; b1=0; #10;
a1=0; b1=1; #10;
a1=1; b1=0; #10;
a1=1; b1=1; #10;
end
endmodule