module top_module( 
    input [254:0] in,
    output [7:0] out );
    integer i;
    reg [7:0] j;
    
    always@(*) begin
        j=0;  // reset count each time
        for( i=0 ; i< 255 ;i=i+1)
            begin
                if(in[i] == 1'b1)
                    begin
                        j=j+1;
                    end
            end
    end
    
    assign out = j;
        

endmodule
