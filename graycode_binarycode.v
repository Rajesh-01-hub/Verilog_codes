// Module to convert 4-bit Gray code to Binary
module g_b(input [3:0] g,      // 4-bit Gray code input
           output reg [3:0] b  // 4-bit Binary output
          );

    // Always block triggers on any change in input signals (combinational logic)
    always @(*) 
           begin
        // The most significant bit (MSB) is the same in both Gray and Binary
             b[3] = g[3];
        // using begin and end keywords for grouped multi statement it is in sequencial manner or use "fork-join" for concurrent manner can observe the differences blw them

        // Each lower bit is computed by XOR the previous binary bit with the current gray bit

             b[2] = b[3] ^ g[2];
             b[1] = b[2] ^ g[1];
             b[0] = b[1] ^ g[0];
           end

       
endmodule
