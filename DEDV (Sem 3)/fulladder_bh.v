module fulladder_bh( a, b, cin, sum, cout); input a, b, cin;
output sum,cout; reg sum,cout; always @(a,b,cin)
{cout,sum}=a+b+cin; endmodule