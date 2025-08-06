module top_module (
    input [7:0] in,
    output parity); 
    
    assign parity  = ^(in[7:0]); // by using xor reduction to find it is odd parity or not.
   // assign parity = ~(^(in[7:0]); // by using the xnot reductions to find it is even parity or not.

endmodule
