module padd (a, b,cin,s,cout); 
input [3:0]a,b;
input cin; output [3:0]s; 
output cout; 
wire [3:1]c;
FAA FA0 (a[0],b[0], cin,s[0],c[1]);
FAA FA1 (a[1],b[1],c[1],s[1],c[2]);
FAA FA2 (a[2],b[2],c[2],s[2],c[3]);
FAA FA3 (a[3],b[3],c[3],s[3],cout);
endmodule
module FAA (a,b,ci,s,co); 
input a,b,ci;
output s,co;
assign s = a^b^ci;
assign co = (a&b)|(b&ci)|(ci&a); 
endmodule
