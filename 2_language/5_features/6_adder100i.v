module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );


    fadd fadd_ins1 (
                .a(a[0]),
                .b(b[0]),
                .cin(cin),
                .sum(sum[0]),
                .cout(cout[0])
            );
        
    genvar i;

    generate 
        for (i =1; i<100; i=i+1) begin : generate_100_fadd
            fadd fadd_ins(
                .a(a[i]),
                .b(b[i]),
                .cin(cout[i-1]),
                .sum(sum[i]),
                .cout(cout[i])
            );
        end        
    endgenerate
endmodule

module fadd ( input a, input b, input cin, output sum, output cout );
    assign sum = a ^ b ^ cin;
    assign cout = (a ^ b) & cin | a & b;
endmodule
