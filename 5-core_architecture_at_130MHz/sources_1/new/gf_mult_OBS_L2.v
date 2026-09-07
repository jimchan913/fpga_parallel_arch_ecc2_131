`timescale 1ns / 1ps

module gf_mult_OBS_L2
#(parameter n = 131)
(input wire clk, input wire rst_n, input wire enable, input wire [n-1:0] a, input wire [n-1:0]  b, output reg [n-1:0] y_reg);
   wire [2*n - 2:0] y_karatsuba_result;
   wire [n-1:0] y_next;
   OKA_L2_131bit OKA_multiplier_131bit(a, b, y_karatsuba_result);
    always@(posedge clk or negedge rst_n)
    begin
        if(rst_n == 1'b0)
        begin
            y_reg <= 131'b0;
        end
        else 
        begin
            if(enable)
            begin
                y_reg <= y_next;  
            end 
        end
    end

        assign y_next[130] = y_karatsuba_result[130] ^ y_karatsuba_result[260] ^ y_karatsuba_result[259] ^ y_karatsuba_result[248]; 
        assign y_next[129] = y_karatsuba_result[129] ^ y_karatsuba_result[260] ^ y_karatsuba_result[259] ^ y_karatsuba_result[258] ^ y_karatsuba_result[247];
        assign y_next[128] = y_karatsuba_result[128] ^ y_karatsuba_result[259] ^ y_karatsuba_result[258] ^ y_karatsuba_result[257] ^ y_karatsuba_result[246];
        assign y_next[127] = y_karatsuba_result[127] ^ y_karatsuba_result[258] ^ y_karatsuba_result[257] ^ y_karatsuba_result[256] ^ y_karatsuba_result[245];
        assign y_next[126] = y_karatsuba_result[126] ^ y_karatsuba_result[257] ^ y_karatsuba_result[256] ^ y_karatsuba_result[255] ^ y_karatsuba_result[244];
        assign y_next[125] = y_karatsuba_result[125] ^ y_karatsuba_result[256] ^ y_karatsuba_result[255] ^ y_karatsuba_result[254] ^ y_karatsuba_result[243];
        assign y_next[124] = y_karatsuba_result[124] ^ y_karatsuba_result[255] ^ y_karatsuba_result[254] ^ y_karatsuba_result[253] ^ y_karatsuba_result[242];
        assign y_next[123] = y_karatsuba_result[123] ^ y_karatsuba_result[254] ^ y_karatsuba_result[253] ^ y_karatsuba_result[252] ^ y_karatsuba_result[241];
        assign y_next[122] = y_karatsuba_result[122] ^ y_karatsuba_result[253] ^ y_karatsuba_result[252] ^ y_karatsuba_result[251] ^ y_karatsuba_result[240];
        assign y_next[121] = y_karatsuba_result[121] ^ y_karatsuba_result[252] ^ y_karatsuba_result[251] ^ y_karatsuba_result[250] ^ y_karatsuba_result[239];
        assign y_next[120] = y_karatsuba_result[120] ^ y_karatsuba_result[251] ^ y_karatsuba_result[250] ^ y_karatsuba_result[249] ^ y_karatsuba_result[238];
        assign y_next[119] = y_karatsuba_result[119] ^ y_karatsuba_result[250] ^ y_karatsuba_result[249] ^ y_karatsuba_result[248] ^ y_karatsuba_result[237];
        assign y_next[118] = y_karatsuba_result[118] ^ y_karatsuba_result[249] ^ y_karatsuba_result[248] ^ y_karatsuba_result[247] ^ y_karatsuba_result[236];
        assign y_next[117] = y_karatsuba_result[117] ^ y_karatsuba_result[248] ^ y_karatsuba_result[247] ^ y_karatsuba_result[246] ^ y_karatsuba_result[235];
        assign y_next[116] = y_karatsuba_result[116] ^ y_karatsuba_result[247] ^ y_karatsuba_result[246] ^ y_karatsuba_result[245] ^ y_karatsuba_result[234];
        assign y_next[115] = y_karatsuba_result[115] ^ y_karatsuba_result[246] ^ y_karatsuba_result[245] ^ y_karatsuba_result[244] ^ y_karatsuba_result[233];
        assign y_next[114] = y_karatsuba_result[114] ^ y_karatsuba_result[245] ^ y_karatsuba_result[244] ^ y_karatsuba_result[243] ^ y_karatsuba_result[232];
        assign y_next[113] = y_karatsuba_result[113] ^ y_karatsuba_result[244] ^ y_karatsuba_result[243] ^ y_karatsuba_result[242] ^ y_karatsuba_result[231];
        assign y_next[112] = y_karatsuba_result[112] ^ y_karatsuba_result[243] ^ y_karatsuba_result[242] ^ y_karatsuba_result[241] ^ y_karatsuba_result[230];
        assign y_next[111] = y_karatsuba_result[111] ^ y_karatsuba_result[242] ^ y_karatsuba_result[241] ^ y_karatsuba_result[240] ^ y_karatsuba_result[229];
        assign y_next[110] = y_karatsuba_result[110] ^ y_karatsuba_result[241] ^ y_karatsuba_result[240] ^ y_karatsuba_result[239] ^ y_karatsuba_result[228];
        assign y_next[109] = y_karatsuba_result[109] ^ y_karatsuba_result[240] ^ y_karatsuba_result[239] ^ y_karatsuba_result[238] ^ y_karatsuba_result[227];
        assign y_next[108] = y_karatsuba_result[108] ^ y_karatsuba_result[239] ^ y_karatsuba_result[238] ^ y_karatsuba_result[237] ^ y_karatsuba_result[226];
        assign y_next[107] = y_karatsuba_result[107] ^ y_karatsuba_result[238] ^ y_karatsuba_result[237] ^ y_karatsuba_result[236] ^ y_karatsuba_result[225];
        assign y_next[106] = y_karatsuba_result[106] ^ y_karatsuba_result[237] ^ y_karatsuba_result[236] ^ y_karatsuba_result[235] ^ y_karatsuba_result[224];
        assign y_next[105] = y_karatsuba_result[105] ^ y_karatsuba_result[236] ^ y_karatsuba_result[235] ^ y_karatsuba_result[234] ^ y_karatsuba_result[223];
        assign y_next[104] = y_karatsuba_result[104] ^ y_karatsuba_result[235] ^ y_karatsuba_result[234] ^ y_karatsuba_result[233] ^ y_karatsuba_result[222];
        assign y_next[103] = y_karatsuba_result[103] ^ y_karatsuba_result[234] ^ y_karatsuba_result[233] ^ y_karatsuba_result[232] ^ y_karatsuba_result[221];
        assign y_next[102] = y_karatsuba_result[102] ^ y_karatsuba_result[233] ^ y_karatsuba_result[232] ^ y_karatsuba_result[231] ^ y_karatsuba_result[220];
        assign y_next[101] = y_karatsuba_result[101] ^ y_karatsuba_result[232] ^ y_karatsuba_result[231] ^ y_karatsuba_result[230] ^ y_karatsuba_result[219];
        assign y_next[100] = y_karatsuba_result[100] ^ y_karatsuba_result[231] ^ y_karatsuba_result[230] ^ y_karatsuba_result[229] ^ y_karatsuba_result[218];
        assign y_next[99] = y_karatsuba_result[99] ^ y_karatsuba_result[230] ^ y_karatsuba_result[229] ^ y_karatsuba_result[228] ^ y_karatsuba_result[217];
        assign y_next[98] = y_karatsuba_result[98] ^ y_karatsuba_result[229] ^ y_karatsuba_result[228] ^ y_karatsuba_result[227] ^ y_karatsuba_result[216];
        assign y_next[97] = y_karatsuba_result[97] ^ y_karatsuba_result[228] ^ y_karatsuba_result[227] ^ y_karatsuba_result[226] ^ y_karatsuba_result[215];
        assign y_next[96] = y_karatsuba_result[96] ^ y_karatsuba_result[227] ^ y_karatsuba_result[226] ^ y_karatsuba_result[225] ^ y_karatsuba_result[214];
        assign y_next[95] = y_karatsuba_result[95] ^ y_karatsuba_result[226] ^ y_karatsuba_result[225] ^ y_karatsuba_result[224] ^ y_karatsuba_result[213];
        assign y_next[94] = y_karatsuba_result[94] ^ y_karatsuba_result[225] ^ y_karatsuba_result[224] ^ y_karatsuba_result[223] ^ y_karatsuba_result[212];
        assign y_next[93] = y_karatsuba_result[93] ^ y_karatsuba_result[224] ^ y_karatsuba_result[223] ^ y_karatsuba_result[222] ^ y_karatsuba_result[211];
        assign y_next[92] = y_karatsuba_result[92] ^ y_karatsuba_result[223] ^ y_karatsuba_result[222] ^ y_karatsuba_result[221] ^ y_karatsuba_result[210];
        assign y_next[91] = y_karatsuba_result[91] ^ y_karatsuba_result[222] ^ y_karatsuba_result[221] ^ y_karatsuba_result[220] ^ y_karatsuba_result[209];
        assign y_next[90] = y_karatsuba_result[90] ^ y_karatsuba_result[221] ^ y_karatsuba_result[220] ^ y_karatsuba_result[219] ^ y_karatsuba_result[208];
        assign y_next[89] = y_karatsuba_result[89] ^ y_karatsuba_result[220] ^ y_karatsuba_result[219] ^ y_karatsuba_result[218] ^ y_karatsuba_result[207];
        assign y_next[88] = y_karatsuba_result[88] ^ y_karatsuba_result[219] ^ y_karatsuba_result[218] ^ y_karatsuba_result[217] ^ y_karatsuba_result[206];
        assign y_next[87] = y_karatsuba_result[87] ^ y_karatsuba_result[218] ^ y_karatsuba_result[217] ^ y_karatsuba_result[216] ^ y_karatsuba_result[205];
        assign y_next[86] = y_karatsuba_result[86] ^ y_karatsuba_result[217] ^ y_karatsuba_result[216] ^ y_karatsuba_result[215] ^ y_karatsuba_result[204];
        assign y_next[85] = y_karatsuba_result[85] ^ y_karatsuba_result[216] ^ y_karatsuba_result[215] ^ y_karatsuba_result[214] ^ y_karatsuba_result[203];
        assign y_next[84] = y_karatsuba_result[84] ^ y_karatsuba_result[215] ^ y_karatsuba_result[214] ^ y_karatsuba_result[213] ^ y_karatsuba_result[202];
        assign y_next[83] = y_karatsuba_result[83] ^ y_karatsuba_result[214] ^ y_karatsuba_result[213] ^ y_karatsuba_result[212] ^ y_karatsuba_result[201];
        assign y_next[82] = y_karatsuba_result[82] ^ y_karatsuba_result[213] ^ y_karatsuba_result[212] ^ y_karatsuba_result[211] ^ y_karatsuba_result[200];
        assign y_next[81] = y_karatsuba_result[81] ^ y_karatsuba_result[212] ^ y_karatsuba_result[211] ^ y_karatsuba_result[210] ^ y_karatsuba_result[199];
        assign y_next[80] = y_karatsuba_result[80] ^ y_karatsuba_result[211] ^ y_karatsuba_result[210] ^ y_karatsuba_result[209] ^ y_karatsuba_result[198];
        assign y_next[79] = y_karatsuba_result[79] ^ y_karatsuba_result[210] ^ y_karatsuba_result[209] ^ y_karatsuba_result[208] ^ y_karatsuba_result[197];
        assign y_next[78] = y_karatsuba_result[78] ^ y_karatsuba_result[209] ^ y_karatsuba_result[208] ^ y_karatsuba_result[207] ^ y_karatsuba_result[196];
        assign y_next[77] = y_karatsuba_result[77] ^ y_karatsuba_result[208] ^ y_karatsuba_result[207] ^ y_karatsuba_result[206] ^ y_karatsuba_result[195];
        assign y_next[76] = y_karatsuba_result[76] ^ y_karatsuba_result[207] ^ y_karatsuba_result[206] ^ y_karatsuba_result[205] ^ y_karatsuba_result[194];
        assign y_next[75] = y_karatsuba_result[75] ^ y_karatsuba_result[206] ^ y_karatsuba_result[205] ^ y_karatsuba_result[204] ^ y_karatsuba_result[193];
        assign y_next[74] = y_karatsuba_result[74] ^ y_karatsuba_result[205] ^ y_karatsuba_result[204] ^ y_karatsuba_result[203] ^ y_karatsuba_result[192];
        assign y_next[73] = y_karatsuba_result[73] ^ y_karatsuba_result[204] ^ y_karatsuba_result[203] ^ y_karatsuba_result[202] ^ y_karatsuba_result[191];
        assign y_next[72] = y_karatsuba_result[72] ^ y_karatsuba_result[203] ^ y_karatsuba_result[202] ^ y_karatsuba_result[201] ^ y_karatsuba_result[190];
        assign y_next[71] = y_karatsuba_result[71] ^ y_karatsuba_result[202] ^ y_karatsuba_result[201] ^ y_karatsuba_result[200] ^ y_karatsuba_result[189];
        assign y_next[70] = y_karatsuba_result[70] ^ y_karatsuba_result[201] ^ y_karatsuba_result[200] ^ y_karatsuba_result[199] ^ y_karatsuba_result[188];
        assign y_next[69] = y_karatsuba_result[69] ^ y_karatsuba_result[200] ^ y_karatsuba_result[199] ^ y_karatsuba_result[198] ^ y_karatsuba_result[187];
        assign y_next[68] = y_karatsuba_result[68] ^ y_karatsuba_result[199] ^ y_karatsuba_result[198] ^ y_karatsuba_result[197] ^ y_karatsuba_result[186];
        assign y_next[67] = y_karatsuba_result[67] ^ y_karatsuba_result[198] ^ y_karatsuba_result[197] ^ y_karatsuba_result[196] ^ y_karatsuba_result[185];
        assign y_next[66] = y_karatsuba_result[66] ^ y_karatsuba_result[197] ^ y_karatsuba_result[196] ^ y_karatsuba_result[195] ^ y_karatsuba_result[184];
        assign y_next[65] = y_karatsuba_result[65] ^ y_karatsuba_result[196] ^ y_karatsuba_result[195] ^ y_karatsuba_result[194] ^ y_karatsuba_result[183];
        assign y_next[64] = y_karatsuba_result[64] ^ y_karatsuba_result[195] ^ y_karatsuba_result[194] ^ y_karatsuba_result[193] ^ y_karatsuba_result[182];
        assign y_next[63] = y_karatsuba_result[63] ^ y_karatsuba_result[194] ^ y_karatsuba_result[193] ^ y_karatsuba_result[192] ^ y_karatsuba_result[181];
        assign y_next[62] = y_karatsuba_result[62] ^ y_karatsuba_result[193] ^ y_karatsuba_result[192] ^ y_karatsuba_result[191] ^ y_karatsuba_result[180];
        assign y_next[61] = y_karatsuba_result[61] ^ y_karatsuba_result[192] ^ y_karatsuba_result[191] ^ y_karatsuba_result[190] ^ y_karatsuba_result[179];
        assign y_next[60] = y_karatsuba_result[60] ^ y_karatsuba_result[191] ^ y_karatsuba_result[190] ^ y_karatsuba_result[189] ^ y_karatsuba_result[178];
        assign y_next[59] = y_karatsuba_result[59] ^ y_karatsuba_result[190] ^ y_karatsuba_result[189] ^ y_karatsuba_result[188] ^ y_karatsuba_result[177];
        assign y_next[58] = y_karatsuba_result[58] ^ y_karatsuba_result[189] ^ y_karatsuba_result[188] ^ y_karatsuba_result[187] ^ y_karatsuba_result[176];
        assign y_next[57] = y_karatsuba_result[57] ^ y_karatsuba_result[188] ^ y_karatsuba_result[187] ^ y_karatsuba_result[186] ^ y_karatsuba_result[175];
        assign y_next[56] = y_karatsuba_result[56] ^ y_karatsuba_result[187] ^ y_karatsuba_result[186] ^ y_karatsuba_result[185] ^ y_karatsuba_result[174];
        assign y_next[55] = y_karatsuba_result[55] ^ y_karatsuba_result[186] ^ y_karatsuba_result[185] ^ y_karatsuba_result[184] ^ y_karatsuba_result[173];
        assign y_next[54] = y_karatsuba_result[54] ^ y_karatsuba_result[185] ^ y_karatsuba_result[184] ^ y_karatsuba_result[183] ^ y_karatsuba_result[172];
        assign y_next[53] = y_karatsuba_result[53] ^ y_karatsuba_result[184] ^ y_karatsuba_result[183] ^ y_karatsuba_result[182] ^ y_karatsuba_result[171];
        assign y_next[52] = y_karatsuba_result[52] ^ y_karatsuba_result[183] ^ y_karatsuba_result[182] ^ y_karatsuba_result[181] ^ y_karatsuba_result[170];
        assign y_next[51] = y_karatsuba_result[51] ^ y_karatsuba_result[182] ^ y_karatsuba_result[181] ^ y_karatsuba_result[180] ^ y_karatsuba_result[169];
        assign y_next[50] = y_karatsuba_result[50] ^ y_karatsuba_result[181] ^ y_karatsuba_result[180] ^ y_karatsuba_result[179] ^ y_karatsuba_result[168];
        assign y_next[49] = y_karatsuba_result[49] ^ y_karatsuba_result[180] ^ y_karatsuba_result[179] ^ y_karatsuba_result[178] ^ y_karatsuba_result[167];
        assign y_next[48] = y_karatsuba_result[48] ^ y_karatsuba_result[179] ^ y_karatsuba_result[178] ^ y_karatsuba_result[177] ^ y_karatsuba_result[166];
        assign y_next[47] = y_karatsuba_result[47] ^ y_karatsuba_result[178] ^ y_karatsuba_result[177] ^ y_karatsuba_result[176] ^ y_karatsuba_result[165];
        assign y_next[46] = y_karatsuba_result[46] ^ y_karatsuba_result[177] ^ y_karatsuba_result[176] ^ y_karatsuba_result[175] ^ y_karatsuba_result[164];
        assign y_next[45] = y_karatsuba_result[45] ^ y_karatsuba_result[176] ^ y_karatsuba_result[175] ^ y_karatsuba_result[174] ^ y_karatsuba_result[163];
        assign y_next[44] = y_karatsuba_result[44] ^ y_karatsuba_result[175] ^ y_karatsuba_result[174] ^ y_karatsuba_result[173] ^ y_karatsuba_result[162];
        assign y_next[43] = y_karatsuba_result[43] ^ y_karatsuba_result[174] ^ y_karatsuba_result[173] ^ y_karatsuba_result[172] ^ y_karatsuba_result[161];
        assign y_next[42] = y_karatsuba_result[42] ^ y_karatsuba_result[173] ^ y_karatsuba_result[172] ^ y_karatsuba_result[171] ^ y_karatsuba_result[160];
        assign y_next[41] = y_karatsuba_result[41] ^ y_karatsuba_result[172] ^ y_karatsuba_result[171] ^ y_karatsuba_result[170] ^ y_karatsuba_result[159];
        assign y_next[40] = y_karatsuba_result[40] ^ y_karatsuba_result[171] ^ y_karatsuba_result[170] ^ y_karatsuba_result[169] ^ y_karatsuba_result[158];
        assign y_next[39] = y_karatsuba_result[39] ^ y_karatsuba_result[170] ^ y_karatsuba_result[169] ^ y_karatsuba_result[168] ^ y_karatsuba_result[157];
        assign y_next[38] = y_karatsuba_result[38] ^ y_karatsuba_result[169] ^ y_karatsuba_result[168] ^ y_karatsuba_result[167] ^ y_karatsuba_result[156];
        assign y_next[37] = y_karatsuba_result[37] ^ y_karatsuba_result[168] ^ y_karatsuba_result[167] ^ y_karatsuba_result[166] ^ y_karatsuba_result[155];
        assign y_next[36] = y_karatsuba_result[36] ^ y_karatsuba_result[167] ^ y_karatsuba_result[166] ^ y_karatsuba_result[165] ^ y_karatsuba_result[154];
        assign y_next[35] = y_karatsuba_result[35] ^ y_karatsuba_result[166] ^ y_karatsuba_result[165] ^ y_karatsuba_result[164] ^ y_karatsuba_result[153];
        assign y_next[34] = y_karatsuba_result[34] ^ y_karatsuba_result[165] ^ y_karatsuba_result[164] ^ y_karatsuba_result[163] ^ y_karatsuba_result[152];
        assign y_next[33] = y_karatsuba_result[33] ^ y_karatsuba_result[164] ^ y_karatsuba_result[163] ^ y_karatsuba_result[162] ^ y_karatsuba_result[151];
        assign y_next[32] = y_karatsuba_result[32] ^ y_karatsuba_result[163] ^ y_karatsuba_result[162] ^ y_karatsuba_result[161] ^ y_karatsuba_result[150];
        assign y_next[31] = y_karatsuba_result[31] ^ y_karatsuba_result[162] ^ y_karatsuba_result[161] ^ y_karatsuba_result[160] ^ y_karatsuba_result[149];
        assign y_next[30] = y_karatsuba_result[30] ^ y_karatsuba_result[161] ^ y_karatsuba_result[160] ^ y_karatsuba_result[159] ^ y_karatsuba_result[148];
        assign y_next[29] = y_karatsuba_result[29] ^ y_karatsuba_result[160] ^ y_karatsuba_result[159] ^ y_karatsuba_result[158] ^ y_karatsuba_result[147];
        assign y_next[28] = y_karatsuba_result[28] ^ y_karatsuba_result[159] ^ y_karatsuba_result[158] ^ y_karatsuba_result[157] ^ y_karatsuba_result[146];
        assign y_next[27] = y_karatsuba_result[27] ^ y_karatsuba_result[158] ^ y_karatsuba_result[157] ^ y_karatsuba_result[156] ^ y_karatsuba_result[145];
        assign y_next[26] = y_karatsuba_result[26] ^ y_karatsuba_result[157] ^ y_karatsuba_result[156] ^ y_karatsuba_result[155] ^ y_karatsuba_result[144];
        assign y_next[25] = y_karatsuba_result[25] ^ y_karatsuba_result[156] ^ y_karatsuba_result[155] ^ y_karatsuba_result[154] ^ y_karatsuba_result[143];
        assign y_next[24] = y_karatsuba_result[24] ^ y_karatsuba_result[260] ^ y_karatsuba_result[155] ^ y_karatsuba_result[154] ^ y_karatsuba_result[153] ^ y_karatsuba_result[142];
        assign y_next[23] = y_karatsuba_result[23] ^ y_karatsuba_result[259] ^ y_karatsuba_result[154] ^ y_karatsuba_result[153] ^ y_karatsuba_result[152] ^ y_karatsuba_result[141];
        assign y_next[22] = y_karatsuba_result[22] ^ y_karatsuba_result[258] ^ y_karatsuba_result[153] ^ y_karatsuba_result[152] ^ y_karatsuba_result[151] ^ y_karatsuba_result[140];
        assign y_next[21] = y_karatsuba_result[21] ^ y_karatsuba_result[257] ^ y_karatsuba_result[152] ^ y_karatsuba_result[151] ^ y_karatsuba_result[150] ^ y_karatsuba_result[139];
        assign y_next[20] = y_karatsuba_result[20] ^ y_karatsuba_result[256] ^ y_karatsuba_result[151] ^ y_karatsuba_result[150] ^ y_karatsuba_result[149] ^ y_karatsuba_result[138];
        assign y_next[19] = y_karatsuba_result[19] ^ y_karatsuba_result[255] ^ y_karatsuba_result[150] ^ y_karatsuba_result[149] ^ y_karatsuba_result[148] ^ y_karatsuba_result[137];
        assign y_next[18] = y_karatsuba_result[18] ^ y_karatsuba_result[254] ^ y_karatsuba_result[149] ^ y_karatsuba_result[148] ^ y_karatsuba_result[147] ^ y_karatsuba_result[136];
        assign y_next[17] = y_karatsuba_result[17] ^ y_karatsuba_result[253] ^ y_karatsuba_result[148] ^ y_karatsuba_result[147] ^ y_karatsuba_result[146] ^ y_karatsuba_result[135];
        assign y_next[16] = y_karatsuba_result[16] ^ y_karatsuba_result[252] ^ y_karatsuba_result[147] ^ y_karatsuba_result[146] ^ y_karatsuba_result[145] ^ y_karatsuba_result[134];
        assign y_next[15] = y_karatsuba_result[15] ^ y_karatsuba_result[251] ^ y_karatsuba_result[146] ^ y_karatsuba_result[145] ^ y_karatsuba_result[144] ^ y_karatsuba_result[133];
        assign y_next[14] = y_karatsuba_result[14] ^ y_karatsuba_result[250] ^ y_karatsuba_result[145] ^ y_karatsuba_result[144] ^ y_karatsuba_result[143] ^ y_karatsuba_result[132];
        assign y_next[13] = y_karatsuba_result[13] ^ y_karatsuba_result[249] ^ y_karatsuba_result[144] ^ y_karatsuba_result[143] ^ y_karatsuba_result[142] ^ y_karatsuba_result[131];        
        assign y_next[12] = y_karatsuba_result[12] ^ y_karatsuba_result[260] ^ y_karatsuba_result[259] ^ y_karatsuba_result[143] ^ y_karatsuba_result[142] ^ y_karatsuba_result[141]; 
        assign y_next[11] = y_karatsuba_result[11] ^  y_karatsuba_result[260] ^ y_karatsuba_result[259] ^ y_karatsuba_result[258] ^ y_karatsuba_result[142] ^ y_karatsuba_result[141] ^ y_karatsuba_result[140];
        assign y_next[10] = y_karatsuba_result[10] ^ y_karatsuba_result[259] ^ y_karatsuba_result[258] ^ y_karatsuba_result[257] ^ y_karatsuba_result[141] ^ y_karatsuba_result[140] ^ y_karatsuba_result[139];
        assign y_next[9] = y_karatsuba_result[9] ^  y_karatsuba_result[258] ^  y_karatsuba_result[257] ^ y_karatsuba_result[256] ^ y_karatsuba_result[139] ^ y_karatsuba_result[140] ^ y_karatsuba_result[138];
        assign y_next[8] = y_karatsuba_result[8] ^ y_karatsuba_result[257] ^ y_karatsuba_result[256] ^ y_karatsuba_result[255] ^ y_karatsuba_result[139] ^ y_karatsuba_result[138] ^ y_karatsuba_result[137];
        assign y_next[7] = y_karatsuba_result[7] ^ y_karatsuba_result[138] ^ y_karatsuba_result[256] ^ y_karatsuba_result[254] ^ y_karatsuba_result[255] ^ y_karatsuba_result[137] ^ y_karatsuba_result[136];
        assign y_next[6] = y_karatsuba_result[6] ^ y_karatsuba_result[137] ^ y_karatsuba_result[255] ^ y_karatsuba_result[254] ^ y_karatsuba_result[253] ^ y_karatsuba_result[136] ^ y_karatsuba_result[135];
        assign y_next[5] = y_karatsuba_result[5] ^ y_karatsuba_result[136] ^ y_karatsuba_result[254] ^ y_karatsuba_result[253] ^ y_karatsuba_result[252] ^ y_karatsuba_result[135] ^ y_karatsuba_result[134];
        assign y_next[4] = y_karatsuba_result[4] ^ y_karatsuba_result[135] ^ y_karatsuba_result[253] ^ y_karatsuba_result[252] ^ y_karatsuba_result[251] ^ y_karatsuba_result[134] ^ y_karatsuba_result[133];
        assign y_next[3] = y_karatsuba_result[3] ^ y_karatsuba_result[134] ^ y_karatsuba_result[252] ^ y_karatsuba_result[251] ^ y_karatsuba_result[250] ^ y_karatsuba_result[133] ^ y_karatsuba_result[132];
        assign y_next[2] = y_karatsuba_result[2] ^ y_karatsuba_result[133] ^ y_karatsuba_result[260] ^ y_karatsuba_result[251] ^ y_karatsuba_result[250] ^ y_karatsuba_result[249] ^ y_karatsuba_result[132] ^ y_karatsuba_result[131];
        assign y_next[1] = y_karatsuba_result[1] ^ y_karatsuba_result[260] ^ y_karatsuba_result[250] ^ y_karatsuba_result[249] 
                           ^ y_karatsuba_result[132] ^ y_karatsuba_result[131];
        assign y_next[0] = y_karatsuba_result[0] ^ y_karatsuba_result[260] ^ y_karatsuba_result[249] ^ y_karatsuba_result[131];     
endmodule
