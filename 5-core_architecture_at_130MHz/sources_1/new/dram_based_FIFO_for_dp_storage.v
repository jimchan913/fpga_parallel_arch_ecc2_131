`timescale 1ns / 1ps

module dram_based_FIFO_for_dp_storage #(parameter DATA_WIDTH = 131, // number of bits in a word
                                 ADDR_WIDTH = 2) // number of adddress bits);
(input wire clk, input wire rst_n,
input wire read_enable, input wire write_enable,
input wire [DATA_WIDTH-1:0] write_data_1, write_data_2, write_data_3, write_data_4,
output wire empty, output wire full,
output wire [DATA_WIDTH-1:0] read_data_1, read_data_2, read_data_3, read_data_4);                                 
         
    // signal declaration
    wire [ADDR_WIDTH-1:0] write_addr, read_addr;
             
    // instantiate fifo control unit
    fifo_ctrl #(.ADDR_WIDTH(ADDR_WIDTH))
    control_unit(.clk(clk), .rst_n(rst_n), .read_enable(read_enable), .write_enable(write_enable), .fifo_empty(empty), .fifo_full(full), .write_addr(write_addr), .read_addr(read_addr));  
    
    // instantiate register file
    register_file_for_dram_based_FIFO #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH))
    register_file_1(.clk(clk), 
     .write_enable(write_enable),
     .write_addr(write_addr), .read_addr(read_addr),
     .write_data(write_data_1), .read_data(read_data_1));       
     
    register_file_for_dram_based_FIFO #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) register_file_2(.clk(clk), 
     .write_enable(write_enable),
     .write_addr(write_addr), .read_addr(read_addr),
     .write_data(write_data_2), .read_data(read_data_2));  
     
    register_file_for_dram_based_FIFO #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) register_file_3(.clk(clk), 
     .write_enable(write_enable),
     .write_addr(write_addr), .read_addr(read_addr),
     .write_data(write_data_3), .read_data(read_data_3));
    
    register_file_for_dram_based_FIFO #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH))
    register_file_4(.clk(clk), 
     .write_enable(write_enable),
     .write_addr(write_addr), .read_addr(read_addr),
     .write_data(write_data_4), .read_data(read_data_4));     
                
endmodule
