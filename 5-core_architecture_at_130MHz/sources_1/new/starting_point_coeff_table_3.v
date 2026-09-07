`timescale 1ns / 1ps
module starting_point_coeff_table_3(input wire [6:0] i_reg, output reg [130:0]coeff_c);
always@*
    begin
      case(i_reg)
      7'b0:
        coeff_c = 131'h32c0e4c3ae2959ebd3f350de8108a1be6;
      7'b1:
        coeff_c = 131'h8dc3c985b97dd70bd881a0be28f381d7;
      7'b10:
        coeff_c = 131'h23cf4a4e1fe9a04b22cb242b2b52c865d;
      7'b11:
        coeff_c = 131'h2e3f9df34d69291e24fcd436473b8015a;
      7'b100:
        coeff_c = 131'h1faa24dd616a07034ab9f96426a3c97f1;
      7'b101:
        coeff_c = 131'h12a093cb46e1a823b611179ea3b571f4b;
      7'b110:
        coeff_c = 131'h7f254c22425f2e7ef6875ae96cc9068c;
      7'b111:
        coeff_c = 131'h41f4919b4d1417ce1d3ed2e85f836925;
      7'b1000:
        coeff_c = 131'h265b63174c4d77f5cb4802032464cb5b0;
      7'b1001:
        coeff_c = 131'h3c8c0898576704074c72a5b9aae6625a1;
      7'b1010:
        coeff_c = 131'h3106838592ee77cd4dceba8d667a21392;
      7'b1011:
        coeff_c = 131'h29f89560f36831ec6865d1b4a660e574f;
      7'b1100:
        coeff_c = 131'h34e23474b5c1d2c9c011b05dde7646c25;
      7'b1101:
        coeff_c = 131'h3a36f2fe912fa4664583b0d39aa9fab03;
      7'b1110:
        coeff_c = 131'h3fa562b3d90347e8a25d0d74c28dc34e;
      7'b1111:
        coeff_c = 131'h31a5708e5f08b7c84179551d1131659c5;
      7'b10000:
        coeff_c = 131'h19dd5a05b31595c123c8c4ff8d336feeb;
      7'b10001:
        coeff_c = 131'h1058a601e9954a2a8f2c11b45d88ffb5b;
      7'b10010:
        coeff_c = 131'h1e4d9c7789f51a5793d3b37f7fb6c187c;
      7'b10011:
        coeff_c = 131'h26f53a95ead9eb8983b9b3b7a869652be;
      7'b10100:
        coeff_c = 131'h90327e7a83d8f74eb2c2380d8bfab927;
      7'b10101:
        coeff_c = 131'he50d21bb798eb5880c2f220cd604383c;
      7'b10110:
        coeff_c = 131'h2c3fd99045e2bb13c20ab915c53850e15;
      7'b10111:
        coeff_c = 131'h2c6399f6508e3d33df9ab3ce530956d0;
      7'b11000:
        coeff_c = 131'h3825c3dc415385f0f8e83d3514a4d3e63;
      7'b11001:
        coeff_c = 131'h264a6d9eeaa1c38a42013671f7b21c986;
      7'b11010:
        coeff_c = 131'h1a836ccad95366e76ebf0af52a527eeb0;
      7'b11011:
        coeff_c = 131'h3dc57fd1cc263a203b89315b992415c80;
      7'b11100:
        coeff_c = 131'h6c762ac5ea5d929c07872bbfbcf6021a;
      7'b11101:
        coeff_c = 131'h26708a9cc034f6def697d0234c5d59092;
      7'b11110:
        coeff_c = 131'h110210e692146a540202796c7b4ded266;
      7'b11111:
        coeff_c = 131'hb45b3c260b888042b541fdcf789a11b1;
      7'b100000:
        coeff_c = 131'h2bd63864a2fcadd57b018bcbc40805809;
      7'b100001:
        coeff_c = 131'h1a5390659efc668bf430792152b51b418;
      7'b100010:
        coeff_c = 131'h23913cd1cda18abffe36a77700c7b8884;
      7'b100011:
        coeff_c = 131'h17d8f2f5864341d26bfac5556b2f62648;
      7'b100100:
        coeff_c = 131'h52c575bf6750cf9fe00b3b5328908c4f;
      7'b100101:
        coeff_c = 131'h232787ce7ae2385a02351228316da4586;
      7'b100110:
        coeff_c = 131'h2098577f5e5cb450196a24886f9b2f10e;
      7'b100111:
        coeff_c = 131'h1e1337770620ff8d8638eb66d2baa3fb1;
      7'b101000:
        coeff_c = 131'hc9e14057ffbfca3d39ced1b4dd33219f;
      7'b101001:
        coeff_c = 131'h26732b46691b69fb2010d8699703ba235;
      7'b101010:
        coeff_c = 131'h16c8259a23606972243625ad6172b3782;
      7'b101011:
        coeff_c = 131'h10842c8def4086449800678475b657073;
      7'b101100:
        coeff_c = 131'h22aec2e681242ecc69c8900423e484282;
      7'b101101:
        coeff_c = 131'h3141e4ce05854ea9fed749ea144a68bf3;
      7'b101110:
        coeff_c = 131'h3224a5884ef4b31504359ee4f644b00e6;
      7'b101111:
        coeff_c = 131'h3cb8c084494a31eb23f0d139a6f6629f8;
      7'b110000:
        coeff_c = 131'h13a64f2f90566185a47e32bdf1c4bc408;
      7'b110001:
        coeff_c = 131'h2bbad1afada5717b1ce278d04fcb0c9e8;
      7'b110010:
        coeff_c = 131'h2d3d34d689d801abae89d4be816fd3b62;
      7'b110011:
        coeff_c = 131'h23fa76ebbd940975710a7ad3ea0a77a67;
      7'b110100:
        coeff_c = 131'h149b94b08da6a6a47c38d6fd35f820721;
      7'b110101:
        coeff_c = 131'h26ab51ed43240f103b32967bed981e0a1;
      7'b110110:
        coeff_c = 131'ha32da4a523a6cc63c90f644ae070fa85;
      7'b110111:
        coeff_c = 131'h285bae1775068c30374998e030893c9cf;
      7'b111000:
        coeff_c = 131'h376f031a7d7a89d8b9b2eb3daf6031d91;
      7'b111001:
        coeff_c = 131'h1ffb9b9342bd1950204529f9c35bcf337;
      7'b111010:
        coeff_c = 131'hae5bf3bdd1c9700b4ee57e54c0c4d57c;
      7'b111011:
        coeff_c = 131'h1462dee322feac9d78bf88ee51df96ce5;
      7'b111100:
        coeff_c = 131'h1249e48717218f373844d957b5226162c;
      7'b111101:
        coeff_c = 131'h59b1245212a855a688fe4be16660412;
      7'b111110:
        coeff_c = 131'h2c2e67366c844f0b7046ec3f50d3f1e4f;
      7'b111111:
        coeff_c = 131'hebade6ee0e08f53fda1180df09677f58;
      7'b1000000:
        coeff_c = 131'ha01226ed96656206253254091a32b3d9;
      7'b1000001:
        coeff_c = 131'h13f1da9eafe3860c586e9b84ecfaca547;
      7'b1000010:
        coeff_c = 131'h1d0e7d61b67463745abd6a65a2e2cda5f;
      7'b1000011:
        coeff_c = 131'h19c28b8deb86140061489baa840b9b93e;
      7'b1000100:
        coeff_c = 131'h3ef0480c63c67a91a6e67fd0b7fbe15ab;
      7'b1000101:
        coeff_c = 131'h2fc129630606b0a4cb127d580638c04d9;
      7'b1000110:
        coeff_c = 131'h2762d9890480801cd13595a249a7e49a7;
      7'b1000111:
        coeff_c = 131'h1547f24e25f7662a7caf7c5a212fc8d03;
      7'b1001000:
        coeff_c = 131'h15602410859e57762d0b3cdc943a248f5;
      7'b1001001:
        coeff_c = 131'he0d7997668a9f36bfb8513c4b61b6597;
      7'b1001010:
        coeff_c = 131'h3c6983be47cdfa6cff8343c6ea076d44a;
      7'b1001011:
        coeff_c = 131'h3647c189808ab6c5eaf53d8afbd7cc829;
      7'b1001100:
        coeff_c = 131'h1793af814eae7d12f8e709c7defe32510;
      7'b1001101:
        coeff_c = 131'h147001f119df8eeba1925e6c4f43bb4f8;
      7'b1001110:
        coeff_c = 131'h22d2d3e2fa95f5618fc01eb12a9d365a;
      7'b1001111:
        coeff_c = 131'h39b06ee4f9006410011cc45b782e329c7;
      7'b1010000:
        coeff_c = 131'h230618de66ec201e0ca684cebed174891;
      7'b1010001:
        coeff_c = 131'h2014cf96c8b730567c90f8a4a4f34a34c;
      7'b1010010:
        coeff_c = 131'h358bdb719fafe7f36f6b251e73ef0377d;
      7'b1010011:
        coeff_c = 131'hc1412b17d25a1497d5e15a36001477d2;
      7'b1010100:
        coeff_c = 131'h2a6c1f49c5f06b066c61c0c9a86573b4;
      7'b1010101:
        coeff_c = 131'h9baafa57ba172c4232d8e433d884063e;
      7'b1010110:
        coeff_c = 131'h1bbb4b51ea2643acd77391fd574bd6235;
      7'b1010111:
        coeff_c = 131'h2c483cdc0856ce4d12b4028dea783ac1e;
      7'b1011000:
        coeff_c = 131'h3967130e0c3439d1bb90476bf2e943366;
      7'b1011001:
        coeff_c = 131'h34cb388b7b86fefc20918fc6ca83dd064;
      7'b1011010:
        coeff_c = 131'h3ff38e2c5e2e7e867574cdc1e15ba825d;
      7'b1011011:
        coeff_c = 131'h9ed4f7b5c5c393b1edfbac1084bdb50c;
      7'b1011100:
        coeff_c = 131'h565800044e81a443ab7c8e1fd911e142;
      7'b1011101:
        coeff_c = 131'h234a6292858bee9504efaa71ec41f5910;
      7'b1011110:
        coeff_c = 131'h2c8857e1d72286ab7bdcbde1f446029ac;
      7'b1011111:
        coeff_c = 131'h18cc6393fce3479a1b2ae1c516f913c3;
      7'b1100000:
        coeff_c = 131'h149849f80854a7b034d3031eb6b3b00fd;
      7'b1100001:
        coeff_c = 131'h23c53a874bdb19850e5610ca986ee035f;
        default: coeff_c = 131'h0;
      endcase
end
endmodule
