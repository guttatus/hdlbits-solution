module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] xor_b;
    wire out_in;

    assign xor_b = b ^ {32{sub}};

    add16 instance1 (.a(a[15:0]), .b(xor_b[15:0]), .cin(sub), .sum(sum[15:0]), .cout(out_in));
    add16 instance2 (.a(a[31:16]), .b(xor_b[31:16]), .cin(out_in), .sum(sum[31:16]));
endmodule