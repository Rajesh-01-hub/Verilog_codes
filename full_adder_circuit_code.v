module half_adder( a,b,w1,w2);
  input a,b;
  output w1,w2;
  
  // gate level abstraction
  xor x1(w1,a,b);
  
  and a1(w2,a,b);
endmodule
module full_adder ( input a,b,c, output sum ,carry);
   wire w1,w2,w3;
  // instantiation
  
  half_adder ha1 (a, b, w1, w2); // half_adder ha1 (.a(a), .b(b) , .w1(w1) , .w2(w2));

  half_adder ha2 ( w1, c , sum, w3); // half_adder ha2  (.a(w1), .b(c) , .w1(sum) , .w2(w3));
  
  or o1(carry, w3,w2);
endmodule
  
  
