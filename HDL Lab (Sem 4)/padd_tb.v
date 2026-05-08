module padd_tb;
reg [3:0]A,B;
reg Cin; 
wire [3:0]S; 
wire Cout;
padd PA1 (A,B,Cin,S,Cout); 
initial begin
A=4'b0001; B=4'b0010; Cin=1'b1; #2 
A=4'b1111; B=4'b1111; Cin=1'b1; #2 
A=4'b1001; B=4'b1010; Cin=1'b1; #2 
A=4'b0001; B=4'b0010; Cin=1'b0; #2
$finish; 
end
endmodule
