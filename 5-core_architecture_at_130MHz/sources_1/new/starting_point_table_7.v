`timescale 1ns / 1ps
module starting_point_table_7(input wire [6:0] addr, output reg [130:0] table_value_x, output reg [130:0] table_value_y);
always@*
    begin
      case(addr)
      7'b0:
      begin
        table_value_x =  131'h4b09b29a9779d71dbbb06f5ab174f8da1 ;
        table_value_y =  131'h2f3fcd72ecf99de2990e80b03f5c88869 ;
      end
      7'b1:
      begin
        table_value_x =  131'h12f34c710361fc9bbe27edb60d2f1032f ;
        table_value_y =  131'h47c226cdf7a8e6900a6cc3abcd88c54ee ;
      end
      7'b10:
      begin
        table_value_x =  131'h65e9170c725caf13e39d8e5004cf26ce8 ;
        table_value_y =  131'habcd8f154698aa0e4e83d703388a50d6 ;
      end
      7'b11:
      begin
        table_value_x =  131'ha250daa788354c184a46ba06f9c4937f ;
        table_value_y =  131'h561cc96fe1cbd0360f605b18675189a92 ;
      end
      7'b100:
      begin
        table_value_x =  131'h10ca3c87eee75a6fb3da81a5bdf22706d ;
        table_value_y =  131'h396fa2e2143d053bb87bbab1eb621d00 ;
      end
      7'b101:
      begin
        table_value_x =  131'h7f3f7ec46a472d9cad2352ca4a976ecac ;
        table_value_y =  131'h355f2b7c76548ef9b8934363c3202f683 ;
      end
      7'b110:
      begin
        table_value_x =  131'h1c292b903f3c2f2abd6e48477b0d33ff9 ;
        table_value_y =  131'h4f820ef92bf3e52ba0314823763c0a510 ;
      end
      7'b111:
      begin
        table_value_x =  131'h2caad7e3b206c0d3163ec8020e64c6ed6 ;
        table_value_y =  131'h3ba5b815a4ae96b68b499be4955acde9 ;
      end
      7'b1000:
      begin
        table_value_x =  131'h11a163624a35d5a096ab707f8795df5f9 ;
        table_value_y =  131'h6d622b8d8ff350337d15399dda03883dc ;
      end
      7'b1001:
      begin
        table_value_x =  131'h7228fe7a09da111df039d3dacd7bcc032 ;
        table_value_y =  131'h3887338530765da190bef2b80cd6871f3 ;
      end
      7'b1010:
      begin
        table_value_x =  131'h7b53776ef04d15b1c84e6ce18c16e0318 ;
        table_value_y =  131'hdfb3a63ed411a4e7a72038bfd74040ca ;
      end
      7'b1011:
      begin
        table_value_x =  131'h5914844cd7245846204495311913a68f1 ;
        table_value_y =  131'h3510b5ec0de973307b35b00a415a96cb4 ;
      end
      7'b1100:
      begin
        table_value_x =  131'h44bf10fb86bb32a1053946ef7d08026bd ;
        table_value_y =  131'h3f31df4508a78b2e6cc9068af9058cdaf ;
      end
      7'b1101:
      begin
        table_value_x =  131'h3e1395069917be55ada45f000b38ffc00 ;
        table_value_y =  131'h105b8ac74b8faa33f6514a8ca45a41b37 ;
      end
      7'b1110:
      begin
        table_value_x =  131'h51f512dde6b2cf35fc80106ba7cdd26f1 ;
        table_value_y =  131'h360d422e6dd9180f3f4bcc4c87aa0e5ca ;
      end
      7'b1111:
      begin
        table_value_x =  131'h21f19e7063322f3405564060b344cddbe ;
        table_value_y =  131'h1493485670d8481d22a595c0d87b242e4 ;
      end
      7'b10000:
      begin
        table_value_x =  131'h3e4950b8254a5acf3e62f7e88f0d87462 ;
        table_value_y =  131'h59f7fc61f585a1df82be638b13188798c ;
      end
      7'b10001:
      begin
        table_value_x =  131'hce525be45c817eb590c663080473ef69 ;
        table_value_y =  131'h636357115a84cf31f13d871db7b3feb44 ;
      end
      7'b10010:
      begin
        table_value_x =  131'h7f13e0d221cbb3235168cb9adef48d914 ;
        table_value_y =  131'h3ebe57e96f23cdda7c97739549c7cb211 ;
      end
      7'b10011:
      begin
        table_value_x =  131'h1fa743f99b7c8fae03b0a0f8b5362f937 ;
        table_value_y =  131'h2e37c33984ec79624cffb05c2b71e0501 ;
      end
      7'b10100:
      begin
        table_value_x =  131'h1e34993cc778573f326ce67743d7c3d39 ;
        table_value_y =  131'h2e2c9a2624fcc4e5af8484263c7992ea ;
      end
      7'b10101:
      begin
        table_value_x =  131'h6ce95918b665161f7bf831ed49d85fb28 ;
        table_value_y =  131'h9d787609715054768305cee9c56c9f5e ;
      end
      7'b10110:
      begin
        table_value_x =  131'h7b3a1a1cc08bac9be2f2cb4ec3e133f8a ;
        table_value_y =  131'h310ba31316499963abb89502d2ace330b ;
      end
      7'b10111:
      begin
        table_value_x =  131'h668023f2a37678c6f2abab08a06d43514 ;
        table_value_y =  131'h3271e29a26f9b8016bfb40da06c9b0ea7 ;
      end
      7'b11000:
      begin
        table_value_x =  131'h3cd9e4f2fb2b7f55b8c8346237628977c ;
        table_value_y =  131'h1a15aecf836055aeb3da93a692fe9302b ;
      end
      7'b11001:
      begin
        table_value_x =  131'h424750f4089883e662b1938c92d31381b ;
        table_value_y =  131'h17a2017a1d02e4718568b57fa9ff2d13e ;
      end
      7'b11010:
      begin
        table_value_x =  131'h1415f9281161bb98d303810a6c2777161 ;
        table_value_y =  131'h61a14a47f982d6fd5a182d6eb5984d0dc ;
      end
      7'b11011:
      begin
        table_value_x =  131'h2f20c50a7d2153410181d85bf2aade816 ;
        table_value_y =  131'h1656ecec05158abf0d627dd694c35323d ;
      end
      7'b11100:
      begin
        table_value_x =  131'h4c2f509843a01281a23a30318f6f6cbb7 ;
        table_value_y =  131'h2cb148366109020599e27f91168935324 ;
      end
      7'b11101:
      begin
        table_value_x =  131'h60121a54367ed8fee1da69e19adf7b894 ;
        table_value_y =  131'h25bd32018d26f25c80307ad76ad0de542 ;
      end
      7'b11110:
      begin
        table_value_x =  131'h5eae4d50f5d67544ff9e5048a42632fa9 ;
        table_value_y =  131'h28ec2ad368b83eee59c578e3af18bfb8f ;
      end
      7'b11111:
      begin
        table_value_x =  131'h754f9925e3a6a29574dc8a04df7d4fc4e ;
        table_value_y =  131'h20e14da4ec832f97125b331a8149cec7d ;
      end
      7'b100000:
      begin
        table_value_x =  131'h366f289318764f52f354f0c0e8330532a ;
        table_value_y =  131'hd2fa82ff30a139892071772d43977a92 ;
      end
      7'b100001:
      begin
        table_value_x =  131'h78716c16f998b438bf4d35d1c88436494 ;
        table_value_y =  131'h3dad92442986251f2e8bcd84a5961f8d9 ;
      end
      7'b100010:
      begin
        table_value_x =  131'h7f057fea62f41bc49026d97a247c64606 ;
        table_value_y =  131'h21f76155320736f9345890d72344bb6a ;
      end
      7'b100011:
      begin
        table_value_x =  131'h1be2c7d3995e3ae820978d4013cbce7bd ;
        table_value_y =  131'h2ad004945cae74e46c0d8ebe867cf42b ;
      end
      7'b100100:
      begin
        table_value_x =  131'h1147971372a55886e34d2346872dde173 ;
        table_value_y =  131'heab1a569c052128253072c968bf17882 ;
      end
      7'b100101:
      begin
        table_value_x =  131'h23d4ebda58728dc10dd88caf79253b7c0 ;
        table_value_y =  131'h48347739d44ad5a3f7e76be8f4ec25aec ;
      end
      7'b100110:
      begin
        table_value_x =  131'h1894467d53a928cfc5cd905d85c948493 ;
        table_value_y =  131'h44feb6ce5343a7fe03ed232847dd5a69a ;
      end
      7'b100111:
      begin
        table_value_x =  131'h6b78f8a244820495c436df15bf7331afa ;
        table_value_y =  131'h33dadbf37deee2e56ba11baae8723f850 ;
      end
      7'b101000:
      begin
        table_value_x =  131'h78798f6849a58f381583c6ff5cb00432e ;
        table_value_y =  131'h2333cb86fae2208e93c5156688274034f ;
      end
      7'b101001:
      begin
        table_value_x =  131'h21497349d44cfcfa4a8c04c1e05ffe596 ;
        table_value_y =  131'hdfc1fd9463f5966e1e5305181fbf3e05 ;
      end
      7'b101010:
      begin
        table_value_x =  131'h5279032b9f338bbb380b359ed1b639f5d ;
        table_value_y =  131'ha878198bcb8817ec7924af6d356be272 ;
      end
      7'b101011:
      begin
        table_value_x =  131'hbb30c1766caece87336749c9dfe92a3b ;
        table_value_y =  131'h7623ea57389569c9045c4dfd56de42d6d ;
      end
      7'b101100:
      begin
        table_value_x =  131'h5139ad245cfd0a1f540c10247f6cc9923 ;
        table_value_y =  131'h160083a2db25acec1cd52b9c690722ac5 ;
      end
      7'b101101:
      begin
        table_value_x =  131'hdacf579835e7a5b6c8f3eed73039e81f ;
        table_value_y =  131'h74783878d53fa1ebbb779f0ef82b09d9e ;
      end
      7'b101110:
      begin
        table_value_x =  131'h1d83c323a4ecc6243560b32eeb41d0f21 ;
        table_value_y =  131'h58c930796196acabc942e7b55216f040 ;
      end
      7'b101111:
      begin
        table_value_x =  131'h731982d6479d6cdf8343dc94ea3adbcbc ;
        table_value_y =  131'h9ffe2dea8b04cae9e2999995ac3ed668 ;
      end
      7'b110000:
      begin
        table_value_x =  131'h15ec6c54197290b1f7974a8b93c4a8be3 ;
        table_value_y =  131'h42e517013b6b03dff00cee3d008a111f0 ;
      end
      7'b110001:
      begin
        table_value_x =  131'h44b56011f6ab57910f0e90a0ac4ae712f ;
        table_value_y =  131'h5651c2040f684576fee57e3e5d8ff612 ;
      end
      7'b110010:
      begin
        table_value_x =  131'h3fd6c8a9e4681cafc0bae3b04464bcc22 ;
        table_value_y =  131'h43a3cf1994d21955c8f60f5fb40cbfd07 ;
      end
      7'b110011:
      begin
        table_value_x =  131'h3f09d172b54b4e3ba8d8a8fcb8b4f5862 ;
        table_value_y =  131'h35759555935e5be9b725dcaae271e124 ;
      end
      7'b110100:
      begin
        table_value_x =  131'h7644e939194b31b867fea5dd7b4d2f90a ;
        table_value_y =  131'h15517585c8d4f4299e33703f6af41311c ;
      end
      7'b110101:
      begin
        table_value_x =  131'h7cd9ba7db9c9dda4377fbd640e1de95b6 ;
        table_value_y =  131'h280a1ba53b4f51b4dd339b34bdbeb164b ;
      end
      7'b110110:
      begin
        table_value_x =  131'h4be341067bcfcaae38e39467272955fa5 ;
        table_value_y =  131'h1c3826f3728a3f413ec5d4aba0e9ee895 ;
      end
      7'b110111:
      begin
        table_value_x =  131'h492b67b2d0e115b49967b913f23403f5b ;
        table_value_y =  131'h24faf6e87a5d98a1cf4950ecc22b182cb ;
      end
      7'b111000:
      begin
        table_value_x =  131'h13b1b951224222ff844ed9b1f60b6aeb1 ;
        table_value_y =  131'h25d800daa444af0a48d99f47827592ce0 ;
      end
      7'b111001:
      begin
        table_value_x =  131'hb8d79929d80db8d003c7e3fdc5d7671 ;
        table_value_y =  131'h26594c9f9c2ccfcb1d4752d11aeef3e5c ;
      end
      7'b111010:
      begin
        table_value_x =  131'h741acf2cdb81fde4f7d2175765cb23bd6 ;
        table_value_y =  131'hf3f9957ed5dc910f46dfffeb611db45d ;
      end
      7'b111011:
      begin
        table_value_x =  131'h60e3edef77007390b0f5eb89e5f082172 ;
        table_value_y =  131'h36f4a6f37702ed5934024251377624434 ;
      end
      7'b111100:
      begin
        table_value_x =  131'h29a965d9eb934f85993fa4ac1e759e3d8 ;
        table_value_y =  131'h40379000aa1d481b9832b36c77dff9537 ;
      end
      7'b111101:
      begin
        table_value_x =  131'h4aed23cbce73073dbc0362a722a80ea31 ;
        table_value_y =  131'h337c17f4949f8e4ddd0ecbfe8022c2b8b ;
      end
      7'b111110:
      begin
        table_value_x =  131'h2645337f74b3eef2bf0426d279ef70228 ;
        table_value_y =  131'h820a38931eaf1763ee53794c7ac7a9af ;
      end
      7'b111111:
      begin
        table_value_x =  131'h2e6bb79f461ced763c06a16a9ca401854 ;
        table_value_y =  131'haabb550541609d2ec899ab34387847c ;
      end
      7'b1000000:
      begin
        table_value_x =  131'h5f99ca7ba7e231c808f4b88ff231c00cb ;
        table_value_y =  131'h23f23e089d3c7d6f80930168b93e17a79 ;
      end
      7'b1000001:
      begin
        table_value_x =  131'h71079d29f812999512c467c2283b960f0 ;
        table_value_y =  131'h614cd8a26333590de1e95646fb728c57 ;
      end
      7'b1000010:
      begin
        table_value_x =  131'h5bcb37e0981119d8e5822a0db1ad0e771 ;
        table_value_y =  131'h2a8dbd56747d936f06d71b8596fa6f2cc ;
      end
      7'b1000011:
      begin
        table_value_x =  131'h4d4db587fb848d0c6bf0eb31624dff25 ;
        table_value_y =  131'h53eb32bc07bc836c223a18797835f60a9 ;
      end
      7'b1000100:
      begin
        table_value_x =  131'h6d6d3f7449d6a47b26cb572c220f5a190 ;
        table_value_y =  131'h3bbba8df7ec973d4b24a1aeca0efb7244 ;
      end
      7'b1000101:
      begin
        table_value_x =  131'h60050a3093920d8fcc0861b68083348f4 ;
        table_value_y =  131'h8b1c95333c640f03c016424f6fcdfe50 ;
      end
      7'b1000110:
      begin
        table_value_x =  131'hc40b918e54f06912208622dad4281eff ;
        table_value_y =  131'h42ed30cc3f38a15b85f0609553817a0c7 ;
      end
      7'b1000111:
      begin
        table_value_x =  131'h2e676d0fb051b75d4b8549624deb82336 ;
        table_value_y =  131'h4384d5a7270f9c94f459e83c412cb2c9f ;
      end
      7'b1001000:
      begin
        table_value_x =  131'h313026a800e197742687256c70c116260 ;
        table_value_y =  131'h13fca2caa0ea5e177e15f303b4a057049 ;
      end
      7'b1001001:
      begin
        table_value_x =  131'h3d42a5570f3ab1604ecb0197102866762 ;
        table_value_y =  131'h5264f26cc65b34bf9405feb3213aff63 ;
      end
      7'b1001010:
      begin
        table_value_x =  131'h50ee899e22821f1e10f9dddc5900e658b ;
        table_value_y =  131'h1c8453b7c9bab8ce4a982bb0dbe5813b0 ;
      end
      7'b1001011:
      begin
        table_value_x =  131'h3c947f01b5c179b17ad9a7efb5422938a ;
        table_value_y =  131'h11354ceeaffcc9d91ac2c334738ce3bbf ;
      end
      7'b1001100:
      begin
        table_value_x =  131'h61876cb42d823c634184990edd9d34b62 ;
        table_value_y =  131'hec52f0faebb7377c6dae7e1acb542b8e ;
      end
      7'b1001101:
      begin
        table_value_x =  131'h35afce85c7ae6776ca578dd8e10e05efe ;
        table_value_y =  131'h108b1cfe1046d35140d8b51e62ab10880 ;
      end
      7'b1001110:
      begin
        table_value_x =  131'h43cbb802f26a65fc50f596517ad6df953 ;
        table_value_y =  131'h1073ec93742633221563b16fcd36867c2 ;
      end
      7'b1001111:
      begin
        table_value_x =  131'h491def0c49fca26daf2b0629ccb8f3047 ;
        table_value_y =  131'h1b67321d479a6ae85a7fc2fa629afdead ;
      end
      7'b1010000:
      begin
        table_value_x =  131'h2028b2d07801461e70f40a8830be64696 ;
        table_value_y =  131'h4fb7223f4e7aa6ce7ceb84aaa44872958 ;
      end
      7'b1010001:
      begin
        table_value_x =  131'h1c19d938d4fd48a407f13175fd2251c47 ;
        table_value_y =  131'h240cc704b8e634e3772f31d20e4d23b1f ;
      end
      7'b1010010:
      begin
        table_value_x =  131'h2fcfa2c7c6876f7cceeeaf21c18247c8e ;
        table_value_y =  131'h590aa5a5b041663776145b972a8395cea ;
      end
      7'b1010011:
      begin
        table_value_x =  131'h7cae0d802d1069c5fd81fde02f27da064 ;
        table_value_y =  131'h3800952bd60f47ad57f356da657c507d2 ;
      end
      7'b1010100:
      begin
        table_value_x =  131'h4644839c5ea9b10e0d763b0d1d6074977 ;
        table_value_y =  131'h1cb7d3fab75d84fa411af6ce97ab8daa2 ;
      end
      7'b1010101:
      begin
        table_value_x =  131'h73166965a7a96715cc4203b0e8eb1a59e ;
        table_value_y =  131'h2933ad8148197ffa06306e76990e9fb9 ;
      end
      7'b1010110:
      begin
        table_value_x =  131'h2c398a3f8f58be42cc10bc37358533bb8 ;
        table_value_y =  131'h5abba619bde8d84d293b3e9100ce4985a ;
      end
      7'b1010111:
      begin
        table_value_x =  131'h12c4bade884c74023c42a4645aaf5ee9d ;
        table_value_y =  131'h4cca1d7419f65b6746ffe34d2b44903fa ;
      end
      7'b1011000:
      begin
        table_value_x =  131'h2e110667ec1331b52ac8393b67ce668fe ;
        table_value_y =  131'h48499a18b47774b2c083ab19e851f58ad ;
      end
      7'b1011001:
      begin
        table_value_x =  131'h20d53be90409e967e766b98c5f704c8a6 ;
        table_value_y =  131'hc19059c82ae1de22356cce9b13b1db7 ;
      end
      7'b1011010:
      begin
        table_value_x =  131'h4967b6eec9df7f0e27591f78eb308f43d ;
        table_value_y =  131'h2f9b980e68af87a5f993dad45a3482eb3 ;
      end
      7'b1011011:
      begin
        table_value_x =  131'h27e479b66e7c84091a6c69bea78de5976 ;
        table_value_y =  131'h54524be50553d442ba20244f27e58913 ;
      end
      7'b1011100:
      begin
        table_value_x =  131'h792ac9ae315c55c615cea015bbce48ec0 ;
        table_value_y =  131'h2c479bee1cc06d5f1ff479353a59af81a ;
      end
      7'b1011101:
      begin
        table_value_x =  131'h106c63b5e8c8f37e51db05d095c14e183 ;
        table_value_y =  131'h6d7d862f0108d9d703ef67459c3b41e4d ;
      end
      7'b1011110:
      begin
        table_value_x =  131'h5a2fb2534620d51ce6913225917b855d7 ;
        table_value_y =  131'hb3e935f0032793c47ce926d86b65a41 ;
      end
      7'b1011111:
      begin
        table_value_x =  131'h2a3acafa6dc4946376b515206def207fe ;
        table_value_y =  131'hcb5decf8259fc39ad8372bc7e243f741 ;
      end
      7'b1100000:
      begin
        table_value_x =  131'h3ba2adbad8f34655c6ca6e896d172869c ;
        table_value_y =  131'h5e195edf0ca8893087d97c7f79c610bbc ;
      end
      7'b1100001:
      begin
        table_value_x =  131'h152ec7944f475d3f20bc1539bac552525 ;
        table_value_y =  131'h640052a414ee5b2dabd9d436134da679e ;
      end
        default: begin table_value_x = 131'h0; table_value_y = 131'h0; end
      endcase
end
endmodule


