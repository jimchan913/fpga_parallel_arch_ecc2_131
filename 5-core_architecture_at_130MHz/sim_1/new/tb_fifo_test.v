`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2025 11:04:53 AM
// Design Name: 
// Module Name: tb_fifo_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_fifo_test();

    reg clk; reg rst_n;  
    reg [1:0] write_data;
    wire [1:0] read_data;
     reg wr_en;
     reg rd_en;
     wire empty;
     wire full;
    initial 
    begin
     clk = 0;
    rst_n = 0;
    wr_en = 1;
    rd_en = 0;    
    #20 rst_n = 1;

    #20 write_data = 1;
    #80 rd_en = 1;
    #20 rd_en = 0;    
    end 
    FIFO_Buffer #(.DATA_WIDTH(2), .ADDR_WIDTH(3)) fifo(.clk(clk), .rst_n(rst_n), .read_enable(rd_en), .write_enable(wr_en), .read_data(read_data), .write_data(1), .empty(empty), .full(full));
    always 
    begin
        #10 clk = ~clk;
    end      
    
    
        
endmodule
