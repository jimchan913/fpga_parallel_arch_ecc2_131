`timescale 1ns / 1ps

module dram_based_fifo_ctrl#(parameter ADDR_WIDTH = 7)(input wire clk, input wire rst_n, 
input wire read_enable, input wire write_enable, 
output wire fifo_empty, output wire fifo_full, 
output wire [ADDR_WIDTH-1:0] write_addr, output wire [ADDR_WIDTH-1:0] read_addr);
    // signal declaration
    reg [ADDR_WIDTH-1:0] w_ptr_logic, w_ptr_next, w_ptr_succ;
    reg [ADDR_WIDTH-1:0] r_ptr_logic, r_ptr_next, r_ptr_succ;
    reg full_logic, empty_logic, full_next, empty_next;

    // body
    // fifo control logic
    // registers for status and read and write pointers
    
    always@(posedge clk or negedge rst_n)
    begin
        if(rst_n == 1'b0)
        begin
            w_ptr_logic <= 0;
            r_ptr_logic <= 0;
            full_logic <= 1'b0;
            empty_logic <= 1'b1;
        end
        else
        begin
            w_ptr_logic <= w_ptr_next;
            r_ptr_logic <= r_ptr_next;
            full_logic <= full_next;
            empty_logic <= empty_next;
        end
    end
    
    // next-state logic for read and write pointers
    always@*
    begin
      // successive pointer values
      w_ptr_succ = w_ptr_logic + 1;
      r_ptr_succ = r_ptr_logic + 1;
      // default: keep old values
      w_ptr_next = w_ptr_logic;
      r_ptr_next = r_ptr_logic;
      full_next = full_logic;
      empty_next = empty_logic;
      case({write_enable,read_enable})
        2'b01:
            if(~empty_logic) // not empty
            begin
                r_ptr_next = r_ptr_succ;
                full_next = 1'b0;
                if(r_ptr_succ == w_ptr_logic)
                    empty_next = 1'b1;
            end
        2'b10: // write
            if(!full_logic) // not full
            begin
                w_ptr_next = w_ptr_succ;
                empty_next = 1'b0;
            end
        2'b11: // write and read
        begin
            w_ptr_next = w_ptr_succ;
            r_ptr_next = r_ptr_succ;
        end
        default: ; // 2'b00; null statement; no op
      endcase
    end
    
    // output
    assign write_addr = w_ptr_logic;
    assign read_addr = r_ptr_logic;
    assign fifo_full = full_logic;
    assign fifo_empty = empty_logic;
endmodule
