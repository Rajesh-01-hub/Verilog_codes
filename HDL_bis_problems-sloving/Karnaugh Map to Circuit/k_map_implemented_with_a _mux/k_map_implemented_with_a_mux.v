
/*The requirement to use only 2-to-1 multiplexers exists because the original exam question also wanted to test logic function simplification using K-maps and how to synthesize logic functions using only multiplexers. If you wish to treat this as purely a Verilog exercise,
you may ignore this constraint and write the module any way you wish.*/
module top_module (
    input c,
    input d,
    output [3:0] mux_in
); 
    assign mux_in[0]=(d|c);
    assign mux_in[1]=1'b0;
    assign mux_in[2]=(~d);
    assign mux_in[3]=(c&d);

endmodule
