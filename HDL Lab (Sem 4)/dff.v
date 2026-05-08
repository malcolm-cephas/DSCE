module dff(d, rst, clk, q, qb); 
input d, rst, clk;
output q, qb; 
reg q, qb;
always @(posedge clk) 
begin
if (rst == 1'B1) 
begin
q = 1'B0; qb = 1'B1;
end 
else 
begin
q = d; qb = ~q; 
end
end 
endmodule
