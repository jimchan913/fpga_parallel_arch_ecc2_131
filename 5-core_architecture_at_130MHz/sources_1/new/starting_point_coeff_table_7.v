`timescale 1ns / 1ps
module starting_point_coeff_table_7(input wire [6:0]x_low_bits_addr, output reg [130:0]coeff_c);
always@*
    begin
      case(x_low_bits_addr)
      7'b0:
        coeff_c = 131'h1afd448e45c950da5ef44691d2fcf61a1;
      7'b1:
        coeff_c = 131'h1ac8484de3aef1c010fcf083c323af279;
      7'b10:
        coeff_c = 131'h3a033599c15e90a1ebaacc0087c7ad865;
      7'b11:
        coeff_c = 131'h25c4831bda029fed54869361555150c2e;
      7'b100:
        coeff_c = 131'h15e35063098487f05645c4eba7880c5a8;
      7'b101:
        coeff_c = 131'h20291ed5dd9082621340705e824e01aa8;
      7'b110:
        coeff_c = 131'h3c71beaac81956411687f671815d83129;
      7'b111:
        coeff_c = 131'hde806fab24f72e63dc4492ec7aa351c3;
      7'b1000:
        coeff_c = 131'hae9ec6ad00c4b564ecb66f9c4e81d613;
      7'b1001:
        coeff_c = 131'h1eae1ba88c43b0150cb99d89022d43fdc;
      7'b1010:
        coeff_c = 131'h1b91f22a72ef3e60b0cdf6c84299bda89;
      7'b1011:
        coeff_c = 131'h231937ecbf2df6d06e639f6e41e85f8d4;
      7'b1100:
        coeff_c = 131'h7e3cff4fe262e54448c294ffd36c2c4b;
      7'b1101:
        coeff_c = 131'h1135735a1904381af93dc8304c44acbc7;
      7'b1110:
        coeff_c = 131'h16824dbea8c11917ab0dc7e22635c0066;
      7'b1111:
        coeff_c = 131'hd4e343474e4cab567658dc05351ee114;
      7'b10000:
        coeff_c = 131'h4408e6c407e2e6dd88e4fab9109a0599;
      7'b10001:
        coeff_c = 131'h25457894c8a349273d1a2bdcb2ecebcdb;
      7'b10010:
        coeff_c = 131'h3b4b334d3f0e9450bf8b79c50e0993845;
      7'b10011:
        coeff_c = 131'h108f3d6cabb600f5388d9a351672a8998;
      7'b10100:
        coeff_c = 131'h1caa9fe3cb0d3a2a4424ef23179f0a475;
      7'b10101:
        coeff_c = 131'h2962455c2317c04172cccbf4f69a90bf8;
      7'b10110:
        coeff_c = 131'h1c7fa518c5c1a43a1842b5e71064bebff;
      7'b10111:
        coeff_c = 131'h643e6a3d057d714012f1923d400c0676;
      7'b11000:
        coeff_c = 131'h27f7931e96310cb3d3b66cf4f6db46e86;
      7'b11001:
        coeff_c = 131'h3ba03434d4ee0146065c37d3dcf549696;
      7'b11010:
        coeff_c = 131'h198514a20aaf30111484dbd70408a1702;
      7'b11011:
        coeff_c = 131'h3f43cf2dfb68f4f69eaecf494779d61fa;
      7'b11100:
        coeff_c = 131'h3611d4bde3b62440724bef63ac705db08;
      7'b11101:
        coeff_c = 131'h19d5c997e5c943a415cf32fd556efcae2;
      7'b11110:
        coeff_c = 131'h3dff0fc0568b245941efc353dd6854d1b;
      7'b11111:
        coeff_c = 131'h21a7ba61a29b0bff108ec68dac2becad0;
      7'b100000:
        coeff_c = 131'ha3838300dd01159cc289b0be5c251625;
      7'b100001:
        coeff_c = 131'h1d4f2c2acd5d6e9b9d79c52d54b1abd16;
      7'b100010:
        coeff_c = 131'h17ca43743b77ca3d8de4fc0f621b6f373;
      7'b100011:
        coeff_c = 131'h1b557c1bfe1f8a838d2c0e1e6836b85a;
      7'b100100:
        coeff_c = 131'h195b93f35381f1f521004041f7aef8110;
      7'b100101:
        coeff_c = 131'h26e8657cbb618d97068ca25431b010082;
      7'b100110:
        coeff_c = 131'h2b2f128ac7add685afaa930f0ca19b740;
      7'b100111:
        coeff_c = 131'hba3f9b542e784a78c4f61e30e4b9c7cf;
      7'b101000:
        coeff_c = 131'h3c4358781453c779f87ea8e736150e60b;
      7'b101001:
        coeff_c = 131'h1904175f8f366104b286a792c2f6355b0;
      7'b101010:
        coeff_c = 131'h39de150fa54796102b4224c5bc15bacb1;
      7'b101011:
        coeff_c = 131'h7bdc0de53283749d1dc3fdc5af8c639d;
      7'b101100:
        coeff_c = 131'h1b7530b9e960b804d959cc53a856a3a21;
      7'b101101:
        coeff_c = 131'h1098e8093c0f5a1477a18e815ab5f5cd7;
      7'b101110:
        coeff_c = 131'hb2c8fce578c40bc05f4ed2a28033c827;
      7'b101111:
        coeff_c = 131'h19bd42031fbce817533aece5065f02d9e;
      7'b110000:
        coeff_c = 131'h9cf07931bc7b8add8aabc909c7058a4b;
      7'b110001:
        coeff_c = 131'h5f80bfd4d0fb18a07cdfc04a4be40455;
      7'b110010:
        coeff_c = 131'h2aa761576b166a55e4d186d3cb06eb019;
      7'b110011:
        coeff_c = 131'h6f761faeb1b8578df22c21a83cb65b75;
      7'b110100:
        coeff_c = 131'h3ceea02ddcf0dd053f74615d49c327a04;
      7'b110101:
        coeff_c = 131'h244f25c5c5f97255a7fc24773e17e60f2;
      7'b110110:
        coeff_c = 131'h342808e9fdda3d3a460cec2fc1fa28e3e;
      7'b110111:
        coeff_c = 131'h16cb218e53dd03d6ccd5a60bb3e88e5df;
      7'b111000:
        coeff_c = 131'h5f1cc3630e0c1334d613d9a955927116;
      7'b111001:
        coeff_c = 131'h460a151e08aa724168bf7ce16424f8bc;
      7'b111010:
        coeff_c = 131'hed3f2946047f7bdc8519032c3fb5ba1b;
      7'b111011:
        coeff_c = 131'hfddf8d08578dfef8fea246c99aa4029c;
      7'b111100:
        coeff_c = 131'h17cd1044c2545b0a7afbbd0a7e6a8ee13;
      7'b111101:
        coeff_c = 131'h22bedb147f4d22a0fc15bc164e17e732b;
      7'b111110:
        coeff_c = 131'h17f5d576e5de67ed943526ef54d50ee85;
      7'b111111:
        coeff_c = 131'h1ac828768e2bc60d56a420f384d198267;
      7'b1000000:
        coeff_c = 131'h38f93b31272cfb3a7839b94f679cebb5c;
      7'b1000001:
        coeff_c = 131'h7455afadc2623f076fb57ecd3deca4f4;
      7'b1000010:
        coeff_c = 131'h9afff3495c1502cd26b65c46f8b861cb;
      7'b1000011:
        coeff_c = 131'h3b3e0498bc435c4e1a5882921f5ace928;
      7'b1000100:
        coeff_c = 131'hd373319cd783d39be88bf75c6090bc6d;
      7'b1000101:
        coeff_c = 131'h38e568a14efe65c76e9eb152786021a5;
      7'b1000110:
        coeff_c = 131'h22f58b1894ddb9916d52aebb51544a0d3;
      7'b1000111:
        coeff_c = 131'h37592891b0a6fcdf4a5a1ca22aeebba13;
      7'b1001000:
        coeff_c = 131'h2dd1838f21b243fbbf3cfb3d0ae8bad63;
      7'b1001001:
        coeff_c = 131'h221451dbe42f99ad8b2c77c89d51a6bdc;
      7'b1001010:
        coeff_c = 131'h3fc3cea26a25fab01df7c7543452988a7;
      7'b1001011:
        coeff_c = 131'h18d4e52dd2e41076413089e5776356b78;
      7'b1001100:
        coeff_c = 131'h170210d707627939ff90da4c961e56c30;
      7'b1001101:
        coeff_c = 131'h3b6baca7a2132a6412951c6bbc02c7b17;
      7'b1001110:
        coeff_c = 131'h1beb653e1e87134209924d97f99b1811e;
      7'b1001111:
        coeff_c = 131'h399653f5ed1ecb78cc86f423d6a7a38d8;
      7'b1010000:
        coeff_c = 131'h3e2bd2f5819d7592ddd40d25311afaf5;
      7'b1010001:
        coeff_c = 131'h2ebf55d99a028953ff056d136589b66e;
      7'b1010010:
        coeff_c = 131'h24e13de9166a33131a38e49b8cffe35c3;
      7'b1010011:
        coeff_c = 131'h389da753738c8e0fc165d870bda80b44f;
      7'b1010100:
        coeff_c = 131'h8791ab2c6180e56d0d7913cd4bf97902;
      7'b1010101:
        coeff_c = 131'h3821f278fef57ee44d39e5b8e70f76708;
      7'b1010110:
        coeff_c = 131'h2a1ae2698e4bf375b44deddbfbed5655e;
      7'b1010111:
        coeff_c = 131'h6d7054e4301eb7647d53ce13f618cd7a;
      7'b1011000:
        coeff_c = 131'h2ea7ed22d92253998845f6c51c8aba1f4;
      7'b1011001:
        coeff_c = 131'h175bdadf18c4debe7afcc7c86213c7521;
      7'b1011010:
        coeff_c = 131'h1d6d0e30e4879773cf489572b8c7fa760;
      7'b1011011:
        coeff_c = 131'h186ead74e9606286ede0b83ecba85068f;
      7'b1011100:
        coeff_c = 131'h222b84676d674fa83e0f647961f0558af;
      7'b1011101:
        coeff_c = 131'h47de3db1334e31660b7f65a5ff335120;
      7'b1011110:
        coeff_c = 131'hb06079fa430b4aa5b71d61bcc4d32ee1;
      7'b1011111:
        coeff_c = 131'h1fa1c78d6e21bc65986f1f8b6c488d606;
      7'b1100000:
        coeff_c = 131'h52b117b5f96da27690906ea027356232;
      7'b1100001:
        coeff_c = 131'h302316e8e3c85b4e960f0836bd4cda2b8;
        default: coeff_c = 131'h0;
      endcase
end
endmodule
