module nand (x,y,z);  
input x,y; output z;  
wire q, vdd, gnd; assign vdd = 1'b1;  
assign gnd = 1'b0; pmos p1 (z,vdd,x); /* pmos 
name(drain, source, gate)*/  
pmos p2 (z,vdd,y);  
nmos n1 (z,q,x); /* nmos name(drain, source, 
gate)*/  
nmos n2 (q,gnd,y); endmodule 