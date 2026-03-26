module fmux_tb;  
reg x0,x1,x2,x3,s0,s1; wire o;  
fmux m1(x0,x1,x2,x3,s0,s1,o); initial begin 
x0=1'b0;x1=1'b1; x2=1'b1;x3=1'b1; 
s0=1'b0;s1=1'b0;#10; 
x0=1'b0;x1=1'b1;x2=1'b0;x3=1'b0;s0=1'b0; 
s1=1'b1;#10; 
x0=1'b1;x1=1'b1;x2=1'b0;x3=1'b1;s0=1'b1; 
s1=1'b0;#10; 
x0=1'b0;x1=1'b0;x2=1'b0;x3=1'b1; 
s0=1'b1;s1=1'b1;#10; $finish; end 
endmodule 
