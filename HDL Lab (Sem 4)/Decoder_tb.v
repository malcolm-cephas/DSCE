module decoder_tb;
reg [1:0] I;
wire [3:0]D;
decoder uut (.D(D), .I(I));
initial begin
I=2'b00; #20;
I=2'b01; #20;
I=2'b10; #20;
I=2'b11; #20;
end
endmodule
