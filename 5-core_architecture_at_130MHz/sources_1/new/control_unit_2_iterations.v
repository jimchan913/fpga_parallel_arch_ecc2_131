`timescale 1ns / 1ps

module control_unit_2_iterations(input wire s_i_minus_1_bit_m, input wire s_i_minus_1_bit_m_minus_1,
  input wire r_i_minus_1_bit_m_minus_1, input wire sign_i_minus_1, input wire [130:0] d_i_minus_1, output wire sign_i_plus_1, output wire [130:0] d_i_plus_1,
  output wire c_i_1, c_i_2, c_i_plus_plus_1, c_i_plus_plus_2);
 
 wire sign_i;
 wire mux_output_1;
 assign sign_i = (sign_i_minus_1 == 0) ?  d_i_minus_1[0] : (~s_i_minus_1_bit_m);
 assign mux_output_1 = (c_i_1 == 0) ? s_i_minus_1_bit_m_minus_1 : (s_i_minus_1_bit_m_minus_1 ^ r_i_minus_1_bit_m_minus_1);
 assign sign_i_plus_1 = ( sign_i == 0) ? ((~sign_i) & d_i_minus_1[1]) : (~mux_output_1);
 assign d_i_plus_1 = ({sign_i, sign_i_plus_1} == 2'b00) ? (d_i_minus_1 >> 2) : 
                         (({sign_i, sign_i_plus_1} == 2'b11) ? (d_i_minus_1 << 2) : d_i_minus_1); 
 assign c_i_1 = s_i_minus_1_bit_m;                      
 assign c_i_plus_plus_1 = mux_output_1;
 assign c_i_2 = s_i_minus_1_bit_m & sign_i_minus_1;
 assign c_i_plus_plus_2 = sign_i & mux_output_1;
endmodule
