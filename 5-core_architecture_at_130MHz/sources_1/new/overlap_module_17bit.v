module overlap_module_17bit(
					    input_polynomial_1,
					    input_polynomial_2,
					    input_polynomial_3,
					    input_polynomial_4,
					    output_polynomial
					    );
   parameter n = 18;

   input wire [n-2:0] input_polynomial_1; // G_0
   input wire [n-2:0] input_polynomial_2; // G_0 ^ G_2
   input wire [n-2:0] input_polynomial_3; // G_1
   input wire [n-2:0] input_polynomial_4; // G_2 
   output wire [2*n-2:0] output_polynomial;

   /*integer i;   
   always @*
     begin
      output_polynomial[0] = input_polynomial_1[0];
	  output_polynomial[1] = input_polynomial_2[0] ^ input_polynomial_3[0];
      for(i = 1; i <= n-2; i = i+1)
      begin
	   output_polynomial[2*i] = input_polynomial_1[i] ^ input_polynomial_4[i-1];
	   output_polynomial[2*i+1] = input_polynomial_2[i] ^ input_polynomial_3[i];		 
      end
      output_polynomial[2*n-2] = input_polynomial_4[n-2];	
    end // always @ *        
    */
           assign output_polynomial[0] = input_polynomial_1[0];
           assign output_polynomial[1]  = input_polynomial_2[0] ^ input_polynomial_3[0];
           assign output_polynomial[2] = input_polynomial_1[1] ^ input_polynomial_4[0];
           assign output_polynomial[3] = input_polynomial_2[1] ^ input_polynomial_3[1];
           assign output_polynomial[4] = input_polynomial_1[2] ^ input_polynomial_4[1];
           assign output_polynomial[5] = input_polynomial_2[2] ^ input_polynomial_3[2];
           assign output_polynomial[6] = input_polynomial_1[3] ^ input_polynomial_4[2];
           assign output_polynomial[7] = input_polynomial_2[3] ^ input_polynomial_3[3];
           assign output_polynomial[8] = input_polynomial_1[4] ^ input_polynomial_4[3];
           assign output_polynomial[9] = input_polynomial_2[4] ^ input_polynomial_3[4];
           assign output_polynomial[10] = input_polynomial_1[5] ^ input_polynomial_4[4];
           assign output_polynomial[11] = input_polynomial_2[5] ^ input_polynomial_3[5];
           assign output_polynomial[12] = input_polynomial_1[6] ^ input_polynomial_4[5];
           assign output_polynomial[13] = input_polynomial_2[6] ^ input_polynomial_3[6];
           assign output_polynomial[14] = input_polynomial_1[7] ^ input_polynomial_4[6];
           assign output_polynomial[15] = input_polynomial_2[7] ^ input_polynomial_3[7];
           assign output_polynomial[16] = input_polynomial_1[8] ^ input_polynomial_4[7];
           assign output_polynomial[17] = input_polynomial_2[8] ^ input_polynomial_3[8];
           assign output_polynomial[18] = input_polynomial_1[9] ^ input_polynomial_4[8];
           assign output_polynomial[19] = input_polynomial_2[9] ^ input_polynomial_3[9];
           assign output_polynomial[20] = input_polynomial_1[10] ^ input_polynomial_4[9];
           assign output_polynomial[21] = input_polynomial_2[10] ^ input_polynomial_3[10];
           assign output_polynomial[22] = input_polynomial_1[11] ^ input_polynomial_4[10];
           assign output_polynomial[23] = input_polynomial_2[11] ^ input_polynomial_3[11];
           assign output_polynomial[24] = input_polynomial_1[12] ^ input_polynomial_4[11];
           assign output_polynomial[25] = input_polynomial_2[12] ^ input_polynomial_3[12];
           assign output_polynomial[26] = input_polynomial_1[13] ^ input_polynomial_4[12];
           assign output_polynomial[27] = input_polynomial_2[13] ^ input_polynomial_3[13];
           assign output_polynomial[28] = input_polynomial_1[14] ^ input_polynomial_4[13];
           assign output_polynomial[29] = input_polynomial_2[14] ^ input_polynomial_3[14];
           assign output_polynomial[30] = input_polynomial_1[15] ^ input_polynomial_4[14];
           assign output_polynomial[31] = input_polynomial_2[15] ^ input_polynomial_3[15];
           assign output_polynomial[32] = input_polynomial_1[16] ^ input_polynomial_4[15];
           assign output_polynomial[33] = input_polynomial_2[16] ^ input_polynomial_3[16];
           assign output_polynomial[34] = input_polynomial_4[16];      
endmodule
