module buff_tb;  
reg X1; wire Y1; 
buff buf1 (X1,Y1);  
initial begin  
X1=1'b0; #1 X1=1'b1; #2  
$finish; 
end 
endmodule