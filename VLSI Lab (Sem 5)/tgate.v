module tgate(a,s,y);  
input a,s; output y;  
pmos u1(y,a,~s); /* pmos 
name(drain, source, gate)*/  
nmos u2(y,a,s); /* nmos 
name(drain, source, gate)*/ 
endmodule 