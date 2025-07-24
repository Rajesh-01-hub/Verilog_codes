
// D-flip_flop module for top_module.
module my_dff (input clk,d,output reg q);
 always @(posedge clk)
      q <=d;
endmodule


// shift register siso(series in series out) simple manner
module top_module ( input clk, input d, output q );
    wire q1,q2;
    my_dff instance1 (clk,d,q1);
    my_dff instance2 (clk,q1,q2);
    my_dff instance3 (clk,q2,q);
endmodule
