`timescale 1ns / 1ps
module starting_point_table_8(input wire [6:0] addr, output reg [130:0] table_value_x, output reg [130:0] table_value_y);
always@*
    begin
      case(addr)
      7'b0:
      begin
        table_value_x =  131'h27a0c0959430f3c4cd921f7b011662382 ;
        table_value_y =  131'h169ddf12961ecc095c98b00fd6f88e400 ;
      end
      7'b1:
      begin
        table_value_x =  131'h624ca0047e09230e80b73fbd34efef354 ;
        table_value_y =  131'h1447db441eab8ccd63b76ace243a3d98d ;
      end
      7'b10:
      begin
        table_value_x =  131'h5c5ab6b9de0d941f824e58f5088df7aed ;
        table_value_y =  131'h67808bec948c141689f31ed5fd1b6091 ;
      end
      7'b11:
      begin
        table_value_x =  131'h4d75caaf952e022ca84ed2ca4b22c3eb9 ;
        table_value_y =  131'h1c02f9e841e2f7b15d2e002b854198eea ;
      end
      7'b100:
      begin
        table_value_x =  131'h3b177a7b2b38e8fb08a074302e9982200 ;
        table_value_y =  131'h21eda3a7935dc1eb9655d985012f4f76 ;
      end
      7'b101:
      begin
        table_value_x =  131'h7417c1d52f8662e0c25576a8c189e8318 ;
        table_value_y =  131'h166f9a88da31968ec5e1d24769eb17270 ;
      end
      7'b110:
      begin
        table_value_x =  131'h14b072bfb6c7c70a83dfbaff244630227 ;
        table_value_y =  131'h8582abb627417bd68e335c58c35f06a9 ;
      end
      7'b111:
      begin
        table_value_x =  131'h9ba33b6dc1693a77795791fe77c6e4dd ;
        table_value_y =  131'h147d5a037312a583bad1273e2dc3baff2 ;
      end
      7'b1000:
      begin
        table_value_x =  131'h67e23a22f78541a948eb1f97a1d6f6dd8 ;
        table_value_y =  131'h18b5f4682e0ef3ee8a14e98fb35e81249 ;
      end
      7'b1001:
      begin
        table_value_x =  131'hf74a4eaa7a23518a522721644dc24655 ;
        table_value_y =  131'h64e0c440a03cc850411697c10df0648b3 ;
      end
      7'b1010:
      begin
        table_value_x =  131'h6b9262a0749548570b570e25fe9430776 ;
        table_value_y =  131'h10dd7ca4667d8adf4eee1b9fcf549ff8f ;
      end
      7'b1011:
      begin
        table_value_x =  131'h2b2ef16375f5ee49b01e96eaf8f75a1a2 ;
        table_value_y =  131'h1f820092642d3d3816dbd517f36b02ac6 ;
      end
      7'b1100:
      begin
        table_value_x =  131'h3e9888e1e11dff3008eb5ddff4c47bb74 ;
        table_value_y =  131'hf23b39865f40c9b601ee284cd0ec9e5 ;
      end
      7'b1101:
      begin
        table_value_x =  131'h43a95d33ec12b774aefa0909c7b15062b ;
        table_value_y =  131'h26e589c2c8c85e11d0f5959d626ecab6d ;
      end
      7'b1110:
      begin
        table_value_x =  131'h78fd3e74f6e430f60894dd5e64aff195e ;
        table_value_y =  131'h48494e8805fcc16f8dbd2600368f8ed4 ;
      end
      7'b1111:
      begin
        table_value_x =  131'h2f0de38e642c1b020478ec7c1f9484cb8 ;
        table_value_y =  131'h1ac5363f67c098df4779c049d49cb2770 ;
      end
      7'b10000:
      begin
        table_value_x =  131'h2b82dc5f87990128bfca3283fe36d858e ;
        table_value_y =  131'h147b54600d9516baf173442c4702b7e23 ;
      end
      7'b10001:
      begin
        table_value_x =  131'h268701c1bd9f78a877ee2b90ca951f0e4 ;
        table_value_y =  131'h4cab41a08e1435971be87291af08a3079 ;
      end
      7'b10010:
      begin
        table_value_x =  131'h7e02c141f271b7a48d549e66183afa748 ;
        table_value_y =  131'he9ce1b2af8a28961710a2e51085e4068 ;
      end
      7'b10011:
      begin
        table_value_x =  131'h299ed8de0f8c76e1ce62ee00c998b8ce8 ;
        table_value_y =  131'h2e36787b58ffdce996cdfc831b3f616a ;
      end
      7'b10100:
      begin
        table_value_x =  131'h1ab91040ae682271576dd5bd7bb2666e3 ;
        table_value_y =  131'h23412c94beec71b39cc95e75d9c6218ec ;
      end
      7'b10101:
      begin
        table_value_x =  131'h7102091de60e9580615dc085bfc49984c ;
        table_value_y =  131'h3a779e739132eded6e380524a1950e079 ;
      end
      7'b10110:
      begin
        table_value_x =  131'h1a2a29fb2572555e1f258e88469a81ba7 ;
        table_value_y =  131'h40459c993263e0ad90440dbc50a182f3c ;
      end
      7'b10111:
      begin
        table_value_x =  131'h15a36423e9c3869530a91caee2b255561 ;
        table_value_y =  131'h4341bdc53d88f8f8f65c7f62942418d23 ;
      end
      7'b11000:
      begin
        table_value_x =  131'hd8ceca352505118886ad1952ed787195 ;
        table_value_y =  131'h73e0b585070677e4a17d6f9468cb66e8d ;
      end
      7'b11001:
      begin
        table_value_x =  131'h67fe8e7c0f3a8dfc8270a9b4ef239a67a ;
        table_value_y =  131'h2b0a073d51f3bfd15d0e96a031e6ce27d ;
      end
      7'b11010:
      begin
        table_value_x =  131'h47162fc002504fc64d955ce3b3be15671 ;
        table_value_y =  131'hcc07b8bd4031d383f853797cf5de61d7 ;
      end
      7'b11011:
      begin
        table_value_x =  131'h73df2436896584c0f838e424b3ea52b34 ;
        table_value_y =  131'h2db832c92b67b6d938c6ae5e99eb4eb09 ;
      end
      7'b11100:
      begin
        table_value_x =  131'hb58df1e4070c531b190d63b4f91d0f0b ;
        table_value_y =  131'h650b3943390da27e77815fb018cf1f34f ;
      end
      7'b11101:
      begin
        table_value_x =  131'h1187bdbe4e60c3380652940b091748075 ;
        table_value_y =  131'h4af5cc5684fe6b625dbd6145503b67cdb ;
      end
      7'b11110:
      begin
        table_value_x =  131'h4de5d2a018a6ed04b897996f87d012197 ;
        table_value_y =  131'h10a77218957391fd52ba96050bef520e ;
      end
      7'b11111:
      begin
        table_value_x =  131'h56ab35502e62ee72fa9ca4a93814027d5 ;
        table_value_y =  131'h3ec4a10ea181664bab595cc02843ffa7d ;
      end
      7'b100000:
      begin
        table_value_x =  131'h1323e8e4808695ff59a9f9e2f14abbd7b ;
        table_value_y =  131'h3bb94a73a1c58107d5ed73db1b429571 ;
      end
      7'b100001:
      begin
        table_value_x =  131'h5cf5f3856062faf892c709eb5d8d1299f ;
        table_value_y =  131'h2991e476ff86ddd0210a83c03b0ff03ee ;
      end
      7'b100010:
      begin
        table_value_x =  131'h1c0626171f54b89d3502080d4ed961385 ;
        table_value_y =  131'h2aa68bb53d334dd5afc89e02c73e4df68 ;
      end
      7'b100011:
      begin
        table_value_x =  131'h1b584296dfa83bd843d0d4bf17cb8d413 ;
        table_value_y =  131'h2e2b9d95f448b7a0e6edcbd1bdd58abca ;
      end
      7'b100100:
      begin
        table_value_x =  131'h16d8d00d16331756b313a87797e9b15f9 ;
        table_value_y =  131'h4ffa1eca6e894dd83e92a2da12aea8032 ;
      end
      7'b100101:
      begin
        table_value_x =  131'h5a2754cf492d523422a54a7d5e2c6ee35 ;
        table_value_y =  131'h1ff197ced1458b338b03bcb297d3c255b ;
      end
      7'b100110:
      begin
        table_value_x =  131'h2a883ff62faa4718e57ce1124ca5d3a5a ;
        table_value_y =  131'ha13727eef7c8002fe255986e6363e511 ;
      end
      7'b100111:
      begin
        table_value_x =  131'h55a8685c45e103fb0af3e07a23121c94d ;
        table_value_y =  131'hb6ec6e2a9a5fc6889b1374a3d5bd394e ;
      end
      7'b101000:
      begin
        table_value_x =  131'h5fc5118f3efc9c890f155d60b430b24ad ;
        table_value_y =  131'h3e0815e2187ecb194354a0781c18c6a78 ;
      end
      7'b101001:
      begin
        table_value_x =  131'h4b2e65c05120fdb79bd49873084ef2259 ;
        table_value_y =  131'h3747996dc5e43bf10758052716021d4c3 ;
      end
      7'b101010:
      begin
        table_value_x =  131'h693aae6a680a50f2aee3244d5501b0482 ;
        table_value_y =  131'h1311bde30176e9481cbb4aac5b441597b ;
      end
      7'b101011:
      begin
        table_value_x =  131'h18c53a73d4c4c288274b6775cadf020ab ;
        table_value_y =  131'h543bfe7ddf8460a6a2b7daed9d19797e ;
      end
      7'b101100:
      begin
        table_value_x =  131'h4e58bbe837cb94a27a3dd71f38a6bf343 ;
        table_value_y =  131'h1c05494f1b8d0698ab0c981e5392a8d2e ;
      end
      7'b101101:
      begin
        table_value_x =  131'h42888c7be0e303d84c07833a65bb67ff7 ;
        table_value_y =  131'h2655b3b6b33e4b125be646f2774691649 ;
      end
      7'b101110:
      begin
        table_value_x =  131'h58f0f9c0f5ffc1b9d691159d14f9f0e8b ;
        table_value_y =  131'h1f16dfef2dc3b55ed7fbbc495f51921d4 ;
      end
      7'b101111:
      begin
        table_value_x =  131'h124b0fe956374e0dbc54c377b53fdabaf ;
        table_value_y =  131'h28121f48a91cc8e1596672128485dc804 ;
      end
      7'b110000:
      begin
        table_value_x =  131'h5c7e9781b81b2d4e3e3aad5f2204ff49d ;
        table_value_y =  131'h3f587b5648a01e2b05b007134252f151e ;
      end
      7'b110001:
      begin
        table_value_x =  131'h5c85c2e98751627f158fa50d9a59c44e7 ;
        table_value_y =  131'h2fcfe119f28b098f2ce133a7e9cb5a8c0 ;
      end
      7'b110010:
      begin
        table_value_x =  131'h77b963801177fcb971a599ec8e131c3cc ;
        table_value_y =  131'h18d7de5905fa6f37f0c3217161e373fe0 ;
      end
      7'b110011:
      begin
        table_value_x =  131'h1e2d6987e3ee7607602d488e8b7b2af53 ;
        table_value_y =  131'h3ebf653c72b49d01d7191401ef928f00 ;
      end
      7'b110100:
      begin
        table_value_x =  131'h765c3c9d5ffa778d7355a925e7d35b8ec ;
        table_value_y =  131'h34016cf5d297762612728df32885b68a ;
      end
      7'b110101:
      begin
        table_value_x =  131'h56b8498ffd47657553887813e389a291f ;
        table_value_y =  131'h2031ad9f08b4cef65671e5ef09b603c64 ;
      end
      7'b110110:
      begin
        table_value_x =  131'h5debad092deb0f366b8f6c51f1d46dd6b ;
        table_value_y =  131'h629372224fe81d941797ebfcf7764f3a ;
      end
      7'b110111:
      begin
        table_value_x =  131'h7e1e01c53d9d2bb2bb5c81b04793075c4 ;
        table_value_y =  131'h288dcf43e371f8388d6a3953a31934dbf ;
      end
      7'b111000:
      begin
        table_value_x =  131'h7fc599da2dd92a3ae8f19499fbfcf0362 ;
        table_value_y =  131'h9faa78544eef8ab689f971ebdc72d79 ;
      end
      7'b111001:
      begin
        table_value_x =  131'h2913a2151da7b2da61c5e105b53581f94 ;
        table_value_y =  131'hd7dcf708389f08dca8513d174fcc3d28 ;
      end
      7'b111010:
      begin
        table_value_x =  131'h36772451c812dd504e13fe750f66834f8 ;
        table_value_y =  131'h1bd9d3dd0fbbedba23ca9c4bce8840948 ;
      end
      7'b111011:
      begin
        table_value_x =  131'h3ae9a00b01382174ed5b2fe865bfc0380 ;
        table_value_y =  131'h31f466889361e55397f82936ff365532 ;
      end
      7'b111100:
      begin
        table_value_x =  131'h47fb6e4223982d1aac118d65b299ffceb ;
        table_value_y =  131'h29947c6c013d64a76ca849e41ea5b165e ;
      end
      7'b111101:
      begin
        table_value_x =  131'h4b1dbaca2c45b98d6eb9f9f26cc7325d1 ;
        table_value_y =  131'h3f697cd25ec93ea0405c1f6e2194cea10 ;
      end
      7'b111110:
      begin
        table_value_x =  131'h2b1ce9353f57fa311068397edcb2b65f0 ;
        table_value_y =  131'h10d7cdc0b77f800ea58af8510b5a37943 ;
      end
      7'b111111:
      begin
        table_value_x =  131'h60aceb1f25442fc1dd64e8ffa5f4c32ba ;
        table_value_y =  131'hf47b752e56cc105e05915c22668b5964 ;
      end
      7'b1000000:
      begin
        table_value_x =  131'h36d0255f00d3348fea50b5020b183d43 ;
        table_value_y =  131'h7084bbb5c45c2d7eb9cdd4ee744062056 ;
      end
      7'b1000001:
      begin
        table_value_x =  131'h5aa92f1430d08d58b2845d6813f424b0f ;
        table_value_y =  131'h3e8277e72a6f92664975a115bbf343e40 ;
      end
      7'b1000010:
      begin
        table_value_x =  131'h6aac63c75402288090ec320cb5ea3406c ;
        table_value_y =  131'h8c081478ee5e79adae1a6bb55e4ba7eb ;
      end
      7'b1000011:
      begin
        table_value_x =  131'h6a6fb9bbd61d20776d1c3d646a6ac7d68 ;
        table_value_y =  131'h396f0f8e8fa4213cc964896a5cda3e9c6 ;
      end
      7'b1000100:
      begin
        table_value_x =  131'he30be2dd77a3672c8af1365ae58859e3 ;
        table_value_y =  131'h14d0223f7b87d3f55697528dbb4f5afbc ;
      end
      7'b1000101:
      begin
        table_value_x =  131'h70d507872ec34a3abb267bf236a9fe826 ;
        table_value_y =  131'h240bf5cc9107ab2a42790bf3c9bc177ef ;
      end
      7'b1000110:
      begin
        table_value_x =  131'h7b6c14d9d991113df42fc0df9a71860b8 ;
        table_value_y =  131'h1492984602979aa1d491e9a85786dafe7 ;
      end
      7'b1000111:
      begin
        table_value_x =  131'h1a6f28bd1278946684f69ae650c2fede9 ;
        table_value_y =  131'h9fa4860d7c220bf109a51b85b8900bd6 ;
      end
      7'b1001000:
      begin
        table_value_x =  131'h6a60036a7eeb464063d6b63630464e48c ;
        table_value_y =  131'ha014bfa179e1315ee48123a9f619ec32 ;
      end
      7'b1001001:
      begin
        table_value_x =  131'h699f9bafea01ad27b1b0b002f6c095180 ;
        table_value_y =  131'h1ea75a7b7f8ec6738abf6bfa926ccc9f0 ;
      end
      7'b1001010:
      begin
        table_value_x =  131'h33ecc306efcc7dc42345752b708b3880e ;
        table_value_y =  131'h1df3a08e01ea29f8c4afff29a6aabb1f8 ;
      end
      7'b1001011:
      begin
        table_value_x =  131'h5b688196f826f8f3a86fdb997026def85 ;
        table_value_y =  131'h3ed04b31edd585604cc5922632ecdee1 ;
      end
      7'b1001100:
      begin
        table_value_x =  131'h56e70a1a1e584014440f11a4d6d10690f ;
        table_value_y =  131'h19977c24092dcefdb326385099ef77257 ;
      end
      7'b1001101:
      begin
        table_value_x =  131'h169759f7c6104f0d0d317ebb6543d528b ;
        table_value_y =  131'h2565d4589513c9a47ec3b14e745dc82ad ;
      end
      7'b1001110:
      begin
        table_value_x =  131'h46765dc449dfe09f8c2b699eb0b6c9bb ;
        table_value_y =  131'h7a50f81e2afaef4f6a24ceeedb507cd57 ;
      end
      7'b1001111:
      begin
        table_value_x =  131'h2fa5a49786711898381a053b306fca174 ;
        table_value_y =  131'h4b57223d504f338d5328ec2f8a200656f ;
      end
      7'b1010000:
      begin
        table_value_x =  131'h31d26732c2ad3f7d971d3065dba9bdaa8 ;
        table_value_y =  131'h4c217c0201c0a49b40a98ab65564bf2ac ;
      end
      7'b1010001:
      begin
        table_value_x =  131'h495301a3412a7e26bfae9964f3315c08d ;
        table_value_y =  131'h23089feb8de4e68a90138aab7c80e7755 ;
      end
      7'b1010010:
      begin
        table_value_x =  131'h6a9ade489d7eac5105f2b3b25e6b63116 ;
        table_value_y =  131'h281fb0d4a8b3f8db00a97207661c0c923 ;
      end
      7'b1010011:
      begin
        table_value_x =  131'h4ef77a8c0ff7d35312fd007e250728493 ;
        table_value_y =  131'h20fe3ffffe7b28f09c4237e72f8b060a2 ;
      end
      7'b1010100:
      begin
        table_value_x =  131'h16f414eaa096c654035014dcebcde67bd ;
        table_value_y =  131'h45ac48e2ac99dc2711e7e9216b276aec6 ;
      end
      7'b1010101:
      begin
        table_value_x =  131'h44ebac32bddbc0f9f0a9f4236c24ad667 ;
        table_value_y =  131'h34beb1e3fb0a00a029ef39920ae583b63 ;
      end
      7'b1010110:
      begin
        table_value_x =  131'h2688ab0df5a65d62cbf856a1fa516f70a ;
        table_value_y =  131'h1a0f5f8c1ac8f4bd502ae033a16235ddb ;
      end
      7'b1010111:
      begin
        table_value_x =  131'h7d7320d8970b5158188be9bbbccaae2e4 ;
        table_value_y =  131'h22211ca0b6d478fb83acd1faf1d58e039 ;
      end
      7'b1011000:
      begin
        table_value_x =  131'h3e605f2c4f4d00f161acd0cb152d7fdb0 ;
        table_value_y =  131'h5eb4b8d64295bcf3a34789e11c208487 ;
      end
      7'b1011001:
      begin
        table_value_x =  131'h776e6c5edd7bd13750408f9e508261724 ;
        table_value_y =  131'h3f7cb198f54d8e9581c42c7f1fd080ac2 ;
      end
      7'b1011010:
      begin
        table_value_x =  131'h763b8018c482e7e51d0f487be51e7259 ;
        table_value_y =  131'h43174b1adb6d0ab79aea9a4f567eff5ed ;
      end
      7'b1011011:
      begin
        table_value_x =  131'h5428fcbdb2c9217e7db745866115b557 ;
        table_value_y =  131'h29075a075db440c7a60f1218ae7c2fe63 ;
      end
      7'b1011100:
      begin
        table_value_x =  131'h8689399082318347f8509c1fda36023d ;
        table_value_y =  131'h2454b12b4048a2af19db4fa9c93800023 ;
      end
      7'b1011101:
      begin
        table_value_x =  131'h2937b13139bc75893e5eb74cb1bbd2856 ;
        table_value_y =  131'h481fd6c7f4bc1b1d8eb657e3ce4bf59f5 ;
      end
      7'b1011110:
      begin
        table_value_x =  131'h585e6087223ff7248ff3fbb0b669cb92d ;
        table_value_y =  131'h38f41976ad90142f7b86fe88b591bf396 ;
      end
      7'b1011111:
      begin
        table_value_x =  131'h172b20d8f3a196d5761812314952f6097 ;
        table_value_y =  131'h6a700c6680d91bd8dace852b7768a9a58 ;
      end
      7'b1100000:
      begin
        table_value_x =  131'h4a49e93b38dc3071f6352c6d44bb248cd ;
        table_value_y =  131'h1186ed639569e2bb3672975386bae47b8 ;
      end
      7'b1100001:
      begin
        table_value_x =  131'h565cf59c17f6925f3ae5697835eb2097 ;
        table_value_y =  131'h3bd5ac80414d648cb1da4022d55a2e82 ;
      end
        default: begin table_value_x = 131'h0; table_value_y = 131'h0; end
      endcase
end
endmodule


