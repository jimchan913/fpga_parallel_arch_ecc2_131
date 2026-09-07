`timescale 1ns / 1ps
module starting_point_table_2(input wire [6:0] addr, output reg [130:0] table_value_x, output reg [130:0] table_value_y);
always@*
    begin
      case(addr)
      7'b0:
      begin
        table_value_x =  131'h236e1545c93dcc5f77160382dc7e1f114 ;
        table_value_y =  131'h5cc799e0894968a6036bee752d29ebb57 ;
      end
      7'b1:
      begin
        table_value_x =  131'h2e898a8d99a07924c0a9a549ecc116e92 ;
        table_value_y =  131'h12fbd6e4e87594bf4ae9e4b5f52c25bfc ;
      end
      7'b10:
      begin
        table_value_x =  131'h13c1a489475949b2618da01705259791b ;
        table_value_y =  131'h6ced7537f0362f2990998e9e93ff2dbd1 ;
      end
      7'b11:
      begin
        table_value_x =  131'h685a9aadc9bcefc4d25828fb9d4ab5f86 ;
        table_value_y =  131'h393213d0a32abc9f2fee1da9599050a9 ;
      end
      7'b100:
      begin
        table_value_x =  131'h709b899f5a85082e0035e019f58e55f9a ;
        table_value_y =  131'h2f729a40d03fa17b75d06dcf2d9ae7304 ;
      end
      7'b101:
      begin
        table_value_x =  131'h5507cd296cdf4e9729e6f57b36d023015 ;
        table_value_y =  131'h1b219facb44a1d47ff7964d68d98664d8 ;
      end
      7'b110:
      begin
        table_value_x =  131'h4417d406dfe8889251b34a2387f8be823 ;
        table_value_y =  131'h2c70ed1debfafa1a77f349102278288ee ;
      end
      7'b111:
      begin
        table_value_x =  131'h77822cae927d7b22ae5d91453520f876e ;
        table_value_y =  131'h2657bde08a6aab4d6d1db96cb258e8a68 ;
      end
      7'b1000:
      begin
        table_value_x =  131'h6d7adfc00926e600c2a2e9e66eec8504a ;
        table_value_y =  131'h2710bd2a970237133570442d25772d146 ;
      end
      7'b1001:
      begin
        table_value_x =  131'h47757ba8b4d7d01fce4dba07a84034245 ;
        table_value_y =  131'h7b881b9c66a9fbc672bae7fac0401db5 ;
      end
      7'b1010:
      begin
        table_value_x =  131'h43ea28f00b46889e7e3ded24907f9b197 ;
        table_value_y =  131'h7059fe688a33e802faa80611ae89a9e ;
      end
      7'b1011:
      begin
        table_value_x =  131'h181f6ef0ad15f13b4d571baa4d5ed3e03 ;
        table_value_y =  131'h2962999d2b37092ab5106453a2a2f5057 ;
      end
      7'b1100:
      begin
        table_value_x =  131'h7aa2f2c018d7edcc5e1fcb00a51ad5892 ;
        table_value_y =  131'h232806cbcdc1eefe52722ef117d476222 ;
      end
      7'b1101:
      begin
        table_value_x =  131'h6fbd9bfa4f32ab6b2b1ac95ea457d01e2 ;
        table_value_y =  131'h18bf056dbb1676f732d4559efa1052840 ;
      end
      7'b1110:
      begin
        table_value_x =  131'h75eaaa2753f88ecef943b1a122a8534e2 ;
        table_value_y =  131'h22b0a8b1f4ad9f321df90d9d5150208ec ;
      end
      7'b1111:
      begin
        table_value_x =  131'h34b7b01df3b2c70379f9e1a7ee2abbe4c ;
        table_value_y =  131'hb1211273497bd448022f2965e5854b12 ;
      end
      7'b10000:
      begin
        table_value_x =  131'h5fdf3670870421e18c0779b3e830a95d3 ;
        table_value_y =  131'h31bcaa4a51a83edb0dde74917acfadbb7 ;
      end
      7'b10001:
      begin
        table_value_x =  131'hdf619e92686ccc6a8776f3ca932ff6c1 ;
        table_value_y =  131'h471efd958adb225d19fb9fac75d0b29c8 ;
      end
      7'b10010:
      begin
        table_value_x =  131'haad3eb6c03a888bf75e4955be2c6f1cd ;
        table_value_y =  131'h34de6894e7c0a0a9d7b6e2f9b75864d0d ;
      end
      7'b10011:
      begin
        table_value_x =  131'h5a753b05a4383c5961df13628cc1a8e9d ;
        table_value_y =  131'h2d953b241a79e0a80bc0b5760c193a4ab ;
      end
      7'b10100:
      begin
        table_value_x =  131'h552690e3908c0f442b5c23ec771b9eff ;
        table_value_y =  131'h437ddd7ff7910b9bf2d2e6067b9ba63f0 ;
      end
      7'b10101:
      begin
        table_value_x =  131'h744debbb91963a0943066b2e5b24ecb6e ;
        table_value_y =  131'h70be5cf3ef8ea1dcabb5d9af27883a42 ;
      end
      7'b10110:
      begin
        table_value_x =  131'h4cbc0ce38f4c4f95cb75e7a8aa33db641 ;
        table_value_y =  131'h3d206ddfbff8e4e4659dc9a411054f28f ;
      end
      7'b10111:
      begin
        table_value_x =  131'h488d351c9c169c5d04f0c5ae2fc161e7f ;
        table_value_y =  131'h3d7680d28e32222fae8855f77c0471409 ;
      end
      7'b11000:
      begin
        table_value_x =  131'h3c775f2ef13d06e6396c0ad63a49c4dac ;
        table_value_y =  131'h3be50f3caeda86bf0d0323fd3a131763 ;
      end
      7'b11001:
      begin
        table_value_x =  131'h5e9c365571324c20820270621ceaa2c9d ;
        table_value_y =  131'h21b590c57184b3b18df19678722ddb064 ;
      end
      7'b11010:
      begin
        table_value_x =  131'h5eaa993b85ea43c0feba688b4f424811f ;
        table_value_y =  131'h2d18a919ff7a18a8ecb0899857db4c87e ;
      end
      7'b11011:
      begin
        table_value_x =  131'h4dcb76064292e8af009e592987fdee889 ;
        table_value_y =  131'h4be5a282b16e7b6c4c0d9c8ba57e1797 ;
      end
      7'b11100:
      begin
        table_value_x =  131'h209fce924a7ff280c5a0f2a4763418d18 ;
        table_value_y =  131'h1ec571e94f5d8352ef5500967985adf48 ;
      end
      7'b11101:
      begin
        table_value_x =  131'h5f0756a365d8fc761427fdd51d409179d ;
        table_value_y =  131'h2a51b3d8dcde6e9b005024dee5e637c25 ;
      end
      7'b11110:
      begin
        table_value_x =  131'h2834465ef6cfc5fefe0d435fc1383c82e ;
        table_value_y =  131'h5e7991c8b00de7e57df88f77e75d911a4 ;
      end
      7'b11111:
      begin
        table_value_x =  131'h15178aa5a3b4a00e313931271ee9d15e7 ;
        table_value_y =  131'h45d28ce5e653d2b335f4f73f1ea6fc316 ;
      end
      7'b100000:
      begin
        table_value_x =  131'h2b49e484bc3013c6cf1ca3fada24024b0 ;
        table_value_y =  131'h16c2fb286f780b5f94f3a44e22414caf5 ;
      end
      7'b100001:
      begin
        table_value_x =  131'h8431991a876069619dabf2bed462a493 ;
        table_value_y =  131'h26d0b78593c1637a65636d4dd92d74a98 ;
      end
      7'b100010:
      begin
        table_value_x =  131'h4d44688de0de865c0eb5b23b2bdf8543 ;
        table_value_y =  131'h4bf43f415f43ce5c697489dca64c4a73e ;
      end
      7'b100011:
      begin
        table_value_x =  131'h65a48c83214d66504a2cc4f0663916160 ;
        table_value_y =  131'h2a27977534af347e871893e920b8d0639 ;
      end
      7'b100100:
      begin
        table_value_x =  131'h6ddd2db2827905519579e7803af93d19c ;
        table_value_y =  131'h2289b3b2c6d29beff0170b81a98dab9aa ;
      end
      7'b100101:
      begin
        table_value_x =  131'h27c8729a50e3d82124f96e3bd0dbf227e ;
        table_value_y =  131'h1eb55154252db733bb3e6bf38688824c2 ;
      end
      7'b100110:
      begin
        table_value_x =  131'h4298556427f324352f12e0abfbe55307f ;
        table_value_y =  131'h36dfea96610383052c4dc7037205403bd ;
      end
      7'b100111:
      begin
        table_value_x =  131'h1beb66f9237b849597909908ca65759a3 ;
        table_value_y =  131'h6cd6aa54ae96b64d72bf89688895f616a ;
      end
      7'b101000:
      begin
        table_value_x =  131'h2b567f0854f527b80e13f3eddea93d8be ;
        table_value_y =  131'h5589181340e6d97dddc9002b5804c21ba ;
      end
      7'b101001:
      begin
        table_value_x =  131'h71b52986069c691f6922b96a05227c15 ;
        table_value_y =  131'h68899d895c8363bc738435f720145d798 ;
      end
      7'b101010:
      begin
        table_value_x =  131'h4c73e3ae24904833f762ad2d9b4a15073 ;
        table_value_y =  131'h247a5f40c2b6cfbaa09aba461377bb8ca ;
      end
      7'b101011:
      begin
        table_value_x =  131'h2c765b39201b4b19b14c61d3aef4e0e2c ;
        table_value_y =  131'hd264e5165c581df3294b3b250d34db71 ;
      end
      7'b101100:
      begin
        table_value_x =  131'h120ee4bcb44a2ede4370c8f3e428aea77 ;
        table_value_y =  131'h64fe1af218edaf00c15c9de0ac38d496 ;
      end
      7'b101101:
      begin
        table_value_x =  131'h25f25881809038de1622a31e23c495882 ;
        table_value_y =  131'h4ffdb70befb151a1f25eaf1dd587fb23e ;
      end
      7'b101110:
      begin
        table_value_x =  131'h4e99ccda6ecb87dc2de685eab1a227db7 ;
        table_value_y =  131'h3686125045c9a7b5afdafd01f8c67b0fb ;
      end
      7'b101111:
      begin
        table_value_x =  131'h74a5d2ba32e6395063a6c188757d1a358 ;
        table_value_y =  131'hada278bb1fed4e810564c21975f8ba20 ;
      end
      7'b110000:
      begin
        table_value_x =  131'h20749797edbedf7adeeb7a5572685e468 ;
        table_value_y =  131'h55304849b73c1066e09c73123648b6bc4 ;
      end
      7'b110001:
      begin
        table_value_x =  131'h7214cfdfe8f514c99eea61845d9c1b9fa ;
        table_value_y =  131'h76c7389831477f791fc2f8156db92817 ;
      end
      7'b110010:
      begin
        table_value_x =  131'h4f719f69425de99f14bdd9deb48f2250b ;
        table_value_y =  131'h13718b67ead2315a8d109bb8b532288f5 ;
      end
      7'b110011:
      begin
        table_value_x =  131'h328460b4b25ac70e2b715ac8468538de6 ;
        table_value_y =  131'h46ab03668c49abc6ae98f5ecee290d327 ;
      end
      7'b110100:
      begin
        table_value_x =  131'h110d4c884a8bc5214f2f6b69fc86c46e9 ;
        table_value_y =  131'hc7b4c3d0967008eeabca98baf733ae49 ;
      end
      7'b110101:
      begin
        table_value_x =  131'h1b00302c79367b8ff358af3b3ba10f71b ;
        table_value_y =  131'hf9b2b53446534dc385e8caf5ec72d05f ;
      end
      7'b110110:
      begin
        table_value_x =  131'h6aeb9c03adadb00d20f6fcbd6f0757bbe ;
        table_value_y =  131'h114d74c77d3d3c539a759dc894d264270 ;
      end
      7'b110111:
      begin
        table_value_x =  131'h3f58dd516ea1a1495f931fe5f40ba4d96 ;
        table_value_y =  131'h56c95f387581b3042c7d6dfab680731b1 ;
      end
      7'b111000:
      begin
        table_value_x =  131'h2b5bc1802f1d775c9ebd8f1a30eb2fcb0 ;
        table_value_y =  131'h4ffd259849966342137ce870d140c16bd ;
      end
      7'b111001:
      begin
        table_value_x =  131'h33e9f5e4698ec7e83869090dab74cdbb0 ;
        table_value_y =  131'h4dcafe3d05ef02930529b1671174a9483 ;
      end
      7'b111010:
      begin
        table_value_x =  131'h7d73e0674f5b6288e5f052b2c712cccbc ;
        table_value_y =  131'h130133e147678845f994d1986c9d4e06 ;
      end
      7'b111011:
      begin
        table_value_x =  131'h6f55915bdd117d46e7589ea41397e71cc ;
        table_value_y =  131'h1f5ff0c5202eab1812dad42c74c0d47dc ;
      end
      7'b111100:
      begin
        table_value_x =  131'h61a532a2323978cb22df628abdc0a9652 ;
        table_value_y =  131'h4c3a384c319b9cdedd5085b81ea673d7 ;
      end
      7'b111101:
      begin
        table_value_x =  131'hcaf0cabd434436166536deebea102ab7 ;
        table_value_y =  131'h25df489d632e1b05fbc02f99698df55ef ;
      end
      7'b111110:
      begin
        table_value_x =  131'h7aadb9a1c8fba37fc6d256b15e727f87c ;
        table_value_y =  131'h32a3dbccfd1c8af2d27c902094578f171 ;
      end
      7'b111111:
      begin
        table_value_x =  131'h3190851f6e53aa6fd889fa8777356a36a ;
        table_value_y =  131'h41edd30ca4061f735222d8cac7fce13aa ;
      end
      7'b1000000:
      begin
        table_value_x =  131'h121338c663d65b0ae387a78ccd66291ed ;
        table_value_y =  131'h2cd7e66c5633cba4d719499d62cb94c5a ;
      end
      7'b1000001:
      begin
        table_value_x =  131'h30b75802ebe4e10e4adac37acddfbe29 ;
        table_value_y =  131'h799b6e3dc8de0d83038a28d5bbcd36b55 ;
      end
      7'b1000010:
      begin
        table_value_x =  131'h17d9986565e87c83bd7dc997789a54197 ;
        table_value_y =  131'h2419d27aecfc443df64174f09f9c25fc9 ;
      end
      7'b1000011:
      begin
        table_value_x =  131'h7fec81ecfe07111f891017d1ebcfa4ad6 ;
        table_value_y =  131'h2198e71a87eb9e3e4cb5d09032193368c ;
      end
      7'b1000100:
      begin
        table_value_x =  131'h76d2ef90f51b115769b6202b1d7f3ec48 ;
        table_value_y =  131'hb5c5ffa993145a92372a25fedf74411 ;
      end
      7'b1000101:
      begin
        table_value_x =  131'h654615c383f6de19d1447316005abf7f4 ;
        table_value_y =  131'h234e9bf350fe015bdf88d94d4e7e340af ;
      end
      7'b1000110:
      begin
        table_value_x =  131'h619812e5970ea1bef0e3156da02172e2a ;
        table_value_y =  131'h386416467e4fe90f2b39fda511ca0fd5 ;
      end
      7'b1000111:
      begin
        table_value_x =  131'ha74097bdb724e81ae13f11c0b962d0ab ;
        table_value_y =  131'h5257409e8206cf4630b54b397843e51ad ;
      end
      7'b1001000:
      begin
        table_value_x =  131'h597f6f9aabb508418cfd4f7e5b324855f ;
        table_value_y =  131'h1689fcb3a2f1a803d88517acf79bb3bfa ;
      end
      7'b1001001:
      begin
        table_value_x =  131'h7c54dadf56b9bdb8e41fb54c428887132 ;
        table_value_y =  131'h18d66aa5b8c074f08240b9f67a0b442f3 ;
      end
      7'b1001010:
      begin
        table_value_x =  131'h54b815ee0ea064d4e0232cd4ceef72d1b ;
        table_value_y =  131'h1f558943d76ae1e5e1fe6a9a4cf17a354 ;
      end
      7'b1001011:
      begin
        table_value_x =  131'h64b3cca400cd79a3259e0ebbafbc10eac ;
        table_value_y =  131'h3999c8f300f8948fa3c7127164a3b55cf ;
      end
      7'b1001100:
      begin
        table_value_x =  131'h66fde60f95f982689a645caa56d4f62d6 ;
        table_value_y =  131'h21688a7d06e0a9b357a9817d74f35c384 ;
      end
      7'b1001101:
      begin
        table_value_x =  131'h13ff238c2bc313241d5087d7dad40164b ;
        table_value_y =  131'ha58ae4916a6efdd676e995fba4352fd4 ;
      end
      7'b1001110:
      begin
        table_value_x =  131'h4d37746c1f9547302d8668953782a19db ;
        table_value_y =  131'hecee70d1ab9a79844d3b952ee01eb4b7 ;
      end
      7'b1001111:
      begin
        table_value_x =  131'h3081910125c30eb939b3f5bc353927df0 ;
        table_value_y =  131'h410de89682d8193c8bdbc79e93f4ec1df ;
      end
      7'b1010000:
      begin
        table_value_x =  131'h2b91d9caf4e1f8e5108e89a2829da0c4c ;
        table_value_y =  131'h846b65bab201b76ae8bba82cbc2d5140 ;
      end
      7'b1010001:
      begin
        table_value_x =  131'h1dcac83f84f61139756b0f151f24859a1 ;
        table_value_y =  131'h6c4cdd3ed897800c0c3fd55a3bcce8b6b ;
      end
      7'b1010010:
      begin
        table_value_x =  131'hbdec369c2a9ccf31cd7bfadc6cffebd7 ;
        table_value_y =  131'h6598ad2a80c60b7d6bce88c1f4c9e6f14 ;
      end
      7'b1010011:
      begin
        table_value_x =  131'h435e89487ad41412976495207f51b59d3 ;
        table_value_y =  131'hcc40d698e85a02ad340d67783ca43b43 ;
      end
      7'b1010100:
      begin
        table_value_x =  131'h5a14f84fa0a13163d6490d79c9e428751 ;
        table_value_y =  131'h9fa256a1b0de07fd4daf3dbc3e7fd6c4 ;
      end
      7'b1010101:
      begin
        table_value_x =  131'h523105fa8696c931e3ce5e6f179ee9ab ;
        table_value_y =  131'h5a350a3d8fab9c73e76d1afc7db7bbdec ;
      end
      7'b1010110:
      begin
        table_value_x =  131'h6cf28c3f5b23dacfccc263296caaf3d9a ;
        table_value_y =  131'h1926a7263d4d0dcc9b41535459ca31566 ;
      end
      7'b1010111:
      begin
        table_value_x =  131'h2b53289efb1d29e16186a296d8f345324 ;
        table_value_y =  131'h55129ffe19f52e69a634c03152328bebb ;
      end
      7'b1011000:
      begin
        table_value_x =  131'h76bb1daf9166804a591e946a9945a1e0c ;
        table_value_y =  131'h39c41d5c3796b2724198ebad2e03f4fc6 ;
      end
      7'b1011001:
      begin
        table_value_x =  131'h31fa8566a624eaf0b456666212b5d4b9c ;
        table_value_y =  131'h4905096e2e8c7b7b4f13dc0f743260a7d ;
      end
      7'b1011010:
      begin
        table_value_x =  131'he201ade317c2a0959fd70b5b7bd92d01 ;
        table_value_y =  131'h4483d8c095bdf1b316cc66143e82d0519 ;
      end
      7'b1011011:
      begin
        table_value_x =  131'h3c8462362541df06cc8d67003706df980 ;
        table_value_y =  131'h49e03f281887e68119aec01295a6ddb3f ;
      end
      7'b1011100:
      begin
        table_value_x =  131'h3654c64aeb1e09240217cca37dbd1d822 ;
        table_value_y =  131'h1aaf7871ea1cb1d742746c46050eef4e0 ;
      end
      7'b1011101:
      begin
        table_value_x =  131'h34f708116214d0acf9d4e11b1fc3c4554 ;
        table_value_y =  131'h5ebcea160c5430b5a71f953ca60c3a47f ;
      end
      7'b1011110:
      begin
        table_value_x =  131'h6f094df21e2a19f62c3cb2ff16315db62 ;
        table_value_y =  131'h34424aefd1dfb9cf565254a98a8138706 ;
      end
      7'b1011111:
      begin
        table_value_x =  131'h1be601e768268d5485ee557434904badf ;
        table_value_y =  131'h47963264c89768c1c0dc5ca49d479a093 ;
      end
      7'b1100000:
      begin
        table_value_x =  131'h54c9a625f88e13b14b03fb2388f0cc1ef ;
        table_value_y =  131'hca63acf89f5d4284dec0c994d695c0a1 ;
      end
      7'b1100001:
      begin
        table_value_x =  131'h7a606cae941788a77870c8eb62b812ae2 ;
        table_value_y =  131'h287563eea54f427f9d43e4ba872d82468 ;
      end
        default: begin table_value_x = 131'h0; table_value_y = 131'h0; end
      endcase
end
endmodule


