`timescale 1ns / 1ps
module starting_point_table_3(input wire [6:0] addr, output reg [130:0] table_value_x, output reg [130:0] table_value_y);
always@*
    begin
      case(addr)
      7'b0:
      begin
        table_value_x =  131'h467893b05d50d7c10f8defe74509d0a23 ;
        table_value_y =  131'ha234c92bcfc3f6b3fc750d96083da55c ;
      end
      7'b1:
      begin
        table_value_x =  131'h563d130f3d5c33e3758ab75903eb743e9 ;
        table_value_y =  131'h351e0cbc43cdb0c00a8925dba5a1a3e2a ;
      end
      7'b10:
      begin
        table_value_x =  131'h5cabedfb1878f4f2ea5baaa424192ad83 ;
        table_value_y =  131'h1cca8957ec3181c4004f8eef51ceac1bc ;
      end
      7'b11:
      begin
        table_value_x =  131'h32a54d4beb51ec77d880676b2b1d6b62e ;
        table_value_y =  131'h5b7c9653de28c8a6278c05fbfdde82ece ;
      end
      7'b100:
      begin
        table_value_x =  131'h2b557740d6c94e5e28521948713f2083 ;
        table_value_y =  131'h14914f3b8129af3f10a2d06aa92014feb ;
      end
      7'b101:
      begin
        table_value_x =  131'h318f78e974cbc0fdcb544c12651b07036 ;
        table_value_y =  131'h18a0e4b8a4bb9b671414ad740d9d21fac ;
      end
      7'b110:
      begin
        table_value_x =  131'h526eea4bf57ba56ed46e2ac33495e233f ;
        table_value_y =  131'h3d9c6448203adf3f73a2b370adef498f1 ;
      end
      7'b111:
      begin
        table_value_x =  131'h13a58a8ce33a740aa02dd8d75077ce3b5 ;
        table_value_y =  131'h6a46ae82bb6993ad0a8ee542a82342282 ;
      end
      7'b1000:
      begin
        table_value_x =  131'h6859b8cfcd3c971afd8fd4c82fc64dc78 ;
        table_value_y =  131'hc4fd447ed00c2a23063d7075442a9d12 ;
      end
      7'b1001:
      begin
        table_value_x =  131'h5235ec861f608f9e4ad870e3317952c29 ;
        table_value_y =  131'h30775539077dc1a2d2c72503528dbd11e ;
      end
      7'b1010:
      begin
        table_value_x =  131'h5fdbbbe60b9d5ec41f173c8cdc98de7c7 ;
        table_value_y =  131'h268b6f1b2e60b529e976978c7de64f14e ;
      end
      7'b1011:
      begin
        table_value_x =  131'he633523a16c5d99d99c3fca9fc7cba07 ;
        table_value_y =  131'h3032a36cb66129c519187464fe0f71c59 ;
      end
      7'b1100:
      begin
        table_value_x =  131'h49714427c038dc9f5f97b40b0665cbd8f ;
        table_value_y =  131'h1f6cd37f6943e7dbafb9ada3044e11099 ;
      end
      7'b1101:
      begin
        table_value_x =  131'h5ae5a99fa4b345792e7b14ed8c73b57cb ;
        table_value_y =  131'h24d09e3c49f31cc77e205a0700c9de2ac ;
      end
      7'b1110:
      begin
        table_value_x =  131'h71c430ce231bfa962cf162c63bf9a459c ;
        table_value_y =  131'h2e38c05461cf66bd32931bf296864be46 ;
      end
      7'b1111:
      begin
        table_value_x =  131'h76e24ab0062663e8dbf52ad673aed8b8c ;
        table_value_y =  131'h1bc7579d69e200bfaecdf67211a5f8821 ;
      end
      7'b10000:
      begin
        table_value_x =  131'h23b9212be984ec38d6d10bf8c47b3bac8 ;
        table_value_y =  131'h1fd3c1ae164a668ed5ec91517a71a7d9f ;
      end
      7'b10001:
      begin
        table_value_x =  131'h91711d9bd478689c9da25627c63196cb ;
        table_value_y =  131'h437db740ab0d929302080fa218b3dc04 ;
      end
      7'b10010:
      begin
        table_value_x =  131'h1e9669ff1c9697d7ba22385165eebfba3 ;
        table_value_y =  131'h4a3769bb00ebb91dca4e1f3765d57496d ;
      end
      7'b10011:
      begin
        table_value_x =  131'h698ef48b407982a388ef09e3ec6037d2c ;
        table_value_y =  131'h2ef1ad047349e19d3cdf4f09c427aa233 ;
      end
      7'b10100:
      begin
        table_value_x =  131'h32a84a61861f951b060c564fe7ab91406 ;
        table_value_y =  131'h13b75e98562792bd4fc5752ce01c28f27 ;
      end
      7'b10101:
      begin
        table_value_x =  131'h4cca5a4dbe1c8eec076032e6033bec301 ;
        table_value_y =  131'h9481f5e1ca5439ad3941d0e36a9170ec ;
      end
      7'b10110:
      begin
        table_value_x =  131'h1d9da246952b23f4985b8a78472cb1665 ;
        table_value_y =  131'h5add90e947380a6475cbb8f999d1ca76 ;
      end
      7'b10111:
      begin
        table_value_x =  131'h45b43e158118b0a33840315b91956cfcf ;
        table_value_y =  131'h38e6e95f4c9792ef1d93184c720bb6c38 ;
      end
      7'b11000:
      begin
        table_value_x =  131'heb0bb2f3b4532c45bbf43747e5ea432d ;
        table_value_y =  131'h410df60e5647c40bf1352a79b0e906177 ;
      end
      7'b11001:
      begin
        table_value_x =  131'h621b0d23d0cef97969a902c4734183d54 ;
        table_value_y =  131'h1f9898f04c6fe11503f3777c2d4a21424 ;
      end
      7'b11010:
      begin
        table_value_x =  131'h5f90ce23b5c1ae1e51e508a974cfa440d ;
        table_value_y =  131'h28d7d276771a69120187674038f6b5c7a ;
      end
      7'b11011:
      begin
        table_value_x =  131'h7b23edd3ab5812fdd25dc0b589d716e58 ;
        table_value_y =  131'h33251d07ecb7aeac09c6470a92e9105bd ;
      end
      7'b11100:
      begin
        table_value_x =  131'h353db2114a29e0a8c31edd96e62d7e45a ;
        table_value_y =  131'h4dd45e47e5e7848e837c21fb41a0e7277 ;
      end
      7'b11101:
      begin
        table_value_x =  131'h3b2f0e0b727a809359817ab7e796be86c ;
        table_value_y =  131'h456494348e019eeeaba2cf6cf1746f5e7 ;
      end
      7'b11110:
      begin
        table_value_x =  131'h733fdc07cb4ca4548b5b604335ca26354 ;
        table_value_y =  131'hfa1016149d8feba21b2d030074b9f899 ;
      end
      7'b11111:
      begin
        table_value_x =  131'h1ecd647b13cdf4703f16d726c1edc0d35 ;
        table_value_y =  131'h77b0df200117f3ed1c13cd6f250a0230 ;
      end
      7'b100000:
      begin
        table_value_x =  131'h596f4c24e3b7a190f532eca7e23b35359 ;
        table_value_y =  131'h1c46a47c96b609b46932613f6c6e14c15 ;
      end
      7'b100001:
      begin
        table_value_x =  131'h1d81b1034ab28b8d84c5e3ff1682990e1 ;
        table_value_y =  131'hb861a036c5c2f698d3a69c642a103eec ;
      end
      7'b100010:
      begin
        table_value_x =  131'h4cd34b87b5336722192cf06003936daf9 ;
        table_value_y =  131'h1eb8628b183135285e7acfe762e834f82 ;
      end
      7'b100011:
      begin
        table_value_x =  131'h62a79980fea84e19a18a9af9c999d4a3e ;
        table_value_y =  131'hda334fc97be7071e1e95bb8a556b8207 ;
      end
      7'b100100:
      begin
        table_value_x =  131'h439f9bf0129df8278c99904a82466ece9 ;
        table_value_y =  131'h2edb74db64e0c8bdf3bcd6c8d5fae32c2 ;
      end
      7'b100101:
      begin
        table_value_x =  131'h418e8a987bd84690c71587386a480ed13 ;
        table_value_y =  131'h1798a89e6b4e6d2bd20eca0fa0478c4f7 ;
      end
      7'b100110:
      begin
        table_value_x =  131'h51a5a854f5a73aad1338e10c5c896456d ;
        table_value_y =  131'h1eeed49489360313aef95c34f887b9a36 ;
      end
      7'b100111:
      begin
        table_value_x =  131'h753b2328deb2d30ecb32f6ddee8b91bd2 ;
        table_value_y =  131'h267d41d3ebbd27050d2b5cc57af4ea89d ;
      end
      7'b101000:
      begin
        table_value_x =  131'h151169b9c67f6bac609e152ff27ff33f3 ;
        table_value_y =  131'h43f114f4b092999f7ee02a59067281ad8 ;
      end
      7'b101001:
      begin
        table_value_x =  131'h2156faa71f24a26f4318e7048ce7039dc ;
        table_value_y =  131'h5239f4ef8a40cfbe255dafa0d5f361992 ;
      end
      7'b101010:
      begin
        table_value_x =  131'h590f216b930bb52be65c39ce4506d7a79 ;
        table_value_y =  131'h1848446990542a64d32c4ed7ac1d1dfd3 ;
      end
      7'b101011:
      begin
        table_value_x =  131'h4542404d79d746432b042f1691acce77 ;
        table_value_y =  131'h21181994fab06483a1e36ebbdd4657910 ;
      end
      7'b101100:
      begin
        table_value_x =  131'h7f9a28c003f9775b489f106bd51e44f3e ;
        table_value_y =  131'h24ef3ce3d7567b855cf038c3576ca5d6 ;
      end
      7'b101101:
      begin
        table_value_x =  131'h3eb0cb7cf7bff09cf7ca0638e5be899e2 ;
        table_value_y =  131'he15ee2c23853206851bd092c5a7d5d33 ;
      end
      7'b101110:
      begin
        table_value_x =  131'h70f238bc2fc45e416a86ca7bc01b728ea ;
        table_value_y =  131'h3cdb07d7ed8e55e4e723f194af503decc ;
      end
      7'b101111:
      begin
        table_value_x =  131'h34eac77fe7b00d4e790866de1d7211426 ;
        table_value_y =  131'h691f08925297313066ca5b4d641ae6ea ;
      end
      7'b110000:
      begin
        table_value_x =  131'h227603ce5f20153ac25d93106bd467460 ;
        table_value_y =  131'h1eb2e6778f41763a06dd9b99415a21acd ;
      end
      7'b110001:
      begin
        table_value_x =  131'h65bf0583577df5db8a4f5a69dd13f4e3 ;
        table_value_y =  131'h2bea008f2b6a00bf823f852705f1d899 ;
      end
      7'b110010:
      begin
        table_value_x =  131'h33de562637bf04f08fdf229e8a380d694 ;
        table_value_y =  131'h4d948f0d82ae6608068199e7926dc0ebe ;
      end
      7'b110011:
      begin
        table_value_x =  131'h720e7785b72df9b840d514ca4e83a8c1c ;
        table_value_y =  131'h3bef561b7b5905167f646c601ef0a42de ;
      end
      7'b110100:
      begin
        table_value_x =  131'hebd27aa86ee5b5b7edf8d598f37a030d ;
        table_value_y =  131'h20efc847919c44bf1aed1d065178f1304 ;
      end
      7'b110101:
      begin
        table_value_x =  131'hcb01aafe697ff5769bb8c6ac4d981ccf ;
        table_value_y =  131'h609c9ff73dd2ec8c064d25cc80f8e03c6 ;
      end
      7'b110110:
      begin
        table_value_x =  131'h2efd4bc6d719bb7b46ae2234b9e95e568 ;
        table_value_y =  131'h12c60da221ea36822d7902b6aec9ebad8 ;
      end
      7'b110111:
      begin
        table_value_x =  131'h65c4343891671cbe96665eb5e3dd40a74 ;
        table_value_y =  131'h7ddc0b1ef1fe683b6741589b85ff744b ;
      end
      7'b111000:
      begin
        table_value_x =  131'h1d64e7db9782d30901cf93340f1d0d25b ;
        table_value_y =  131'h71e72c9a80560f4d9a9208c9de6ac5f0 ;
      end
      7'b111001:
      begin
        table_value_x =  131'h70af0af55c1878e359edacefff6703588 ;
        table_value_y =  131'h38c44c82813dd7c2e6a56c327bc89d59a ;
      end
      7'b111010:
      begin
        table_value_x =  131'h53f4522d45fcf3b02e2aa8805bb4ca0f1 ;
        table_value_y =  131'hb38e4f8fdbb9bacde5c010d4755c2481 ;
      end
      7'b111011:
      begin
        table_value_x =  131'h56819838ee25965279a84d66a85602ed ;
        table_value_y =  131'h19c48f2288fbc6dbb630ca8769315cea8 ;
      end
      7'b111100:
      begin
        table_value_x =  131'h65d31841f9be89de2e9610b5b3b497d98 ;
        table_value_y =  131'h3adc5254d7af21f14b299d5f228ed6640 ;
      end
      7'b111101:
      begin
        table_value_x =  131'h59e686cf0dbd5b0a8711f38cbfc0aa941 ;
        table_value_y =  131'h2d343ef8e77be65419970f032709a8642 ;
      end
      7'b111110:
      begin
        table_value_x =  131'h376f9cad7785c43d6738fc9aafafbc19a ;
        table_value_y =  131'hcb98456d59957c73a85433ea18925f92 ;
      end
      7'b111111:
      begin
        table_value_x =  131'hae5bc7efc3bd2811e0e460827109e8f7 ;
        table_value_y =  131'h64697b78ef8a94fbf1fd72aa73ae23cdd ;
      end
      7'b1000000:
      begin
        table_value_x =  131'h536a552d5a4b58ab434a3987e1c05c6e9 ;
        table_value_y =  131'h28192091f5f33d38190ea63eec0f0f8b ;
      end
      7'b1000001:
      begin
        table_value_x =  131'h147ad7b24bbee1e3c40d6bc2d6b867f1f ;
        table_value_y =  131'h6356d5d329a28dab39a73654f7c610fb9 ;
      end
      7'b1000010:
      begin
        table_value_x =  131'h4d546a21454edbf41b60de868f3b8a5a3 ;
        table_value_y =  131'h28e4147390aa8b387658ea2e01ec68f38 ;
      end
      7'b1000011:
      begin
        table_value_x =  131'h210423e1758942605b6bf8f54f85c8b50 ;
        table_value_y =  131'h4ef633b677cfc5e236db43dc383e4b994 ;
      end
      7'b1000100:
      begin
        table_value_x =  131'h4ac7a6744e78486f42c9018d00bd50171 ;
        table_value_y =  131'h62e1dd61bdbc738898d39dfaca3354bc ;
      end
      7'b1000101:
      begin
        table_value_x =  131'h18906f60280c1de50b4df15df2ed1cddf ;
        table_value_y =  131'h6c54b2e72e9066d02396fdf79483222f5 ;
      end
      7'b1000110:
      begin
        table_value_x =  131'h29f9a12c2e145dd5a50933399aa1f023 ;
        table_value_y =  131'h787d5f1569f1aeed639649519bf248fc6 ;
      end
      7'b1000111:
      begin
        table_value_x =  131'h3d685a467cdff8d49edee759741ab5718 ;
        table_value_y =  131'h46a3032b58ea1259bb9c6125a4583cbbe ;
      end
      7'b1001000:
      begin
        table_value_x =  131'h2d9e23be50025efa249bede14176110da ;
        table_value_y =  131'h4e8ac77a34e576e2e2861c133394ee2cc ;
      end
      7'b1001001:
      begin
        table_value_x =  131'h5202d2c14de5deb82136012e56ee4f7c3 ;
        table_value_y =  131'h33e9ad85be155c4794a7e411f6d039d9 ;
      end
      7'b1001010:
      begin
        table_value_x =  131'h743d64907bd8ab33b9c731b42eacd3308 ;
        table_value_y =  131'h24a4e9d9cb61e669b0a8a4a1d8520805 ;
      end
      7'b1001011:
      begin
        table_value_x =  131'h31da0074b926ae40191c456724ebe81c8 ;
        table_value_y =  131'h39b420f79a89c50cbd8a3d6523e4c680 ;
      end
      7'b1001100:
      begin
        table_value_x =  131'h2e1510fe89cbf99deb56f9355008cba3 ;
        table_value_y =  131'h5ca09cc7b4effc5fae2f3cc73b1b0c851 ;
      end
      7'b1001101:
      begin
        table_value_x =  131'h6414a029e1ea648d0cdbbaf722195a542 ;
        table_value_y =  131'h30fc33d408f3f2e11767072d32ea4e298 ;
      end
      7'b1001110:
      begin
        table_value_x =  131'h7faa3dee8dead08b9e8535f07f9564090 ;
        table_value_y =  131'h2a1f4d54acd2365fedf83a8feb9c027a4 ;
      end
      7'b1001111:
      begin
        table_value_x =  131'h229042947776fbf2a050e159abcc725fe ;
        table_value_y =  131'h48f1a6f38b326350d1e45d604aefb11e6 ;
      end
      7'b1010000:
      begin
        table_value_x =  131'h6d08f696048029223ab9fa8c909618ed4 ;
        table_value_y =  131'h2e3528ad9bd89a0ad418bea31c5950c69 ;
      end
      7'b1010001:
      begin
        table_value_x =  131'h5973aa28c04c67dd67c680cb5deb1b411 ;
        table_value_y =  131'h1d563bf8649ce77ef3dceb5b1d29ce841 ;
      end
      7'b1010010:
      begin
        table_value_x =  131'h538b264e245f61b71f78cbb21e9c3b199 ;
        table_value_y =  131'h39d89e7774aeb70393ea23351c6f3a174 ;
      end
      7'b1010011:
      begin
        table_value_x =  131'h44d068504c956a5f0a343bfe5aa1427f9 ;
        table_value_y =  131'h26e628eb5bc1a3a9948ca5f486dc3073e ;
      end
      7'b1010100:
      begin
        table_value_x =  131'h60068b81df26788f5e483070b1a711142 ;
        table_value_y =  131'h3493929130861247dbf4e9e7c0c751cfc ;
      end
      7'b1010101:
      begin
        table_value_x =  131'h1033470919253a937adb88d2b9c415a75 ;
        table_value_y =  131'h41d7ea7ab1fc75d20b46efd0f1486bc07 ;
      end
      7'b1010110:
      begin
        table_value_x =  131'h6c6caa0e7be79bcff1e02143564f11bf ;
        table_value_y =  131'h4159f8508348d37786e0e46baba14937e ;
      end
      7'b1010111:
      begin
        table_value_x =  131'hf795ec5f148f57728f9ede0aa4773945 ;
        table_value_y =  131'h63a9ee3b13f06bcdbda68ce04e675865f ;
      end
      7'b1011000:
      begin
        table_value_x =  131'h638a6850ca15669fa7001f59f1f55143e ;
        table_value_y =  131'h22c6c305ea2f91898cad9324572a1f94e ;
      end
      7'b1011001:
      begin
        table_value_x =  131'h12474943819484cef147eaf6e06d3944f ;
        table_value_y =  131'h2a6e37d5213b3741e17cc278bcd88df43 ;
      end
      7'b1011010:
      begin
        table_value_x =  131'h55eeb8b5cb9424605016063a48f6a98e1 ;
        table_value_y =  131'h36eda9b2871a2511baed24539d006a749 ;
      end
      7'b1011011:
      begin
        table_value_x =  131'h3808c59767f5c168917fb39ddfb70bed6 ;
        table_value_y =  131'hd60af2860b1b688d5659f6cb9523147e ;
      end
      7'b1011100:
      begin
        table_value_x =  131'h6acab6c71434755fdf1e874cdc1767494 ;
        table_value_y =  131'h2d28b40c7ad15843b7006a12437ad3ea4 ;
      end
      7'b1011101:
      begin
        table_value_x =  131'h1fef310b1eb809178cb3f5fb2176fb88b ;
        table_value_y =  131'hcb4d813db071812f713f481d2e6763ad ;
      end
      7'b1011110:
      begin
        table_value_x =  131'h47db62eb34f7c1fa1e85018b225980f37 ;
        table_value_y =  131'ha451a78dadc1091ca71e8e3a5c1c5697 ;
      end
      7'b1011111:
      begin
        table_value_x =  131'h663cd154cca9d2cc206d5960b708796c4 ;
        table_value_y =  131'h3727b7f0d69ce528e85d095c4c6d955b8 ;
      end
      7'b1100000:
      begin
        table_value_x =  131'h264869b57c464eeb79dd725a078de2f4a ;
        table_value_y =  131'h1328af1661347e2f020e18153abc45497 ;
      end
      7'b1100001:
      begin
        table_value_x =  131'h26bcf8b1eb06496309c8ed893c121ba46 ;
        table_value_y =  131'hecdb5408e44a5b8145af4ff10a4942b0 ;
      end
        default: begin table_value_x = 131'h0; table_value_y = 131'h0; end
      endcase
end
endmodule


