// 2-bit Half Adder
// can only understand when you know the procedure 
module h_f(input a, b, output sum, carry);
  assign sum = a ^ b;     // XOR for sum
  assign carry = a & b;   // AND for carry
endmodule

// 2-bit × 2-bit Multiplier using Half Adders
module mul_hf(input [1:0] a, b, output [3:0] mul);
  wire s0, s1, c1, s2, c2;

  assign s0 = a[0] & b[0];                          // mul[0] = LSB
  h_f h1((a[0] & b[1]), (a[1] & b[0]), s1, c1);     // mul[1], carry to next
  h_f h2((a[1] & b[1]), c1, s2, c2);                // mul[2], mul[3]

  assign mul = {c2, s2, s1, s0};                    // Combine to 4-bit output
endmodule
