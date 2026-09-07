`timescale 1ns / 1ps

module FIFO_Buffer #(parameter DATA_WIDTH = 131, // number of bits in a word
                                 ADDR_WIDTH = 7) // number of adddress bits);
(input wire clk, input wire rst_n,
input wire read_enable, input wire write_enable,
input wire [DATA_WIDTH-1:0] write_data,
output wire empty, output wire full,
output wire [DATA_WIDTH-1:0] read_data);                                 
         
    // signal declaration
    wire [ADDR_WIDTH-1:0] write_addr, read_addr;
             
    // instantiate fifo control unit
    fifo_ctrl #(.ADDR_WIDTH(ADDR_WIDTH))control_unit(.clk(clk), .rst_n(rst_n), .read_enable(read_enable), .write_enable(write_enable), .fifo_empty(empty), .fifo_full(full), .write_addr(write_addr), .read_addr(read_addr));  
    
    // instantiate register file
    register_file_for_FIFO_Buffer #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) register_file(.clk(clk), .write_enable(write_enable), .write_addr(write_addr), .read_addr(read_addr), .write_data(write_data), .read_data(read_data));               
endmodule
