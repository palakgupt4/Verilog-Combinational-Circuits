module parity_generator(
    input a,
    input b,
    input c,
    input d,
    output parity
);

assign parity = a ^ b ^ c ^ d;

endmodule