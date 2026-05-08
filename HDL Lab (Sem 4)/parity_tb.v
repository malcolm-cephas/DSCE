module function_test_tb;
    reg [3:0] INP;
    wire [4:0] Z;
    function_test uut (
        .Z(Z)
    );
    initial begin
        $monitor("Time = %0t, INP = %b, Z = %b", $time, INP, Z);        
        #0 INP = 4'b0101;
        #100;
        $finish;
    end
endmodule
