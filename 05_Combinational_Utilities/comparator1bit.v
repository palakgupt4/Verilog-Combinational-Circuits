module comparator1bit(
    input a,
    input b,
    output greater,
    output equal,
    output less
);

assign greater = a & ~b;
assign equal   = ~(a ^ b);
assign less    = ~a & b;

endmodule