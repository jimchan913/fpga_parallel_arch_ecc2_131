
`timescale 1ns / 1ps

module OKA_L3_66bit#(parameter n = 66)(
   input wire [n-1:0] a,
   input wire [n-1:0] b,
   output wire [2*n-2:0] y);
   
   wire [(n/2) -1 : 0] a_odd;
   wire [(n/2) -1 : 0] b_odd;
   wire [n-2:0] y_odd;

   wire [(n/2) -1 : 0] a_even;
   wire [(n/2) -1 : 0] b_even;
   wire [n-2:0] y_even;

   wire [(n/2) - 1 : 0] a_even_xor_odd;
   wire [(n/2) - 1 : 0] b_even_xor_odd;
   wire [n-2:0] y_even_xor_odd;

   wire [n-2:0] overlap_module_input_1, overlap_module_input_2, overlap_module_input_3, overlap_module_input_4;
   wire [2*n-2 : 0] y_next;
   
   
   OKA_L3_33bit mult_33bit_1(.y(y_odd), .a(a_odd), .b(b_odd));
   OKA_L3_33bit mult_33bit_2(.y(y_even), .a(a_even), .b(b_even));
   OKA_L3_33bit mult_33bit_3(.y(y_even_xor_odd), .a(a_even_xor_odd), .b(b_even_xor_odd));

   assign a_even = {a[64],a[62],a[60],a[58],a[56],a[54],a[52],a[50],a[48],a[46],a[44],a[42],a[40],a[38],a[36],a[34],a[32],a[30],a[28],a[26],a[24],a[22],a[20],a[18],a[16],a[14],a[12],a[10],a[8],a[6],a[4],a[2],a[0]};

   assign b_even = {b[64],b[62],b[60],b[58],b[56],b[54],b[52],b[50],b[48],b[46],b[44],b[42],b[40],b[38],b[36],b[34],b[32],b[30],b[28],b[26],b[24],b[22],b[20],b[18],b[16],b[14],b[12],b[10],b[8],b[6],b[4],b[2],b[0]};

   assign a_odd = {a[65],a[63],a[61],a[59],a[57],a[55],a[53],a[51],a[49],a[47],a[45],a[43],a[41],a[39],a[37],a[35],a[33],a[31],a[29],a[27],a[25],a[23],a[21],a[19],a[17],a[15],a[13],a[11],a[9],a[7],a[5],a[3],a[1]};

   assign b_odd = {b[65],b[63],b[61],b[59],b[57],b[55],b[53],b[51],b[49],b[47],b[45],b[43],b[41],b[39],b[37],b[35],b[33],b[31],b[29],b[27],b[25],b[23],b[21],b[19],b[17],b[15],b[13],b[11],b[9],b[7],b[5],b[3],b[1]};
  
   assign a_even_xor_odd = {a[64],a[62],a[60],a[58],a[56],a[54],a[52],a[50],a[48],a[46],a[44],a[42],a[40],a[38],a[36],a[34],a[32],a[30],a[28],a[26],a[24],a[22],a[20],a[18],a[16],a[14],a[12],a[10],a[8],a[6],a[4],a[2],a[0]}^{a[65],a[63],a[61],a[59],a[57],a[55],a[53],a[51],a[49],a[47],a[45],a[43],a[41],a[39],a[37],a[35],a[33],a[31],a[29],a[27],a[25],a[23],a[21],a[19],a[17],a[15],a[13],a[11],a[9],a[7],a[5],a[3],a[1]};
 
   assign b_even_xor_odd = {b[64],b[62],b[60],b[58],b[56],b[54],b[52],b[50],b[48],b[46],b[44],b[42],b[40],b[38],b[36],b[34],b[32],b[30],b[28],b[26],b[24],b[22],b[20],b[18],b[16],b[14],b[12],b[10],b[8],b[6],b[4],b[2],b[0]}^{b[65],b[63],b[61],b[59],b[57],b[55],b[53],b[51],b[49],b[47],b[45],b[43],b[41],b[39],b[37],b[35],b[33],b[31],b[29],b[27],b[25],b[23],b[21],b[19],b[17],b[15],b[13],b[11],b[9],b[7],b[5],b[3],b[1]};

   assign overlap_module_input_1 = y_even;
   assign overlap_module_input_2 = y_even ^ y_odd;
   assign overlap_module_input_3 = y_even_xor_odd;
   assign overlap_module_input_4 = y_odd;
   
   overlap_module_66bit overlap_module(
					.input_polynomial_1(overlap_module_input_1),
					.input_polynomial_2(overlap_module_input_2),
					.input_polynomial_3(overlap_module_input_3),
					.input_polynomial_4(overlap_module_input_4),
					.output_polynomial(y_next)
					);
    assign y = y_next [ 2*n-2:0];						
endmodule