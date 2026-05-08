module alu (a, b, code, aluout ); 
input [3:0] a, b;
input [2:0] code;
output [7:0] aluout; 
reg [7:0] aluout ; 
wire[7:0] x, y;
assign x = {4'B0000, a}; 
assign y = {4'B0000, b}; 
always @ (x, y, code, a,b) 
begin
case (code)
3'd0: aluout = x + y; 
3'd1: aluout = x - y; 
3'd2: aluout = ~x; 
3'd3: aluout = a * b; 
3'd4: aluout = x & y; 
3'd5: aluout = x | y;
3'd6: aluout = ~(x & y); 
3'd7: aluout = ~(x | y);
default: aluout = 8'B00000000; 
endcase
end
endmodule
