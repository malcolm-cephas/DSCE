module tb;
// Create a queue that can store "string" values
string fruits[$] = { "orange", "apple", "kiwi" };
initial begin
// Iterate and access each queue element
foreach (fruits[i])
$display ("fruits[%0d] = %s", i, fruits[i]);
// Display elements in a queue
$display ("fruits = %p", fruits);
// Delete all elements in the queue
fruits = {};
$display ("After deletion, fruits = %p", fruits);
end
endmodule