module inv(x,y); input x; output y;  
wire vdd, gnd;  
assign vdd = 1'b1;  
assign gnd = 1'b0;  
pmos p1 (y,vdd,x); /* pmos name(drain, source, 
gate)*/  
nmos n1 (y,gnd,x); /* nmos name(drain, source, 
gate)*/  
endmodule