/*Unsigned numbers can be compared with standard comparison operators (a < b). Use the conditional operator to make two-way min circuits, then compose a few of them to create a 4-way min circuit. 
You'll probably want some wire vectors for the intermediate results.*/

module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0] min1,min2;
    assign min1 = a<b ? a : b;
    assign min2 = c<d ? c : d ;
    assign min = (min1 < min2) ? min1 : min2;
endmodule
