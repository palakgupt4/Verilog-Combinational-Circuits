module decoder2x4_tb;

reg a;
reg b;

wire y0;
wire y1;
wire y2;
wire y3;

decoder2x4 DUT(
    .a(a),
    .b(b),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin

    $monitor("A=%b B=%b Y0=%b Y1=%b Y2=%b Y3=%b",
             a,b,y0,y1,y2,y3);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;

end

endmodule