`timescale 1ns / 1ps

module OKA_L4_17bit#(parameter n = 17)
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
   wire [2*(n+1)-2 : 0] y_next;
   
   
   CA_9bit mult_9bit_1(.y(y_odd), .a(a_odd), .b(b_odd));
   CA_9bit mult_9bit_2(.y(y_even), .a(a_even), .b(b_even));
   CA_9bit mult_9bit_3(.y(y_even_xor_odd), .a(a_even_xor_odd), .b(b_even_xor_odd));

   assign a_even =  {a[16],a[14],a[12],a[10],a[8],a[6],a[4],a[2],a[0]};

   assign b_even = {b[16],b[14],b[12],b[10],b[8],b[6],b[4],b[2],b[0]};

   assign a_odd = {1'b0,a[15],a[13],a[11],a[9],a[7],a[5],a[3],a[1]};

   assign b_odd = {1'b0,b[15],b[13],b[11],b[9],b[7],b[5],b[3],b[1]};
  

   assign a_even_xor_odd = {a[16],a[14],a[12],a[10],a[8],a[6],a[4],a[2],a[0]}^{1'b0,a[15],a[13],a[11],a[9],a[7],a[5],a[3],a[1]};

   assign b_even_xor_odd =  {b[16],b[14],b[12],b[10],b[8],b[6],b[4],b[2],b[0]}^{1'b0,b[15],b[13],b[11],b[9],b[7],b[5],b[3],b[1]};

   assign overlap_module_input_1 = y_even;
   assign overlap_module_input_2 = y_even ^ y_odd;
   assign overlap_module_input_3 = y_even_xor_odd;
   assign overlap_module_input_4 = y_odd;
   
   overlap_module_17bit overlap_module(
					.input_polynomial_1(overlap_module_input_1),
					.input_polynomial_2(overlap_module_input_2),
					.input_polynomial_3(overlap_module_input_3),
					.input_polynomial_4(overlap_module_input_4),
					.output_polynomial(y_next)
					);
   assign y = y_next[2*n-2:0];	
endmodule

