module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]s1,s2,s3,s4;
    wire c1,c2,c3;
    add16 instance1 (  a[15:0], b[15:0],0,s1,c1);
    add16 instance2 ( .a(a[31:16]), .b(b[31:16]),.cin(0), .sum(s2),.cout(c2));
    add16 instance3 ( .a(a[31:16]) , .b(b[31:16]), .cin(1), .sum(s3) , .cout(c3));
  always @(*) begin // uisng multiplixer can reduce the delay time cout from 1->add16 to 2-> add16 
        case ({c1})
       		1'b0 : s4 = s2;
            1'b1 : s4 = s3;
            default : s4 = 16'dx;
        endcase
    end
    assign sum = {s4,s1};
    
endmodule
// adder_16 bits operator instantance add1() module
module add16 ( input [15:0] a,b, input cin, output cout,[15:0] sum);
        wire [16:0]c;
        genvar i ;
  assign c[0] = cin;
        generate
          for (i = 0; i < 16; i = i + 1) begin : loop 
             add1 fa (
                 .a(a[i]),
                 .b(b[i]),
                 .cin(c[i]),
                 .sum(sum[i]),
                 .cout(c[i+1])
                        );
        end
    endgenerate
    assign cout = c[16];
endmodule

module add1 (input a,b,cin, output sum,cout // single bit adder bit operation
  
  assign sum = a^b^c;
  assign cout = a&b | c&a | c&b;
  
endmodule

        
        
