module top_module( 
    input [254:0] in,
    output reg [7:0] out );
    
    always @(*) begin
        out = 8'b0;
        for (int i = 0; i<255; i=i+1) begin
            out = out + {8{in[i]}};
        end
    end

endmodule
