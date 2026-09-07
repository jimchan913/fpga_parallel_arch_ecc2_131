`timescale 1ns / 1ps

module add_coefficient_module#(parameter n = 131)(input wire [n-1:0] a, input wire [n-1:0] b, output wire [n-1:0] result);
    wire [n-1:0] order_of_P;
    assign order_of_P = 131'h400000000000000026ABB991FE311FE83;
    assign result = (a + b) % order_of_P;
endmodule
