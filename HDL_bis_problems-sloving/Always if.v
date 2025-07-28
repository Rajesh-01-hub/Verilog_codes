// synthesis verilog_input_version verilog_2001
//sel_b1  sel_b2   out
//0       0         a
//0       1         a
//1       0         a
//1       1         b
// logic is here , if o&o = o ,0&1=0,1&0=0 get "a" , other wise 1&1=1 get "b"

module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 
    
    assign out_assign = (sel_b1 & sel_b2)==0? a : b;
    
    always @(*) begin
        if((sel_b1 & sel_b2)==0) begin
            out_always = a;
        end
        else
            begin
                out_always = b;
            end
    end
    
endmodule
