`timescale 1ns / 1ps

module register_file_for_FIFO_Buffer
#(
 parameter DATA_WIDTH = 131, // number of bits
            ADDR_WIDTH = 7    // number of address bits
 ) 
(input wire clk, 
 input wire write_enable,
 input wire [ADDR_WIDTH-1:0] write_addr, read_addr,
 input wire [DATA_WIDTH-1:0] write_data, output reg [DATA_WIDTH-1:0] read_data);
 
 // signal declaration
 reg [DATA_WIDTH-1:0] array_reg [0: 2**ADDR_WIDTH-1];
 
 //body
 // write operation
 always@(posedge clk)
 begin
    if(write_enable)
    begin
        array_reg[write_addr] <= write_data;   
     end  
     read_data <= array_reg[read_addr];
 end
 // read operation
endmodule
