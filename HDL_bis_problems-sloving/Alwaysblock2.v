// synthesis verilog_input_version verilog_2001
//Combinational: always @(*)
//Clocked: always @(posedge clk)
module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
    assign out_assign = a^b;
  always @(*) begin      //Combinational: always @(*)
        out_always_comb = a^b;
    end
  always @(posedge clk) begin   //Clocked: always @(posedge clk)
        out_always_ff <= a^b;
    end
endmodule
