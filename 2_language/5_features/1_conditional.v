module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0] min_1;
    wire [7:0] min_2;

    assign min_1 =(a < b) ? a : b;
    assign min_2 =(min_1 < c) ? min_1 : c;
    assign min = (min_2 < d) ? min_2 : d;

endmodule
