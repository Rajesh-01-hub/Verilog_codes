// Code your design here
module logicgates ( input i0,i1, output y0,y1,y2,y3,y4,y5);
  // Gate-level abstraction
  and a1 (y0,i0,i1);
  
  or  a2(y1,i0,i1);
  
  nand a3(y2,i0,i1);
  
  nor  a4(y3,i0,i1);
  
  xor  a5(y4,i0,i1);
  
  xnor a6(y5,i0,i1);
endmodule
