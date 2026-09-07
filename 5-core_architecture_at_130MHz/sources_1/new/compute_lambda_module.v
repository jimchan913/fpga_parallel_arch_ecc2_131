`timescale 1ns / 1ps

module compute_lambda_module
#(parameter n = 131)
(input wire clk, input wire rst_n, input wire en, 
input wire [n-1:0] delta_x_input, input wire [n-1:0] delta_y_input,
  output wire [n-1:0] lambda,
  output wire compute_slope_enable,
 output reg lambda_is_computed
);

    // computing inverse
    wire [n-1:0] inv_delta_x;
   // wire inverse_read_enable;
    // stored in FIFO bufer
    wire [n-1:0] delta_y_output;
    wire delta_y_buffer_empty, delta_y_buffer_full;
    
    
    wire write_enable_for_delta_y_buffer;
    wire  read_enable_for_delta_y_buffer;   
    FIFO_Buffer #(.DATA_WIDTH(131), .ADDR_WIDTH(7))  FIFO_Buffer_for_delta_y(.clk(clk), .rst_n(rst_n), .read_enable(read_enable_for_delta_y_buffer), .write_enable(write_enable_for_delta_y_buffer),
     .write_data(delta_y_input),.empty(delta_y_buffer_empty), .full(delta_y_buffer_full),  .read_data(delta_y_output));

    assign write_enable_for_delta_y_buffer = en;
    //assign read_enable_for_delta_y_buffer = inverse_read_enable;
    //wire compute_slope_enable;
    // compute slope
    gf_mult_OBS_L3 multiply_delta_y_with_inv_delta_x(.clk(clk), .rst_n(rst_n), .enable(compute_slope_enable), .a(delta_y_output), .b(inv_delta_x), .y_reg(lambda));
    
    // batch inverter module
    // the signal inverse_read_enable signifes that the inverse result is computed and can be used 
    // as input of other modules 
    
    batch_inversion inverter(.clk(clk), .rst_n(rst_n), .start_enable(en),
     .coord_x(delta_x_input), .output_inverse(inv_delta_x), .read_enable_for_delta_y_buffer(read_enable_for_delta_y_buffer), .compute_slope_enable(compute_slope_enable));
     
    always@(posedge clk or negedge rst_n)
    begin
        if(rst_n == 1'b0)
            lambda_is_computed <= 0;
        else
            lambda_is_computed <= compute_slope_enable;
     end
     //assign fifo_read_enable = compute_slope_enable; //read_enable_for_delta_y_buffer;
endmodule
