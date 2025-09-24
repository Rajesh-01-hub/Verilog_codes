
//  output and input waveforms given sum_circuit_HDL.md 
module top_module (
    input a,
    input b,
    input c,
    input d,
    output q );//

    assign q = (b&(d|c))|(a&(d|c)); // Fix me

endmodule
