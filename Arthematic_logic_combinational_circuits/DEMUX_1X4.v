module DEMUX  ( input i,input [1:0]sel, output reg [3:0]out);
  
  always @(*) begin
    out =  4'b0000;
    case ({sel})
      2'd0 : out[0] = i;
      2'd1 : out[1] = i;
      2'd2 : out[2] = i;
      2'd3 : out[3] = i;
      
    endcase
  end
endmodule
