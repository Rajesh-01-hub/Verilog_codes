module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0]b1;
    wire [15:0]s1,s2;
    wire c1,c2;
    assign b1 = b^{32{sub}};
    add16 n1 ( .a(a[15:0]), .b(b1[15:0]), .cin(sub),.sum(s1), .cout(c1));
    add16 n2 ( .a(a[31:16]), .b(b1[31:16]), .cin(c1),.sum(s2), .cout(c2));
    assign sum = {s2,s1};

endmodule
module add1 (
    input a, b, cin,
    output sum, cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule

// 16-bit Ripple Carry Adder using add1
module add16 (
    input [15:0] a, b,
    input cin,
    output [15:0] sum,
    output cout
);
    wire [16:0] c; // carry chain
    assign c[0] = cin;

    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin : full_adder_chain
            add1 fa (
                .a(a[i]),
                .b(b[i]),
                .cin(c[i]),
                .sum(sum[i]),
                .cout(c[i+1])
            );
        end
    endgenerate

    assign cout = c[16]; // final carry out
endmodule
