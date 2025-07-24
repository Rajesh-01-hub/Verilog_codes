// consider this mod_a our own way for complete the function of module. 
module mod_a ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
  assign out1 = a & b;
  assign out2 = c ^ d;
endmodule




module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    mod_a instance2 (.out1(out1),.out2(out2),.in1(a),.in2(b),.in3(c),.in4(d));

endmodule
