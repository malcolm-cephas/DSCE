module nor (x,y,z); 
input x,y; 
output z; 
wire q, vdd, gnd; 
assign vdd = 1'b1;  
assign gnd = 1'b0; pmos p1 (q,vdd,x); /* pmos 
name(drain, source, gate)*/ 
pmos p2 (z,q,y);  
nmos n1 (z,gnd,x); /* pmos name(drain, source, gate)*/  
nmos n2 (z,gnd,y); 
endmodule 
 