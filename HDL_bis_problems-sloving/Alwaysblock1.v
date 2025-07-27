// synthesis verilog_input_version verilog_2001
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock 
);
    assign out_assign = a & b; // combitional circuit continous assigment wire
    always @(*) begin
        out_alwaysblock = a & b; // reg value output use behavioural level
    end
// getting the same logic difference is here , logic write in inside the producre , logic write in output 
endmodule
