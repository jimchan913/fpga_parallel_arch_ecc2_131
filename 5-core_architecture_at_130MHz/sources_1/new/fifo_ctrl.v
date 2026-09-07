`timescale 1ns / 1ps

module fifo_ctrl#(parameter ADDR_WIDTH = 7)(input wire clk, input wire rst_n, 
input wire read_enable, input wire write_enable, 
output wire fifo_empty, output wire fifo_full, 
output wire [ADDR_WIDTH-1:0] write_addr, output wire [ADDR_WIDTH-1:0] read_addr);
    // signal declaration
    reg [ADDR_WIDTH:0] w_ptr_logic, w_ptr_next;
    reg [ADDR_WIDTH:0] r_ptr_logic, r_ptr_next;
    wire full_logic, empty_logic;

    // body
    // fifo control logic
    // registers for status and read and write pointers
    
    always@(posedge clk or negedge rst_n)
    begin
        if(rst_n == 1'b0)
        begin
            w_ptr_logic <= 0;
            r_ptr_logic <= 0;
        end
        else
        begin
            w_ptr_logic <= w_ptr_next;
            r_ptr_logic <= r_ptr_next;
        end
    end
    
    // next-state logic for read and write pointers
    always@*
    begin
      // default: keep old values
      w_ptr_next = w_ptr_logic;
      r_ptr_next = r_ptr_logic;
      case({write_enable,read_enable})
        2'b01:
            if(~empty_logic) // not empty
            begin
                r_ptr_next = r_ptr_logic + 1;
            end
        2'b10: // write
            if(!full_logic) // not full
            begin
                w_ptr_next = w_ptr_logic + 1;
            end
        2'b11: // write and read
        begin
            w_ptr_next = w_ptr_logic + 1;
            r_ptr_next = r_ptr_logic + 1;
        end
        default: ; // 2'b00; null statement; no op
      endcase
    end
    // Full when pointers are equal except MSB (Gray code style)
    // Empty when pointers are exactly equal
    assign full_logic = (w_ptr_logic[ADDR_WIDTH-1:0] == r_ptr_logic[ADDR_WIDTH-1:0]) &&
            (w_ptr_logic[ADDR_WIDTH] != r_ptr_logic[ADDR_WIDTH]);
    assign empty_logic = (w_ptr_logic == r_ptr_logic);
    // output - use lower bits for actually addressing
    assign write_addr = w_ptr_logic[ADDR_WIDTH-1:0];
    assign read_addr = r_ptr_logic[ADDR_WIDTH-1:0];
    assign fifo_full = full_logic;
    assign fifo_empty = empty_logic;
endmodule