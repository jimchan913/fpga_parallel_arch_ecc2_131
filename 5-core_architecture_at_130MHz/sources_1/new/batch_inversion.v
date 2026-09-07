`timescale 1ns / 1ps

module Batch_Inversion #(parameter n = 131)
(input wire clk, input wire rst_n,
 input wire start_enable, 
 input wire [n-1:0] coord_x,
 output wire [n-1:0] output_inverse, output wire read_enable_for_delta_y_buffer, output wire compute_slope_enable);
 
    reg [n-1:0] final_inverse_reg;
    wire [n-1:0] batch_multiplier_output;
    wire batch_multiply_tick;
    input_multiplier_for_inv input_Multiplier(clk, rst_n, start_enable, coord_x,
      batch_multiplier_output, batch_multiply_tick);
      
    wire [n-1:0] batch_inverse;
    wire inv_done_tick;
    
    wire [n-1:0] inversion_result;    
    wire [n-1:0] inverse_in_LIFO_order;
    
    eea_inversion_module Inverter(clk, rst_n, batch_multiply_tick, batch_multiplier_output, inv_done_tick, batch_inverse);
    register_131bit Inversion_Result(clk, rst_n, inv_done_tick, batch_inverse, inversion_result);
    
    localparam init = 4'b0000, load_batch_1 = 4'b0001,  load_batch_2 = 4'b0010, idle_1 = 4'b0011, idle_2 = 4'b0100,
    load_and_output_batch_1 = 4'b0101, load_and_output_batch_2 = 4'b0110, idle_3 = 4'b0111, idle_4 = 4'b1000;
    localparam idle = 2'b00, mult_first_cycle = 2'b01, mult_intermediate = 2'b10;   
    localparam computing_inv = 2'b1, wait_4_cycles = 2'b10, inv_result_computed = 2'b11; 
    localparam not_loading_lifo_batch = 4'b0, load_lifo_first_batch = 4'b1100, load_lifo_batch_1 = 4'b1 , load_lifo_batch_2 = 4'b11;
    localparam not_reading_buffer = 2'b00, read_buffer_1 = 2'b01, read_buffer_2 = 2'b10;
    localparam waiting = 2'b00, wait_1_cycle = 2'b01, start_output_inverse = 2'b11;
    wire inv_result_valid;
    wire modify_state2_enable;
    reg [3:0] state1_reg;
    reg [3:0] state1_next; 
    reg [1:0] state2_reg;
    reg [1:0] state2_next;  
    reg [1:0] state3_reg;
    reg [1:0] state3_next;
    reg [3:0] state4_reg;
    reg [3:0] state4_next;
    reg [1:0] state5_reg;
    reg [1:0] state5_next;
    reg [1:0] state6_reg;
    reg [1:0] state6_next;
    
    reg [4:0] i1_reg;
    reg [4:0] i1_next;
    reg [4:0] i2_reg;
    reg [4:0] i2_next;
   
    reg [1:0] k_reg;
    reg [1:0] k_next;
    reg [4:0] l_reg;
    reg [4:0] l_next;

     wire [n-1:0] mult_1_reg;
     wire [n-1:0] mult_2_reg;

    
    always@(posedge clk or negedge rst_n)
    begin
        if(rst_n == 1'b0)
        begin
            i1_reg <= 0;
            i2_reg <= 0;
            k_reg <= 0;
            l_reg <= 0;
            state1_reg <= init;   
            state2_reg <= idle;
            state3_reg <= computing_inv;
            state4_reg <= not_loading_lifo_batch;
            state5_reg <= not_reading_buffer;
            state6_reg <= waiting;
            final_inverse_reg <= 131'b0;          
        end
        else
        begin
            if(start_enable)
            begin
              i1_reg <= i1_next;
              i2_reg <= i2_next;
              k_reg <= k_next;
              l_reg <= l_next;
              state1_reg <= state1_next;   
              state2_reg <= state2_next;
              state3_reg <= state3_next;  
              state4_reg <= state4_next;
              state5_reg <= state5_next;
              state6_reg <= state6_next;
              final_inverse_reg <= mult_1_reg;  
            end
        end
    end
 
    always@*   
    begin
        i1_next = i1_reg;
        i2_next = i2_reg;
        state1_next = state1_reg;
        case(state1_reg)
           init:
                state1_next = load_batch_1;
            load_batch_1:
            begin
                i1_next = i1_reg + 1;   
                if(i1_reg == 27)
                    state1_next = idle_1;
            end
            idle_1: 
                state1_next = load_batch_2;
            load_batch_2:
            begin
                i2_next = i2_reg + 1;
                if(i2_reg  == 27)
                    state1_next = idle_2;
            end       
            idle_2: 
            begin
                state1_next = load_and_output_batch_1;
            end
            load_and_output_batch_1:
            begin
                i1_next = i1_reg - 1;
                if(i1_reg == 1)
                    state1_next = idle_3;   
            end         
            idle_3:
                state1_next = load_and_output_batch_2;
            load_and_output_batch_2:
            begin
                i2_next = i2_reg - 1;
                if(i2_reg == 1)
                    state1_next = idle_4;
            end    
            idle_4:
                state1_next = load_batch_1;
        endcase
    end
    wire write_buffer_1_enable;
    wire write_buffer_2_enable;
    wire start_reading_buffer_1_condition_1, start_reading_buffer_1_condition_2, start_reading_buffer_2_condition_1, start_reading_buffer_2_condition_2;
    always@*
    begin
        state5_next = state5_reg;
        case(state5_reg)
            not_reading_buffer:
            begin
                if(start_reading_buffer_1_condition_1)
                    state5_next = read_buffer_1;
            end   
            read_buffer_1:
            begin
                if(start_reading_buffer_2_condition_1 || start_reading_buffer_2_condition_2)
                    state5_next = read_buffer_2;
            end
            read_buffer_2:
            begin
                if(start_reading_buffer_1_condition_1 || start_reading_buffer_1_condition_2)      
                    state5_next = read_buffer_1;                
            end
            default: ;
        endcase        
    end
    
    assign start_reading_buffer_1_condition_1 = state1_reg == load_and_output_batch_1 && i1_reg == 27;
    assign start_reading_buffer_1_condition_2 = state1_reg == load_batch_1 && i1_reg == 1;
    assign start_reading_buffer_2_condition_1 = state1_reg == load_and_output_batch_2 && i2_reg == 27;
    assign start_reading_buffer_2_condition_2 = state1_reg == load_batch_2 && i2_reg == 1;

    assign write_buffer_1_enable = state1_reg == load_batch_1 || state1_reg == load_and_output_batch_1;     
    assign write_buffer_2_enable = state1_reg == load_batch_2 || state1_reg == load_and_output_batch_2;                                   
    
    wire [n-1:0] read_element_from_buffer_1;
    wire [n-1:0] read_product_from_buffer_1;
    wire [n-1:0] read_element_from_buffer_2;
    wire [n-1:0] read_product_from_buffer_2;    
    
    sync_one_port_ram_depth_32 ElementBuffer_1(clk, write_buffer_1_enable, i1_reg, coord_x, read_element_from_buffer_1);    
    sync_one_port_ram_depth_32 ProductBuffer_1(clk, write_buffer_1_enable, i1_reg, batch_multiplier_output, read_product_from_buffer_1);

    sync_one_port_ram_depth_32 Element_Buffer_2(clk, write_buffer_2_enable, i2_reg, coord_x, read_element_from_buffer_2);
    sync_one_port_ram_depth_32 Product_Buffer_2(clk, write_buffer_2_enable, i2_reg, batch_multiplier_output, read_product_from_buffer_2);
     wire mult_elem_and_inv_enable;
     wire mult_product_and_inv_enable;


    reg [n-1:0] input_operand_for_multipliers;
    //wire [n-1:0] inverse_in_LIFO_order;  
     always@*
     begin
        state2_next = state2_reg; 
        case(state2_reg)
            idle:
            begin
                if(i1_reg == 27 && state1_reg == load_and_output_batch_1)
                    state2_next = mult_first_cycle;
                input_operand_for_multipliers = 131'b1;
            end
            mult_first_cycle:
            begin
                state2_next = mult_intermediate;
                input_operand_for_multipliers = inversion_result;              
            end
            mult_intermediate:
            begin
                input_operand_for_multipliers = mult_1_reg;
                if(modify_state2_enable)
                begin
                  state2_next = mult_first_cycle;
                end
            end
            default:    
                input_operand_for_multipliers = 131'b1;
        endcase
     end
     always@*
     begin
        k_next = k_reg;
        state3_next = state3_reg;
        case(state3_reg)
            computing_inv:
            begin
                k_next = 0;
                if(inv_done_tick)
                    state3_next = wait_4_cycles;
            end
            wait_4_cycles:
            begin
                k_next = k_reg + 1;
                if(k_reg == 2) // here we set it to be valid a cycle before the inverse is computed for synchronization
                begin 
                    state3_next = inv_result_computed;
                end
            end
        endcase
     end
    always@*
    begin
        l_next = l_reg;
        state4_next = state4_reg;
        case(state4_reg)
            not_loading_lifo_batch:
            begin
                if(inv_result_valid)
                begin
                    l_next = l_reg + 1;
                    state4_next = load_lifo_first_batch;
                end
           end       
            load_lifo_first_batch:
            begin

                if(l_reg == 28)
                begin
                    l_next = l_reg;
                    state4_next = load_lifo_batch_2;
                end
                else
                begin
                    l_next = l_reg + 1;   
                end
            end                     
            load_lifo_batch_2:
            begin

                if(l_reg == 0)
                begin
                    l_next = l_reg;
                    state4_next = load_lifo_batch_1;
                end
                else
                   l_next = l_reg - 1;
            end
             load_lifo_batch_1:
             begin
                if(l_reg == 28)
                begin
                    l_next = l_reg;
                    state4_next = load_lifo_batch_2;
                end
                else
                begin
                    l_next = l_reg + 1;   
                end  
            end                       
            default: ;
        endcase
    end

    wire write_lifo_to_fifo_buffer_enable;
    assign write_lifo_to_fifo_buffer_enable = inv_result_valid;//state4_reg != not_loading_lifo_batch;

      
    assign modify_state2_enable = (state1_reg == load_and_output_batch_1 && i1_reg == 27) || (state1_reg == load_and_output_batch_2 && i2_reg == 27) ||
                                   (state1_reg == load_batch_1 && i1_reg == 1) || (state1_reg == load_batch_2 && i2_reg == 1);
    assign inv_result_valid = state3_reg == inv_result_computed; 
    assign mult_elem_and_inv_enable = state2_reg == mult_first_cycle || state2_reg == mult_intermediate;
    assign mult_product_and_inv_enable = state2_reg == mult_first_cycle || state2_reg == mult_intermediate;     
    
    wire [n-1:0] read_element, read_product;
    wire is_read_buffer_1;
    assign is_read_buffer_1 = (state5_reg == read_buffer_1);
    assign read_element =  is_read_buffer_1 ? read_element_from_buffer_1 : read_element_from_buffer_2;
    assign read_product = is_read_buffer_1 ? read_product_from_buffer_1 : read_product_from_buffer_2;
    
    gf_mult_OBS_L3 multiplication_for_element_and_inv_result(clk, rst_n, mult_elem_and_inv_enable, input_operand_for_multipliers, read_element, mult_1_reg);
    gf_mult_OBS_L3 multiplication_for_product_and_inv_result(clk, rst_n, mult_product_and_inv_enable, input_operand_for_multipliers, read_product, mult_2_reg);    
     
    assign inverse_in_LIFO_order = (state2_reg == mult_first_cycle) ? final_inverse_reg : mult_2_reg;
    sync_one_port_ram_depth_32 LIFO_to_FIFO_buffer(clk, write_lifo_to_fifo_buffer_enable, l_reg, inverse_in_LIFO_order, output_inverse);
    
    always@*
    begin
        state6_next = state6_reg;
        case(state6_reg)
            waiting:
                if(l_reg == 28)
                    state6_next = wait_1_cycle;
            wait_1_cycle:
                state6_next = start_output_inverse;
            default: ;    
        endcase
    end
    assign read_enable_for_delta_y_buffer = state6_reg == wait_1_cycle || compute_slope_enable;
    assign compute_slope_enable =  state6_reg == start_output_inverse;
endmodule
