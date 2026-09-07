`timescale 1ns / 1ps

module control_unit_single_iter(input wire s_i_minus_1_bit_m, input wire sign_i_minus_1,
  input wire [130:0] d_i_minus_1, output wire sign_i, output wire [130:0] d_i,
  output wire c_i_1, c_i_2);
 
 assign sign_i = (sign_i_minus_1 == 0) ?  d_i_minus_1[0] : (~s_i_minus_1_bit_m);
 assign d_i = (sign_i == 1) ? (d_i_minus_1 << 1) : (d_i_minus_1 >> 1);   
 assign c_i_1 = s_i_minus_1_bit_m;                      
 assign c_i_2 = s_i_minus_1_bit_m & sign_i_minus_1;
endmodule
