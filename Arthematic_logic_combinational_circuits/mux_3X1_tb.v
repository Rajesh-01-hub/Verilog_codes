// Code your testbench here
// or browse Examples
module mux3_1_tb();
  reg [3:0]i;
  reg[1:0]s;
  wire y;
  mux3_1 gut (i,s,y);
  
  initial begin
    i=4'd0;
    s=2'd0;
  end
  initial begin
    #5 i=4'b0000; s=2'b00;
    #5 i=4'b0001; s=2'b00;
    #5 i=4'b0010; s=2'b01;
    #5 i=4'b0100; s=2'b10;
    #5 i=4'b1000; s=2'b11;
  end
  
  initial begin
    $monitor(" time = %.4t || i=%4b || s=%d || y=%b",$time,i,s,y);
    #30 $finish;
  end
   initial begin
        // ***** WAVEFORM GENERATION *****
        // create a dump file and record all signals
        $dumpfile("mux3_1.vcd");  // name of VCD file
        $dumpvars(0, mux3_1_tb);  // record everything in this testbench
    end
  
endmodule
  
  
