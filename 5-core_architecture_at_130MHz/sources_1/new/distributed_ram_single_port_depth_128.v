`timescale 1ns / 1ps

module distributed_ram_single_port_depth_128#(parameter DATA_WIDTH = 131)
(input wire clk,
 input wire write_enable,
 input wire [6:0] addr,
 input wire [DATA_WIDTH-1:0] data_in,
 output wire [DATA_WIDTH-1:0] data_out);
 
 reg [DATA_WIDTH-1:0] ram [0: 127];
 
 always@(posedge clk)
 begin
    if(write_enable)
    begin
        ram[addr] <= data_in;
    end
 end
 assign data_out = ram[addr];
 
endmodule
