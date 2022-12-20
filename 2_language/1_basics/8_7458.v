// https://hdlbits.01xz.net/mw/images/e/e1/7458.png

module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire and_2a2b;
    wire and_2c2d;
    assign and_2a2b = p2a && p2b;
    assign and_2c2d = p2c && p2d;
    assign p2y = and_2a2b || and_2c2d;

    wire and_1a1b1c;
    wire and_1d1e1f;
    assign and_1a1b1c = p1a && p1b && p1c;
    assign and_1d1e1f = p1d && p1e && p1f;
    assign p1y = and_1a1b1c || and_1d1e1f;
endmodule