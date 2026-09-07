`timescale 1ns / 1ps
module starting_point_coeff_table_8(input wire [6:0]x_low_bits_addr, output reg [130:0]coeff_c);
always@*
    begin
      case(x_low_bits_addr)
      7'b0:
        coeff_c = 131'h15638da352633b98082fec67417f4fd5c;
      7'b1:
        coeff_c = 131'h30ee5c6608a2df248fb163e6deb9f0f12;
      7'b10:
        coeff_c = 131'h3678166902a3c327d72b634c5abdf0e1b;
      7'b11:
        coeff_c = 131'h11794a4bb12bd80a6a7e29bac489daa36;
      7'b100:
        coeff_c = 131'h6fd9652c7c9cb73897b461aef787dd4d;
      7'b101:
        coeff_c = 131'h9989e6038448b3f5ebdfca0580012b0b;
      7'b110:
        coeff_c = 131'h13dd44bd892ba5b32767ab2c30647aa2a;
      7'b111:
        coeff_c = 131'h222509e1e680eb6c8f777e582d29cd172;
      7'b1000:
        coeff_c = 131'h3e072acd3cb02ccd400ee573e02e46413;
      7'b1001:
        coeff_c = 131'h29bdd043d2b55d8f34f276e42d71a1cda;
      7'b1010:
        coeff_c = 131'h2271b85fdd6f5c9f891c2e2369ff57dcc;
      7'b1011:
        coeff_c = 131'h1a0f94d57554a44809007ffe603b1b530;
      7'b1100:
        coeff_c = 131'h375354bc8ef6b9b653ae56aa2498aada;
      7'b1101:
        coeff_c = 131'h3e905e37f7d4b6655c242216a62a2b9ba;
      7'b1110:
        coeff_c = 131'h32d4fd16996d1305b9c9f1c50ac8548e3;
      7'b1111:
        coeff_c = 131'h2a27c401b06bd67614111d9347793ed46;
      7'b10000:
        coeff_c = 131'hb0351b06c92ada91d3e4ae35bf16d6ae;
      7'b10001:
        coeff_c = 131'he992779be5a98f7a8718049a1aaa81a4;
      7'b10010:
        coeff_c = 131'h180a6f42f6729fd53ece722184cce7343;
      7'b10011:
        coeff_c = 131'h390787efef82463c5b3aa491b58872f94;
      7'b10100:
        coeff_c = 131'h21e91c9331ae0d39ee6422c70b4350c36;
      7'b10101:
        coeff_c = 131'hb7df0f628b91898db100ce39ca529bb9;
      7'b10110:
        coeff_c = 131'h1663e6fc559a983bbbf8aa8ef74c939db;
      7'b10111:
        coeff_c = 131'h2f7b2377f0c6e4aea0774cedc35a94dc8;
      7'b11000:
        coeff_c = 131'h13ed824d08e691fa31f303d276834e97;
      7'b11001:
        coeff_c = 131'h1871a40e01cbfeed4bd3b23e8e39860ca;
      7'b11010:
        coeff_c = 131'h7f244554e4b06d2811912af805dc43b9;
      7'b11011:
        coeff_c = 131'h23cfcf350dc4f5f414377a53d92e0fa6a;
      7'b11100:
        coeff_c = 131'h27840b220397ea2cf1816f78e6457246a;
      7'b11101:
        coeff_c = 131'hf69b7f0b6c04e4ce086650eff6dbcc5a;
      7'b11110:
        coeff_c = 131'h1dee8497a719e41781f973c1c9e009d97;
      7'b11111:
        coeff_c = 131'h125979d2df38f26f88003ee1b1e3e68b8;
      7'b100000:
        coeff_c = 131'h39c678b1557a329326098753fdc1e24e4;
      7'b100001:
        coeff_c = 131'h1013a18867edfdc0bf2583b9d7fed64e5;
      7'b100010:
        coeff_c = 131'h173be87bd153717149da6e899659a3ac6;
      7'b100011:
        coeff_c = 131'h39c9ad17e1db48d673f9d70b1af6907d9;
      7'b100100:
        coeff_c = 131'h352caf84cf8b79a6d0f6f91d4ba70a6ce;
      7'b100101:
        coeff_c = 131'h4ec366e2bdd6987034d4b60199a2f440;
      7'b100110:
        coeff_c = 131'h19c6457e1efc119320f08f789b3cf6b9b;
      7'b100111:
        coeff_c = 131'h1376e38a534cdcfe7f19b48ff52144251;
      7'b101000:
        coeff_c = 131'hec22d2bed5cfed0ecdb0f87e1d0e7e0a;
      7'b101001:
        coeff_c = 131'h31be23dbb63610e7ab9c14928efcd9cab;
      7'b101010:
        coeff_c = 131'h175b91f8dda8dfac0577db573e08f7f72;
      7'b101011:
        coeff_c = 131'h217265c075e90f655eb1886d335390767;
      7'b101100:
        coeff_c = 131'h37e1c3f5eb1a5e59d498e223ec810ab61;
      7'b101101:
        coeff_c = 131'h15ca8209dc48851ecae85d36fdeb888be;
      7'b101110:
        coeff_c = 131'he910bed527c843299bfd215a0eca7ae6;
      7'b101111:
        coeff_c = 131'h2c3c4ba295c4d97de2df57014d3b9650b;
      7'b110000:
        coeff_c = 131'h33e17be06233f5467f9a6154b1d24fe38;
      7'b110001:
        coeff_c = 131'h849716c0e8a43e80a5426866e766853f;
      7'b110010:
        coeff_c = 131'h1628a48ee9116193bb89b45fa6c29cf19;
      7'b110011:
        coeff_c = 131'h21a32edc7c7c2494f93ea9af7570564d9;
      7'b110100:
        coeff_c = 131'h273071e0044ed7dd096f499244d260445;
      7'b110101:
        coeff_c = 131'h24dfc945949b9686616d9934486e75c7;
      7'b110110:
        coeff_c = 131'h23dd89f839b1e0d8f39672c831e1a5b72;
      7'b110111:
        coeff_c = 131'h1e296cdf8113bacb7236e606d80d8678e;
      7'b111000:
        coeff_c = 131'h3a6c1f9ed7aaa43fbbbf328a610e24d2c;
      7'b111001:
        coeff_c = 131'h11a5940a920b8af247c38278f3b0c95d0;
      7'b111010:
        coeff_c = 131'h6c938a9c35dcda80f5d3fd8c6796af47;
      7'b111011:
        coeff_c = 131'h279788d4789ba488ccc6184fede8ef929;
      7'b111100:
        coeff_c = 131'h3216e3f6365bfc4e0e4febf2495f2e6c;
      7'b111101:
        coeff_c = 131'h28124dbed78a13438cb1e5227df357e4c;
      7'b111110:
        coeff_c = 131'h9004aa55405a7f74c122a70c2874a276;
      7'b111111:
        coeff_c = 131'h2a11d0701d28cfc14f3628a650ab63f55;
      7'b1000000:
        coeff_c = 131'h31c91876625996638aa46c9b20a7eb8df;
      7'b1000001:
        coeff_c = 131'h2eb701bc5a8a76f1e6ae4df87177b5a3e;
      7'b1000010:
        coeff_c = 131'h18b3a051ace636106fadb795e47e442a9;
      7'b1000011:
        coeff_c = 131'h3b8883cfb93ec37f733843ef2c6fc68ab;
      7'b1000100:
        coeff_c = 131'h1fddcf4ad84f954848b9f33456001f8d1;
      7'b1000101:
        coeff_c = 131'h20d2724a05500ef7d83b96726b0d10e2e;
      7'b1000110:
        coeff_c = 131'h2dc2a758f38a8074147330e53cebc6e76;
      7'b1000111:
        coeff_c = 131'h33583e9f7e7166640f55e76d494321760;
      7'b1001000:
        coeff_c = 131'h8ed7c653fc44090ed01adf0a0dc3e96;
      7'b1001001:
        coeff_c = 131'h21fb5ddd2df230ef13cde5c2b14095f06;
      7'b1001010:
        coeff_c = 131'h3cc0801bf150dda2409230b9ad4b69ff0;
      7'b1001011:
        coeff_c = 131'h134be0aa9353359420f7791c526e673f4;
      7'b1001100:
        coeff_c = 131'h9fbda9066fdc267eeb5130c08bb7de5f;
      7'b1001101:
        coeff_c = 131'hc96fa13a1c9dd83138610cb386e88a3a;
      7'b1001110:
        coeff_c = 131'h2e92ae2af5e5def0c9f4c12bd1bf28904;
      7'b1001111:
        coeff_c = 131'h14287a176467da795b8d07e8aab6854d2;
      7'b1010000:
        coeff_c = 131'h7ad7d00547b5c5ebcb0cce70e09268a3;
      7'b1010001:
        coeff_c = 131'h3a2d59d54175b532bcdea21ebf5f8b37b;
      7'b1010010:
        coeff_c = 131'h3c7982fa69380e52c3d876cc51d898110;
      7'b1010011:
        coeff_c = 131'h9b7a14397103946d338c558d2ef779f3;
      7'b1010100:
        coeff_c = 131'h9fcb6d237573cb25f46909d18da4d8af;
      7'b1010101:
        coeff_c = 131'h3640ee06beb49710ecd58c99234659906;
      7'b1010110:
        coeff_c = 131'h315aeb3a6050993be5d8cecc35419900e;
      7'b1010111:
        coeff_c = 131'h3480647262bdf9799d81465d80d687fbf;
      7'b1011000:
        coeff_c = 131'hfdb80f6acbb2c820aaa4310926503bf4;
      7'b1011001:
        coeff_c = 131'h27d1dae025632284908905f51c08549bc;
      7'b1011010:
        coeff_c = 131'hcfae6598eba155a4875de92647918d89;
      7'b1011011:
        coeff_c = 131'h121de5e84fac9b03400f0b6fe9d237e4;
      7'b1011100:
        coeff_c = 131'h23679e780e40f57ff4f714d7f9a4f461f;
      7'b1011101:
        coeff_c = 131'h3b99b2c72cd6f66eda354c88aa5ffea26;
      7'b1011110:
        coeff_c = 131'h2bee8d68f1c026846d7eb168c6b4725af;
      7'b1011111:
        coeff_c = 131'hfdb18186b3c19c7a5ff31d6e334a5e40;
      7'b1100000:
        coeff_c = 131'h3b03aa04815d1d3c7364608bfccf673b3;
      7'b1100001:
        coeff_c = 131'h878e0c94b019f0f175cf970c4308781d;
        default: coeff_c = 131'h0;
      endcase
end
endmodule
