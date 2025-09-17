// Code your design here
module mux3_1(i,s,y);
  input [3:0]i;
  input [1:0]s;
  output reg y;
  
  always@(*) // using for the combinational circuits
      begin
        case(s) // conditional statement
          2'b00: y = i[0];
          2'b01: y = i[1];
          2'b10: y = i[2];
          default: y = 1'b0;
        endcase
      end
  
endmodule
