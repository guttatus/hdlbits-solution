module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire out_in;
    add16 instance1 (.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(out_in));
    add16 instance2 (.a(a[31:16]), .b(b[31:16]), .cin(out_in), .sum(sum[31:16]));

endmodule