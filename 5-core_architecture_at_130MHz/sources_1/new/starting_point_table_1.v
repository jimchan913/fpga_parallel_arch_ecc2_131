`timescale 1ns / 1ps
module starting_point_table_1(input wire [6:0] addr, output reg [130:0] table_value_x, output reg [130:0] table_value_y);
always@*
    begin
      case(addr)
      7'b0:
      begin
        table_value_x =  131'h4ec61752714270a05c3dd98bee8dde063 ;
        table_value_y =  131'h393169a66adb25f1f534cc77bda95dff3 ;
      end
      7'b1:
      begin
        table_value_x =  131'h53349d643f195ef5bd8baf6489c34a6c7 ;
        table_value_y =  131'h17db20fe297a0c42a332059d8d0dded1f ;
      end
      7'b10:
      begin
        table_value_x =  131'h501c7ddae93d7302ac9888e4675896ea5 ;
        table_value_y =  131'h7c2e88fca65d124d40a4900edfd1537e ;
      end
      7'b11:
      begin
        table_value_x =  131'h56f85293cba9528b38aa639430a4d747f ;
        table_value_y =  131'hdbf360c56ff55a68ca32b3052ab768e7 ;
      end
      7'b100:
      begin
        table_value_x =  131'h600275dec561744ee958081634273bf42 ;
        table_value_y =  131'ha2cd41f2b9655d64e518fd308690a7dc ;
      end
      7'b101:
      begin
        table_value_x =  131'h6b422e88b92eacecbddbb253213f36fda ;
        table_value_y =  131'h393fea04a686a8069db43886aad2a4507 ;
      end
      7'b110:
      begin
        table_value_x =  131'h6a83299f29d3bb65ab381c64f8c6f0488 ;
        table_value_y =  131'h2ba34835f4d0e770e44e29482941496e9 ;
      end
      7'b111:
      begin
        table_value_x =  131'h35314a48e759929e33831dfbf44b18e54 ;
        table_value_y =  131'h1c9c9dda8e46b8b2cdf05855150fb5bcf ;
      end
      7'b1000:
      begin
        table_value_x =  131'h45fb9008a90390667db65dd63def83b41 ;
        table_value_y =  131'h195993d58e571e46f33489adb47943715 ;
      end
      7'b1001:
      begin
        table_value_x =  131'h51c043a7f0dabf4062a06e4f18a1c5a4f ;
        table_value_y =  131'h2fd2f952400b7af11b44a12bcd13434af ;
      end
      7'b1010:
      begin
        table_value_x =  131'h4b22b721cde1d8f3cc5014e2c1c61e415 ;
        table_value_y =  131'h1fe61512d53c0125dbe403e020fcf19b0 ;
      end
      7'b1011:
      begin
        table_value_x =  131'hd526c42fe03544c92aae0c165cff5775 ;
        table_value_y =  131'h32711888214a7d391aa11a4c2d43a8356 ;
      end
      7'b1100:
      begin
        table_value_x =  131'h4a862bed26b9b03abf7f0e2dccd1e0a51 ;
        table_value_y =  131'h254ed38b3dbd64bdac538cd72dac05e3a ;
      end
      7'b1101:
      begin
        table_value_x =  131'h4b0b9978e1a76bbab16de9e21bdf6f045 ;
        table_value_y =  131'h3985df3d70d53d90ed3500604dbb76925 ;
      end
      7'b1110:
      begin
        table_value_x =  131'h3047be74e7de97dc4a16e0c7962624faa ;
        table_value_y =  131'h4a5fd3d62786819dd9a6e45a52038e88e ;
      end
      7'b1111:
      begin
        table_value_x =  131'h27bee18ceaaaabfc11d6b18d541861ef4 ;
        table_value_y =  131'h12557ba63c3968bd2ebf7d2bacaa3b857 ;
      end
      7'b10000:
      begin
        table_value_x =  131'h7fec9cb858c2221c3829d8001877021da ;
        table_value_y =  131'h9344e90ecf5665d4413f2ba1f301c205 ;
      end
      7'b10001:
      begin
        table_value_x =  131'h6f6a4d061778443feeaf8c4294b436f7 ;
        table_value_y =  131'h28a05bc8930ef050cedaea6fd84bd8b07 ;
      end
      7'b10010:
      begin
        table_value_x =  131'h7f7a632e0fa035104234080a0ab7e501c ;
        table_value_y =  131'h3a948034b616165ac1774717e0090760d ;
      end
      7'b10011:
      begin
        table_value_x =  131'h6380e6819e9f209363be8dde9c64694d ;
        table_value_y =  131'h794e287da5d6c3cdc6a6ce7e1d756e45e ;
      end
      7'b10100:
      begin
        table_value_x =  131'h5c0d0ff2df4012fdcb77a25cfb3298ef9 ;
        table_value_y =  131'h81c89ba81ac3cd1c413535f5944d3220 ;
      end
      7'b10101:
      begin
        table_value_x =  131'h607af3cc6c805e829296bc64c4d4f56b4 ;
        table_value_y =  131'h353bfdf75c32e797b937ef430da781554 ;
      end
      7'b10110:
      begin
        table_value_x =  131'h5f8b1b509ae7de5099379fda9ad2fe7b9 ;
        table_value_y =  131'h1580ff80e021a5dc902121cae99d34cf5 ;
      end
      7'b10111:
      begin
        table_value_x =  131'h7ce68172f094a0d446216470a37386462 ;
        table_value_y =  131'h1d877f70fdb9813526a65a8ae8cb1c75d ;
      end
      7'b11000:
      begin
        table_value_x =  131'h4637b8a420d7f2180b51965ecca7f4e25 ;
        table_value_y =  131'h33156e1eb55109e0d991b346e18446e78 ;
      end
      7'b11001:
      begin
        table_value_x =  131'h5f8dc59fbf6449f86943d2a8f130aa1b9 ;
        table_value_y =  131'h2b4180744e27e31389dd79309c79cbb60 ;
      end
      7'b11010:
      begin
        table_value_x =  131'h4c6adc4101488c3740d4d1b5894bf4311 ;
        table_value_y =  131'h1da40bd501ae3cd43833219fd7b23cad0 ;
      end
      7'b11011:
      begin
        table_value_x =  131'h4d49ef3da8b200761cbdcb3d57e657b25 ;
        table_value_y =  131'h82e1035673a21928fe12a42ac74630ed ;
      end
      7'b11100:
      begin
        table_value_x =  131'h7e807e8ae4e2589d7a46e85124e7aaca0 ;
        table_value_y =  131'h1ab2c6a27c6765f0a607562d8f156f60b ;
      end
      7'b11101:
      begin
        table_value_x =  131'h4c7f9d89181c722047fa03fc92d78f625 ;
        table_value_y =  131'h6afe06b0a2e782fec0c659ce61810b51 ;
      end
      7'b11110:
      begin
        table_value_x =  131'he69d8d18b2b5ef2818bb2b2dec52727f ;
        table_value_y =  131'h3841381b4d86d240fd1d448ddd36a906 ;
      end
      7'b11111:
      begin
        table_value_x =  131'h444db9cca10f82d065b0adfdba2ab8ebf ;
        table_value_y =  131'h1af5647137804ea15914bb4f0f3c4cb7f ;
      end
      7'b100000:
      begin
        table_value_x =  131'h6e1aad8ec3f19810ece672c21cef26880 ;
        table_value_y =  131'h1c38b702df419197c5316986614c018de ;
      end
      7'b100001:
      begin
        table_value_x =  131'h5c40e12de6049eb28e70c09b6d7485e9 ;
        table_value_y =  131'h4aabdfef7446bf320ab45a0f9987fe8c8 ;
      end
      7'b100010:
      begin
        table_value_x =  131'h14a6ac086e0913e9d2f2df27f5b9d929b ;
        table_value_y =  131'h7a8705a0a31af4133d953a4794e6e26d ;
      end
      7'b100011:
      begin
        table_value_x =  131'h2e6ec4c4dbd7c6db1f57a4e28946d49da ;
        table_value_y =  131'h57a03b658bf360cdf9ed31926335d53de ;
      end
      7'b100100:
      begin
        table_value_x =  131'h1fed55d0e3bbeea2c27ae1cf39c03bed3 ;
        table_value_y =  131'h45132e74077345e33d5651d160dd532d0 ;
      end
      7'b100101:
      begin
        table_value_x =  131'h321212c2269cb1ccd7e4c556451614f0a ;
        table_value_y =  131'hd7aa08a53a32e3a69d5220e4a2ad9537 ;
      end
      7'b100110:
      begin
        table_value_x =  131'h1ef674e3c32e330b8d3ff6917b015c2c3 ;
        table_value_y =  131'h45dfb14f2a7d2e143bbb2bd46c70bb6ba ;
      end
      7'b100111:
      begin
        table_value_x =  131'h1d51da2ae2f948cd5601ac0a63bb48d49 ;
        table_value_y =  131'h2f194ccc7a3d3423d7e9ff06b3bea6d59 ;
      end
      7'b101000:
      begin
        table_value_x =  131'had3c7cd75ffd896f8f38e1875cd0456b ;
        table_value_y =  131'h66ebed1f95977e0c7e67ed7b513a25e00 ;
      end
      7'b101001:
      begin
        table_value_x =  131'h313a46dd4ad26b8ba48043fafe3080864 ;
        table_value_y =  131'h11bfc565cb2222b031921245355eff456 ;
      end
      7'b101010:
      begin
        table_value_x =  131'h2e9e9392addbb8caaf16526b0d5408138 ;
        table_value_y =  131'hcea8f1073a5af6fe39ddd6652130584f ;
      end
      7'b101011:
      begin
        table_value_x =  131'h2e16a6b449f57168f2ebdd6723575a4ce ;
        table_value_y =  131'h32ad69a82cdcf3aa60d8dc41e4959015 ;
      end
      7'b101100:
      begin
        table_value_x =  131'h2a5ebaeff9b2dd80775a65019dbdbbe20 ;
        table_value_y =  131'h5676b9e2f3e3722aa43a1dfe4e6446eb2 ;
      end
      7'b101101:
      begin
        table_value_x =  131'h48c728701ca9ed05f708640fa5c092091 ;
        table_value_y =  131'h35fe9351245911851f73a6b829f153e3f ;
      end
      7'b101110:
      begin
        table_value_x =  131'h59b9b929a5f91d73a70554647308c481d ;
        table_value_y =  131'h2c77acfd19e16aefa88bcd83e3ebac104 ;
      end
      7'b101111:
      begin
        table_value_x =  131'h783803dff6f06dd85900a3074b6cbf79c ;
        table_value_y =  131'hcae5ea2cd3ab353473b6d397d03f8714 ;
      end
      7'b110000:
      begin
        table_value_x =  131'h2f58c89c7523f0233ca745397b5e3bee8 ;
        table_value_y =  131'h1af67b16afb0e9c7980090db674429260 ;
      end
      7'b110001:
      begin
        table_value_x =  131'h724fe855966189f4a20ba315a95c15ef8 ;
        table_value_y =  131'h190cac604151c9beb21a36c8550b52981 ;
      end
      7'b110010:
      begin
        table_value_x =  131'h42f8a0e5c8b979ef5228568a5e1f2fb9d ;
        table_value_y =  131'h2a88d594cae7f4ac7b0a7240eeb732980 ;
      end
      7'b110011:
      begin
        table_value_x =  131'h2b5338d0fe5d824ecf56755723dad5dba ;
        table_value_y =  131'h47912d7665d57e0452680c6ba7b2328f1 ;
      end
      7'b110100:
      begin
        table_value_x =  131'h15f67d66c8c61205d8e4ce62bdd03555d ;
        table_value_y =  131'h49f83d9d14b36b47ae38a1604997825f1 ;
      end
      7'b110101:
      begin
        table_value_x =  131'h2379b9981bb694a473bf5e52721d90ba6 ;
        table_value_y =  131'h43bdc394854a15e376545b37cb161385 ;
      end
      7'b110110:
      begin
        table_value_x =  131'h28c529ae9fcda16ad6d1bf0221e5963cc ;
        table_value_y =  131'h1f3c8251ae0dadb34dec9c61f69cd61f6 ;
      end
      7'b110111:
      begin
        table_value_x =  131'h6bfb49c930fd9965376177e95a7533e2c ;
        table_value_y =  131'h294669da450c6a8792569da1db163615 ;
      end
      7'b111000:
      begin
        table_value_x =  131'h35dd13544762bc9369532fe032ec20898 ;
        table_value_y =  131'hf87b6d9187c6ca5d009b6ed5b453c001 ;
      end
      7'b111001:
      begin
        table_value_x =  131'h501cff09870847b52a5bee0beda6cd52d ;
        table_value_y =  131'h386c00a9b90058d53df89195cab909b73 ;
      end
      7'b111010:
      begin
        table_value_x =  131'h3cefcadd0404ac7098ef977bd95e97f72 ;
        table_value_y =  131'h4d12b47caaca824e01fab243f81213804 ;
      end
      7'b111011:
      begin
        table_value_x =  131'h7b136d41a97df39f6ac22678c79bf9df8 ;
        table_value_y =  131'h34ae2ec49c1b74ac7d47f5dfc306d7956 ;
      end
      7'b111100:
      begin
        table_value_x =  131'h2ec67e70c4f82952fa8aef351dffbb64c ;
        table_value_y =  131'h11b0cf89696dcf7359bf5f4086e782d05 ;
      end
      7'b111101:
      begin
        table_value_x =  131'h2f0674cdff53b7ff509728dc5f2562a9 ;
        table_value_y =  131'h11677b93c64f8e67eae06d050b22a8e ;
      end
      7'b111110:
      begin
        table_value_x =  131'h66f4d67fac2975f2e6ee946acae1e6f24 ;
        table_value_y =  131'h2a7db44878056d32f5dfc1c5e27190edf ;
      end
      7'b111111:
      begin
        table_value_x =  131'h6e81b12a6504bfa55fb721326c4889b96 ;
        table_value_y =  131'h26ef3781f9495b385da18b23bf38d5ce1 ;
      end
      7'b1000000:
      begin
        table_value_x =  131'h1d763eb44d385174e9ce32e381fe54459 ;
        table_value_y =  131'h2e61f0f27e2c22b23745963e973cf6802 ;
      end
      7'b1000001:
      begin
        table_value_x =  131'h433cbae51f25148ba6bc00829e2493123 ;
        table_value_y =  131'h298f3147e968efb1d8bf99c9821a91d98 ;
      end
      7'b1000010:
      begin
        table_value_x =  131'h169edffa34793c3d4ed9a9f8982b13237 ;
        table_value_y =  131'h2c9c115745b5927872774f70aa1c886c3 ;
      end
      7'b1000011:
      begin
        table_value_x =  131'h11512635a9e0b7863bcda6451cbd93547 ;
        table_value_y =  131'h69ee3ee3f4b979791c92bb0ce15a4aea6 ;
      end
      7'b1000100:
      begin
        table_value_x =  131'h84d761c560103649fcf3087236572c29 ;
        table_value_y =  131'h23a4171b397af7ddf9a979f9ef6bdf47b ;
      end
      7'b1000101:
      begin
        table_value_x =  131'h6f670d83c9989d4f8bfa54f3a5cb65192 ;
        table_value_y =  131'h663a9d282ce95c9d1b470ffd74d63af5 ;
      end
      7'b1000110:
      begin
        table_value_x =  131'h3109eb36c74f90e59f0791b1441eb2bfe ;
        table_value_y =  131'h4b1124917408bd05ccbd34f3d6db6af25 ;
      end
      7'b1000111:
      begin
        table_value_x =  131'h1eab9305cffa250ee29e08ab464124573 ;
        table_value_y =  131'h69315339f585a6dc33e28fbd696c80eca ;
      end
      7'b1001000:
      begin
        table_value_x =  131'h2ec421fc8a20cc9c450370054c3af1442 ;
        table_value_y =  131'h44b2a867825302c5c286a898c83006c27 ;
      end
      7'b1001001:
      begin
        table_value_x =  131'h36c37f5b2c791cecc8eccb84d575f2390 ;
        table_value_y =  131'h14721827ba96b00586e8a3bf5da2f33bf ;
      end
      7'b1001010:
      begin
        table_value_x =  131'h1bab8cc54e2580ce6ae05ee3a2c1ddf09 ;
        table_value_y =  131'hc138212821d296cb8886758c9d32850 ;
      end
      7'b1001011:
      begin
        table_value_x =  131'h54fdc7fe6b429982a75bfa9df6660fc87 ;
        table_value_y =  131'h37221317787c325e6b288a27de368a1cd ;
      end
      7'b1001100:
      begin
        table_value_x =  131'hc28ba08093f184adb03642135590f16d ;
        table_value_y =  131'h42b706e3137786b8ab7faaedfeca32439 ;
      end
      7'b1001101:
      begin
        table_value_x =  131'h6fffe3c4b6a181b725be314db2cea845e ;
        table_value_y =  131'h2bd0003e84905836f57e58f733cb8f2ee ;
      end
      7'b1001110:
      begin
        table_value_x =  131'h52a5ceaa4db1810138757e2adbe2d71c3 ;
        table_value_y =  131'h198bba92c0193e866f4c82a78b790382f ;
      end
      7'b1001111:
      begin
        table_value_x =  131'h5935184b64eefb4556d5875494a5fdcb7 ;
        table_value_y =  131'h3e6741a3545c96ea42e748115970f6468 ;
      end
      7'b1010000:
      begin
        table_value_x =  131'h14ab4bacff56c634f08f45017ff37743b ;
        table_value_y =  131'h60aad037106ebba60e789ca79a65ac930 ;
      end
      7'b1010001:
      begin
        table_value_x =  131'h1fa38273f371ee278cfbe92cac38508a5 ;
        table_value_y =  131'h25d3b3ac04131bc8f6183e7ad7384b859 ;
      end
      7'b1010010:
      begin
        table_value_x =  131'h5d3a3c007c1648be40b4894a1ea4b5283 ;
        table_value_y =  131'h9aa7e0d863bf7e7827c7e0be49f43cb ;
      end
      7'b1010011:
      begin
        table_value_x =  131'hf017d1dc0e2fcfbd442430824d38c1d ;
        table_value_y =  131'h475ec6ee4164dce8794b292fc12d3cdfd ;
      end
      7'b1010100:
      begin
        table_value_x =  131'h24ab925c5224a2da0fa37bd10db895b34 ;
        table_value_y =  131'h5e30d217d43fd4a61d377be6bf6efc1ab ;
      end
      7'b1010101:
      begin
        table_value_x =  131'h37de32978588ffd9fb2fff9ebedf7322e ;
        table_value_y =  131'h5993b9f1e1e83f69b2eaa2d05a5874d6d ;
      end
      7'b1010110:
      begin
        table_value_x =  131'hd59d09d3a8a8b79c0be3b4b84b27c567 ;
        table_value_y =  131'h30e23f7fa13ebec233e9154c029967293 ;
      end
      7'b1010111:
      begin
        table_value_x =  131'h1384a6e98587d5c070eab79ab3f7746b1 ;
        table_value_y =  131'h6986f1ca727f445819684e839b4fb313d ;
      end
      7'b1011000:
      begin
        table_value_x =  131'h1f5df66b8ebf62f65f6061fba40cb85c7 ;
        table_value_y =  131'h27cafe56c0a76d285760be7a648b18851 ;
      end
      7'b1011001:
      begin
        table_value_x =  131'h7c21cf09fd73fba53998304fa7f1ce68e ;
        table_value_y =  131'h1ddb716b47ec3f2f378e4d5059865ee1c ;
      end
      7'b1011010:
      begin
        table_value_x =  131'h78dea3fb866b464d3c183954b445ea3b ;
        table_value_y =  131'h4270c12f0a74727472f1c7064022c219b ;
      end
      7'b1011011:
      begin
        table_value_x =  131'h1afd837f47baf2799b2934a896a22a4a9 ;
        table_value_y =  131'h485df56aebd7cb30df70a37aea7accb08 ;
      end
      7'b1011100:
      begin
        table_value_x =  131'h3240eac228cc6ea78623f7eecee7ea61a ;
        table_value_y =  131'h573d29e9b7b506f215f24da9d26a9aa04 ;
      end
      7'b1011101:
      begin
        table_value_x =  131'h52fa0fedf4888df1047d2617ff0c2a873 ;
        table_value_y =  131'h38d1601e7493cd6e0f180e5d117ffa2e ;
      end
      7'b1011110:
      begin
        table_value_x =  131'h11731b31620206fdfd1e121af44a3a74d ;
        table_value_y =  131'h666ac43b156513ce283b66f7c657fe1d8 ;
      end
      7'b1011111:
      begin
        table_value_x =  131'h53ca5c624e342cff8719de7db06f6cb21 ;
        table_value_y =  131'h1f35a7996c463e0a811c084084848f67 ;
      end
      7'b1100000:
      begin
        table_value_x =  131'h48a7366965e19916d9f454773ce8020f3 ;
        table_value_y =  131'h3408aa555045db1e3e5ca045515b07d55 ;
      end
      7'b1100001:
      begin
        table_value_x =  131'h5bf61d5df317978353f53be1f43cc9bf ;
        table_value_y =  131'h2b6c7bde0e1066d3c11117f346f082850 ;
      end
        default: begin table_value_x = 131'h0; table_value_y = 131'h0; end
      endcase
end
endmodule


