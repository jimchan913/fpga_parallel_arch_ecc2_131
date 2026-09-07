`timescale 1ns / 1ps
module starting_point_coeff_table_1(input wire [6:0]i_reg, output reg [130:0]coeff_c);
always@*
    begin
      case(i_reg)
      7'b0:
        coeff_c = 131'h311a91bfacae6943431a5ba30858da782;
      7'b1:
        coeff_c = 131'h21005e5f35765355f5731c188fd95358c;
      7'b10:
        coeff_c = 131'h380e5684be272823d230b10fd7e5d314b;
      7'b11:
        coeff_c = 131'hc0fcbee2931b0e63d1e9e7ad9da26ebd;
      7'b100:
        coeff_c = 131'h295c26a06a45b5e2362b03cb8752cd243;
      7'b101:
        coeff_c = 131'ha7e9c993182053ed60aa626b9c966e38;
      7'b110:
        coeff_c = 131'h19107ab2f0270cc082b1ded3b08073d10;
      7'b111:
        coeff_c = 131'h3a4173a82b1a0e17bd881e39015b32bbe;
      7'b1000:
        coeff_c = 131'h1d3582455818843b70e86589189b3c72e;
      7'b1001:
        coeff_c = 131'h201709042f5410d1b802ac382df70e8fb;
      7'b1010:
        coeff_c = 131'h2dcc21da9fd7000e82efde055fea271a5;
      7'b1011:
        coeff_c = 131'h14bca0a023e94ac7ce82b0fc989f5cdbe;
      7'b1100:
        coeff_c = 131'h381e90102519c6b39a50f766227cae33b;
      7'b1101:
        coeff_c = 131'h31ef70f06ee70eae4d757a77a1257ad9b;
      7'b1110:
        coeff_c = 131'h92372ab56ef3a43bcddd8c50e6780237;
      7'b1111:
        coeff_c = 131'h204cd9e4bb50b30f5e3aabfdf98cd2912;
      7'b10000:
        coeff_c = 131'hc48e13668aab3ee9662176b1e106838d;
      7'b10001:
        coeff_c = 131'hda9a045fa8b22be11a06b7ed16791d98;
      7'b10010:
        coeff_c = 131'h93b6c9ab1670e0a837c05be1cf644f2c;
      7'b10011:
        coeff_c = 131'h1dabd05582556f07608598fa1489700d6;
      7'b10100:
        coeff_c = 131'h193634abd97ccea368d16d8da7b26600c;
      7'b10101:
        coeff_c = 131'h3a617b4aa8f4542fa75ed95124fc816c2;
      7'b10110:
        coeff_c = 131'h3caf8553ec498f7e9970533b716f26fd5;
      7'b10111:
        coeff_c = 131'h2862c76a17dcf0807a16bd3c13b7fce88;
      7'b11000:
        coeff_c = 131'h2f4e4ac7fee1ce029c3247ef0c53308bc;
      7'b11001:
        coeff_c = 131'h209c06e7c473d3d9b160c35a587b1e70f;
      7'b11010:
        coeff_c = 131'h6c995a9145ba331ac2787a51c7574d03;
      7'b11011:
        coeff_c = 131'h209d953a2d6e58e470fc4ca6a2e7c7179;
      7'b11100:
        coeff_c = 131'hb5c9e11c7bdfa0f6e60f3c86aad1548;
      7'b11101:
        coeff_c = 131'h1d42a4049d95a0e2adfbd9c76a585b269;
      7'b11110:
        coeff_c = 131'h20c0c4baf64cd3fa85c115fe9d286699a;
      7'b11111:
        coeff_c = 131'hc3df07000060ead309adb9aff7607486;
      7'b100000:
        coeff_c = 131'h2782ebfc23125eb0e39b0e1a45dfbffa;
      7'b100001:
        coeff_c = 131'hfbd06ceb5c62a59ee5b5f92e2bb17e93;
      7'b100010:
        coeff_c = 131'h21706c5f9e1493987f992f6f89e131bf6;
      7'b100011:
        coeff_c = 131'h259737b0c1d95e08bc1a333cde580602e;
      7'b100100:
        coeff_c = 131'h20f47db63c2241ce7d996518459c09244;
      7'b100101:
        coeff_c = 131'h2085cc70be44019e8d056935e9b8a2031;
      7'b100110:
        coeff_c = 131'h29b0c52cd0bcba7344c19bad05754090e;
      7'b100111:
        coeff_c = 131'h21e8259ddbe4ec751de77b3118b1e33;
      7'b101000:
        coeff_c = 131'hcfa30abfc9e3420bdb73c7864f6e5e7d;
      7'b101001:
        coeff_c = 131'h28a21743db16a8b20eb6737e952a0ae7;
      7'b101010:
        coeff_c = 131'h19fc07286d690d8fad819819a032b9981;
      7'b101011:
        coeff_c = 131'h2234066d7ff68bdc0223d2514e6fdcfda;
      7'b101100:
        coeff_c = 131'he05d58cac6e961ec42e16ff7f13b08d8;
      7'b101101:
        coeff_c = 131'h1474d605cdaf757efc91ad905bed47522;
      7'b101110:
        coeff_c = 131'h314e2ecbdc2a3dec380a703d1f8c8519e;
      7'b101111:
        coeff_c = 131'h1731f10be0f4efc70f248f53d0eaa5083;
      7'b110000:
        coeff_c = 131'h39389e7b45e06afb2a7bcca0b32114a05;
      7'b110001:
        coeff_c = 131'h30fe664a5afe239150401d4475bc9a5d9;
      7'b110010:
        coeff_c = 131'h2df8e57a0bc62a0426f2137a46493903e;
      7'b110011:
        coeff_c = 131'h194e4d7e9a30edb5544674b62fa01a73f;
      7'b110100:
        coeff_c = 131'h22c58c98269f6e7545f26d9ac8050ea95;
      7'b110101:
        coeff_c = 131'h3b322688827e7a0fb58ac01ceca3815c;
      7'b110110:
        coeff_c = 131'h3b560c7e86b270732a0fc750655c50aa5;
      7'b110111:
        coeff_c = 131'h33b0b7cbdcd9be4160065fa5a390da5f3;
      7'b111000:
        coeff_c = 131'h59e528ec993fe9421c4b08025317d89a;
      7'b111001:
        coeff_c = 131'h19e3e041da91c0b5371c0ee15710bfa12;
      7'b111010:
        coeff_c = 131'h3473d91709164a88bb5460b4cb713bf87;
      7'b111011:
        coeff_c = 131'h2826a9234770b51d33c757467e89ec0ad;
      7'b111100:
        coeff_c = 131'h55d22448825414a33b72e55aa198634d;
      7'b111101:
        coeff_c = 131'hfc18e7a1ff91fa6067253319376f8809;
      7'b111110:
        coeff_c = 131'h3856b4c5782ca359e6b3ff451e6b79990;
      7'b111111:
        coeff_c = 131'h137723cc1cdee3214173b04d5e0aafbee;
      7'b1000000:
        coeff_c = 131'h7305933ed7adb13ad55b4b9dd6869088;
      7'b1000001:
        coeff_c = 131'h2b946bfb1897fd60732a5c0eeb7a2d85b;
      7'b1000010:
        coeff_c = 131'h14c8f17efcfae3fc7bb6006e241840f3e;
      7'b1000011:
        coeff_c = 131'h30b1b2065011ef3f11b5305d92d2e829f;
      7'b1000100:
        coeff_c = 131'h95ed5f9e5f01ca0ff92314de3df9b0a9;
      7'b1000101:
        coeff_c = 131'h3fca6f046f75210d2a10cd90af98b5033;
      7'b1000110:
        coeff_c = 131'h646f965e18f6757add2cca6e559c666e;
      7'b1000111:
        coeff_c = 131'h1a632607eaec841d754f2d12b7b8dadd0;
      7'b1001000:
        coeff_c = 131'h2b55bf9b94551743e6ffdccc2ce7a56b4;
      7'b1001001:
        coeff_c = 131'h6f1add76609264c18adb366cf4f2ae15;
      7'b1001010:
        coeff_c = 131'h876a86485e5c23faaa1ea510d94581d;
      7'b1001011:
        coeff_c = 131'h12929dcf951e6f5ab6fa91aef769c414e;
      7'b1001100:
        coeff_c = 131'h3b4a527b3728ab8544b80f3b3cc8bd52e;
      7'b1001101:
        coeff_c = 131'h2bef33a299bfcb3aa35aea4ebe3cd590a;
      7'b1001110:
        coeff_c = 131'h4ddf0bdf190382df3c76d74267d4ffc0;
      7'b1001111:
        coeff_c = 131'h26c3f40faa86ac64881eec357d6cfa8ce;
      7'b1010000:
        coeff_c = 131'h134f79a72eb286de57d1cb245636f63cd;
      7'b1010001:
        coeff_c = 131'hff2f3373f35936efb7177c8522076814;
      7'b1010010:
        coeff_c = 131'h2b29dd95003e6636fc17ed9222ff6a995;
      7'b1010011:
        coeff_c = 131'h3ef854e74a3a00e75630d2cf7a77d13f2;
      7'b1010100:
        coeff_c = 131'h2aa9593913856c77a1389fc04694d44cb;
      7'b1010101:
        coeff_c = 131'h191ab9f814334ba8e82c0d36defd6ee2d;
      7'b1010110:
        coeff_c = 131'h18aa0ebb50a14aa9d3b4e20132ad9a3ec;
      7'b1010111:
        coeff_c = 131'hb443900c05e82c612bf611a36593da7f;
      7'b1011000:
        coeff_c = 131'h18dad5554562ce9c092e344fcc6b6bbdf;
      7'b1011001:
        coeff_c = 131'h1e344cea9299ecec330ce0fea68b9c5dc;
      7'b1011010:
        coeff_c = 131'h2456e6c9af20eb3908b0a364ab08f5601;
      7'b1011011:
        coeff_c = 131'hefa7dc92776fa49e2b088bc7cedab615;
      7'b1011100:
        coeff_c = 131'h6c95d34a174870137b013d162e2ac35a;
      7'b1011101:
        coeff_c = 131'h2b4e3ad5e7ed48b26fb0a7d376e8fe382;
      7'b1011110:
        coeff_c = 131'h20e737cf8446d37713b3ace086933dfea;
      7'b1011111:
        coeff_c = 131'h27e8af5719cb17385172daac6e55e4ed4;
      7'b1100000:
        coeff_c = 131'h45626eb79329396cac0389f8c4aebe52;
      7'b1100001:
        coeff_c = 131'hc219401fb129d5271f33b0584e994f0;
        default: coeff_c = 131'h0;
      endcase
end
endmodule
