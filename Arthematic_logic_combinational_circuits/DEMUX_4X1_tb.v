module DEMUX_tb();
  reg i;
  reg [1:0]sel;
  wire [3:0]out;
  
  DEMUX gut (.i(i),  .sel(sel), .out(out));
  initial  begin
    i = 0;
    sel = 2'b00;
  end
  
  initial begin
    sel=2'b01; i=1; #10;
    sel=2'b11; i=1; #10;
    sel=2'b10; i=1; #10;
  end
  
  initial begin
    $display(" time | sel | input | output");
    $monitor(" %4t  | %2b->(%d) | %b | %b->(%d)", $time,sel,sel,i,out,out);
  end
  initial begin
    #50 $finish;
  end
  
  initial begin
    $dumpfile("demux_waveform.vcd"); // Name of the VCD file
    $dumpvars(0,DEMUX_tb );          // Dump everything in this testbench
  end
endmodule
