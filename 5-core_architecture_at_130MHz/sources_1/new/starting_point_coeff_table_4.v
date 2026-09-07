`timescale 1ns / 1ps
module starting_point_coeff_table_4(input wire [6:0] i_reg, output reg [130:0]coeff_c);
always@*
    begin
      case(i_reg)
      7'b0:
        coeff_c = 131'h29bbcbae32b10c69d31c47d053a7662d3;
      7'b1:
        coeff_c = 131'h17a9280c2864756f1ec5567fe2103fe18;
      7'b10:
        coeff_c = 131'h1a5f1557555995e6215a22687cdd426af;
      7'b11:
        coeff_c = 131'h36401e7d997b2385cf4aa51d5d78fae0e;
      7'b100:
        coeff_c = 131'h2574ed1ab26239085a074ed973f0467e7;
      7'b101:
        coeff_c = 131'h25e56b6b68a14ed839df9c302883ebb3b;
      7'b110:
        coeff_c = 131'h3f4ca015ba3f7ddab83c686e55242b0e0;
      7'b111:
        coeff_c = 131'h2012f143b28399abb3d5d907528c25d76;
      7'b1000:
        coeff_c = 131'h3b7ec43249e7f16df8c3a3e9c3ec4903e;
      7'b1001:
        coeff_c = 131'h2eedc3528d6701e9aac07816ebe5f9eda;
      7'b1010:
        coeff_c = 131'h21354b3781114ad07385b76cb31c7efda;
      7'b1011:
        coeff_c = 131'h271c82d7ce4432a464ac165046305e998;
      7'b1100:
        coeff_c = 131'h1d61eeaaba4abb59d9e9318e6149fbe4b;
      7'b1101:
        coeff_c = 131'h1cd1a0220f8d6f1ec1435a21396f3e1de;
      7'b1110:
        coeff_c = 131'hd657348b0d7f2d572a0df781fa7149fa;
      7'b1111:
        coeff_c = 131'h330dc283b0ace3908321a1375dbe5df9f;
      7'b10000:
        coeff_c = 131'h99625469743bcd14c9cfd7e79b250f20;
      7'b10001:
        coeff_c = 131'h26a6b0d3b047cbbbd8e250482ab1ccfa9;
      7'b10010:
        coeff_c = 131'h3a36cc8bb3cef667f2637014fa318972a;
      7'b10011:
        coeff_c = 131'h91089dac54cb45d8295e379ae6a81b0b;
      7'b10100:
        coeff_c = 131'h2f3faa49005d7cabccd6f0c7ea81745fd;
      7'b10101:
        coeff_c = 131'h497df74c65e3612fedba2104e31bfa54;
      7'b10110:
        coeff_c = 131'h290b5c312dd95122c3afec89138367422;
      7'b10111:
        coeff_c = 131'h9d192c7f0a027ff2e4f56576917a1045;
      7'b11000:
        coeff_c = 131'h3e5176bd50a8d5b067c2b7f35e8935802;
      7'b11001:
        coeff_c = 131'h1229dca3134d405c60209e7e433119d94;
      7'b11010:
        coeff_c = 131'h167b7d4d8b9cef6bb0a7e30b263bd5dfd;
      7'b11011:
        coeff_c = 131'h3f076b42ca88c6c8ccb5b801f29338f10;
      7'b11100:
        coeff_c = 131'h2bcc46ed9f4a9535a9e811c999c4ce058;
      7'b11101:
        coeff_c = 131'h14f6542bf05777939194b7eba9e8d156;
      7'b11110:
        coeff_c = 131'h2f4022193f15d90b634230d561d88fb43;
      7'b11111:
        coeff_c = 131'h17a6288c9ba32dce277182d120d25cedd;
      7'b100000:
        coeff_c = 131'h1b97f854480f336ee796a1d60c4839c0a;
      7'b100001:
        coeff_c = 131'hf175c635f3a9c038211199796b6d012d;
      7'b100010:
        coeff_c = 131'h32aa141882339dd138a39f146dba50707;
      7'b100011:
        coeff_c = 131'h11c95432ba58eb8aeceb366f43a9253c6;
      7'b100100:
        coeff_c = 131'h1a34e38865a17b86c80549cf2b8e4e47f;
      7'b100101:
        coeff_c = 131'hc86af940444f25795667792a9508cb29;
      7'b100110:
        coeff_c = 131'h1129295cbbc777cc2659ef923fb48cd33;
      7'b100111:
        coeff_c = 131'h366e3c2411bf88763e5523625a6e72f91;
      7'b101000:
        coeff_c = 131'h392932e7e0172506361326de795dffa2a;
      7'b101001:
        coeff_c = 131'h2e2b55af811668707e47fa43ee369f35c;
      7'b101010:
        coeff_c = 131'h129aec9a62a67b85a007f37b9b796adf5;
      7'b101011:
        coeff_c = 131'h2de58e373381c032354acb059e05b7166;
      7'b101100:
        coeff_c = 131'h21bb2d0a18ff37659b41bfca3becd86ba;
      7'b101101:
        coeff_c = 131'h102ec20f4e41e590be81f68b228d930f2;
      7'b101110:
        coeff_c = 131'h14f1a9fb07cb3fbfb16cce52193d1cdf1;
      7'b101111:
        coeff_c = 131'h2da7da711c25c0fb33c25062a592abaf5;
      7'b110000:
        coeff_c = 131'h1c8b59e2545c4c93969c73d0ee1000acb;
      7'b110001:
        coeff_c = 131'h31406c3ef2bd356e0767eecd32bfc07b6;
      7'b110010:
        coeff_c = 131'h36e7096d4b3980702ca119c772b52c3b8;
      7'b110011:
        coeff_c = 131'h318543b8560205387e4890dc5561fa4b5;
      7'b110100:
        coeff_c = 131'h392b683a222784efcabbe8a5e2192e6d0;
      7'b110101:
        coeff_c = 131'h2e2ac13921124f93937963645012c427a;
      7'b110110:
        coeff_c = 131'h3216d79062439da8eaa2501d6b66e92e5;
      7'b110111:
        coeff_c = 131'h3579e432f247fbd5b779eae2fd962e8ff;
      7'b111000:
        coeff_c = 131'h24009021598d9afdf675053b5760aa5de;
      7'b111001:
        coeff_c = 131'h1c4b824d39a3eacced397edc88aa90792;
      7'b111010:
        coeff_c = 131'h10ffb3150bcccd1a23fe678f6a9c734c4;
      7'b111011:
        coeff_c = 131'h29321245357b6e31eefe0b4c65d7a292d;
      7'b111100:
        coeff_c = 131'h18d9e9ef0c6216593c473b6b26183138d;
      7'b111101:
        coeff_c = 131'h31f95196fce04dd616a45e11ac4decd12;
      7'b111110:
        coeff_c = 131'h2400e749d74c5c2deba6994ee5be6f25a;
      7'b111111:
        coeff_c = 131'h3421c2e5cf557f4cd52c754f00cee552b;
      7'b1000000:
        coeff_c = 131'h2ff5eb3a0ffa4f166ec21fa6ec2ce16cf;
      7'b1000001:
        coeff_c = 131'h35893e809474aab3bfa9bdb388639f1b;
      7'b1000010:
        coeff_c = 131'h305dc5f6dd43c52cf36bd93eac376036e;
      7'b1000011:
        coeff_c = 131'h22501ed4969a0fac8dca30993b11414d;
      7'b1000100:
        coeff_c = 131'h1c92289e671e1faea98742d916dfd1de1;
      7'b1000101:
        coeff_c = 131'h24db1d6b5d4b33ef47de5dfaa9ecddc05;
      7'b1000110:
        coeff_c = 131'h2afbaa2ee0ffb651c6fe2bf2f68f293ba;
      7'b1000111:
        coeff_c = 131'h14e05607fd08478d723940a30a290a5fb;
      7'b1001000:
        coeff_c = 131'h15a3ee15d260c5167b5a49384196902a7;
      7'b1001001:
        coeff_c = 131'h2056eb587ccaaa3ff362021825aac5b42;
      7'b1001010:
        coeff_c = 131'h32aec125a47ece53ce72c8ef834cc4240;
      7'b1001011:
        coeff_c = 131'h14e89208773e01136afd0508795e0c34a;
      7'b1001100:
        coeff_c = 131'h17f3db1ef1ed4b19a75289de138841076;
      7'b1001101:
        coeff_c = 131'h886c84662e30ecfa156ee96a47958ea6;
      7'b1001110:
        coeff_c = 131'hd65f4d0c6b0e30f1388ff51028925eb6;
      7'b1001111:
        coeff_c = 131'h12c8f1c855892dbf6a3f742fdea02a4c4;
      7'b1010000:
        coeff_c = 131'h1fe595e72f0b07677b89230d43006bc75;
      7'b1010001:
        coeff_c = 131'hcffa1f788c6d8333555449fc55cd750;
      7'b1010010:
        coeff_c = 131'hf31664aa4d86e23dba764299ea63dc57;
      7'b1010011:
        coeff_c = 131'hd3ed707efa767f655ecfe610a10cf0e3;
      7'b1010100:
        coeff_c = 131'h3e0322af8890d3cc5962413ae93b1a847;
      7'b1010101:
        coeff_c = 131'h36c4857721ff6e55a316535d3ce13b38c;
      7'b1010110:
        coeff_c = 131'h336f352b770838a45a147c5cd2b262a22;
      7'b1010111:
        coeff_c = 131'h1ab7918e5abe0c6678c7535bba5a45e54;
      7'b1011000:
        coeff_c = 131'h3f1c0e9f388c0e0153b2858b899607c4c;
      7'b1011001:
        coeff_c = 131'hb2f0bfcd388edcf25e29776f3021a072;
      7'b1011010:
        coeff_c = 131'h1ac206a0583781f74034f626c0af1e513;
      7'b1011011:
        coeff_c = 131'h3401398eac4deac1ccc26090f02e88553;
      7'b1011100:
        coeff_c = 131'h3a4b136bce49fbcb0ea53e784a6379863;
      7'b1011101:
        coeff_c = 131'h29e85918e8b4d6b4303026d45b4b8ee5b;
      7'b1011110:
        coeff_c = 131'h2647e5b96f7add213fce2960122624f26;
      7'b1011111:
        coeff_c = 131'h8eb8779b71e171d2f8536d6654b1855e;
      7'b1100000:
        coeff_c = 131'h17000c6cca6d4b22cf0be37ae8d1daa56;
      7'b1100001:
        coeff_c = 131'h2c410335ccce1338d676e8bbe1f5ddd23;
        default: coeff_c = 131'h0;
      endcase
end
endmodule
