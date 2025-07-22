
// proformed as our give ciruit output boolean algebra logic

module mul_hf(input [1:0] a, b, output [3:0] mul);
  wire s0, s1, c1, s2, c2;

  // Bit 0 of the product
  assign s0 = a[0] & b[0];

  // Approximate sum for bit 1 (should use XOR instead of +)
  assign s1 = (a[1] & b[0]) + (a[0] & b[1]);

  // Carry from above addition
  assign c1 = (a[1] & b[0]) & (a[0] & b[1]);

  // Approximate sum for bit 2
  assign s2 = (a[1] & b[1]) + c1;

  // Final carry (bit 3)
  assign c2 = (a[1] & b[1]) & c1;

  // Combine into 4-bit output
  assign mul = {c2, s2, s1, s0};
endmodule
