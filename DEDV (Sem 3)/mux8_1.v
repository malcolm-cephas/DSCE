module mux8_1 (I, S, D); input [7:0] I;
input [2:0] S; output D; reg D;
always @ (I, S) begin
case(S)
3’d0: D=I[0];
3’d1: D=I[1];
3’d2: D=I[2];
3’d3: D=I[3];
3’d4: D=I[4];
3’d5: D=I[5];
3’d6: D=I[6];
3’d7: D=I[7];
default: D=1'BZ;
endcase
end
endmodule