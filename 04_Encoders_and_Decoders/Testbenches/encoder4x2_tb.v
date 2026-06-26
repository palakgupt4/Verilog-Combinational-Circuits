module encoder4x2_tb;

reg i0;
reg i1;
reg i2;
reg i3;

wire y1;
wire y0;

encoder4x2 DUT(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .y1(y1),
    .y0(y0)
);

initial begin

    $monitor("I3=%b I2=%b I1=%b I0=%b Y1=%b Y0=%b",
             i3,i2,i1,i0,y1,y0);

    i0=1; i1=0; i2=0; i3=0; #10;

    i0=0; i1=1; i2=0; i3=0; #10;

    i0=0; i1=0; i2=1; i3=0; #10;

    i0=0; i1=0; i2=0; i3=1; #10;

    $finish;

end

endmodule