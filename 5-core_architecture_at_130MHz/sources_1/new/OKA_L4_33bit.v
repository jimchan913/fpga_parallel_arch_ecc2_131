`timescale 1ns / 1ps

module OKA_L4_33bit #(parameter n = 33)
(input wire [n-1:0] a, input wire [n-1:0] b, output wire [2*n-2:0] y);

   
   wire [((n+1)/2) -1 : 0] a_odd;
   wire [((n+1)/2) -1 : 0] b_odd;
   wire [n-1:0] y_odd;

   wire [((n+1)/2) -1 : 0] a_even;
   wire [((n+1)/2) -1 : 0] b_even;
   wire [n-1:0] y_even;

   wire [((n+1)/2) - 1 : 0] a_even_xor_odd;
   wire [((n+1)/2) - 1 : 0] b_even_xor_odd;
   wire [n-1:0] y_even_xor_odd;

   wire [n-1:0] overlap_module_input_1, overlap_module_input_2, overlap_module_input_3, overlap_module_input_4;
   wire [2*(n+1)-2 : 0] y_modify;
   
  
   OKA_L4_17bit mult_17bit_1(.y(y_odd), .a(a_odd), .b(b_odd));
   OKA_L4_17bit mult_17bit_2(.y(y_even), .a(a_even), .b(b_even));
   OKA_L4_17bit mult_17bit_3(.y(y_even_xor_odd), .a(a_even_xor_odd), .b(b_even_xor_odd));

   assign a_even =  {a[32],a[30],a[28],a[26],a[24],a[22],a[20],a[18],a[16],a[14],a[12],a[10],a[8],a[6],a[4],a[2],a[0]};

   assign b_even = {b[32],b[30],b[28],b[26],b[24],b[22],b[20],b[18],b[16],b[14],b[12],b[10],b[8],b[6],b[4],b[2],b[0]};

   assign a_odd = {1'b0,a[31],a[29],a[27],a[25],a[23],a[21],a[19],a[17],a[15],a[13],a[11],a[9],a[7],a[5],a[3],a[1]};

   assign b_odd = {1'b0,b[31],b[29],b[27],b[25],b[23],b[21],b[19],b[17],b[15],b[13],b[11],b[9],b[7],b[5],b[3],b[1]};

   assign a_even_xor_odd = {a[32],a[30],a[28],a[26],a[24],a[22],a[20],a[18],a[16],a[14],a[12],a[10],a[8],a[6],a[4],a[2],a[0]}
                          ^{1'b0,a[31],a[29],a[27],a[25],a[23],a[21],a[19],a[17],a[15],a[13],a[11],a[9],a[7],a[5],a[3],a[1]};
                          
   assign b_even_xor_odd = {b[32],b[30],b[28],b[26],b[24],b[22],b[20],b[18],b[16],b[14],b[12],b[10],b[8],b[6],b[4],b[2],b[0]}
                          ^{1'b0,b[31],b[29],b[27],b[25],b[23],b[21],b[19],b[17],b[15],b[13],b[11],b[9],b[7],b[5],b[3],b[1]};
                          
   assign overlap_module_input_1 = y_even;
   assign overlap_module_input_2 = y_even ^ y_odd;
   assign overlap_module_input_3 = y_even_xor_odd;
   assign overlap_module_input_4 = y_odd;
   
   overlap_module_33bit overlap_module(
					.input_polynomial_1(overlap_module_input_1),
					.input_polynomial_2(overlap_module_input_2),
					.input_polynomial_3(overlap_module_input_3),
					.input_polynomial_4(overlap_module_input_4),
					.output_polynomial(y_modify)
					);
   
  assign y = y_modify[2*n-2:0];
endmodule