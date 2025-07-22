module test_b;
    reg [3:0] g;
    wire [3:0] b;
    integer i;

    // Instantiate the design module
  g_b gut(.g(g), .b(b));

    // Apply test values from 0 to 15
    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            g = i[3:0];
            #10;
        end
    end

    // Monitor signal values
    initial begin
        $monitor("Time = %0t | g = %4b | b = %4b", $time, g, b);
      	#200 $finish;
    end

    // Dump waveform
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, test_b);
    end

    // End simulation
endmodule
