class ABC;
rand bit [2:0] b;
endclass
module tb;
initial begin
ABC abc = new;
for (int i = 0; i < 10; i++) begin
abc.randomize();
$display ("b=%0d", abc.b);
end
end
endmodule