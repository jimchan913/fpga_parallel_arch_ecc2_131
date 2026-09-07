`timescale 1ns / 1ps
module starting_point_coeff_table_5(input wire [6:0] i_reg, output reg [130:0]coeff_c);
always@*
    begin
      case(i_reg)
      7'b0:
        coeff_c = 131'h145de975ad20d9d4a7b20510ba944e746;
      7'b1:
        coeff_c = 131'hfdb2af9b8f4d62cf9278dc126db6515a;
      7'b10:
        coeff_c = 131'he6cbb8c5ef675314eac1ab398a9a0c6e;
      7'b11:
        coeff_c = 131'h979ca99d48eb1d463ae07572baba330b;
      7'b100:
        coeff_c = 131'h26aa302faddbc992e3619006130ee92fa;
      7'b101:
        coeff_c = 131'h96adce0485f0e6b2ad0bf40702f30d55;
      7'b110:
        coeff_c = 131'h2819bb27fcb3b143c762c5ee45328b4fc;
      7'b111:
        coeff_c = 131'h3e7f90df306134f43582607f5748676a4;
      7'b1000:
        coeff_c = 131'h3b5d7765f3621fc034d8a1a1fad3e44c4;
      7'b1001:
        coeff_c = 131'h3babca713c5a2dfac9101ca2122679dc7;
      7'b1010:
        coeff_c = 131'h3270e86b70a12130771ccb764605d94dc;
      7'b1011:
        coeff_c = 131'h1392d3bc4c6d27c723aa2db4a8adbc8fc;
      7'b1100:
        coeff_c = 131'h29d10a037ba3ab0664cd2977e336feff2;
      7'b1101:
        coeff_c = 131'ha843daf4f238893703e187257f6f9134;
      7'b1110:
        coeff_c = 131'h1503d8e371c91bd76d2cab9867f848801;
      7'b1111:
        coeff_c = 131'h2a3416e169a667af03cefbaae1190d35e;
      7'b10000:
        coeff_c = 131'h14443136e7bcfc87e8d9ab39b22786427;
      7'b10001:
        coeff_c = 131'h9624248410182f55f9bdedda2a464f09;
      7'b10010:
        coeff_c = 131'h3c7796cafb9295b18502f7f59872995a5;
      7'b10011:
        coeff_c = 131'h2a1e14ade90c3ec8a746657a177d99373;
      7'b10100:
        coeff_c = 131'h12408b9dd52f57e3142560ef4be762cb0;
      7'b10101:
        coeff_c = 131'h8d3ad8028d7a9013bff37e31255cfa05;
      7'b10110:
        coeff_c = 131'h2c605c86cc8a893ee7e4a343927a197e4;
      7'b10111:
        coeff_c = 131'h16dc7f6a996fe1b52bf848d5a06fb2d22;
      7'b11000:
        coeff_c = 131'h1440bf3d090e68f09555d2f8b99941c73;
      7'b11001:
        coeff_c = 131'h3ba45f0a24a1b1b177aefe17aba5e032a;
      7'b11010:
        coeff_c = 131'h2b221033f1e23d7a1e42f10516d76e7a9;
      7'b11011:
        coeff_c = 131'h12718190e9c78b1bb511e149ff33188a;
      7'b11100:
        coeff_c = 131'h27b5527cfc544409960aa9afcfda61541;
      7'b11101:
        coeff_c = 131'h705b28d6f67fd30d084ebff6e4ce6d9c;
      7'b11110:
        coeff_c = 131'h3376b13e7d6588faa7dbf95cced24c4b;
      7'b11111:
        coeff_c = 131'h2761ae18a0017263656128bfda0ae3a17;
      7'b100000:
        coeff_c = 131'h21e0d743bd6a959969ac403269107549e;
      7'b100001:
        coeff_c = 131'h11c8a418df875211ad764f9f54c99bbbe;
      7'b100010:
        coeff_c = 131'h11fa644d1716dc5143f645c9528f9e780;
      7'b100011:
        coeff_c = 131'h14ca0d38b2cfa8279204302e740aaa0d;
      7'b100100:
        coeff_c = 131'h3efa50349ed64ead1213c0e63fc372c48;
      7'b100101:
        coeff_c = 131'h2471be1b928356d3f29f952574846f9cc;
      7'b100110:
        coeff_c = 131'h1f43b30ba9fb9d958fbc815b06cf6b813;
      7'b100111:
        coeff_c = 131'h1cc86a22916367d2e4601ed5becb88627;
      7'b101000:
        coeff_c = 131'h247205a3986aadd09d5029f5ccdf8949d;
      7'b101001:
        coeff_c = 131'h20d9007a339d552630b82b2c70ce4395e;
      7'b101010:
        coeff_c = 131'h1b439e6ed66f9da267cb963d2c7d25811;
      7'b101011:
        coeff_c = 131'h24592074ad3d4cfd3bfffb62c340dc528;
      7'b101100:
        coeff_c = 131'h10edfcaf3a35d77756ebd897493ec27f9;
      7'b101101:
        coeff_c = 131'h3df5be4eed27d990d49728a769fd29bf6;
      7'b101110:
        coeff_c = 131'h514f2effa9faebee51492699ab45e936;
      7'b101111:
        coeff_c = 131'h270b4036d7cd911d06c283f9ea67f7a3b;
      7'b110000:
        coeff_c = 131'h18b4496c8f33cba81b76e38ce77a324fd;
      7'b110001:
        coeff_c = 131'h1b0d638435bb5a749509d99d3d273dcde;
      7'b110010:
        coeff_c = 131'h1dd1d6535ee5db8d6872392112eaf9bf2;
      7'b110011:
        coeff_c = 131'h377ba5f9fd4bd1d4588d0949eeff5a759;
      7'b110100:
        coeff_c = 131'h388f5fe50fe81bca7db82e2aec10d0d53;
      7'b110101:
        coeff_c = 131'hf8ca24080c3d63f856a1f87827e809b4;
      7'b110110:
        coeff_c = 131'h182202a93c2822327755ab7583d83fd8b;
      7'b110111:
        coeff_c = 131'h37572e7f4e341958afd82a23ac2da7cc8;
      7'b111000:
        coeff_c = 131'h2db3f2f54157df5730c4bf11a432282de;
      7'b111001:
        coeff_c = 131'h10125c5f40af85acf071ce45b429e931f;
      7'b111010:
        coeff_c = 131'h26d64bcd15766185c3a61b347e55c0937;
      7'b111011:
        coeff_c = 131'h29b1db1de713bc3ecaaac4814e576a501;
      7'b111100:
        coeff_c = 131'h5234977c923645ddb42da21fec19106d;
      7'b111101:
        coeff_c = 131'h34ff8d76099695790e3245646903a2203;
      7'b111110:
        coeff_c = 131'h3b32e5c787caaa385d945e2fe66c7838f;
      7'b111111:
        coeff_c = 131'h3299ed1872d23dd6f498b3f68b281c02f;
      7'b1000000:
        coeff_c = 131'h3c0bb5bfc3ca71238ba1ea93cb3ccde81;
      7'b1000001:
        coeff_c = 131'h262792c56f796f6dd324bb13e26eaa134;
      7'b1000010:
        coeff_c = 131'h3ed9c0d5afc2bdb5a4c11ac203b761168;
      7'b1000011:
        coeff_c = 131'h6fd28d51aca4d66a3e073076f490bbbf;
      7'b1000100:
        coeff_c = 131'h22b56f5eb335b1951a9f3b8577ddbfb9f;
      7'b1000101:
        coeff_c = 131'h387ce311dcb8e2a6d3f1d17bf4ab49485;
      7'b1000110:
        coeff_c = 131'h37a02284a09688515238a86943a019aab;
      7'b1000111:
        coeff_c = 131'h2050bd024ede16d9dcc74d6a0d612e62b;
      7'b1001000:
        coeff_c = 131'h2fb0152a1c787f4fb8978ac86bb2bf5c7;
      7'b1001001:
        coeff_c = 131'h2e236f2c5fc2e52f04461f0aa1877da02;
      7'b1001010:
        coeff_c = 131'h2e1f681b96286048cf4505fc73c6e8d08;
      7'b1001011:
        coeff_c = 131'h379e4452e6e440c437eb7c9cb8e9c2e31;
      7'b1001100:
        coeff_c = 131'h292ad52a19b39e648335a652e468768fb;
      7'b1001101:
        coeff_c = 131'hd5fa28664675cdc6afe82552e9d8f3ba;
      7'b1001110:
        coeff_c = 131'h1c96863e7edb789506a1e7e373a6a202e;
      7'b1001111:
        coeff_c = 131'h394644fe095fbf9537c8416b23e16e1be;
      7'b1010000:
        coeff_c = 131'h11230c5b277de234fc6b73fdf9d75acb6;
      7'b1010001:
        coeff_c = 131'hb40fd98fd129aedac8a65bf0645b5743;
      7'b1010010:
        coeff_c = 131'h1f79dddbef426669061d4dd6d5b246b3e;
      7'b1010011:
        coeff_c = 131'h3a24b6a42f69616649ef1b052fac72027;
      7'b1010100:
        coeff_c = 131'h2d565857e9f5e0a2b1231b7e2c254e5b6;
      7'b1010101:
        coeff_c = 131'h30030f932ffa2f7e193cd146594c4432;
      7'b1010110:
        coeff_c = 131'h418c6043f03f5d7acbc4e314830af7dd;
      7'b1010111:
        coeff_c = 131'h1ba44061c192a4e050d31aa6a6dcc67b5;
      7'b1011000:
        coeff_c = 131'h2b957d07a90d406a74d2ee55a64c42446;
      7'b1011001:
        coeff_c = 131'h21a7e1270fe15e6032ca1bdc85af7a1c4;
      7'b1011010:
        coeff_c = 131'h321cfdb28311204d2fbcb6b1bb91c09e9;
      7'b1011011:
        coeff_c = 131'h12e52e7dd2b11bcbc541e09f8fe7f2ebc;
      7'b1011100:
        coeff_c = 131'h5f12f87a005ded6e730d83e9f098ebfa;
      7'b1011101:
        coeff_c = 131'h168150070a6a00a34c39662446e58482f;
      7'b1011110:
        coeff_c = 131'h4b8d34d4d2969076b3b551ea43b6ff3e;
      7'b1011111:
        coeff_c = 131'h36fad71ef503dd83015a8eaa4398304a7;
      7'b1100000:
        coeff_c = 131'hc6e15c98eb5252632832be324314c563;
      7'b1100001:
        coeff_c = 131'h3cba6f865bbf9b4a707bbccca1ae13c7d;
        default: coeff_c = 131'h0;
      endcase
end
endmodule
