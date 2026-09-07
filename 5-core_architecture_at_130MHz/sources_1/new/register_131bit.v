`timescale 1ns / 1ps

module register_131bit(input wire clk, input wire rst_n, input wire en, input [130:0] d, output reg [130:0] q);

    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
            q <= 131'b0;
        else if(en)
            q <= d;
    end
endmodule
