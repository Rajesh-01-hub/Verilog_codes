module test_b;
  reg [3:0]b;
  wire [3:0]g;
  integer i;
  
  b_g gut ( b,g );
  
  initial
    begin
      b = 4'b0000;
    end
  initial
    begin
      for(i=0;i<16; i = i+1) begin
        b = i[3:0];
        #10;
      end
    end
  initial
    begin
      $monitor("time = %0t | b = %4b | g = %4b", $time, b,g);
    end
  
  initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, test_b);
    end
  initial
    begin
      #160 $finish;
    end
endmodule

  
