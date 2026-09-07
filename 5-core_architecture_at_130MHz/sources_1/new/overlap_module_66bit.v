module overlap_module_66bit(
					    input_polynomial_1,
					    input_polynomial_2,
					    input_polynomial_3,
					    input_polynomial_4,
					    output_polynomial
					    );
   parameter n = 66;
   // length of [n-2 : 0] is 65
   input wire [n-2:0] input_polynomial_1; // G_0 
   input wire [n-2:0] input_polynomial_2; // G_0 ^ G_2
   input wire [n-2:0] input_polynomial_3; // G_1
   input wire [n-2:0] input_polynomial_4; // G_2 
   output wire [2*n-2:0] output_polynomial;
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
           assign output_polynomial[34] = input_polynomial_1[17] ^ input_polynomial_4[16];
           assign output_polynomial[35] = input_polynomial_2[17] ^ input_polynomial_3[17];
           assign output_polynomial[36] = input_polynomial_1[18] ^ input_polynomial_4[17];
           assign output_polynomial[37] = input_polynomial_2[18] ^ input_polynomial_3[18];
           assign output_polynomial[38] = input_polynomial_1[19] ^ input_polynomial_4[18];
           assign output_polynomial[39] = input_polynomial_2[19] ^ input_polynomial_3[19];
           assign output_polynomial[40] = input_polynomial_1[20] ^ input_polynomial_4[19];
           assign output_polynomial[41] = input_polynomial_2[20] ^ input_polynomial_3[20];
           assign output_polynomial[42] = input_polynomial_1[21] ^ input_polynomial_4[20];
           assign output_polynomial[43] = input_polynomial_2[21] ^ input_polynomial_3[21];
           assign output_polynomial[44] = input_polynomial_1[22] ^ input_polynomial_4[21];
           assign output_polynomial[45] = input_polynomial_2[22] ^ input_polynomial_3[22];
           assign output_polynomial[46] = input_polynomial_1[23] ^ input_polynomial_4[22];
           assign output_polynomial[47] = input_polynomial_2[23] ^ input_polynomial_3[23];
           assign output_polynomial[48] = input_polynomial_1[24] ^ input_polynomial_4[23];
           assign output_polynomial[49] = input_polynomial_2[24] ^ input_polynomial_3[24];
           assign output_polynomial[50] = input_polynomial_1[25] ^ input_polynomial_4[24];
           assign output_polynomial[51] = input_polynomial_2[25] ^ input_polynomial_3[25];
           assign output_polynomial[52] = input_polynomial_1[26] ^ input_polynomial_4[25];
           assign output_polynomial[53] = input_polynomial_2[26] ^ input_polynomial_3[26];
           assign output_polynomial[54] = input_polynomial_1[27] ^ input_polynomial_4[26];
           assign output_polynomial[55] = input_polynomial_2[27] ^ input_polynomial_3[27];
           assign output_polynomial[56] = input_polynomial_1[28] ^ input_polynomial_4[27];
           assign output_polynomial[57] = input_polynomial_2[28] ^ input_polynomial_3[28];
           assign output_polynomial[58] = input_polynomial_1[29] ^ input_polynomial_4[28];
           assign output_polynomial[59] = input_polynomial_2[29] ^ input_polynomial_3[29];
           assign output_polynomial[60] = input_polynomial_1[30] ^ input_polynomial_4[29];
           assign output_polynomial[61] = input_polynomial_2[30] ^ input_polynomial_3[30];
           assign output_polynomial[62] = input_polynomial_1[31] ^ input_polynomial_4[30];
           assign output_polynomial[63] = input_polynomial_2[31] ^ input_polynomial_3[31];
           assign output_polynomial[64] = input_polynomial_1[32] ^ input_polynomial_4[31];
           assign output_polynomial[65] = input_polynomial_2[32] ^ input_polynomial_3[32];
           assign output_polynomial[66] = input_polynomial_1[33] ^ input_polynomial_4[32];
           assign output_polynomial[67] = input_polynomial_2[33] ^ input_polynomial_3[33];
           assign output_polynomial[68] = input_polynomial_1[34] ^ input_polynomial_4[33];
           assign output_polynomial[69] = input_polynomial_2[34] ^ input_polynomial_3[34];
           assign output_polynomial[70] = input_polynomial_1[35] ^ input_polynomial_4[34];
           assign output_polynomial[71] = input_polynomial_2[35] ^ input_polynomial_3[35];
           assign output_polynomial[72] = input_polynomial_1[36] ^ input_polynomial_4[35];
           assign output_polynomial[73] = input_polynomial_2[36] ^ input_polynomial_3[36];
           assign output_polynomial[74] = input_polynomial_1[37] ^ input_polynomial_4[36];
           assign output_polynomial[75] = input_polynomial_2[37] ^ input_polynomial_3[37];
           assign output_polynomial[76] = input_polynomial_1[38] ^ input_polynomial_4[37];
           assign output_polynomial[77] = input_polynomial_2[38] ^ input_polynomial_3[38];
           assign output_polynomial[78] = input_polynomial_1[39] ^ input_polynomial_4[38];
           assign output_polynomial[79] = input_polynomial_2[39] ^ input_polynomial_3[39];
           assign output_polynomial[80] = input_polynomial_1[40] ^ input_polynomial_4[39];
           assign output_polynomial[81] = input_polynomial_2[40] ^ input_polynomial_3[40];
           assign output_polynomial[82] = input_polynomial_1[41] ^ input_polynomial_4[40];
           assign output_polynomial[83] = input_polynomial_2[41] ^ input_polynomial_3[41];
           assign output_polynomial[84] = input_polynomial_1[42] ^ input_polynomial_4[41];
           assign output_polynomial[85] = input_polynomial_2[42] ^ input_polynomial_3[42];
           assign output_polynomial[86] = input_polynomial_1[43] ^ input_polynomial_4[42];
           assign output_polynomial[87] = input_polynomial_2[43] ^ input_polynomial_3[43];
           assign output_polynomial[88] = input_polynomial_1[44] ^ input_polynomial_4[43];
           assign output_polynomial[89] = input_polynomial_2[44] ^ input_polynomial_3[44];
           assign output_polynomial[90] = input_polynomial_1[45] ^ input_polynomial_4[44];
           assign output_polynomial[91] = input_polynomial_2[45] ^ input_polynomial_3[45];
           assign output_polynomial[92] = input_polynomial_1[46] ^ input_polynomial_4[45];
           assign output_polynomial[93] = input_polynomial_2[46] ^ input_polynomial_3[46];
           assign output_polynomial[94] = input_polynomial_1[47] ^ input_polynomial_4[46];
           assign output_polynomial[95] = input_polynomial_2[47] ^ input_polynomial_3[47];
           assign output_polynomial[96] = input_polynomial_1[48] ^ input_polynomial_4[47];
           assign output_polynomial[97] = input_polynomial_2[48] ^ input_polynomial_3[48];
           assign output_polynomial[98] = input_polynomial_1[49] ^ input_polynomial_4[48];
           assign output_polynomial[99] = input_polynomial_2[49] ^ input_polynomial_3[49];
           assign output_polynomial[100] = input_polynomial_1[50] ^ input_polynomial_4[49];
           assign output_polynomial[101] = input_polynomial_2[50] ^ input_polynomial_3[50];
           assign output_polynomial[102] = input_polynomial_1[51] ^ input_polynomial_4[50];
           assign output_polynomial[103] = input_polynomial_2[51] ^ input_polynomial_3[51];
           assign output_polynomial[104] = input_polynomial_1[52] ^ input_polynomial_4[51];
           assign output_polynomial[105] = input_polynomial_2[52] ^ input_polynomial_3[52];
           assign output_polynomial[106] = input_polynomial_1[53] ^ input_polynomial_4[52];
           assign output_polynomial[107] = input_polynomial_2[53] ^ input_polynomial_3[53];
           assign output_polynomial[108] = input_polynomial_1[54] ^ input_polynomial_4[53];
           assign output_polynomial[109] = input_polynomial_2[54] ^ input_polynomial_3[54];
           assign output_polynomial[110] = input_polynomial_1[55] ^ input_polynomial_4[54];
           assign output_polynomial[111] = input_polynomial_2[55] ^ input_polynomial_3[55];
           assign output_polynomial[112] = input_polynomial_1[56] ^ input_polynomial_4[55];
           assign output_polynomial[113] = input_polynomial_2[56] ^ input_polynomial_3[56];
           assign output_polynomial[114] = input_polynomial_1[57] ^ input_polynomial_4[56];
           assign output_polynomial[115] = input_polynomial_2[57] ^ input_polynomial_3[57];
           assign output_polynomial[116] = input_polynomial_1[58] ^ input_polynomial_4[57];
           assign output_polynomial[117] = input_polynomial_2[58] ^ input_polynomial_3[58];
           assign output_polynomial[118] = input_polynomial_1[59] ^ input_polynomial_4[58];
           assign output_polynomial[119] = input_polynomial_2[59] ^ input_polynomial_3[59];
           assign output_polynomial[120] = input_polynomial_1[60] ^ input_polynomial_4[59];
           assign output_polynomial[121] = input_polynomial_2[60] ^ input_polynomial_3[60];
           assign output_polynomial[122] = input_polynomial_1[61] ^ input_polynomial_4[60];
           assign output_polynomial[123] = input_polynomial_2[61] ^ input_polynomial_3[61];
           assign output_polynomial[124] = input_polynomial_1[62] ^ input_polynomial_4[61];
           assign output_polynomial[125] = input_polynomial_2[62] ^ input_polynomial_3[62];
           assign output_polynomial[126] = input_polynomial_1[63] ^ input_polynomial_4[62];
           assign output_polynomial[127] = input_polynomial_2[63] ^ input_polynomial_3[63];
           assign output_polynomial[128] = input_polynomial_1[64] ^ input_polynomial_4[63];
           assign output_polynomial[129] = input_polynomial_2[64] ^ input_polynomial_3[64];
           assign output_polynomial[130] = input_polynomial_4[64];  
/*
   integer i;
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
endmodule
