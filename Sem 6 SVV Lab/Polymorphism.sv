class Packet;
bit [31:0] addr;
// Constructor
function new (bit [31:0] addr = 32'h0000_0000);
this.addr = addr;
endfunction
// Display Function
function void display();
$display("BaseClass: Address = 0x%0h", this.addr);
endfunction
endclass
// Sub Class Definition
class ExtPacket extends Packet;
bit [31:0] data;
// Constructor
function new (bit [31:0] addr = 32'h0000_0000, bit [31:0] data = 32'hDEAD_BEEF);
super.new(addr); // Call base class constructor
this.data = data;
endfunction
// Overriding Display Function
function void display();
$display("SubClass: Address = 0x%0h, Data = 0x%0h", this.addr, this.data);
endfunction
endclass

module tb;
Packet bc; // bc stands for BaseClass
ExtPacket sc; // sc stands for SubClass
initial begin
sc = new (32'hfeed_feed, 32'h1234_5678);
// Assign sub-class to base-class handle
bc = sc;
bc.display ();
sc.display ();
end
endmodule