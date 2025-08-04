
/* Given the last two bytes of scancodes received, you need to indicate whether one of the arrow keys on the keyboard have been pressed.
This involves a fairly simple mapping, which can be implemented as a case statement (or if-elseif) with four cases.*/

/*Simply having a default case is not enough. You must assign a value to all four outputs in all four cases and the default case.
This can involve a lot of unnecessary typing. One easy way around this is to assign a "default value" to the outputs before the case statement*/
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    
    always @(*) begin
        left = 1'b0; right = 1'b0; down = 1'b0; up = 1'b0;
        case(scancode)
            16'he06b : left = 1'b1;
            16'he072 : down = 1'b1;
            16'he074 : right = 1'b1;
            16'he075 : up = 1'b1;
        endcase
    end

    
endmodule
