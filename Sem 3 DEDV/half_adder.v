module half_adder(S, C, A, B);
output S, C;
input A, B;
assign S = A ^ B;
assign C = A & B;
endmodule
module full_adder(sum, cout, in1, in2, cin);
output sum, cout;
input in1, in2, cin;
wire I1, I2, I3;
half_adder ha1(I1, I2, in1, in2);
half_adder ha2(sum, I3, I1, cin);
assign cout = I2 || I3;
endmodule