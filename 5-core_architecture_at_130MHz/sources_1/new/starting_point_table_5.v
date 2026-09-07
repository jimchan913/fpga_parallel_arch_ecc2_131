`timescale 1ns / 1ps
module starting_point_table_5(input wire [6:0] addr, output reg [130:0] table_value_x, output reg [130:0] table_value_y);
always@*
    begin
      case(addr)
      7'b0:
      begin
        table_value_x =  131'h70987cb3ddd4d49c78f1c414bd09917de ;
        table_value_y =  131'h33d6b2da7e7e65c3970151d288f24dc74 ;
      end
      7'b1:
      begin
        table_value_x =  131'h3496a72906a2e875b39ef6d52ea0a09f ;
        table_value_y =  131'h65b47e88cd7334a288b6a5768134d5db8 ;
      end
      7'b10:
      begin
        table_value_x =  131'h55fb94dc1a45337ffff25ff440222ef37 ;
        table_value_y =  131'h4cb68d494e28324b5bceecf51c92668d ;
      end
      7'b11:
      begin
        table_value_x =  131'h2cda2065bb01a86851098e491da3fc26e ;
        table_value_y =  131'h431b6b82b7bcf5e6b9ddc8bd25d3ab632 ;
      end
      7'b100:
      begin
        table_value_x =  131'h1a0248116fcf5560d51172fe87ff48049 ;
        table_value_y =  131'h261c8a1792dea3259863ebc9390e01739 ;
      end
      7'b101:
      begin
        table_value_x =  131'h2dc8a5d89c38eed10aa686f65014e677a ;
        table_value_y =  131'h5267c890fbf6da39b53a43fff0a2d8eda ;
      end
      7'b110:
      begin
        table_value_x =  131'h28a4f110baa79323e1e4e27edff530df8 ;
        table_value_y =  131'h19485773626804021b5b136eca549d3f8 ;
      end
      7'b111:
      begin
        table_value_x =  131'h12c1d04fcc7f7f9bfae1a9503763553b ;
        table_value_y =  131'h620718a2035a2569176da28805f43224 ;
      end
      7'b1000:
      begin
        table_value_x =  131'h32c901f6cfdf4f82445ce028a15ec14c0 ;
        table_value_y =  131'ha17f8b3677bd34d7a08105f69540a89 ;
      end
      7'b1001:
      begin
        table_value_x =  131'h52d01dfefe07532b0876cbc1bc12b2323 ;
        table_value_y =  131'h20081a711e1243dbed45ac85669c02c91 ;
      end
      7'b1010:
      begin
        table_value_x =  131'h793b82a41ac58104f455224336314a50c ;
        table_value_y =  131'h3b57dadea3fb3b7642786faa766df488f ;
      end
      7'b1011:
      begin
        table_value_x =  131'h1b7a70bb4b2ab4bd55d1b9addacfe211 ;
        table_value_y =  131'h748a2b09b510828ac9930cb7a0aa543e5 ;
      end
      7'b1100:
      begin
        table_value_x =  131'h7ef00091261b028198311bb5b0ddf15b0 ;
        table_value_y =  131'h15ad8796d5f16df991ee872ab9946c3fb ;
      end
      7'b1101:
      begin
        table_value_x =  131'h3bc95c7612cc82fefb878cd63086edc08 ;
        table_value_y =  131'h462c27c24614a10340708774a27fbbfe0 ;
      end
      7'b1110:
      begin
        table_value_x =  131'h2a496f1ccf1154041bdea30dec1b11bd4 ;
        table_value_y =  131'h43dbcbf536dda03b677f6097480f268d6 ;
      end
      7'b1111:
      begin
        table_value_x =  131'h524b100c6770b2740d4ef7a194cc86b7 ;
        table_value_y =  131'h59e60b1327f6821458c5645182a88f8ed ;
      end
      7'b10000:
      begin
        table_value_x =  131'h2a4d85f3721ff43f817bcc51bde30502e ;
        table_value_y =  131'h58d26cfa50c4ec76812ef0addf6393cac ;
      end
      7'b10001:
      begin
        table_value_x =  131'h7689045ddb1dc9330663a0768d6e8eae8 ;
        table_value_y =  131'h1ba4655b23444442d40d14a097d70828e ;
      end
      7'b10010:
      begin
        table_value_x =  131'h2889c8179e27cc855c58764449ffaeeb ;
        table_value_y =  131'h319428d787fb246821f1d17afe085daa6 ;
      end
      7'b10011:
      begin
        table_value_x =  131'h7cde1740cf7d30edf20ced22b40894f9 ;
        table_value_y =  131'h13de54b6e75f454515de17be9e2de320e ;
      end
      7'b10100:
      begin
        table_value_x =  131'h169767364f0aa811bcd0f492ee6daa671 ;
        table_value_y =  131'h246759861983c8b2216281c7317e5d35b ;
      end
      7'b10101:
      begin
        table_value_x =  131'h51363c7714eff8ad2af82db683b54564d ;
        table_value_y =  131'h577422d8f13a712f572ab141f5045122 ;
      end
      7'b10110:
      begin
        table_value_x =  131'h1904361102f4c1a88055341fb7d725ceb ;
        table_value_y =  131'h21dc781be8837b66be87b73256627f9d6 ;
      end
      7'b10111:
      begin
        table_value_x =  131'h69e569f7dabcaff4a0e04e274029168ca ;
        table_value_y =  131'h115518d0fd29c34daa127dfaeda36c0a4 ;
      end
      7'b11000:
      begin
        table_value_x =  131'h7d728b4ae2c45583903782c087791d3cc ;
        table_value_y =  131'h11e7d518faa35572b9b13c6bb47b3e19a ;
      end
      7'b11001:
      begin
        table_value_x =  131'h2d63357329f06644e4a803ec490774630 ;
        table_value_y =  131'h1503b63b7d1fd747433ea7c2e2ed37086 ;
      end
      7'b11010:
      begin
        table_value_x =  131'h2e60a3f5cbc280be08d76a15ac57c4b9e ;
        table_value_y =  131'h55d3b38504e86b1d06653ed71b539e710 ;
      end
      7'b11011:
      begin
        table_value_x =  131'h61b3c09ad027240f2d1a50ded38369d2c ;
        table_value_y =  131'h1889d0904476a7f4b1f670aca19c5f6c9 ;
      end
      7'b11100:
      begin
        table_value_x =  131'h10d2c9ac981a791e01e99666a5f48ee19 ;
        table_value_y =  131'h490a7ccc8fb116e3383c9001920013d3b ;
      end
      7'b11101:
      begin
        table_value_x =  131'h2fc31230b02e14ca9f985eabdefb74058 ;
        table_value_y =  131'h40d0a5643bec4ccde9214af9087ea8c92 ;
      end
      7'b11110:
      begin
        table_value_x =  131'h60516760eb39de27641f3b9220cadfd52 ;
        table_value_y =  131'h3d30204c135250e7a1c1e462f4ddbd2dc ;
      end
      7'b11111:
      begin
        table_value_x =  131'h108c09ff35fb580c9f7f1c20e5be5174d ;
        table_value_y =  131'h4b49ef017c1f096660855550fc94908f5 ;
      end
      7'b100000:
      begin
        table_value_x =  131'h5d7fee3428e1f37998b3c71aea18c6879 ;
        table_value_y =  131'h344181eeaf9e6ef2fa407d5a3ac52d868 ;
      end
      7'b100001:
      begin
        table_value_x =  131'h47b7bfab6d97586f237148cb4895167b3 ;
        table_value_y =  131'h840044c4d23dc8a869609e2e7d752f93 ;
      end
      7'b100010:
      begin
        table_value_x =  131'h68b26ce3acffa5deff065e57d191f89b8 ;
        table_value_y =  131'h19bfc3f1902220d538ea24d23d0503af2 ;
      end
      7'b100011:
      begin
        table_value_x =  131'h7ea170ca4c770c47afb1b2ccfcc6f50c8 ;
        table_value_y =  131'h116129dec0abd361923a57afb74580b2a ;
      end
      7'b100100:
      begin
        table_value_x =  131'h16da5f144c7e15fa93dc5824322d06995 ;
        table_value_y =  131'h4f28e92af9c6ce4e2c5df03228ae1c197 ;
      end
      7'b100101:
      begin
        table_value_x =  131'h5657840dcba9d01fcac4f81ba38b0179 ;
        table_value_y =  131'h78a27109bd2fe38f08aaa4c334ecbca36 ;
      end
      7'b100110:
      begin
        table_value_x =  131'h1f03a79ab201014ef90f0d2b0af6196a3 ;
        table_value_y =  131'h2b302f94a368e341f755aa6af4279599e ;
      end
      7'b100111:
      begin
        table_value_x =  131'h3dcb258ba233cc26fb3a71bf4c22592a2 ;
        table_value_y =  131'h556e6f31f032f037c5fdf89439be60721 ;
      end
      7'b101000:
      begin
        table_value_x =  131'h4c41ccb7d1b4ed91bfb616044e70d5bd1 ;
        table_value_y =  131'h20ef511d3b830d28cdff577418f6a8451 ;
      end
      7'b101001:
      begin
        table_value_x =  131'h2e855599c8e6fca92f98fdd81f5b05796 ;
        table_value_y =  131'h121bbfbf4b2436d5ffa9160cdb619732 ;
      end
      7'b101010:
      begin
        table_value_x =  131'h7ff92bc53efb4e75c4755b8c82d5599fa ;
        table_value_y =  131'hca8e7386fa644ff4b1c1ae764fe0be2a ;
      end
      7'b101011:
      begin
        table_value_x =  131'h5f7f81d70bd9ee4b55e8f487a368256eb ;
        table_value_y =  131'h3d80012bc8a4166b278ca79b54dc4f232 ;
      end
      7'b101100:
      begin
        table_value_x =  131'h13e7d73e3c2b783eabad42df1cb625273 ;
        table_value_y =  131'h4ef2864f8909c3c3f692b85b8b9bce3fc ;
      end
      7'b101101:
      begin
        table_value_x =  131'h1a94f4667c9c0ee0149e9d6e65db42821 ;
        table_value_y =  131'h4837ff7e1ed0c8d8565fc20d2875b54cd ;
      end
      7'b101110:
      begin
        table_value_x =  131'h62c1e84e97d58314c13b8ff840f15aa32 ;
        table_value_y =  131'h2b78af57e3ea2f0ef82db26db222ee610 ;
      end
      7'b101111:
      begin
        table_value_x =  131'h6100627c526b0c3efda173adac97f0e3 ;
        table_value_y =  131'h18ab914648bbfb9100df793c763a7c8c1 ;
      end
      7'b110000:
      begin
        table_value_x =  131'h71934b035900a8d7da8e63b03099ffeb8 ;
        table_value_y =  131'h364b77adb171752cd2b2d2c4d39f7ae51 ;
      end
      7'b110001:
      begin
        table_value_x =  131'h462e18ee82ba29978c131d963732bcf01 ;
        table_value_y =  131'h2cfe81c174916e1e5fab8831a769e21c5 ;
      end
      7'b110010:
      begin
        table_value_x =  131'h60847e944da1f83e067b30b58429dc7aa ;
        table_value_y =  131'h3991e6de02a93eed67822192b4488e015 ;
      end
      7'b110011:
      begin
        table_value_x =  131'h20fa512fb7a75f2520b3f9d16dc788618 ;
        table_value_y =  131'h44b8fa23247adb0c35fe257226c01b9bf ;
      end
      7'b110100:
      begin
        table_value_x =  131'h70f28e361899f67a1195392323d02ebd8 ;
        table_value_y =  131'h3b222ba6b19bee9da5ceccd32069f5b5f ;
      end
      7'b110101:
      begin
        table_value_x =  131'h258e17f18b3830121964512d13667d264 ;
        table_value_y =  131'h1d83605abaf3e6eeb578bd7721ad18b9 ;
      end
      7'b110110:
      begin
        table_value_x =  131'h77e7549d70b2f297b922b3f2854c58196 ;
        table_value_y =  131'h11ecec37ab77d93eb88c844745bdf141f ;
      end
      7'b110111:
      begin
        table_value_x =  131'h6b52f6742cebcba1c64bcf45f87bdc420 ;
        table_value_y =  131'h5180fe8e4ed8fc4c9e3433109aaab44f ;
      end
      7'b111000:
      begin
        table_value_x =  131'h73c4159342359ce5f294b4c2ed7b25054 ;
        table_value_y =  131'h3ccfd5f69207b880f9094c2121099ca81 ;
      end
      7'b111001:
      begin
        table_value_x =  131'h5b71ac7995ce44315c511acf96eeea3e5 ;
        table_value_y =  131'h39d5985ab8d8dcf200810c5c8791d025d ;
      end
      7'b111010:
      begin
        table_value_x =  131'h67d7f1f54635cdb41a699a470930aa5a6 ;
        table_value_y =  131'h3592bf6efb48a2d13740579a8179246a4 ;
      end
      7'b111011:
      begin
        table_value_x =  131'h7ce52d35eda21f820b84793ec5a77380a ;
        table_value_y =  131'h26e62713d72e8fb19dc87eab09305aee ;
      end
      7'b111100:
      begin
        table_value_x =  131'h3f4610ebbf06aadfa18722af643b102ee ;
        table_value_y =  131'h5abb09e539085a2cc528223aa44009473 ;
      end
      7'b111101:
      begin
        table_value_x =  131'h23e09f3130a5608fc9fb81727c1e62c00 ;
        table_value_y =  131'h4477e2b35ba706658814bb377c3fdefcc ;
      end
      7'b111110:
      begin
        table_value_x =  131'h25152c46aa3a9beaa2326e8b2c2de7850 ;
        table_value_y =  131'h1a12c68e769ac1368d4768439914c8eef ;
      end
      7'b111111:
      begin
        table_value_x =  131'h6a5ce6230fd9cef4607911f0d9c86fc9e ;
        table_value_y =  131'h3f65b13dc7bc82af0be2bd535a35ffdbf ;
      end
      7'b1000000:
      begin
        table_value_x =  131'h7f44b1f8ca35b5bd61439e521e5400040 ;
        table_value_y =  131'h2862f975db43baecb8768a19734c0f089 ;
      end
      7'b1000001:
      begin
        table_value_x =  131'h7159675ac84a55e5bd8b6445fd02aaa10 ;
        table_value_y =  131'h39c04539e59b7c6f25339c2b14e977d43 ;
      end
      7'b1000010:
      begin
        table_value_x =  131'h48e6caa8dfaa6684b55e0304588351285 ;
        table_value_y =  131'h316e5490490ca56f868f7825b4742d6a0 ;
      end
      7'b1000011:
      begin
        table_value_x =  131'h10a990ab5b195976227bd281d22c5d4ad ;
        table_value_y =  131'h2b0025deeaadb7d4ec6fbf4c37428e38f ;
      end
      7'b1000100:
      begin
        table_value_x =  131'h284fbdb0ccf5f74332aac58ea9d962878 ;
        table_value_y =  131'h49deef21320bbd9bd5da2cc9ed4bbbae5 ;
      end
      7'b1000101:
      begin
        table_value_x =  131'h5c8726fe5843a3176b59d76eff0441d71 ;
        table_value_y =  131'hac447a9d50e63033f70ec0392274f97e ;
      end
      7'b1000110:
      begin
        table_value_x =  131'hc09c79a3b9fdb30b3cd6b4848678c051 ;
        table_value_y =  131'h709896e60a9858fdea4c2f2a403add9de ;
      end
      7'b1000111:
      begin
        table_value_x =  131'h1a3c2064b7fb181da84230b9ba362625f ;
        table_value_y =  131'hc3323dd519d467b6e1a9728b70e97282 ;
      end
      7'b1001000:
      begin
        table_value_x =  131'h259ce4a4428cfcfc03725d75ecb37c4fe ;
        table_value_y =  131'h54c812c16722387c09d3db767d06a62bc ;
      end
      7'b1001001:
      begin
        table_value_x =  131'h603bb50714b36e89c1d27493584d25874 ;
        table_value_y =  131'h2c564e933c7b19acaa510195b05bbb650 ;
      end
      7'b1001010:
      begin
        table_value_x =  131'h790bc92ca0d4be4b9a4deecdd864f36ea ;
        table_value_y =  131'h17ba878826916e9208975508fbbaa8e75 ;
      end
      7'b1001011:
      begin
        table_value_x =  131'h5580ae58839d10f2c52efbc4fbfc2067d ;
        table_value_y =  131'h30673fa10e3e095ead3ac46af34f7a165 ;
      end
      7'b1001100:
      begin
        table_value_x =  131'h524b87c49fa3ccd012af856c80cece48f ;
        table_value_y =  131'h3dc6cff7dc8ce66bf75a2c820471f638 ;
      end
      7'b1001101:
      begin
        table_value_x =  131'h32789ba8e3b6cee1540639a03c263b922 ;
        table_value_y =  131'h9a482a58fe6b068e6aa08969b2a6e9b8 ;
      end
      7'b1001110:
      begin
        table_value_x =  131'h4dfcada3f292fa6bcd80e7f8798f815b7 ;
        table_value_y =  131'h26c014b2481caf7aa05d557ad60f8c359 ;
      end
      7'b1001111:
      begin
        table_value_x =  131'h259ed8c34bfcf9f70bba90e786081124e ;
        table_value_y =  131'h1492e52317ae84931c2e8bf5a6fff7cd ;
      end
      7'b1010000:
      begin
        table_value_x =  131'h5875c55c2bbb128a6f7ab45edaf07440d ;
        table_value_y =  131'hf59c75e83e27c960f6c873c37169993b ;
      end
      7'b1010001:
      begin
        table_value_x =  131'h1ada151dbe66f88ca1ff4c6ee167ecfc9 ;
        table_value_y =  131'h408fe7039be7fdcff84c12f89f2c58aaf ;
      end
      7'b1010010:
      begin
        table_value_x =  131'h15f446a1275156490a23d972f4ce2c803 ;
        table_value_y =  131'h5a469921521c3829613abada699bf8ce ;
      end
      7'b1010011:
      begin
        table_value_x =  131'h681ed623da3f1546d35c43431f1146cf0 ;
        table_value_y =  131'hf0dbf120a25e975864003c505f2667a8 ;
      end
      7'b1010100:
      begin
        table_value_x =  131'h27ddb40b89c7f298b33d754de0fca1f96 ;
        table_value_y =  131'h4a5fc335ff3534920f62373e97fb00f73 ;
      end
      7'b1010101:
      begin
        table_value_x =  131'h9f2868cf907a36bf70f10c93d399c799 ;
        table_value_y =  131'h21057b60e09c53cb85dcae6d8b1e84e93 ;
      end
      7'b1010110:
      begin
        table_value_x =  131'h164ab10444c541f54dfcdfb7e39feb775 ;
        table_value_y =  131'h6c2a520ae0b8252b6c65a461e45ac2bb9 ;
      end
      7'b1010111:
      begin
        table_value_x =  131'h765d89cecdea746777f89af56f24825a8 ;
        table_value_y =  131'h1b5670c303aa3c159a0f2f2557d87108b ;
      end
      7'b1011000:
      begin
        table_value_x =  131'hcda79a0fd2b5d56ee05ed2bb94f631b ;
        table_value_y =  131'h1469544b4e5e02009bf4de9a8d54a9acb ;
      end
      7'b1011001:
      begin
        table_value_x =  131'h4f1b8a8fbd67b9fa110b2677f2c64900b ;
        table_value_y =  131'h106cb234f2069d371bd259c5c4d39da73 ;
      end
      7'b1011010:
      begin
        table_value_x =  131'h3f53a99b508dfca00040b6825c958f720 ;
        table_value_y =  131'h1d04367cfcf071e454016f85af8e3c1b8 ;
      end
      7'b1011011:
      begin
        table_value_x =  131'h5df5007fcc721347b44641c7fa8aaec9f ;
        table_value_y =  131'h2258336c69a2d189e6238ef8b97ff0e4f ;
      end
      7'b1011100:
      begin
        table_value_x =  131'h7229dac70fe47b29f49ccca1e2f2f2356 ;
        table_value_y =  131'h2af49e777cdfed5a6c3bd7e62373a8d67 ;
      end
      7'b1011101:
      begin
        table_value_x =  131'h6c4f476d81a3b4cdbd01c0246b278bcce ;
        table_value_y =  131'h11d060fe30f8b0911eb94c959b475e6db ;
      end
      7'b1011110:
      begin
        table_value_x =  131'h77bfb445febdcc28d5bc4ff022712d5dc ;
        table_value_y =  131'h21f2085c8656f3acacf25ae94d1a89a1c ;
      end
      7'b1011111:
      begin
        table_value_x =  131'h23cb8de78fa98093ac13944f876773866 ;
        table_value_y =  131'h5460da70c116c7c46fc3fcb13abba5275 ;
      end
      7'b1100000:
      begin
        table_value_x =  131'h62023ad50b641b3280c24f929ba0612b8 ;
        table_value_y =  131'h1ba9e974baaa353370728d05e9806c1dc ;
      end
      7'b1100001:
      begin
        table_value_x =  131'h4eb4ccb2e289162dfd9a7f0877282f195 ;
        table_value_y =  131'h27e857baa97253a1b267f2bfb5b4f9799 ;
      end
        default: begin table_value_x = 131'h0; table_value_y = 131'h0; end
      endcase
end
endmodule


