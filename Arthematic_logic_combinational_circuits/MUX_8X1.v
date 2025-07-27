// Code your design here
module MUX_8_1 (input [7:0] i,input [2:0]sel,output reg out);
  always @(*) begin // behavioural model  accept reg value  due to wire is sensitivity
    case({sel})
      3'd0 : out=i[0];
      3'd 1 : out=i[1];
      3'd 2 : out=i[2];
      3'd 3 : out=i[3];
      3'd 4 : out=i[4];
      3'd 5 : out=i[5];
      3'd 6 : out=i[6];
      3'd 7 : out=i[7];
      default : out= 1'bx;
    endcase
  end
endmodule
