module decoder(I,D); 
input [1:0] I;
output [3:0] D;
reg [3:0] D; 
always @(I) 
begin
if (I==2'B00) D=4'B0001; 
else if (I==2'B01) D=4'B0010; 
else if (I==2'B10) D=4'B0100; 
else if (I==2'B11) D=4'B1000; 
else D=4'BZZZZ;
end 
endmodule
