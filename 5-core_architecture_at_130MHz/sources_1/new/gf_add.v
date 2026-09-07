`timescale 1ns / 1ps


module gf_add(input wire [130:0] x1, input wire [130:0] x2, output wire [130:0] result);
    assign result = x1 ^ x2; 
endmodule
