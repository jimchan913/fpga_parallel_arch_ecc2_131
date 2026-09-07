`timescale 1ns / 1ps

module compute_hamming_weight(input wire [130:0] element_a, output wire [7:0] hamming_weight);
    assign hamming_weight = 
element_a[130] + element_a[129] + element_a[128] + element_a[127] + element_a[126] + element_a[125] + element_a[124] + element_a[123] + element_a[122] + element_a[121] + element_a[120] + 
element_a[119] + element_a[118] + element_a[117] + element_a[116] + element_a[115] + element_a[114] + element_a[113] + element_a[112] + element_a[111] + element_a[110] + 
element_a[109] + element_a[108] + element_a[107] + element_a[106] + element_a[105] + element_a[104] + element_a[103] + element_a[102] + element_a[101] + element_a[100] + 
element_a[99] + element_a[98] + element_a[97] + element_a[96] + element_a[95] + element_a[94] + element_a[93] + element_a[92] + element_a[91] + element_a[90] +
 element_a[89] + element_a[88] + element_a[87] + element_a[86] + element_a[85] + element_a[84] + element_a[83] + element_a[82] + element_a[81] + element_a[80] + 
 element_a[79] + element_a[78] + element_a[77] + element_a[76] + element_a[75] + element_a[74] + element_a[73] + element_a[72] + element_a[71] + element_a[70] + 
 element_a[69] + element_a[68] + element_a[67] + element_a[66] + element_a[65] + element_a[64] + element_a[63] + element_a[62] + element_a[61] + element_a[60] + 
 element_a[59] + element_a[58] + element_a[57] + element_a[56] + element_a[55] + element_a[54] + element_a[53] + element_a[52] + element_a[51] + element_a[50] + 
 element_a[49] + element_a[48] + element_a[47] + element_a[46] + element_a[45] + element_a[44] + element_a[43] + element_a[42] + element_a[41] + element_a[40] + 
 element_a[39] + element_a[38] + element_a[37] + element_a[36] + element_a[35] + element_a[34] + element_a[33] + element_a[32] + element_a[31] + element_a[30] +
  element_a[29] + element_a[28] + element_a[27] + element_a[26] + element_a[25] + element_a[24] + element_a[23] + element_a[22] + element_a[21] + element_a[20] + 
  element_a[19] + element_a[18] + element_a[17] + element_a[16] + element_a[15] + element_a[14] + element_a[13] + element_a[12] + element_a[11] + element_a[10] + 
  element_a[9] + element_a[8] + element_a[7] + element_a[6] + element_a[5] + element_a[4] + element_a[3] + element_a[2] + element_a[1] + element_a[0];  
endmodule
