// Testbench for Full Subtractor
// This testbench verifies all possible input combinations for a 1-bit full subtractor.

module test_b();
  reg a, b, c;               // Inputs: a (minuend), b (subtrahend), c (borrow in)
  wire diff, br;            // Outputs: diff (difference), br (borrow out)
  integer i;

  // Instantiate the full subtractor module
  full_sub gut(.a(a), .b(b), .c(c), .diff(diff) , .br(br));

  // Initialize inputs
  initial begin
    a = 0; b = 0; c = 0;
  end

  // Apply all 8 input combinations using a for loop
  initial begin
    for (i = 0; i < 8; i = i + 1) begin
      {a, b, c} = i[2:0];
      #10; // Wait 10 time units
    end
  end

  // Display output values whenever any input or output changes
  initial begin
    $monitor("Time = %t | a = %b | b = %b | c = %b | diff = %b | borrow = %b", 
              $time, a, b, c, diff, br);
  end

  // Finish simulation after 80 time units
  initial begin
    #80 $finish;
  end

  // Generate waveform dump file for viewing in GTKWave or similar
  initial begin
    $dumpfile("full_sub.vcd");    
    $dumpvars(0, test_b);
  end
endmodule
