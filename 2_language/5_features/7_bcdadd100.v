module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire  [99:0] out_in; 
    bcd_fadd bcd_fadd_ins1 (
                .a(a[3:0]),
                .b(b[3:0]),
                .cin(cin),
                .sum(sum[3:0]),
                .cout(out_in[0])
            );  
        
    genvar i;

    generate 
        for (i =4; i<400; i=i+4) begin : generate_100_fadd
            bcd_fadd bcd_fadd_ins(
                .a(a[i+3:i]),
                .b(b[i+3:i]),
                .cin(out_in[(i-4)/4]),
                .sum(sum[i+3:i]),
                .cout(out_in[i/4])
            );
        end        
        assign cout = out_in[99];
    endgenerate

endmodule