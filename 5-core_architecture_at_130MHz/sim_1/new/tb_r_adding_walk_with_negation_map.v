`timescale 1ns / 1ps

module tb_r_adding_walk_using_negation_map();

      reg clk; reg rst_n;
 wire [130:0] new_x;
 wire [130:0] new_y;
 wire [130:0] new_coeff_c_output;
 wire [130:0] new_coeff_d_output;
 wire point_addition_is_computed;
  wire is_dp;
  /*wire [6:0] i_reg;
  

 wire [130:0] sp_coord_x, sp_coord_y;
wire [130:0] c;
wire [130:0] R_i_coord_x, R_i_coord_y;*/
 /*
  wire coeff_buffer_read_en;
  wire start_enable_for_point_addition;
  
    wire [130:0] X_i_coord_x;
  wire [130:0] X_i_coord_y;
 wire [130:0] R_i_coord_x;
  wire [130:0] R_i_coord_y;
  wire [130:0] coeff_c_after_point_addition_FIFO_input;
  wire [130:0] coeff_d_after_point_addition_FIFO_input ;
    wire [130:0] coeff_c_after_point_addition_FIFO_output;
  wire [130:0] coeff_d_after_point_addition_FIFO_output ;
  wire [130:0] X_i_coeff_c;
  wire [130:0] starting_points_coeff_c;
*/
    r_adding_walk_with_negation_map_module_1 r_adding(clk, rst_n, 1'b1, new_x, new_y,
      new_coeff_c_output, new_coeff_d_output, point_addition_is_computed, is_dp);
     
    initial 
    begin
     clk = 0;
    rst_n = 0;
    #20 rst_n = 1;
    end 
    
    always 
    begin
        #10 clk = ~clk;
    end      
    

endmodule
