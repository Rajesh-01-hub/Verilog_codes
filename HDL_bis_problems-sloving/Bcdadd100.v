module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [99:0] co;
    bcd_fadd f1 ( .a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(co[0]),.sum(sum[3:0]));
/*always/assign blocks = workers actually doing real-time work (combinational/sequential logic).

genvar + generate = the construction blueprint stage before the factory even starts.*/
//“i wants 100 BCD adders . I will make 100 physical copies of this block in the netlist" important statement for understand the generate block.

    genvar i;
    generate
        
            for(i=4;i<400;i=i+4)
                begin: full_adder_bcd
                    bcd_fadd f2 ( .a(a[i+3:i]), .b(b[i+3:i]), .cin(co[(i/4)-1]), .cout(co[i/4]),.sum(sum[i+3:i]));
                end
       
    endgenerate
    assign cout = co[99];
    
                    
            
    
    
    

endmodule
