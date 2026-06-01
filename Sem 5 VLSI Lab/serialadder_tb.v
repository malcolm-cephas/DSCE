module serialadder_tb;

  reg clk, rst, pload, enable;
  reg [7:0] adata, bdata;
  wire [7:0] pout;

  serialadder DUT (
    .clk(clk),
    .rst(rst),
    .pload(pload),
    .adata(adata),
    .bdata(bdata),
    .enable(enable),
    .pout(pout)
  );

  always #5 clk = ~clk;

  initial begin
    clk = 1'b0;
    rst = 1'b1;
    pload = 1'b0;
    enable = 1'b0;
    #10 rst = 1'b0;
    
    #10 pload = 1'b1; enable = 1'b0;
    adata = 8'd1; bdata = 8'd2;
    $display($time, " First Data - Inputs loaded: adata=%0h, bdata=%0h, pout=%0h", adata, bdata, pout);
    
    #10 pload = 1'b0; enable = 1'b1;
    #200
    $display($time, " First Serial Add Completed: adata=%0h, bdata=%0h, pout=%0h", adata, bdata, pout);

    rst = 1'b0;
    #10 pload = 1'b1; enable = 1'b0;
    adata = 8'd2; bdata = 8'd3;
    $display($time, " Second Data - Inputs loaded: adata=%0h, bdata=%0h, pout=%0h", adata, bdata, pout);
    
    #10 pload = 1'b0; enable = 1'b1;
    #200
    $display($time, " Second Serial Add Completed: adata=%0h, bdata=%0h, pout=%0h", adata, bdata, pout);

    $finish;
  end

  initial begin
    `ifdef CAD_DUMP_ON 
      $recordfile("adder.trn");  
      $recordvars("depth=0");  
    `endif

    `ifdef VCD_DUMP_ON  
      $dumpfile("adder.vcd"); 
      $dumpvars(0, serialadder_tb);  
    `endif
  end

endmodule
