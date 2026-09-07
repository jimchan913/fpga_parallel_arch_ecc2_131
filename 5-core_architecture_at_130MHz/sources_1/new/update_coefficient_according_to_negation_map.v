`timescale 1ns / 1ps

module update_coefficient_according_to_negation_map#(parameter n = 131)(input wire sign_taken, input wire [n-1:0] input_coeff, output wire [n-1:0] output_coeff);
    localparam order_of_P = 131'h400000000000000026ABB991FE311FE83;

    // if sign_taken = 1, it represents a negative sign is taken, otherwise a postive sign
    assign output_coeff = sign_taken ? (order_of_P - input_coeff) : input_coeff; 
endmodule
