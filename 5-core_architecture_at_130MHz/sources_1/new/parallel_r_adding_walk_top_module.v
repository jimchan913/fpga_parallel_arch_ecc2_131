`timescale 1ns / 1ps

module parallel_r_adding_walk_top_module #(parameter n = 131)(input wire clk, input wire rst_n, input wire start_enable,
 input wire [3:0] uart_state, output wire is_dp_in_main_storage,
 output wire [n-1:0] dp_coord_x_register_value, dp_coord_y_register_value,dp_coeff_c_register_value,dp_coeff_d_register_value); 

    localparam  WAIT =  2;
     
    wire read_dp_into_main_storage; 
    wire [n-1:0] point_addition_coord_x_1;
    wire [n-1:0] point_addition_coord_y_1, point_addition_coeff_c_1, point_addition_coeff_d_1;
    wire is_point_addition_computed_1;
    wire is_point_addition_result_dp_1;

    r_adding_walk_with_negation_map_module_1  r_adding_walk_module_instance_1(.clk(clk), .rst_n(rst_n), .start_enable(start_enable),
        .new_iteration_coord_x(point_addition_coord_x_1), .new_iteration_coord_y(point_addition_coord_y_1),
        .new_iteration_coeff_c_output(point_addition_coeff_c_1),
        .new_iteration_coeff_d_output(point_addition_coeff_d_1), 
        .points_available_for_output(is_point_addition_computed_1),
        .is_distinguished_point(is_point_addition_result_dp_1));
       
    wire [n-1:0] point_addition_coord_x_2;
    wire [n-1:0] point_addition_coord_y_2, point_addition_coeff_c_2, point_addition_coeff_d_2;
    wire is_point_addition_computed_2;
    wire is_point_addition_result_dp_2;

    r_adding_walk_with_negation_map_module_2  r_adding_walk_module_instance_2(.clk(clk), .rst_n(rst_n), .start_enable(start_enable),
        .new_iteration_coord_x(point_addition_coord_x_2), .new_iteration_coord_y(point_addition_coord_y_2),
        .new_iteration_coeff_c_output(point_addition_coeff_c_2),
        .new_iteration_coeff_d_output(point_addition_coeff_d_2), 
        .points_available_for_output(is_point_addition_computed_2),
        .is_distinguished_point(is_point_addition_result_dp_2));
            
    wire [n-1:0] point_addition_coord_x_3;
    wire [n-1:0] point_addition_coord_y_3, point_addition_coeff_c_3, point_addition_coeff_d_3;
    wire is_point_addition_computed_3;
    wire is_point_addition_result_dp_3;

    r_adding_walk_with_negation_map_module_3  r_adding_walk_module_instance_3(.clk(clk), .rst_n(rst_n), .start_enable(start_enable),
        .new_iteration_coord_x(point_addition_coord_x_3), .new_iteration_coord_y(point_addition_coord_y_3),
        .new_iteration_coeff_c_output(point_addition_coeff_c_3),
        .new_iteration_coeff_d_output(point_addition_coeff_d_3), 
        .points_available_for_output(is_point_addition_computed_3),
        .is_distinguished_point(is_point_addition_result_dp_3));
       
    wire [n-1:0] point_addition_coord_x_4;
    wire [n-1:0] point_addition_coord_y_4, point_addition_coeff_c_4, point_addition_coeff_d_4;
    wire is_point_addition_computed_4;
    wire is_point_addition_result_dp_4;

    r_adding_walk_with_negation_map_module_4  r_adding_walk_module_instance_4(.clk(clk), .rst_n(rst_n), .start_enable(start_enable),
        .new_iteration_coord_x(point_addition_coord_x_4), .new_iteration_coord_y(point_addition_coord_y_4),
        .new_iteration_coeff_c_output(point_addition_coeff_c_4),
        .new_iteration_coeff_d_output(point_addition_coeff_d_4), 
        .points_available_for_output(is_point_addition_computed_4),
        .is_distinguished_point(is_point_addition_result_dp_4)); 
  
    wire [n-1:0] point_addition_coord_x_5;
    wire [n-1:0] point_addition_coord_y_5, point_addition_coeff_c_5, point_addition_coeff_d_5;
    wire is_point_addition_computed_5;
    wire is_point_addition_result_dp_5;

    r_adding_walk_with_negation_map_module_5  r_adding_walk_module_instance_5(.clk(clk), .rst_n(rst_n), .start_enable(start_enable),
        .new_iteration_coord_x(point_addition_coord_x_5), .new_iteration_coord_y(point_addition_coord_y_5),
        .new_iteration_coeff_c_output(point_addition_coeff_c_5),
        .new_iteration_coeff_d_output(point_addition_coeff_d_5), 
        .points_available_for_output(is_point_addition_computed_5),
        .is_distinguished_point(is_point_addition_result_dp_5));
    /*  
    wire [n-1:0] point_addition_coord_x_6;
    wire [n-1:0] point_addition_coord_y_6, point_addition_coeff_c_6, point_addition_coeff_d_6;
    wire is_point_addition_computed_6;
    wire is_point_addition_result_dp_6;

    r_adding_walk_with_negation_map_module_6  r_adding_walk_module_instance_6(.clk(clk), .rst_n(rst_n), .start_enable(start_enable),
        .new_iteration_coord_x(point_addition_coord_x_6), .new_iteration_coord_y(point_addition_coord_y_6),
        .new_iteration_coeff_c_output(point_addition_coeff_c_6),
        .new_iteration_coeff_d_output(point_addition_coeff_d_6), 
        .points_available_for_output(is_point_addition_computed_6),
        .is_distinguished_point(is_point_addition_result_dp_6));
       
    wire [n-1:0] point_addition_coord_x_7;
    wire [n-1:0] point_addition_coord_y_7, point_addition_coeff_c_7, point_addition_coeff_d_7;
    wire is_point_addition_computed_7;
    wire is_point_addition_result_dp_7;

    r_adding_walk_with_negation_map_module_7  r_adding_walk_module_instance_7(.clk(clk), .rst_n(rst_n), .start_enable(start_enable),
        .new_iteration_coord_x(point_addition_coord_x_7), .new_iteration_coord_y(point_addition_coord_y_7),
        .new_iteration_coeff_c_output(point_addition_coeff_c_7),
        .new_iteration_coeff_d_output(point_addition_coeff_d_7), 
        .points_available_for_output(is_point_addition_computed_7),
        .is_distinguished_point(is_point_addition_result_dp_7));    
 
    wire [n-1:0] point_addition_coord_x_8;
    wire [n-1:0] point_addition_coord_y_8, point_addition_coeff_c_8, point_addition_coeff_d_8;
    wire is_point_addition_computed_8;
    wire is_point_addition_result_dp_8;

    r_adding_walk_with_negation_map_module_8  r_adding_walk_module_instance_8(.clk(clk), .rst_n(rst_n), .start_enable(start_enable),
        .new_iteration_coord_x(point_addition_coord_x_8), .new_iteration_coord_y(point_addition_coord_y_8),
        .new_iteration_coeff_c_output(point_addition_coeff_c_8),
        .new_iteration_coeff_d_output(point_addition_coeff_d_8), 
        .points_available_for_output(is_point_addition_computed_8),
        .is_distinguished_point(is_point_addition_result_dp_8));   
    */
    wire read_from_dp_storage_for_point_addition_1, read_from_dp_storage_for_point_addition_2, read_from_dp_storage_for_point_addition_3,
     read_from_dp_storage_for_point_addition_4, read_from_dp_storage_for_point_addition_5;
    /* read_from_dp_storage_for_point_addition_6
     , read_from_dp_storage_for_point_addition_7, read_from_dp_storage_for_point_addition_8; */
    wire [n-1:0] dp_coord_x, dp_coord_y, dp_coeff_c, dp_coeff_d;

    wire [n-1:0] point_addition_coord_x_dp_1, point_addition_coord_y_dp_1, point_addition_coeff_c_dp_1, point_addition_coeff_d_dp_1;
    wire dp_storage_for_point_addition_is_empty_1;
    
    FIFO_Buffer_for_dp_storage #(.DATA_WIDTH(131), // number of bits in a word
                                     .ADDR_WIDTH(3))
    dp_storage_of_point_addition_result_1(.clk(clk), .rst_n(rst_n), 
    .write_enable(is_point_addition_result_dp_1), .read_enable(read_from_dp_storage_for_point_addition_1),
    .write_data_1(point_addition_coord_x_1), .write_data_2(point_addition_coord_y_1), .write_data_3(point_addition_coeff_c_1), .write_data_4(point_addition_coeff_d_1),
    .read_data_1(point_addition_coord_x_dp_1), .read_data_2(point_addition_coord_y_dp_1), .read_data_3(point_addition_coeff_c_dp_1), .read_data_4(point_addition_coeff_d_dp_1),
    .empty(dp_storage_for_point_addition_is_empty_1));
    
    wire [n-1:0] point_addition_coord_x_dp_2, point_addition_coord_y_dp_2, point_addition_coeff_c_dp_2, point_addition_coeff_d_dp_2;
    wire dp_storage_for_point_addition_is_empty_2;

    FIFO_Buffer_for_dp_storage #(.DATA_WIDTH(131), 
                                     .ADDR_WIDTH(3))
    dp_storage_of_point_addition_result_2(.clk(clk), .rst_n(rst_n), 
    .write_enable(is_point_addition_result_dp_2), .read_enable(read_from_dp_storage_for_point_addition_2),
    .write_data_1(point_addition_coord_x_2), .write_data_2(point_addition_coord_y_2), .write_data_3(point_addition_coeff_c_2), .write_data_4(point_addition_coeff_d_2),
    .read_data_1(point_addition_coord_x_dp_2), .read_data_2(point_addition_coord_y_dp_2), .read_data_3(point_addition_coeff_c_dp_2), .read_data_4(point_addition_coeff_d_dp_2),
    .empty(dp_storage_for_point_addition_is_empty_2));
        
    wire [n-1:0] point_addition_coord_x_dp_3, point_addition_coord_y_dp_3, point_addition_coeff_c_dp_3, point_addition_coeff_d_dp_3;
    wire dp_storage_for_point_addition_is_empty_3;
    
    FIFO_Buffer_for_dp_storage #(.DATA_WIDTH(131),
                                     .ADDR_WIDTH(3))
    dp_storage_of_point_addition_result_3(.clk(clk), .rst_n(rst_n), 
    .write_enable(is_point_addition_result_dp_3), .read_enable(read_from_dp_storage_for_point_addition_3),
    .write_data_1(point_addition_coord_x_3), .write_data_2(point_addition_coord_y_3), .write_data_3(point_addition_coeff_c_3), .write_data_4(point_addition_coeff_d_3),
    .read_data_1(point_addition_coord_x_dp_3), .read_data_2(point_addition_coord_y_dp_3), .read_data_3(point_addition_coeff_c_dp_3), .read_data_4(point_addition_coeff_d_dp_3),
    .empty(dp_storage_for_point_addition_is_empty_3));
    
    wire [n-1:0] point_addition_coord_x_dp_4, point_addition_coord_y_dp_4, point_addition_coeff_c_dp_4, point_addition_coeff_d_dp_4;
    wire dp_storage_for_point_addition_is_empty_4;

    FIFO_Buffer_for_dp_storage #(.DATA_WIDTH(131), 
                                     .ADDR_WIDTH(3))
    dp_storage_of_point_addition_result_4(.clk(clk), .rst_n(rst_n), 
    .write_enable(is_point_addition_result_dp_4), .read_enable(read_from_dp_storage_for_point_addition_4),
    .write_data_1(point_addition_coord_x_4), .write_data_2(point_addition_coord_y_4), .write_data_3(point_addition_coeff_c_4), .write_data_4(point_addition_coeff_d_4),
    .read_data_1(point_addition_coord_x_dp_4), .read_data_2(point_addition_coord_y_dp_4), .read_data_3(point_addition_coeff_c_dp_4), .read_data_4(point_addition_coeff_d_dp_4),
    .empty(dp_storage_for_point_addition_is_empty_4));

    wire [n-1:0] point_addition_coord_x_dp_5, point_addition_coord_y_dp_5, point_addition_coeff_c_dp_5, point_addition_coeff_d_dp_5;
    wire dp_storage_for_point_addition_is_empty_5;

    FIFO_Buffer_for_dp_storage #(.DATA_WIDTH(131),
                                     .ADDR_WIDTH(3))
    dp_storage_of_point_addition_result_5(.clk(clk), .rst_n(rst_n), 
    .write_enable(is_point_addition_result_dp_5), .read_enable(read_from_dp_storage_for_point_addition_5),
    .write_data_1(point_addition_coord_x_5), .write_data_2(point_addition_coord_y_5), .write_data_3(point_addition_coeff_c_5), .write_data_4(point_addition_coeff_d_5),
    .read_data_1(point_addition_coord_x_dp_5), .read_data_2(point_addition_coord_y_dp_5), .read_data_3(point_addition_coeff_c_dp_5), .read_data_4(point_addition_coeff_d_dp_5),
    .empty(dp_storage_for_point_addition_is_empty_5));
        /*
    wire [n-1:0] point_addition_coord_x_dp_6, point_addition_coord_y_dp_6, point_addition_coeff_c_dp_6, point_addition_coeff_d_dp_6;
    wire dp_storage_for_point_addition_is_empty_6;
    
    dram_based_FIFO_for_dp_storage #(.DATA_WIDTH(131),
                                     .ADDR_WIDTH(3))
    dp_storage_of_point_addition_result_6(.clk(clk), .rst_n(rst_n), 
    .write_enable(is_point_addition_result_dp_6), .read_enable(read_from_dp_storage_for_point_addition_6),
    .write_data_1(point_addition_coord_x_6), .write_data_2(point_addition_coord_y_6), .write_data_3(point_addition_coeff_c_6), .write_data_4(point_addition_coeff_d_6),
    .read_data_1(point_addition_coord_x_dp_6), .read_data_2(point_addition_coord_y_dp_6), .read_data_3(point_addition_coeff_c_dp_6), .read_data_4(point_addition_coeff_d_dp_6),
    .empty(dp_storage_for_point_addition_is_empty_6));
    
    wire [n-1:0] point_addition_coord_x_dp_7, point_addition_coord_y_dp_7, point_addition_coeff_c_dp_7, point_addition_coeff_d_dp_7;
    wire dp_storage_for_point_addition_is_empty_7;
    
    dram_based_FIFO_for_dp_storage #(.DATA_WIDTH(131),
                                     .ADDR_WIDTH(3))
    dp_storage_of_point_addition_result_7(.clk(clk), .rst_n(rst_n), 
    .write_enable(is_point_addition_result_dp_7), .read_enable(read_from_dp_storage_for_point_addition_7),
    .write_data_1(point_addition_coord_x_7), .write_data_2(point_addition_coord_y_7), .write_data_3(point_addition_coeff_c_7), .write_data_4(point_addition_coeff_d_7),
    .read_data_1(point_addition_coord_x_dp_7), .read_data_2(point_addition_coord_y_dp_7), .read_data_3(point_addition_coeff_c_dp_7), .read_data_4(point_addition_coeff_d_dp_7),
    .empty(dp_storage_for_point_addition_is_empty_7));
        
    wire [n-1:0] point_addition_coord_x_dp_8, point_addition_coord_y_dp_8, point_addition_coeff_c_dp_8, point_addition_coeff_d_dp_8;
    wire dp_storage_for_point_addition_is_empty_8;
    
    dram_based_FIFO_for_dp_storage #(.DATA_WIDTH(131),
                                   .ADDR_WIDTH(3))
    dp_storage_of_point_addition_result_8(.clk(clk), .rst_n(rst_n), 
    .write_enable(is_point_addition_result_dp_8), .read_enable(read_from_dp_storage_for_point_addition_8),
    .write_data_1(point_addition_coord_x_8), .write_data_2(point_addition_coord_y_8), .write_data_3(point_addition_coeff_c_8), .write_data_4(point_addition_coeff_d_8),
    .read_data_1(point_addition_coord_x_dp_8), .read_data_2(point_addition_coord_y_dp_8), .read_data_3(point_addition_coeff_c_dp_8), .read_data_4(point_addition_coeff_d_dp_8),
    .empty(dp_storage_for_point_addition_is_empty_8));
  */  
  
    assign read_dp_into_main_storage = (~dp_storage_for_point_addition_is_empty_1 || ~dp_storage_for_point_addition_is_empty_2 || ~dp_storage_for_point_addition_is_empty_3 || ~dp_storage_for_point_addition_is_empty_4 || ~dp_storage_for_point_addition_is_empty_5);
     //|| ~dp_storage_for_point_addition_is_empty_5 || ~dp_storage_for_point_addition_is_empty_6 || ~dp_storage_for_point_addition_is_empty_7 || ~dp_storage_for_point_addition_is_empty_8);

    assign read_from_dp_storage_for_point_addition_1 = ~dp_storage_for_point_addition_is_empty_1;
    assign read_from_dp_storage_for_point_addition_2 = dp_storage_for_point_addition_is_empty_1 && ~dp_storage_for_point_addition_is_empty_2; 
    assign read_from_dp_storage_for_point_addition_3 = dp_storage_for_point_addition_is_empty_1 && dp_storage_for_point_addition_is_empty_2 && ~dp_storage_for_point_addition_is_empty_3; 
    assign read_from_dp_storage_for_point_addition_4 = dp_storage_for_point_addition_is_empty_1 && dp_storage_for_point_addition_is_empty_2 && dp_storage_for_point_addition_is_empty_3 && ~dp_storage_for_point_addition_is_empty_4; 
    assign read_from_dp_storage_for_point_addition_5 = dp_storage_for_point_addition_is_empty_1 && dp_storage_for_point_addition_is_empty_2 && dp_storage_for_point_addition_is_empty_3 && dp_storage_for_point_addition_is_empty_4
      && ~dp_storage_for_point_addition_is_empty_5;       
    /*
    assign read_from_dp_storage_for_point_addition_6 = dp_storage_for_point_addition_is_empty_1 && dp_storage_for_point_addition_is_empty_2 && dp_storage_for_point_addition_is_empty_3 && dp_storage_for_point_addition_is_empty_4
      && dp_storage_for_point_addition_is_empty_5 && ~dp_storage_for_point_addition_is_empty_6;
    assign read_from_dp_storage_for_point_addition_7 = dp_storage_for_point_addition_is_empty_1 && dp_storage_for_point_addition_is_empty_2 && dp_storage_for_point_addition_is_empty_3 && dp_storage_for_point_addition_is_empty_4 
      && dp_storage_for_point_addition_is_empty_5 && dp_storage_for_point_addition_is_empty_6 && ~dp_storage_for_point_addition_is_empty_7;   
    assign read_from_dp_storage_for_point_addition_8 = dp_storage_for_point_addition_is_empty_1 && dp_storage_for_point_addition_is_empty_2 && dp_storage_for_point_addition_is_empty_3 && dp_storage_for_point_addition_is_empty_4 
      && dp_storage_for_point_addition_is_empty_5 && dp_storage_for_point_addition_is_empty_6 && dp_storage_for_point_addition_is_empty_7 && ~dp_storage_for_point_addition_is_empty_8;
  */
   
    reg select_signal_for_reading_dp_1, select_signal_for_reading_dp_2, select_signal_for_reading_dp_3, select_signal_for_reading_dp_4, select_signal_for_reading_dp_5;
    //,select_signal_for_reading_dp_5, select_signal_for_reading_dp_6, select_signal_for_reading_dp_7, select_signal_for_reading_dp_8;

    always@(posedge clk)
    begin
        select_signal_for_reading_dp_1 <= read_from_dp_storage_for_point_addition_1;
        select_signal_for_reading_dp_2 <= read_from_dp_storage_for_point_addition_2;    
        select_signal_for_reading_dp_3 <= read_from_dp_storage_for_point_addition_3;
        select_signal_for_reading_dp_4 <= read_from_dp_storage_for_point_addition_4;      
        select_signal_for_reading_dp_5 <= read_from_dp_storage_for_point_addition_5;
    end
    /*
    assign select_signal_for_reading_dp_6 = read_from_dp_storage_for_point_addition_6;    
    assign select_signal_for_reading_dp_7 = read_from_dp_storage_for_point_addition_7;
    assign select_signal_for_reading_dp_8 = read_from_dp_storage_for_point_addition_8; */
    
    reg write_enable_for_main_storage;
    wire read_enable_for_main_storage;

    wire [n-1:0] dp_coord_x_main_storage_input, dp_coord_y_main_storage_input, dp_coeff_c_main_storage_input, dp_coeff_d_main_storage_input;
    wire [n-1:0] dp_coord_x_main_storage_output, dp_coord_y_main_storage_output, dp_coeff_c_main_storage_output, dp_coeff_d_main_storage_output;
    wire main_dp_storage_is_empty;
    
    always@(posedge clk)
    begin
        write_enable_for_main_storage <= read_dp_into_main_storage;
    end
    assign read_enable_for_main_storage = (uart_state == WAIT) && ~main_dp_storage_is_empty;
    assign is_dp_in_main_storage = ~main_dp_storage_is_empty;

    
    FIFO_Buffer_for_dp_storage #(.DATA_WIDTH(131),
                                 .ADDR_WIDTH(7))
    main_dp_storage(.clk(clk), .rst_n(rst_n), 
    .write_enable(write_enable_for_main_storage), .read_enable(read_enable_for_main_storage),
    .write_data_1(dp_coord_x_main_storage_input), .write_data_2(dp_coord_y_main_storage_input), .write_data_3(dp_coeff_c_main_storage_input), .write_data_4(dp_coeff_d_main_storage_input),
    .read_data_1(dp_coord_x_main_storage_output), .read_data_2(dp_coord_y_main_storage_output), .read_data_3(dp_coeff_c_main_storage_output), .read_data_4(dp_coeff_d_main_storage_output),
    .empty(main_dp_storage_is_empty));    
    
    reg write_enable_for_dp_register;
    
    always@(posedge clk, negedge rst_n)
    begin
        if(rst_n == 1'b0)
        begin
            write_enable_for_dp_register <= 1'b0;
        end
        else
        begin
            write_enable_for_dp_register <= read_enable_for_main_storage;
        end
    end
    
    assign dp_coord_x_main_storage_input = select_signal_for_reading_dp_1 ? point_addition_coord_x_dp_1 :
                       (select_signal_for_reading_dp_2 ? point_addition_coord_x_dp_2 :
                       (select_signal_for_reading_dp_3 ? point_addition_coord_x_dp_3 : 
                       (select_signal_for_reading_dp_4 ? point_addition_coord_x_dp_4 :
                       (select_signal_for_reading_dp_5 ? point_addition_coord_x_dp_5 : 131'h0))));
                        /*
                       (select_signal_for_reading_dp_6 ? point_addition_coord_x_dp_6 :                   
                       (select_signal_for_reading_dp_7 ? point_addition_coord_x_dp_7 :
                       (select_signal_for_reading_dp_8 ? point_addition_coord_x_dp_8 : 131'h0)))))));*/
                                          
    assign dp_coord_y_main_storage_input = select_signal_for_reading_dp_1 ? point_addition_coord_y_dp_1 :
                       (select_signal_for_reading_dp_2 ? point_addition_coord_y_dp_2 :
                       (select_signal_for_reading_dp_3 ? point_addition_coord_y_dp_3 :
                       (select_signal_for_reading_dp_4 ? point_addition_coord_y_dp_4 :
                       (select_signal_for_reading_dp_5 ? point_addition_coord_y_dp_5 : 131'h0))));
                       /*
                       (select_signal_for_reading_dp_6 ? point_addition_coord_y_dp_6 :
                       (select_signal_for_reading_dp_7 ? point_addition_coord_y_dp_7 :
                       (select_signal_for_reading_dp_8 ? point_addition_coord_y_dp_8 : 131'h0)))))));*/
    assign dp_coeff_c_main_storage_input = select_signal_for_reading_dp_1 ? point_addition_coeff_c_dp_1 :
                       (select_signal_for_reading_dp_2 ? point_addition_coeff_c_dp_2 :
                       (select_signal_for_reading_dp_3 ? point_addition_coeff_c_dp_3 :
                       (select_signal_for_reading_dp_4 ? point_addition_coeff_c_dp_4 :
                       (select_signal_for_reading_dp_5 ? point_addition_coeff_c_dp_5  : 131'h0))));
                       /*
                       (select_signal_for_reading_dp_6 ? point_addition_coeff_c_dp_6 :
                       (select_signal_for_reading_dp_7 ? point_addition_coeff_c_dp_7 :
                       (select_signal_for_reading_dp_8 ? point_addition_coeff_c_dp_8 : 131'h0)))))));*/
    assign dp_coeff_d_main_storage_input = select_signal_for_reading_dp_1 ? point_addition_coeff_d_dp_1 :
                       (select_signal_for_reading_dp_2 ? point_addition_coeff_d_dp_2 :
                       (select_signal_for_reading_dp_3 ? point_addition_coeff_d_dp_3 :
                       (select_signal_for_reading_dp_4 ? point_addition_coeff_d_dp_4 :
                       (select_signal_for_reading_dp_5 ? point_addition_coeff_d_dp_5  : 131'h0))));
                       /*
                       (select_signal_for_reading_dp_6 ? point_addition_coeff_d_dp_6 :
                       (select_signal_for_reading_dp_7 ? point_addition_coeff_d_dp_7 : 
                       (select_signal_for_reading_dp_8 ? point_addition_coeff_d_dp_8 : 131'h0)))))));*/

    register_131bit reg_for_coord_x(.clk(clk), .rst_n(rst_n), .en(write_enable_for_dp_register), .d(dp_coord_x_main_storage_output), .q(dp_coord_x_register_value));
    register_131bit reg_for_coord_y(.clk(clk), .rst_n(rst_n), .en(write_enable_for_dp_register), .d(dp_coord_y_main_storage_output), .q(dp_coord_y_register_value));  
    register_131bit reg_for_coeff_c(.clk(clk), .rst_n(rst_n), .en(write_enable_for_dp_register), .d(dp_coeff_c_main_storage_output), .q(dp_coeff_c_register_value));      
    register_131bit reg_for_coeff_d(.clk(clk), .rst_n(rst_n), .en(write_enable_for_dp_register), .d(dp_coeff_d_main_storage_output), .q(dp_coeff_d_register_value));   
endmodule


