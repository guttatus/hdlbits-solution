module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] q_ins1;
    wire [7:0] q_ins2;
    wire [7:0] q_ins3;

    my_dff8 instance1 (.clk(clk), .d(d), .q(q_ins1));
    my_dff8 instance2 (.clk(clk), .d(q_ins1), .q(q_ins2));
    my_dff8 instance3 (.clk(clk), .d(q_ins2), .q(q_ins3));

    always @(*) begin
       case (sel)
        2'b00: q = d;
        2'b01: q = q_ins1;
        2'b10: q = q_ins2;
        2'b11: q = q_ins3;
        default: q = 8'bz;
       endcase 
    end

endmodule