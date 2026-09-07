`timescale 1ns / 1ps

module input_multiplier_for_inv
#(parameter n = 131)
(input wire clk, input wire rst_n, input wire start_enable, input wire [n-1:0]  input_operand,
 output wire [n-1:0] output_y_reg, output wire batch_multiply_tick);
    localparam first_cycle = 1'b0, intermediate = 1'b1;
    localparam ITERATIONS_MINUS_1 = 28;
    
    reg [n-1:0] a_reg;
   reg [5:0] i_reg;
    reg [5:0] i_next;
    reg s1_reg; reg s1_next;
    
    //wire [n-1:0] product_element_output;
    //wire write_fifo_enable;
   // wire read_fifo_enable; 
    //wire [6:0] fifo_counter;
    //wire fifo_full, fifo_empty;
    //wire write_product_buffer_enable;
    //assign write_product_buffer_enable = s2_reg == first_batch || s2_reg == second_batch;
    //assign read_fifo_enable = s3_reg == output_enable && write_fifo_enable ;

   /* sync_one_port_ram ProductBuffer(clk, write_product_buffer_enable, i_reg, output_y_reg, product_element_output);        
    FIFO_Buffer product_buffer(clk, rst, output_y_reg, product_element_output, write_fifo_enable, read_fifo_enable, fifo_empty, fifo_full, fifo_counter);
    */
     
    gf_mult_OBS_L3 multiplier_for_GF_2_131(clk, rst_n,  start_enable, a_reg, input_operand,output_y_reg);
 

    always@(posedge clk or negedge rst_n)
    begin
        if(rst_n == 1'b0)
        begin
            s1_reg <= first_cycle;
      //      s2_reg <= init_for_fifo;
        //    s3_reg <= no_output;
            i_reg <= 0;
           // j_reg <= 0;
        end
        else 
        begin
            s1_reg <= s1_next;
        //    s2_reg <= s2_next;
        //    s3_reg <= s3_next;
            i_reg <= i_next;
           // j_reg <= j_next;
        end
    end
    
    always@*
    begin
        i_next = i_reg;
        s1_next = s1_reg;
        //s2_next = s2_reg;
        //s3_next = s3_reg;
        case(s1_reg)        
            first_cycle:
            begin
                i_next = 0;            
                a_reg = 131'b1;                
                if(start_enable)
                begin
                    s1_next = intermediate;
                end
            end
            intermediate:
            begin
                if(batch_multiply_tick)
                begin   
                    i_next = 0;
                    a_reg = 131'b1;                    
                end
                else
                begin
                    i_next = i_reg + 1;
                    a_reg = output_y_reg;
                end
            end
        endcase
        /*
        case(s2_reg)
            init_for_fifo:
              if(start_enable)
                s2_next = first_batch;
            first_batch:
            begin 
                if(i_reg == 27)
                begin
                    s2_next = idle_1;
                end
            end       
            idle_1:
                s2_next = second_batch;
            second_batch:
            begin
                if(i_reg == 27)
                begin
                    s2_next = idle_2;
                end 
            end
            idle_2:
            begin
               // s3_next = output_enable;
                s2_next = first_batch;
           end
        endcase
        case(s3_reg)
            no_output: 
                if(s2_reg == idle_2)
                    s3_next = output_enable;
        endcase
        */
    end
    
    assign batch_multiply_tick = i_reg == ITERATIONS_MINUS_1;
endmodule