`timescale 1ns / 1ps

module r_adding_walk_with_negation_map_module_5 #(parameter n = 131)(input wire clk, input wire rst_n, input wire start_enable,
 output wire [n-1:0] new_iteration_coord_x, output wire [n-1:0] new_iteration_coord_y,
 output wire [n-1:0] new_iteration_coeff_c_output,
 output wire [n-1:0] new_iteration_coeff_d_output,
 output wire points_available_for_output,
 output wire is_distinguished_point
);
  localparam branching_table_size = 1024;
  

  reg start_enable_for_point_addition;
  wire point_addition_is_computed;
  
  reg [n-1:0] coord_x_for_point_addition_reg;
  reg [n-1:0] coord_y_for_point_addition_reg;
  reg [n-1:0] coeff_c_for_point_addition_reg;
  reg [n-1:0] coeff_d_for_point_addition_reg;  
  
  wire [n-1:0] coord_x_after_point_addition;
  wire [n-1:0] coord_y_after_point_addition;
  reg [6:0] i_reg;
  wire [6:0] i_next;
  
  reg [4:0] i_reg_for_detecting_higher_fruitless_cycles;
  reg [4:0] i_next_for_detecting_higher_fruitless_cycles;
  
  wire iteration_for_higher_fruitless_cycles_detection;
     
  wire negation_map_is_computed;
  wire [10:0] sign_and_branch_taken_iter_i_minus_1;
  wire sign_taken_iter_i_minus_1;
  wire [9:0] branch_taken_iter_i_minus_1;
    
  wire [10:0] sign_and_branch_taken_iter_i_minus_2;
  wire sign_taken_iter_i_minus_2;
  wire [9:0] branch_taken_iter_i_minus_2;
  
  wire [10:0] sign_and_branch_taken_iter_i_minus_3;  
  wire sign_taken_iter_i_minus_3;
  wire [9:0] branch_taken_iter_i_minus_3;

  wire [9:0] branch_to_take_to_escape_fruitless_2_cycle;
  wire [9:0] branch_to_take_to_escape_fruitless_4_cycle;
  wire [9:0] branch_to_take_to_escape_higher_fruitless_cycles;
  wire [9:0] branch_to_take_iter_i;
    
  assign sign_taken_iter_i_minus_1 = sign_and_branch_taken_iter_i_minus_1[10];
  assign branch_taken_iter_i_minus_1 = sign_and_branch_taken_iter_i_minus_1[9:0];
  
  assign sign_taken_iter_i_minus_2 = sign_and_branch_taken_iter_i_minus_2[10];
  assign branch_taken_iter_i_minus_2 = sign_and_branch_taken_iter_i_minus_2[9:0];

  assign sign_taken_iter_i_minus_3 = sign_and_branch_taken_iter_i_minus_3[10];
  assign branch_taken_iter_i_minus_3 = sign_and_branch_taken_iter_i_minus_3[9:0];
    
  wire [n-1:0] prev_X_coord_for_higher_fruitless_cycles_detection;  
  
  wire fruitless_2_cycle_detected;
  wire fruitless_4_cycle_detected;
  wire higher_fruitless_cycles_detected;
  
  wire write_enable_for_FIFO_Buffer_for_higher_fruitless_cycles_detection, read_enable_for_FIFO_Buffer_for_higher_fruitless_cycles_detection;  
  reg state_reg_for_higher_fruitless_cycles_detection;
  reg state_next_for_higher_fruitless_cycles_detection;
  /*
  reg state_reg_1_for_reading_buffer_for_higher_fruitless_cycles_detection;
  reg state_next_1_for_reading_buffer_for_higher_fruitless_cycles_detection; 
  reg state_reg_2_for_reading_buffer_for_higher_fruitless_cycles_detection;
  reg state_next_2_for_reading_buffer_for_higher_fruitless_cycles_detection;
  */
  wire state_for_writing_buffer_1_for_fruitless_cycle_detection;
  reg state_reg_for_writing_buffer_1_for_fruitless_cycle_detection;
  reg state_next_for_writing_buffer_1_for_fruitless_cycle_detection;
   reg state_reg_for_reading_buffer_1_for_fruitless_cycle_detection; reg state_next_for_reading_buffer_1_for_fruitless_cycle_detection;
  reg state_reg_for_writing_buffer_2_for_fruitless_cycle_detection; reg state_next_for_writing_buffer_2_for_fruitless_cycle_detection;   
   reg state_reg_for_reading_buffer_2_for_fruitless_cycle_detection; reg state_next_for_reading_buffer_2_for_fruitless_cycle_detection;
  reg state_reg_for_writing_buffer_3_for_fruitless_cycle_detection; reg state_next_for_writing_buffer_3_for_fruitless_cycle_detection;   
   reg state_reg_for_reading_buffer_3_for_fruitless_cycle_detection; reg state_next_for_reading_buffer_3_for_fruitless_cycle_detection;
  
  
  // Points
  wire [n-1:0] sp_coord_x, sp_coord_y;
  wire [n-1:0] X_i_coord_x;
  wire [n-1:0] X_i_coord_y;
  wire [n-1:0] R_i_coord_x;
  wire [n-1:0] R_i_coord_y;

  wire [9:0] x_low_bit_addr;
  assign x_low_bit_addr = X_i_coord_x[9:0];

  // escape fruitless 2-cycles
  assign fruitless_2_cycle_detected = state_reg_for_reading_buffer_1_for_fruitless_cycle_detection  && (x_low_bit_addr == branch_taken_iter_i_minus_1) && (sign_taken_iter_i_minus_1 == 1'b1);
  assign branch_to_take_to_escape_fruitless_2_cycle = (x_low_bit_addr + 2) % branching_table_size;
  
  // escape fruitless 4_cycles
  assign fruitless_4_cycle_detected = state_reg_for_reading_buffer_3_for_fruitless_cycle_detection && 
    (x_low_bit_addr == branch_taken_iter_i_minus_2) &&
    (x_low_bit_addr != branch_taken_iter_i_minus_1) &&
    (branch_taken_iter_i_minus_1 == branch_taken_iter_i_minus_3) &&
    (sign_taken_iter_i_minus_1 == sign_taken_iter_i_minus_3) && (sign_taken_iter_i_minus_1 != sign_taken_iter_i_minus_2);
  
  // escape higher_fruitless_cycles
  assign higher_fruitless_cycles_detected = state_reg_for_higher_fruitless_cycles_detection &&
                                            (i_reg_for_detecting_higher_fruitless_cycles % 2 == 5'd0 && i_reg_for_detecting_higher_fruitless_cycles >= 5'd6)  &&
                                            (new_iteration_coord_x == prev_X_coord_for_higher_fruitless_cycles_detection);  
  assign branch_to_take_to_escape_fruitless_4_cycle = (x_low_bit_addr + 4) % branching_table_size;
  assign branch_to_take_to_escape_higher_fruitless_cycles = (x_low_bit_addr + 17) % branching_table_size;
  
  assign branch_to_take_iter_i = fruitless_2_cycle_detected ? branch_to_take_to_escape_fruitless_2_cycle :
                                 (fruitless_4_cycle_detected ? branch_to_take_to_escape_fruitless_4_cycle : (higher_fruitless_cycles_detected ? branch_to_take_to_escape_higher_fruitless_cycles : x_low_bit_addr));
    
  points_to_add_table_for_coord_x r_adding_table_coord_x(.clk(clk), .addr(branch_to_take_iter_i), .table_value_x(R_i_coord_x));
  points_to_add_table_for_coord_y r_adding_table_coord_y(.clk(clk), .addr(branch_to_take_iter_i), .table_value_y(R_i_coord_y));

  reg read_enable_for_precomputed_tables, read_enable_next_for_precomputed_tables;
      
  assign X_i_coord_x = read_enable_for_precomputed_tables ? sp_coord_x : new_iteration_coord_x;
  assign X_i_coord_y = read_enable_for_precomputed_tables  ? sp_coord_y : new_iteration_coord_y;
    
  wire sign_taken_for_iteration;
  
  wire [n-1:0] starting_points_coeff_c;
  wire [n-1:0] X_i_coeff_c; 
  wire [n-1:0] X_i_coeff_d; 
  wire [n-1:0] coeff_c_after_point_addition_FIFO_input; 
  wire [n-1:0] coeff_d_after_point_addition_FIFO_input; 
  wire [n-1:0] coeff_c_after_point_addition_FIFO_output;
  wire [n-1:0] coeff_d_after_point_addition_FIFO_output;
  wire [n-1:0] points_to_add_coeff_c, points_to_add_coeff_d;

 precomputed_starting_point_coord_x_table_5 starting_point_coord_x_table(.clk(clk), .en(read_enable_for_precomputed_tables), .addr(i_reg), .table_value_x(sp_coord_x));  
 precomputed_starting_point_coord_y_table_5 starting_point_coord_y_table(.clk(clk), .en(read_enable_for_precomputed_tables), .addr(i_reg), .table_value_y(sp_coord_y));
 precomputed_starting_point_coeff_c_table_5 starting_coeff_c_table(.clk(clk), .en(read_enable_for_precomputed_tables), .addr(i_reg), .coeff_c(starting_points_coeff_c));
  
 coeff_c_table_for_points_to_add r_adding_table_for_coeff_c(.clk(clk), .addr(branch_to_take_iter_i), .coeff_c(points_to_add_coeff_c));
 coeff_d_table_for_points_to_add r_adding_table_for_coeff_d(.clk(clk), .addr(branch_to_take_iter_i), .coeff_d(points_to_add_coeff_d));
 
 wire coeff_buffer_read_enable; wire coeff_buffer_write_enable;

  always@(posedge clk or negedge rst_n)
  begin
    if(rst_n == 1'b0)
    begin
        coord_x_for_point_addition_reg <= 131'b0;
        coord_y_for_point_addition_reg <= 131'b0;
        coeff_c_for_point_addition_reg <= 131'b0;
        coeff_d_for_point_addition_reg <= 131'b0;            
    end    
    else
    begin
        coord_x_for_point_addition_reg <= X_i_coord_x;
        coord_y_for_point_addition_reg <= X_i_coord_y;
        coeff_c_for_point_addition_reg <= X_i_coeff_c;
        coeff_d_for_point_addition_reg <= X_i_coeff_d;        
    end
  end 
 
  point_addition PA_module(.clk(clk), .rst_n(rst_n), .start_en(start_enable_for_point_addition), 
  .x1(coord_x_for_point_addition_reg), .y1(coord_y_for_point_addition_reg),
  .x2(R_i_coord_x), .y2(R_i_coord_y),
  .x3_output(coord_x_after_point_addition), .y3_output(coord_y_after_point_addition),
  .point_addition_is_computed(point_addition_is_computed));
 assign coeff_buffer_write_enable = start_enable_for_point_addition;
 
  negation_map mapping(.clk(clk), .rst_n(rst_n), .start_enable(point_addition_is_computed),
   .input_coord_x(coord_x_after_point_addition), .input_coord_y(coord_y_after_point_addition),
   .output_coord_x(new_iteration_coord_x), .output_coord_y(new_iteration_coord_y), .coeff_buffer_read_en(coeff_buffer_read_enable),
   .sign(sign_taken_for_iteration), .negation_map_is_computed(negation_map_is_computed));
  
 assign X_i_coeff_c =  read_enable_for_precomputed_tables ? starting_points_coeff_c : new_iteration_coeff_c_output;
 assign X_i_coeff_d =  read_enable_for_precomputed_tables ? 131'd0: new_iteration_coeff_d_output;

 add_coefficient_module compute_c_i_based_on_r_adding_walk(coeff_c_for_point_addition_reg, points_to_add_coeff_c, coeff_c_after_point_addition_FIFO_input);
 add_coefficient_module compute_d_i_based_on_r_adding_walk(coeff_d_for_point_addition_reg, points_to_add_coeff_d, coeff_d_after_point_addition_FIFO_input);  
 
 
 update_coefficient_according_to_negation_map compute_coeff_c_i_based_on_negation_map(
  .sign_taken(sign_taken_for_iteration), .input_coeff(coeff_c_after_point_addition_FIFO_output), .output_coeff(new_iteration_coeff_c_output));

 update_coefficient_according_to_negation_map compute_coeff_d_i_based_on_negation_map(
  .sign_taken(sign_taken_for_iteration), .input_coeff(coeff_d_after_point_addition_FIFO_output), .output_coeff(new_iteration_coeff_d_output));
  
 FIFO_Buffer_for_coefficients #(.FIFO_DATA_WIDTH(262), .DATA_WIDTH(131), .ADDR_WIDTH(7)) coefficients_buffer(.clk(clk), .rst_n(rst_n),
   .read_enable(coeff_buffer_read_enable), .write_enable(coeff_buffer_write_enable),
   .write_data_1(coeff_c_after_point_addition_FIFO_input), .write_data_2(coeff_d_after_point_addition_FIFO_input),
   .read_data_1(coeff_c_after_point_addition_FIFO_output), .read_data_2(coeff_d_after_point_addition_FIFO_output));
    
    always@(posedge clk or negedge rst_n)
    begin
        if(rst_n == 1'b0)
        begin
            start_enable_for_point_addition <= 0;
            i_reg <= 0;
            read_enable_for_precomputed_tables <= 1'b1;              
            i_reg_for_detecting_higher_fruitless_cycles <= 5'd0;
            state_reg_for_higher_fruitless_cycles_detection <= 1'b0;      
            state_reg_for_reading_buffer_1_for_fruitless_cycle_detection <= 1'b0;
            state_reg_for_writing_buffer_2_for_fruitless_cycle_detection <= 1'b0;
            state_reg_for_reading_buffer_2_for_fruitless_cycle_detection <= 1'b0;
            state_reg_for_writing_buffer_3_for_fruitless_cycle_detection <= 1'b0;            
            state_reg_for_reading_buffer_3_for_fruitless_cycle_detection <= 1'b0;            
        end
        else if(start_enable)
        begin        
           start_enable_for_point_addition <= 1'b1;
           i_reg <= i_next;
           read_enable_for_precomputed_tables <= read_enable_next_for_precomputed_tables;  
           i_reg_for_detecting_higher_fruitless_cycles <= i_next_for_detecting_higher_fruitless_cycles;
           state_reg_for_higher_fruitless_cycles_detection <= state_next_for_higher_fruitless_cycles_detection;     
           state_reg_for_reading_buffer_1_for_fruitless_cycle_detection <= state_next_for_reading_buffer_1_for_fruitless_cycle_detection; 
           state_reg_for_writing_buffer_2_for_fruitless_cycle_detection <= state_next_for_writing_buffer_2_for_fruitless_cycle_detection;           
           state_reg_for_reading_buffer_2_for_fruitless_cycle_detection <= state_next_for_reading_buffer_2_for_fruitless_cycle_detection;
           state_reg_for_writing_buffer_3_for_fruitless_cycle_detection <= state_next_for_writing_buffer_3_for_fruitless_cycle_detection;              
           state_reg_for_reading_buffer_3_for_fruitless_cycle_detection <= state_next_for_reading_buffer_3_for_fruitless_cycle_detection;                     
        end
    end
    
    always@*
    begin
        read_enable_next_for_precomputed_tables = read_enable_for_precomputed_tables;
        if(i_reg == 7'd97)
        begin
            read_enable_next_for_precomputed_tables = 1'b0;
        end
    end
        
    assign state_for_writing_buffer_1_for_fruitless_cycle_detection = start_enable;
    
   always@*
   begin
        i_next_for_detecting_higher_fruitless_cycles = i_reg_for_detecting_higher_fruitless_cycles;
        if(i_reg == 7'd97) 
        begin
            if(i_reg_for_detecting_higher_fruitless_cycles == 5'd16)
                i_next_for_detecting_higher_fruitless_cycles = 5'd0;
            else
                i_next_for_detecting_higher_fruitless_cycles = i_reg_for_detecting_higher_fruitless_cycles + 1;     
        end       
   end
   
   always@*
   begin
       state_next_for_higher_fruitless_cycles_detection = state_reg_for_higher_fruitless_cycles_detection;
       case(state_reg_for_higher_fruitless_cycles_detection)
         1'b0:
         begin
            if(i_reg_for_detecting_higher_fruitless_cycles == 5'd16 && i_reg == 7'd97)
                state_next_for_higher_fruitless_cycles_detection = 1'b1;
         end   
       endcase
   end   

   always@*
   begin
     state_next_for_writing_buffer_2_for_fruitless_cycle_detection = state_reg_for_writing_buffer_2_for_fruitless_cycle_detection;
     case(state_reg_for_writing_buffer_2_for_fruitless_cycle_detection)
        1'b0:
        begin
            if(i_reg == 7'd97)
                state_next_for_writing_buffer_2_for_fruitless_cycle_detection = 1'b1;
        end    
     endcase
   end    
   always@*
   begin
     state_next_for_writing_buffer_3_for_fruitless_cycle_detection = state_reg_for_writing_buffer_3_for_fruitless_cycle_detection;
     case(state_reg_for_writing_buffer_3_for_fruitless_cycle_detection)
        1'b0:
        begin
            if(state_reg_for_writing_buffer_2_for_fruitless_cycle_detection && i_reg == 7'd97)
                state_next_for_writing_buffer_3_for_fruitless_cycle_detection = 1'b1;
        end    
     endcase
   end      
   always@*
   begin
    state_next_for_reading_buffer_1_for_fruitless_cycle_detection = state_reg_for_reading_buffer_1_for_fruitless_cycle_detection;
    case(state_reg_for_reading_buffer_1_for_fruitless_cycle_detection)
        1'b0:
        begin
            if(i_reg == 7'd96)
                state_next_for_reading_buffer_1_for_fruitless_cycle_detection = 1'b1;
        end            
    endcase
   end
   
   always@*
   begin
    state_next_for_reading_buffer_2_for_fruitless_cycle_detection = state_reg_for_reading_buffer_2_for_fruitless_cycle_detection;
    case(state_reg_for_reading_buffer_2_for_fruitless_cycle_detection)
        1'b0:
        begin
            if(state_reg_for_reading_buffer_1_for_fruitless_cycle_detection && i_reg == 7'd96)
                state_next_for_reading_buffer_2_for_fruitless_cycle_detection = 1'b1;
        end            
    endcase
   end   
   always@*
   begin
    state_next_for_reading_buffer_3_for_fruitless_cycle_detection = state_reg_for_reading_buffer_3_for_fruitless_cycle_detection;
    case(state_reg_for_reading_buffer_3_for_fruitless_cycle_detection)
        1'b0:
        begin
            if(state_reg_for_reading_buffer_2_for_fruitless_cycle_detection && i_reg == 7'd96)
                state_next_for_reading_buffer_3_for_fruitless_cycle_detection = 1'b1;
        end            
    endcase
   end    
   
   // Distirbuted RAM employed for detecting higher fruitless cycles.
   distributed_ram_single_port_depth_128 #(.DATA_WIDTH(131)) Buffer_for_detecting_higher_fruitless_cycles(.clk(clk),
   .write_enable(i_reg_for_detecting_higher_fruitless_cycles == 5'd0 && state_reg_for_higher_fruitless_cycles_detection), 
   .addr(i_reg), .data_in(new_iteration_coord_x), .data_out(prev_X_coord_for_higher_fruitless_cycles_detection));
   
   
   // FIFO Buffers employed for detecting 2 cycles and 4 cycles.   
   FIFO_Buffer  #(.DATA_WIDTH(11), .ADDR_WIDTH(7)) Buffer_1_for_previous_branch(.clk(clk), .rst_n(rst_n), .write_enable(state_for_writing_buffer_1_for_fruitless_cycle_detection),
   .read_enable(state_reg_for_reading_buffer_1_for_fruitless_cycle_detection), .write_data({sign_taken_for_iteration, branch_to_take_iter_i}), .read_data(sign_and_branch_taken_iter_i_minus_1));
   
   FIFO_Buffer  #(.DATA_WIDTH(11), .ADDR_WIDTH(7)) Buffer_2_for_previous_branch(.clk(clk), .rst_n(rst_n), .write_enable(state_reg_for_writing_buffer_2_for_fruitless_cycle_detection),
   .read_enable(state_reg_for_reading_buffer_2_for_fruitless_cycle_detection), .write_data(sign_and_branch_taken_iter_i_minus_1), .read_data(sign_and_branch_taken_iter_i_minus_2));
      
   FIFO_Buffer  #(.DATA_WIDTH(11), .ADDR_WIDTH(7)) Buffer_3_for_previous_branch(.clk(clk), .rst_n(rst_n), .write_enable(state_reg_for_writing_buffer_3_for_fruitless_cycle_detection),
   .read_enable(state_reg_for_reading_buffer_3_for_fruitless_cycle_detection), .write_data(sign_and_branch_taken_iter_i_minus_2), .read_data(sign_and_branch_taken_iter_i_minus_3));
            
   assign i_next = (i_reg == 7'd97) ? 7'd0 : i_reg + 1; 
  
  wire [7:0] hamming_wt;
  
  compute_hamming_weight get_hamming_weight(new_iteration_coord_x, hamming_wt);
  assign points_available_for_output = negation_map_is_computed;  
  assign is_distinguished_point = (hamming_wt <= 28) && negation_map_is_computed;

endmodule
