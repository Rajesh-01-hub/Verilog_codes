module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    full_adders f1 ( .a(a[0]) , .b(b[0]) , .cin(cin) , .cout(cout[0]),.sum(sum[0]));
/*generate is not simulation-time code.
It’s a compile-time loop:

Before simulation starts, the compiler runs the generate loop.

For each iteration, it copies and pastes another instance of the submodule into your design.

By the time simulation starts, the hardware is already there — nothing is “created” during simulation.*/
    genvar i;
    generate
        for(i=1; i<100 ;i=i+1) begin : adder_chain //That : adder_chain is a label for the block of code in that loop iteration.
            full_adders f2 ( .a(a[i]) , .b(b[i]) , .cin(cout[i-1]) , .cout(cout[i]),.sum(sum[i]));
        end
    endgenerate
            
endmodule
module full_adders(input a,b,cin, output cout,sum);
    assign sum = a^b^cin;
    assign cout = a&b | cin&a | cin&b;
endmodule
