module inv_tb; 
reg x1; wire y1;  
inv u1(x1,y1); 
initial begin x1 = 1'b0;  
#1 x1 = 1'b1; 
#2 $finish;  
end endmodule 