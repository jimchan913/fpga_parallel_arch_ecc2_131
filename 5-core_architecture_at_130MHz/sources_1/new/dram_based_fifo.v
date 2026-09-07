`timescale 1ns / 1ps

// BUF_SIZE = 16 -> BUF_WIDTH = 4, no. of bits to be used in pointer
module dram_based_fifo
(input wire clk, rst_n,input wire [523:0] buf_in, output reg [523:0] buf_out, input wire wr_en, input wire rd_en, output reg buf_empty, output reg buf_full);
 localparam BUF_WIDTH = 3;
 localparam BUF_SIZE = 8;
reg[BUF_WIDTH :0]    fifo_counter;
reg[BUF_WIDTH -1:0]  rd_ptr, wr_ptr;           // pointer to read and write addresses  
reg[523:0]              buf_mem[BUF_SIZE -1 : 0]; //  

always @(fifo_counter)
begin
   buf_empty = (fifo_counter==0);   // Checking for whether buffer is empty or not
   buf_full = (fifo_counter== BUF_SIZE);  //Checking for whether buffer is full or not
end

//Setting FIFO counter value for different situations of read and write operations.
always @(posedge clk or negedge rst_n)
begin
   if(~rst_n )
       fifo_counter <= 0;		// Reset the counter of FIFO

   else if( (!buf_full && wr_en) && ( !buf_empty && rd_en ) )  //When doing read and write operation simultaneously
       fifo_counter <= fifo_counter;			// At this state, counter value will remain same.

   else if( !buf_full && wr_en )			// When doing only write operation
       fifo_counter <= fifo_counter + 1;

   else if( !buf_empty && rd_en )		//When doing only read operation
       fifo_counter <= fifo_counter - 1;

   else
      fifo_counter <= fifo_counter;			// When doing nothing.
end

always @( posedge clk or negedge rst_n)
begin
   if( ~rst_n )
      buf_out <= 0;		//On reset output of buffer is all 0.
   else
   begin
      if( rd_en && !buf_empty )
         buf_out <= buf_mem[rd_ptr];	//Reading the 8 bit data from buffer location indicated by read pointer

      else
         buf_out <= buf_out;		

   end
end

always @(posedge clk)
begin
   if( wr_en && !buf_full )
      buf_mem[ wr_ptr ] <= buf_in;		//Writing 8 bit data input to buffer location indicated by write pointer

   else
      buf_mem[ wr_ptr ] <= buf_mem[ wr_ptr ];
end

always@(posedge clk or negedge rst_n)
begin
   if( ~rst_n )
   begin
      wr_ptr <= 0;		// Initializing write pointer
      rd_ptr <= 0;		//Initializing read pointer
   end
   else
   begin
      if( !buf_full && wr_en )    
			wr_ptr <= wr_ptr + 1;		// On write operation, Write pointer points to next location
      else  
			wr_ptr <= wr_ptr;

      if( !buf_empty && rd_en )   
			rd_ptr <= rd_ptr + 1;		// On read operation, read pointer points to next location to be read
      else 
			rd_ptr <= rd_ptr;
   end
end
endmodule