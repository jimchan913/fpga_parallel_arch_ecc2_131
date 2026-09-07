`timescale 1ns / 1ps
module starting_point_coeff_table_2(input wire [6:0]i_reg, output reg [130:0]coeff_c);
always@*
    begin
      case(i_reg)
      7'b0:
        coeff_c = 131'hbdbcebf49229d512996a4bb6f454a7ab;
      7'b1:
        coeff_c = 131'h1417fc6f31cdf4062a8877ff933ca632d;
      7'b10:
        coeff_c = 131'h1bfb214ab03f3d6feb0a2b7c426307f7a;
      7'b11:
        coeff_c = 131'h3a12323122f27eeaf339f216fab60b644;
      7'b100:
        coeff_c = 131'h1daa6491d21e93db294f2f7f7c5ff6f7e;
      7'b101:
        coeff_c = 131'h7800e48b5594b2cd6fd30ea832bf67f5;
      7'b110:
        coeff_c = 131'h21b9fe8f89995d15ef01350fed857a742;
      7'b111:
        coeff_c = 131'hce42526c7024d96c4b9d41d2210be86e;
      7'b1000:
        coeff_c = 131'h716f2818d3ba51be6e1fb780c79a7778;
      7'b1001:
        coeff_c = 131'hb5138a9f095d7e05fdc38a811c1c66c6;
      7'b1010:
        coeff_c = 131'h37dbae64f550fdf2b2cc4689d6098f737;
      7'b1011:
        coeff_c = 131'h337e3b0dab4a8f7670f2e29179f64eac1;
      7'b1100:
        coeff_c = 131'h242192aa027b69a1969389649e259a4b3;
      7'b1101:
        coeff_c = 131'hcd478aa53c32b584c972284fd6eeb1ed;
      7'b1110:
        coeff_c = 131'h77f03dc0b7a9c4b2aca8de4895b70eba;
      7'b1111:
        coeff_c = 131'h3097f7fb5325fc10fb6adb97bccc78518;
      7'b10000:
        coeff_c = 131'h755b6e9196cc065e3dc4202af0ac0c56;
      7'b10001:
        coeff_c = 131'h184485ad5017491c012b7084448eac3f5;
      7'b10010:
        coeff_c = 131'h10643a437412f324a4791461ac19b4688;
      7'b10011:
        coeff_c = 131'h18f58100541f318dbbb3da7d680cc9f41;
      7'b10100:
        coeff_c = 131'h1243016b5d17e54746cd6a53fddcb28f8;
      7'b10101:
        coeff_c = 131'h3ca21add1e1e040f94c4f5424b4f46a99;
      7'b10110:
        coeff_c = 131'h1672b74961e827263284993c2ae84b839;
      7'b10111:
        coeff_c = 131'h1ae1ed7d967ecf2409be2ad48131b32f9;
      7'b11000:
        coeff_c = 131'h1656210fc571f93d65d25ff878eaaf8d6;
      7'b11001:
        coeff_c = 131'h19a527f379fe0347537fbad7403e587be;
      7'b11010:
        coeff_c = 131'h280c9fd49082ab672ec66ab4d9b401c22;
      7'b11011:
        coeff_c = 131'h16ffbc2ddb191a01b8a5986bae6855c80;
      7'b11100:
        coeff_c = 131'h33b4a8a75cc19138f184346592249cca8;
      7'b11101:
        coeff_c = 131'h339d8006a2ac36b38395ac898b7a8587;
      7'b11110:
        coeff_c = 131'h2a928b6788fd63a2876fe6c6b088b3a2f;
      7'b11111:
        coeff_c = 131'h3efcc192fae6c217627ff17da10e4dcac;
      7'b100000:
        coeff_c = 131'h2525eeedcd358268e9fc5ecaf18fd7970;
      7'b100001:
        coeff_c = 131'h244342c53245be1cbb00f267ee5fbde95;
      7'b100010:
        coeff_c = 131'h24c09624fb962d7699d45188df5d5fc6a;
      7'b100011:
        coeff_c = 131'h3ce974457b5eefa5aaece8a59408380e2;
      7'b100100:
        coeff_c = 131'hf6d64484226cb806e63602f8d551b236;
      7'b100101:
        coeff_c = 131'ha1530f80ff45efaf6424ea649092d62a;
      7'b100110:
        coeff_c = 131'h24aa37a4f8996e7ef9e0d186144b62f8a;
      7'b100111:
        coeff_c = 131'h289c6ee222b5b1d5f79fb1c9e543103cd;
      7'b101000:
        coeff_c = 131'h35ca0186f1e1ae9f381398ed6eb51724f;
      7'b101001:
        coeff_c = 131'h17967baeb63b5c637478ed6f60160e5d9;
      7'b101010:
        coeff_c = 131'h18237a548de1cecc677bbc06e59ab56a6;
      7'b101011:
        coeff_c = 131'he79efe5bda0957c094aa784e7d1ee910;
      7'b101100:
        coeff_c = 131'h27d2cb33faf27f54dc24a536157b9d1b2;
      7'b101101:
        coeff_c = 131'h5ba52cf226f71fb95661dac7a6f4834c;
      7'b101110:
        coeff_c = 131'h25a07edcbd9a0cb6abac02d849cdba2e2;
      7'b101111:
        coeff_c = 131'h89cb9533f5090f4e099bec6b5eeb023;
      7'b110000:
        coeff_c = 131'h2ba9253782709f3f5e64adfe068501b0f;
      7'b110001:
        coeff_c = 131'h74eacd93552b9ebdab10281a351e6761;
      7'b110010:
        coeff_c = 131'h1b1b773cbb4b57839eb4d64d10545964b;
      7'b110011:
        coeff_c = 131'h3d842c3ba75f086012a609f8d36c4e42d;
      7'b110100:
        coeff_c = 131'h27fb5889db6748bceff19889516faeb3f;
      7'b110101:
        coeff_c = 131'h50746b1b0fcfb6994731ba53bd35761f;
      7'b110110:
        coeff_c = 131'h9a1d2b4132f4e31442c86965928c76cc;
      7'b110111:
        coeff_c = 131'h11b5c1bbe5bff1d1f6ff729defe339574;
      7'b111000:
        coeff_c = 131'hdaef93492668a210dd197fd6433596ac;
      7'b111001:
        coeff_c = 131'h1d2c8374f918f3c69d74e648e94b5731;
      7'b111010:
        coeff_c = 131'h2d9260cd22016b67cff0089ee34dd679f;
      7'b111011:
        coeff_c = 131'h187f5e11c2540b306e2276223a7e3e66a;
      7'b111100:
        coeff_c = 131'h36117914a3dc00f453f97f1c25f54e59a;
      7'b111101:
        coeff_c = 131'hbb8fcebac1bbed22c15e96e76c7b7294;
      7'b111110:
        coeff_c = 131'h33b80c6f0cdff5f0a7d848644cf09276d;
      7'b111111:
        coeff_c = 131'h29d8fc0ea36c1b54167444c037039ed00;
      7'b1000000:
        coeff_c = 131'h11393aa80df456a2e4c2ceb1392c09146;
      7'b1000001:
        coeff_c = 131'h150e75aaa8d4e4d9fb1fd650865e2390c;
      7'b1000010:
        coeff_c = 131'h3954140fb360b18c34d7a34a9f6ae5753;
      7'b1000011:
        coeff_c = 131'h3b5ea9777526bf91e7d524ecaf46ac3d0;
      7'b1000100:
        coeff_c = 131'h26887f85ba5a65a9c818cb81e6724d898;
      7'b1000101:
        coeff_c = 131'h2dded5ed512d59ba2e4912316bf8a8eb6;
      7'b1000110:
        coeff_c = 131'h247640a20dc865bc340009256ca6da15a;
      7'b1000111:
        coeff_c = 131'h3b0af9e48b8d7ecf70fa697ccbd965510;
      7'b1001000:
        coeff_c = 131'heea76279ef5aa287f9a3661f09bd8649;
      7'b1001001:
        coeff_c = 131'hce73afccec1a71df19dc0bfb1f3641d;
      7'b1001010:
        coeff_c = 131'h12d570009050f03d13cc90a89f07cbfac;
      7'b1001011:
        coeff_c = 131'h2a05b005835030327caca6fcb905d0582;
      7'b1001100:
        coeff_c = 131'hbd0bfe51a09c00317c6f0a2ec174b6b3;
      7'b1001101:
        coeff_c = 131'h3e08cd64af66564369374104db6ad2d7d;
      7'b1001110:
        coeff_c = 131'h32c096f6d425e1a90a7a6e2d56b753032;
      7'b1001111:
        coeff_c = 131'h2737cef640301e234b7eca2d015a36710;
      7'b1010000:
        coeff_c = 131'h1bfe5d770c961ee5dfa28ba066f77b27f;
      7'b1010001:
        coeff_c = 131'h1768e9a6994f8e056f1b06dd0a41c6a2b;
      7'b1010010:
        coeff_c = 131'h2c34bca61b49bea9bac3f523a6fdb3aae;
      7'b1010011:
        coeff_c = 131'h2fdf5574b9b1941c5e4a7e6012be921bc;
      7'b1010100:
        coeff_c = 131'h23fccdb6cfb8d5ae7aa48b70fb03de546;
      7'b1010101:
        coeff_c = 131'h3808724fb25ed53dbbe60b7ca2af5bb58;
      7'b1010110:
        coeff_c = 131'h1403db854bd55407f6c85517a4abc34ca;
      7'b1010111:
        coeff_c = 131'h311928db39b6e614e9b74aea00f037bff;
      7'b1011000:
        coeff_c = 131'h2cd6e7e1cbe3c82517812ccfbaa4de525;
      7'b1011001:
        coeff_c = 131'h93116efad27e51d9560de21716360156;
      7'b1011010:
        coeff_c = 131'h1cf0eceaf08ee104fb12e57caa8bc35e7;
      7'b1011011:
        coeff_c = 131'h19e6b52738e665bad6e12eb967f0072d;
      7'b1011100:
        coeff_c = 131'h2e0e284b9ef19719de86634477c4831a2;
      7'b1011101:
        coeff_c = 131'h38ed037461344245a3a8e85f2e8bd6e2c;
      7'b1011110:
        coeff_c = 131'h3126560d452d1e0c50bb2496c276c7d61;
      7'b1011111:
        coeff_c = 131'ha0b9964edc3230d9a06067cbcdb82fd1;
      7'b1100000:
        coeff_c = 131'h103bbdfa45961604c4fd633d078e79264;
      7'b1100001:
        coeff_c = 131'h3ccb6af5605c7e60c41f6941e38134ddc;
        default: coeff_c = 131'h0;
      endcase
end
endmodule
