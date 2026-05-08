module encoder_wop_tb;
    reg [7:0] I;
    wire [2:0] D;
    encoder_wop uut (
        .I(I), 
        .D(D)
    );
    initial begin
       I = 8'd0;
        #10 I = 8'd1;   
        #10 I = 8'd2;   
        #10 I = 8'd4;   
        #10 I = 8'd8;   
        #10 I = 8'd16;  
        #10 I = 8'd32;  
        #10 I = 8'd64;  
        #10 I = 8'd128; 
        #10 I = 8'd0;   
        #10 $finish;
    end
    initial begin
        $monitor("At time %t, I = %b -> D = %b", $time, I, D);
    end
endmodule
