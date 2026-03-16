module jkff(jk, clk, q, qb); 
input clk;
input [1:0]jk; 
output q,qb; 
reg q,qb;
always @(posedge clk) 
begin
case(jk) 
2'B00:q=q;
2'B01:q=1'B0;
2'B10:q=1'B1;
2'B11:q=~q;
default:q=1'BZ; 
endcase
qb=~q; 
end 
endmodule
