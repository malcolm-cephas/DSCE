module demux1_8(I,S,D); input I;
input [2:0] S;
output [7:0] D;
reg [7:0] D; always @(I,S) begin D=8’d0; CASE (S) 3'd0 : D[0]=I;
3'd1 : D[1]=I;
3'd2 : D[2]=I;
3'd3 : D[3]=I;
3'd4 : D[4]=I;
3'd5 : D[5]=I;
3'd6 : D[6]=I;
3'd7 : D[7]=I;
default: D=8'B00000000;
endcase
end
endmodule