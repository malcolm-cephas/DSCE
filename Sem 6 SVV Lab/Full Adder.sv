module full_adder ( input logic a, b, cin, output logic sum, cout);
assign sum = a ^ b ^ cin;
assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
module full_adder_tb;
logic a, b, cin, sum, cout;
logic expected_sum, expected_cout;
// DUT Instantiation
full_adder uut (
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);
// Self-checking logic
function void check_output();
expected_sum = a ^ b ^ cin;
expected_cout = (a & b) | (b & cin) | (a & cin);
if (sum !== expected_sum || cout !== expected_cout) begin
$display("ERROR: Incorrect Output! a=%b b=%b cin=%b | Expected: sum=%b cout=%b | Got: sum=%b cout=%b", a, b, cin, expected_sum, expected_cout, sum, cout);
end else begin
$display("PASS: a=%b b=%b cin=%b -> sum=%b cout=%b", a, b, cin, sum, cout);
end
endfunction
// Assertions for automatic checking
property full_adder_correct;
@(posedge clk) (sum == expected_sum) && (cout == expected_cout);
endproperty
assert property (full_adder_correct)
else $error("Assertion Failed: Incorrect Full Adder Output!");
// Test Stimulus
initial begin
$display("Starting Full Adder Test...");
for (int i = 0; i < 8; i++) begin
{a, b, cin} = i; // Generate all 8 possible input combinations
#5; // Wait for the circuit to respond
check_output();
end
$display("Full Adder Test Completed.");
$finish;
end
endmodule