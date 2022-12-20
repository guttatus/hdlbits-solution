// 进位选择加法器

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire out_sel;
    wire [15:0] sum_case_0;
    wire [15:0] sum_case_1;

    add16 instance1 (.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(out_sel));
    add16 instance2 (.a(a[31:16]), .b(b[31:16]), .cin(0), .sum(sum_case_0));
    add16 instance3 (.a(a[31:16]), .b(b[31:16]), .cin(1), .sum(sum_case_1));

    always @(*) begin
        if (out_sel == 1'b0)
            sum[31:16] = sum_case_0;
        else
            sum[31:16] = sum_case_1;
        
    end
endmodule