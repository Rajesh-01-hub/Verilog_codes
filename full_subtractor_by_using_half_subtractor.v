// Half Subtractor Module

module half_sub(input a, b, output w1, w2);
  assign w1 = a ^ b;    // Difference
  assign w2 = ~a & b;   // Borrow
endmodule

// Full Subtractor Module using two Half Subtractors

module full_sub(input a, b, c, output diff, br);
  wire w1, w2, w3;
// instantiation 
  half_sub h1 (a, b, w1, w2); // w2= a'.b, w1= a^b
  half_sub h2 (w1, c, diff, w3); // w3= c.(a^b)', diff = a^b^c

  assign br = w2 | w3;  // Final Borrow br = a'.b + c.(a^b)'
endmodule
