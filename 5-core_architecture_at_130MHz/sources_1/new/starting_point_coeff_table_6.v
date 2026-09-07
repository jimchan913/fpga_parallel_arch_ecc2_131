`timescale 1ns / 1ps
module starting_point_coeff_table_6(input wire [6:0]x_low_bits_addr, output reg [130:0]coeff_c);
always@*
    begin
      case(x_low_bits_addr)
      7'b0:
        coeff_c = 131'h342174a11f5e728aac1020ce95e93dda1;
      7'b1:
        coeff_c = 131'h7b02d173b2c7ce22527ed016b821208e;
      7'b10:
        coeff_c = 131'h37973eaf1dd4b1a125a49985efa8188c2;
      7'b11:
        coeff_c = 131'hb6a924f46caa5a71628b6d5c39de6efa;
      7'b100:
        coeff_c = 131'he206db699c6202e78f818806c1bc8f0f;
      7'b101:
        coeff_c = 131'h34e9efdbbe45823ea374a522eb74c25d4;
      7'b110:
        coeff_c = 131'h236d26a3f3b1e005e13a9976091271fd7;
      7'b111:
        coeff_c = 131'h4fbc01064709b271de313b14ccf35bb;
      7'b1000:
        coeff_c = 131'h1920ca09a26c161c9753bd068643b404c;
      7'b1001:
        coeff_c = 131'hcbbde151c53886ca7d29a2187fec34d6;
      7'b1010:
        coeff_c = 131'h2ac53b3ea3463927d19cdc2dd6a440089;
      7'b1011:
        coeff_c = 131'h176e2cb39017a8d7a82bf4cccd43df9bd;
      7'b1100:
        coeff_c = 131'h382b2c352f9613623862f20fe6b9900d1;
      7'b1101:
        coeff_c = 131'he6d92e58861f6ea209f3963edd7a123d;
      7'b1110:
        coeff_c = 131'h12fa4063866ba84154cb5673eaa99f1d7;
      7'b1111:
        coeff_c = 131'h1fa57672e393f4306a3e0bd454e165cbb;
      7'b10000:
        coeff_c = 131'h3497e1e03d143756e3c593d5c67af6f29;
      7'b10001:
        coeff_c = 131'h88365b033de75cd98c8fe3d4462e5626;
      7'b10010:
        coeff_c = 131'h31a4294f106fd18bbde6843420ad37cd2;
      7'b10011:
        coeff_c = 131'h22f60c734bca5eacc5913849f2072eae2;
      7'b10100:
        coeff_c = 131'h2a23ee16134a94b33ba85f64733285a8c;
      7'b10101:
        coeff_c = 131'h3449af153a446752e3507f6a1b51a4e8b;
      7'b10110:
        coeff_c = 131'h68d878b0014f24a86a8b93b7b0bb2f1a;
      7'b10111:
        coeff_c = 131'h3934f9004c4c17863edbc4d5ed326cb1e;
      7'b11000:
        coeff_c = 131'h1b49dc45b62dd04cc7ebfd831a4efdd0a;
      7'b11001:
        coeff_c = 131'h458768615e04858e7a40485350ed704e;
      7'b11010:
        coeff_c = 131'h291f4f03150c42457e92bc490a2656cc1;
      7'b11011:
        coeff_c = 131'h31ac1f7f2508be85a66d50d6e8ecb6d0d;
      7'b11100:
        coeff_c = 131'h357daef6326ae23fa10b6c41742e7efc8;
      7'b11101:
        coeff_c = 131'h19ec741f9d1603cc817504b65cb09b4b3;
      7'b11110:
        coeff_c = 131'h113ca4be79aa55882c692417ee1b16076;
      7'b11111:
        coeff_c = 131'h213948761c386f712178d9933178d4010;
      7'b100000:
        coeff_c = 131'h3bdc3c239801f409fb7e7a45a57a462c0;
      7'b100001:
        coeff_c = 131'h205c99af2beb4e40b07a86126a20f40ef;
      7'b100010:
        coeff_c = 131'h25f973f040c6ca9a61fa45d8e21ae6cb;
      7'b100011:
        coeff_c = 131'h1f1fa81fd48ca07c8a9e299ff47ad148c;
      7'b100100:
        coeff_c = 131'h16186e4a24fd9fe2f568c8acc60e8ae31;
      7'b100101:
        coeff_c = 131'h2c63c3fea96ce7203e9506f6ef46c0f80;
      7'b100110:
        coeff_c = 131'h2929f911d748cfd3c7949fa06282eb749;
      7'b100111:
        coeff_c = 131'he5b5ed7899e0393f969897abf33ccdc2;
      7'b101000:
        coeff_c = 131'h34364b47ff362a42b2c2c9f6ee00247e7;
      7'b101001:
        coeff_c = 131'hf57a5477723c38d25889672e9f380f37;
      7'b101010:
        coeff_c = 131'h1970647539ddea6be9649062d00f254fa;
      7'b101011:
        coeff_c = 131'h2003b21bd2386873578eb5504d166ac9c;
      7'b101100:
        coeff_c = 131'h1c553fe6b8f401629b1b32c90217358f4;
      7'b101101:
        coeff_c = 131'h300e5829d0576ac889dc93c248173f43;
      7'b101110:
        coeff_c = 131'h4ca4b8a6f917a61d8b8bd3f1ca5918c;
      7'b101111:
        coeff_c = 131'h28de96f5b5421e969c1623462dd89a8bb;
      7'b110000:
        coeff_c = 131'h384d0b0c8885bb875dbc81ffe973ce3ad;
      7'b110001:
        coeff_c = 131'h176fef58350920cec65daac705ea790c9;
      7'b110010:
        coeff_c = 131'h2d99a3f5a342905a47b219e8daad028eb;
      7'b110011:
        coeff_c = 131'h2d0f1c6b238df3ceef01eb76bf9e2a6fd;
      7'b110100:
        coeff_c = 131'h53394a342ac197bc39709ee6fa536e12;
      7'b110101:
        coeff_c = 131'h381281c00f49c684766f3a93ba99668f;
      7'b110110:
        coeff_c = 131'h7f87e2d9cb4da447a710a49ead9d4382;
      7'b110111:
        coeff_c = 131'h30054f1b0f10187a5dda85aeb8322a113;
      7'b111000:
        coeff_c = 131'h1c3a00ca4ed2c6707ec5348ccf9a800af;
      7'b111001:
        coeff_c = 131'h24836ef0f62e4345c0fb18aa909d84160;
      7'b111010:
        coeff_c = 131'h1d38582aeb2f3b426cba4d419c5e7f29b;
      7'b111011:
        coeff_c = 131'h6d3fc6b9c8004e11c3f1726fc47cd912;
      7'b111100:
        coeff_c = 131'h26a9c113a0a29d220f88ec8851782b4aa;
      7'b111101:
        coeff_c = 131'h36b474772e9002ad567b9af43fe9e3b25;
      7'b111110:
        coeff_c = 131'he927abc0a1e680100b8ded3844b5a3b6;
      7'b111111:
        coeff_c = 131'h2617138d122e7dc0c71d0f02d4216d547;
      7'b1000000:
        coeff_c = 131'h948d5deb1b540efb83b2c907eeca9002;
      7'b1000001:
        coeff_c = 131'h41229c6c81cec7efbf4ab407a2006b1a;
      7'b1000010:
        coeff_c = 131'h23768648f9d003f1254e26e444b80c9c7;
      7'b1000011:
        coeff_c = 131'h31694892af177662815746259839e1b00;
      7'b1000100:
        coeff_c = 131'h8e240efd3f946cba7a761637d4cddece;
      7'b1000101:
        coeff_c = 131'h1f3d281374b5bd0b9b72ebff113459854;
      7'b1000110:
        coeff_c = 131'h177c8fb16a52a3ce0e66b96586ccefb42;
      7'b1000111:
        coeff_c = 131'h2e20cd3d4bdca4e64c6208f51501b00d9;
      7'b1001000:
        coeff_c = 131'hb5d1c1d9201aff8b7cca5fc9bc20c4b8;
      7'b1001001:
        coeff_c = 131'h29cace211c4456601efe669f33f9a070d;
      7'b1001010:
        coeff_c = 131'h2d76888d23f63321331d9f79c3b440b0a;
      7'b1001011:
        coeff_c = 131'h3af075ba04dd9af86363f06dc6d93109;
      7'b1001100:
        coeff_c = 131'h3b1ea25eb15d30a743556262d4b5f0797;
      7'b1001101:
        coeff_c = 131'h2d06040864b5623fe02895814d4b6e84;
      7'b1001110:
        coeff_c = 131'h1d09a57205417b7472e3386e2af6a844a;
      7'b1001111:
        coeff_c = 131'h2e85e0159b2665c2a18da548e14be9847;
      7'b1010000:
        coeff_c = 131'h3fc43b0dd54d7d0cf6d79354415140f04;
      7'b1010001:
        coeff_c = 131'hc72d804eee12c089dac547cddaf47652;
      7'b1010010:
        coeff_c = 131'h1d3bc6f422efb43842c0ca029e0e80f64;
      7'b1010011:
        coeff_c = 131'h32c359c6ff994fc168514d65b56df3446;
      7'b1010100:
        coeff_c = 131'h2b148ed19e4a80a6dbc3fb323e390d0c7;
      7'b1010101:
        coeff_c = 131'h32453839237b319cdf1b6975aea0cb3f8;
      7'b1010110:
        coeff_c = 131'h13eb0f191bc965af8928c4bb4d380072d;
      7'b1010111:
        coeff_c = 131'h2046d948e4d0e0618f731b3adb5211702;
      7'b1011000:
        coeff_c = 131'haf57c3a343a6469f41c5726b8b1878e6;
      7'b1011001:
        coeff_c = 131'h16603300f97577499ac8e82f702fba80e;
      7'b1011010:
        coeff_c = 131'h15eeebed6551eead93fc9c00c43575d74;
      7'b1011011:
        coeff_c = 131'h23384aa4e175ed667e04cc6c96e907c76;
      7'b1011100:
        coeff_c = 131'h341ac755d092c4a85a7e5a596fa6d1e2f;
      7'b1011101:
        coeff_c = 131'h2fb19335d3a79893a028e32a22cc5588f;
      7'b1011110:
        coeff_c = 131'h1789e2fc1782c00ae123650b54464060e;
      7'b1011111:
        coeff_c = 131'h1d81d3dc2eb6d2577f3e3f55bb7fbe163;
      7'b1100000:
        coeff_c = 131'h1ec7b974512eb2b6a9e52001a9ddc63d2;
      7'b1100001:
        coeff_c = 131'h2f6215bfd67f6b7286d579fbfe7321759;
        default: coeff_c = 131'h0;
      endcase
end
endmodule
