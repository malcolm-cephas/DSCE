module fulladder_str (a, b, cin, sum, cout); input a, b, cin; output sum, cout;
wire s1,s2,s3;
xor x1(sum,a,b,cin);
and a1(s1,a,b);
and a2(s2,a,cin);
and a3(s3,b,cin);
or o1(cout,s1,s2,s3); endmodule