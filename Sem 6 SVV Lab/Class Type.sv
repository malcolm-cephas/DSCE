class myPacket;
bit [2:0] header;
bit encode;
bit [2:0] mode;
bit [7:0] data;
bit stop;
// Constructor with default values
function new (bit [2:0] header = 3'h1, bit [2:0] mode = 3'h5);
this.header = header;
this.encode = 0;
this.mode = mode;
this.data = 8'h00; // Explicitly initialized
this.stop = 1;
endfunction
// Display function
function void display ();
$display ("Header = 0x%0h, Encode = %0b, Mode = 0x%0h, Data = 0x%0h, Stop = %0b",
this.header, this.encode, this.mode, this.data, this.stop);
endfunction
endclass

module tb_top;
myPacket pkt0, pkt1;
initial begin
$display("==== Packet 0 ====");
pkt0 = new (3'h2, 3'h3);
pkt0.display ();
$display("==== Packet 1 ====");
pkt1 = new ();
pkt1.display ();
$finish;
end
endmodule