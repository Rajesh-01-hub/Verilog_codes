module  testbench;

  reg a,b,c;
  wire sum,carry;
  integer i;
  
  full_adder GUT(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
  
  initial
    begin
      a=0;b=0;c=0;
    end
  initial
    begin
      for(i=0;i<8;i=i+1)
        
        begin
          {a,b,c}=i[2:0]; // make a loop "i" integer to count 0 to 7 for every 10 seconds
      	   #10;
        end
      
    end
  initial
    begin
      $monitor("time=%t | sum=%b | carry=%b | a=%b | b=%b | c=%b \n", $time,sum,carry,a,b,c);  // using for shoe the result for every change
      #90 $finish;
    end
    // Generate waveform dump for GTKWave
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, testbench);
  end
  
endmodule

  
        
      
      
    
  
