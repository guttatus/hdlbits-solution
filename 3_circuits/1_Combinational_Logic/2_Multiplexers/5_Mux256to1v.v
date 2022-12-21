module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );

    // Bit slicing ("Indexed vector part select", since Verilog-2001) 
    assign out = in[sel*4 +: 4];
endmodule