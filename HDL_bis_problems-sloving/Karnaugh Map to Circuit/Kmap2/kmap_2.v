module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    assign out =( ((~d)&(~a))|((~c)&(~b))|(c&(~a)&b)|(d&a&(~b))|(c&d&b)|(c&d&a));
endmodule
