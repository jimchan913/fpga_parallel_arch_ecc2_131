`timescale 1ns / 1ps

module negation_map #(parameter n = 131)(input wire clk, input wire rst_n, input wire start_enable,
 input wire [n-1:0] input_coord_x, input wire [n-1:0] input_coord_y,
 output wire [n-1:0] output_coord_x, output wire [n-1:0] output_coord_y,
 output wire sign, output wire coeff_buffer_read_en, output wire negation_map_is_computed);
    wire [n-1:0] x_add_y;
    
    assign x_add_y = input_coord_x ^ input_coord_y;
    reg comparison_stage_1_computed;  // compare the higher bits 130 to 87
    reg comparison_stage_2_computed;  // compare the middle bits 86 to 42
    reg comparison_stage_3_computed; // compare the lower bits 41 to 0
    wire compare_higher_bits_result; reg compare_higher_bits_result_reg_1; reg compare_higher_bits_result_reg_2; reg compare_higher_bits_result_reg_3;
    wire compare_middle_bits_result; reg compare_middle_bits_result_reg_1; reg compare_middle_bits_result_reg_2;
    wire compare_lower_bits_result; reg compare_lower_bits_result_reg;
    /*wire equal_higher_bits_result; reg equal_higher_bits_result_reg_1; reg equal_higher_bits_result_reg_2; reg equal_higher_bits_result_reg_3;
    wire equal_middle_bits_result; reg equal_middle_bits_result_reg_1; reg equal_middle_bits_result_reg_2;*/

    
    reg [n-1:0] input_coord_x_reg_1, input_coord_x_reg_2, input_coord_x_reg_3;
    reg [n-1:0] input_coord_y_reg_1, input_coord_y_reg_2, input_coord_y_reg_3;
    reg [n-1:0] x_add_y_reg_1, x_add_y_reg_2, x_add_y_reg_3;
    
    assign compare_higher_bits_result = input_coord_y[130:87] > x_add_y[130:87];
    assign compare_middle_bits_result = input_coord_y_reg_1[86:42] > x_add_y_reg_1[86:42];
    assign compare_lower_bits_result  = input_coord_y_reg_2[41:0] > x_add_y_reg_2[41:0];
                
    always@(posedge clk, negedge rst_n)
    begin
        if(~rst_n)
        begin
            comparison_stage_1_computed <= 1'b0;
            compare_higher_bits_result_reg_1 <= 1'b0;
            input_coord_x_reg_1 <= 131'b0;
            input_coord_y_reg_1 <= 131'b0;
            x_add_y_reg_1 <= 131'b0;
        end
        else if(start_enable)
        begin
            comparison_stage_1_computed <= 1'b1;     
            compare_higher_bits_result_reg_1 <= compare_higher_bits_result;   
            input_coord_x_reg_1 <= input_coord_x;
            input_coord_y_reg_1 <= input_coord_y;  
            x_add_y_reg_1 <= x_add_y; 
        end              
    end

    always@(posedge clk, negedge rst_n)
    begin
        if(~rst_n)
        begin
            comparison_stage_2_computed <= 1'b0;
            compare_higher_bits_result_reg_2 <= 1'b0;
            compare_middle_bits_result_reg_1 <= 1'b0;
            input_coord_x_reg_2 <= 131'b0;
            input_coord_y_reg_2 <= 131'b0;
            x_add_y_reg_2 <= 131'b0;            
        end
        else if(comparison_stage_1_computed)    
        begin
            comparison_stage_2_computed <= 1'b1;
            compare_higher_bits_result_reg_2 <= compare_higher_bits_result_reg_1;
            compare_middle_bits_result_reg_1 <= compare_middle_bits_result;
            input_coord_x_reg_2 <= input_coord_x_reg_1;
            input_coord_y_reg_2 <= input_coord_y_reg_1;
            x_add_y_reg_2 <= x_add_y_reg_1;                
        end    
    end    
    always@(posedge clk, negedge rst_n)
    begin
        if(~rst_n)
        begin
            comparison_stage_3_computed <= 1'b0;
            compare_higher_bits_result_reg_3 <= 1'b0;
            compare_middle_bits_result_reg_2 <= 1'b0;
            compare_lower_bits_result_reg <= 1'b0;
            input_coord_x_reg_3 <= 131'b0;
            input_coord_y_reg_3 <= 131'b0;
            x_add_y_reg_3 <= 131'b0;                 
        end    
        else if(comparison_stage_2_computed)
        begin
            comparison_stage_3_computed <= comparison_stage_2_computed;
            compare_higher_bits_result_reg_3 <= compare_higher_bits_result_reg_2;
            compare_middle_bits_result_reg_2 <= compare_middle_bits_result_reg_1;
            compare_lower_bits_result_reg <= compare_lower_bits_result;
            input_coord_x_reg_3 <= input_coord_x_reg_2;
            input_coord_y_reg_3 <= input_coord_y_reg_2;
            x_add_y_reg_3 <=  x_add_y_reg_2;               
        end    
    end    
        // wrong calculation for negation map
    wire equal_higher_bits, equal_middle_bits;
    assign equal_higher_bits = x_add_y_reg_3[130:87] == input_coord_y_reg_3[130:87];
    assign equal_middle_bits = x_add_y_reg_3[86:42] == input_coord_y_reg_3[86:42];
    assign sign = compare_higher_bits_result_reg_3 ||
     (equal_higher_bits && compare_middle_bits_result_reg_2) ||
     (equal_higher_bits && equal_middle_bits && compare_lower_bits_result_reg);
    assign output_coord_x = input_coord_x_reg_3;
    assign output_coord_y = sign  ? x_add_y_reg_3 : input_coord_y_reg_3;
    assign negation_map_is_computed = comparison_stage_3_computed;
    assign coeff_buffer_read_en = comparison_stage_2_computed;
endmodule
