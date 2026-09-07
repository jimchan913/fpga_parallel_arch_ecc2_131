`timescale 1ns / 1ps

module point_addition#(parameter n = 131)(input wire clk, input wire rst_n, input wire start_en,
 input wire [n-1:0] x1, input wire [n-1:0] y1, // point P
 input wire [n-1:0] x2, input wire [n-1:0] y2, // point Q
  output reg [n-1:0] x3_output, output wire [n-1:0] y3_output, output reg point_addition_is_computed, output wire coeff_buffer_read_en);
  
    wire [n-1:0] x3_input; 
    localparam a = 131'h7ebcb7eecc296a1c4a1a14f2c9e44352e;
    
    wire [n-1:0] delta_x;
    wire [n-1:0] delta_y;
    wire [n-1:0] lambda;
    wire [n-1:0] lambda_squared;
    wire [n-1:0] x1_add_x2_add_a_input;
    wire [n-1:0] x1_add_x2_add_a_output;
    wire lambda_is_computed;
    
    gf_add adder_1(x1, x2, delta_x);
    gf_add adder_2(y1, y2, delta_y);
    gf_add adder_3(delta_x, a, x1_add_x2_add_a_input);
    
    wire compute_lambda_en;
    compute_lambda_module compute_lambda(.clk(clk), .rst_n(rst_n), .en(start_en), 
                                         .delta_x_input(delta_x), .delta_y_input(delta_y),
                                         .lambda(lambda), .compute_slope_enable(compute_lambda_en), .lambda_is_computed(lambda_is_computed));
    
    
    wire intermediate_var_1_buffer_empty, intermediate_var_1_buffer_full;  
    wire write_enable_for_intermediate_var_1_buffer;
    wire read_enable_for_intermediate_var_1_buffer;   
    FIFO_Buffer#(.DATA_WIDTH(131), .ADDR_WIDTH(7)) FIFO_Buffer_for_intermediate_var_1(.clk(clk), .rst_n(rst_n), 
                                                   .read_enable(read_enable_for_intermediate_var_1_buffer), 
                                                   .write_enable(write_enable_for_intermediate_var_1_buffer),
                                                   .write_data(x1_add_x2_add_a_input),
                                                   .empty(intermediate_var_1_buffer_empty), .full(intermediate_var_1_buffer_full),
                                                   .read_data(x1_add_x2_add_a_output));
                                            
    assign write_enable_for_intermediate_var_1_buffer = start_en;
    assign read_enable_for_intermediate_var_1_buffer = compute_lambda_en;         
                                          
    wire x1_buffer_empty, x1_buffer_full;  
    wire write_enable_for_x1_buffer;
    wire read_enable_for_x1_buffer;   
    wire [n-1:0] x1_output;
    FIFO_Buffer#(.DATA_WIDTH(131), .ADDR_WIDTH(7)) FIFO_Buffer_for_x1(.clk(clk), .rst_n(rst_n), 
                                                   .read_enable(read_enable_for_x1_buffer), 
                                                   .write_enable(write_enable_for_x1_buffer),
                                                   .write_data(x1),
                                                   .empty(x1_buffer_empty), .full(x1_buffer_full),
                                                   .read_data(x1_output));                                                   
    assign write_enable_for_x1_buffer = start_en;
    assign read_enable_for_x1_buffer = compute_lambda_en;

    wire y1_buffer_empty, y1_buffer_full;  
    wire write_enable_for_y1_buffer;
    wire read_enable_for_y1_buffer;   
    wire [n-1:0] y1_output;
    FIFO_Buffer#(.DATA_WIDTH(131), .ADDR_WIDTH(7)) FIFO_Buffer_for_y1(.clk(clk), .rst_n(rst_n), 
                                                   .read_enable(read_enable_for_y1_buffer), 
                                                   .write_enable(write_enable_for_y1_buffer),
                                                   .write_data(y1),
                                                   .empty(y1_buffer_empty), .full(y1_buffer_full),
                                                   .read_data(y1_output));
    
    assign write_enable_for_y1_buffer = start_en;
    assign read_enable_for_y1_buffer = lambda_is_computed; 
      
    gf_square squarer_1(lambda, lambda_squared);
    
    wire [n-1:0] intermediate_var_1;
    gf_add adder_4(lambda, lambda_squared, intermediate_var_1);
    gf_add adder_5(x1_add_x2_add_a_output, intermediate_var_1, x3_input); 
    
    always@(posedge clk or negedge rst_n)
    begin
       if(rst_n == 1'b0)
            x3_output <= 131'b0;
        else
            if(lambda_is_computed)
                x3_output <= x3_input;
    end
    
    wire [n-1:0] x1_add_x3; 
    gf_add adder_6(x1_output, x3_input, x1_add_x3);
    
    wire mult_enable;
    
    wire [n-1:0]intermediate_var_2; 
    assign mult_enable = lambda_is_computed;
    gf_mult_OBS_L3 multiplier_1(.clk(clk), .rst_n(rst_n), .enable(mult_enable), .a(lambda), .b(x1_add_x3), .y_reg(intermediate_var_2));

     wire [n-1:0] intermediate_var_3;
    gf_add adder_7(intermediate_var_2, x3_output, intermediate_var_3); 
    gf_add adder_8(intermediate_var_3, y1_output, y3_output);
    always@(posedge clk or negedge rst_n)
    begin
       if(rst_n == 1'b0)
           point_addition_is_computed <= 0;
       else
           point_addition_is_computed <= lambda_is_computed;
    end
    assign coeff_buffer_read_en = lambda_is_computed;
endmodule
