`timescale 1ns / 1ps

module sync_one_port_ram_depth_32#(parameter DATA_WIDTH = 131, ADDR_WIDTH = 5)
(input wire clk, input wire write_enable, input wire [ADDR_WIDTH-1:0] addr,
 input wire [DATA_WIDTH-1:0] data_in, output reg [DATA_WIDTH-1:0] data_reg_out);
 
 reg [DATA_WIDTH-1:0] ram [0: 2**ADDR_WIDTH-1];
 
 always@(posedge clk)
 begin
    if(write_enable)
    begin
        ram[addr] <= data_in;
    end
    data_reg_out <= ram[addr];
 end
endmodule
