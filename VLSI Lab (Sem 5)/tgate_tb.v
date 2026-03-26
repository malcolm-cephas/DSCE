module tgate_tb; reg in, sel; wire 
out;  
tgate u3(in,sel,out); initial begin  
in = 1'b0 ; sel = 1'b0 ; #10  
in = 1'b1 ; sel = 1'b0 ; #10  
in = 1'b0 ; sel = 1'b0 ; #10  
in = 1'b1 ; sel = 1'b0 ; #10  
in = 1'b0 ; sel = 1'b1 ; #10 
in = 1'b1 ; sel = 1'b1 ; #10  
in = 1'b0 ; sel = 1'b1 ; #10  
in = 1'b1 ; sel = 1'b1 ; #10  
$finish; end endmodule 