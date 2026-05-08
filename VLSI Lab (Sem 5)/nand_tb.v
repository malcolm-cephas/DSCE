module nand_tb; 
reg x1, y1; wire z1;  
nand nand1 (x1,y1,z1); 
initial begin  
x1 = 1'b0; y1 = 1'b0; #1  
x1 = 1'b0; y1 = 1'b1; #1  
x1 = 1'b1; y1 = 1'b0; #1  
x1 = 1'b1; y1 = 1'b1; #2  
$finish; 
end
endmodule 