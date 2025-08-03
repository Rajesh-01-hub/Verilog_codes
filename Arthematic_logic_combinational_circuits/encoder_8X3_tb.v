module encode_8X3_tb;
  reg [7:0] in;
  wire [2:0] out;

  // Instantiate the DUT (Device Under Test)
  encode_8X3 DUT (in, out);

  initial begin
    in = 8'b00000000;
  end

  initial begin
    #10 in = 8'b00000001; // I0
    #10 in = 8'b00000010; // I1
    #10 in = 8'b00000100; // I2
    #10 in = 8'b00001000; // I3
    #10 in = 8'b00010000; // I4
    #10 in = 8'b00100000; // I5
    #10 in = 8'b01000000; // I6
    #10 in = 8'b10000000; // I7
  end

  initial begin
    $monitor("%4t | Input: %8b (%0d) | Output: %3b (%0d)", 
              $time, in, in, out, out);
  end

  initial begin
    #100 $finish;
  end
  
  initial begin
    $dumpfile("encode_8X3.vcd");    // Name of VCD file
    $dumpvars(0, encode_8X3_tb);    // Dump all variables in this module
  end
  
endmodule
