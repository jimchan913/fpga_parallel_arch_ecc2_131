`timescale 1ns / 1ps

module eea_inversion_module(input wire clk, input wire rst_n, input wire start, input wire [131:1] polynomial_for_inverse
 , output wire done_tick, output reg [131:1] H_reg);
  wire [132:1] irreducible_polynomial;
 assign irreducible_polynomial = 132'b100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000111;
     wire control_signal_1_for_i_stage_1, control_signal_2_for_i_stage_1;
     wire control_signal_1_for_i_stage_2, control_signal_2_for_i_stage_2, control_signal_1_for_i_add_1_stage_2, control_signal_2_for_i_add_1_stage_2;    
     wire control_signal_1_for_i_stage_3, control_signal_2_for_i_stage_3, control_signal_1_for_i_add_1_stage_3, control_signal_2_for_i_add_1_stage_3;
     wire control_signal_1_for_i_stage_4, control_signal_2_for_i_stage_4, control_signal_1_for_i_add_1_stage_4, control_signal_2_for_i_add_1_stage_4;
     wire control_signal_1_for_i_stage_5, control_signal_2_for_i_stage_5, control_signal_1_for_i_add_1_stage_5, control_signal_2_for_i_add_1_stage_5;               

    wire [131:1] H_i_old; wire [132:1] J_i_old; wire [132:1] R_i_old; wire [132:1] S_i_old;
    wire [131:1] H_i_stage_1; wire [132:1] J_i_stage_1; wire [132:1] R_i_stage_1; wire [132:1] S_i_stage_1;
    wire [131:1] H_i_stage_2; wire [132:1] J_i_stage_2; wire [132:1] R_i_stage_2; wire [132:1] S_i_stage_2;
    wire [131:1] H_i_stage_3; wire [132:1] J_i_stage_3; wire [132:1] R_i_stage_3; wire [132:1] S_i_stage_3;
    wire [131:1] H_i_stage_4; wire [132:1] J_i_stage_4; wire [132:1] R_i_stage_4; wire [132:1] S_i_stage_4;
    wire [131:1] H_i_stage_5; wire [132:1] J_i_stage_5; wire [132:1] R_i_stage_5; wire [132:1] S_i_stage_5;    


    wire [130:0] d_i_old;
    wire [130:0] d_i_stage_1; 
    wire [130:0] d_i_stage_2; 
    wire [130:0] d_i_stage_3; 
    wire [130:0] d_i_stage_4; 
    wire [130:0] d_i_stage_5;
    wire sign_i_old;         
    wire sign_i_stage_1;  
    wire sign_i_stage_2; 
    wire sign_i_stage_3; 
    wire sign_i_stage_4;  
    wire sign_i_stage_5;       
    reg [9:1] i_reg; reg state_reg;
    reg [130:0] d_reg;
    
    reg sign_reg; reg [132:1] S_reg; reg [132:1] J_reg; reg[132:1] R_reg;            
    reg [9:1] i_next; 
    localparam idle = 1'b0, op = 1'b1;
    reg state_next;
    always@(posedge clk or negedge rst_n)
    begin
    if(rst_n == 1'b0)
    begin
        state_reg <= idle;
        i_reg <= 1;
        S_reg <= 0;
        J_reg <= 0; 
        H_reg <= 0;
        R_reg <= 0;
        d_reg <= 0;
        sign_reg <= 0;
    end
    else
    begin
        state_reg <= state_next;
        i_reg <= i_next;
        S_reg <= S_i_stage_5; 
        J_reg <= J_i_stage_5;
        R_reg <= R_i_stage_5;
        H_reg <= H_i_stage_5;
        d_reg <= d_i_stage_5;
        sign_reg <= sign_i_stage_5; 
    end
    end
    
    always@*
    begin
    i_next = i_reg;
    state_next = state_reg;
    case(state_reg)
        idle:
        begin
            if(start)
            begin
                i_next = 1;
                state_next = op;
            end
        end    
        op:
        begin
            if(done_tick && start)
                i_next = 1;
            else            
                i_next = i_reg + 1;
        end
   endcase
   end
    
   assign done_tick = i_reg == 29;
   
   processing_element_single_iter PE_stage_1(.c_i_1(control_signal_1_for_i_stage_1), .c_i_2(control_signal_2_for_i_stage_1),
      .H_i_minus_1(H_i_old), .J_i_minus_1(J_i_old), .R_i_minus_1(R_i_old), .S_i_minus_1(S_i_old),
      .H_i(H_i_stage_1), .J_i(J_i_stage_1), .R_i(R_i_stage_1), .S_i(S_i_stage_1));      
  control_unit_single_iter CU_stage_1(.s_i_minus_1_bit_m(S_i_old[132]),.sign_i_minus_1(sign_i_old), .d_i_minus_1(d_i_old), .sign_i(sign_i_stage_1), .d_i(d_i_stage_1),
      .c_i_1(control_signal_1_for_i_stage_1), .c_i_2(control_signal_2_for_i_stage_1));   
             
   processing_element_2_iterations PE_stage_2(.c_i_1(control_signal_1_for_i_stage_2), .c_i_2(control_signal_2_for_i_stage_2),
      .c_i_plus_plus_1(control_signal_1_for_i_add_1_stage_2), .c_i_plus_plus_2(control_signal_2_for_i_add_1_stage_2),
      .H_i_minus_1(H_i_stage_1), .J_i_minus_1(J_i_stage_1), .R_i_minus_1(R_i_stage_1), .S_i_minus_1(S_i_stage_1),
      .H_i_plus_1(H_i_stage_2), .J_i_plus_1(J_i_stage_2), .R_i_plus_1(R_i_stage_2), .S_i_plus_1(S_i_stage_2));         
  control_unit_2_iterations CU_stage_2(.s_i_minus_1_bit_m(S_i_stage_1[132]), .s_i_minus_1_bit_m_minus_1(S_i_stage_1[131]),
  .r_i_minus_1_bit_m_minus_1(R_i_stage_1[131]), .sign_i_minus_1(sign_i_stage_1), .d_i_minus_1(d_i_stage_1), .sign_i_plus_1(sign_i_stage_2), .d_i_plus_1(d_i_stage_2),
      .c_i_1(control_signal_1_for_i_stage_2), .c_i_2(control_signal_2_for_i_stage_2),
      .c_i_plus_plus_1(control_signal_1_for_i_add_1_stage_2), .c_i_plus_plus_2(control_signal_2_for_i_add_1_stage_2));        
                   
   processing_element_2_iterations PE_stage_3(.c_i_1(control_signal_1_for_i_stage_3), .c_i_2(control_signal_2_for_i_stage_3),
      .c_i_plus_plus_1(control_signal_1_for_i_add_1_stage_3), .c_i_plus_plus_2(control_signal_2_for_i_add_1_stage_3),
      .H_i_minus_1(H_i_stage_2), .J_i_minus_1(J_i_stage_2), .R_i_minus_1(R_i_stage_2), .S_i_minus_1(S_i_stage_2),
      .H_i_plus_1(H_i_stage_3), .J_i_plus_1(J_i_stage_3), .R_i_plus_1(R_i_stage_3), .S_i_plus_1(S_i_stage_3));         
  control_unit_2_iterations CU_stage_3(.s_i_minus_1_bit_m(S_i_stage_2[132]), .s_i_minus_1_bit_m_minus_1(S_i_stage_2[131]),
  .r_i_minus_1_bit_m_minus_1(R_i_stage_2[131]), .sign_i_minus_1(sign_i_stage_2), .d_i_minus_1(d_i_stage_2), .sign_i_plus_1(sign_i_stage_3), .d_i_plus_1(d_i_stage_3),
      .c_i_1(control_signal_1_for_i_stage_3), .c_i_2(control_signal_2_for_i_stage_3),
      .c_i_plus_plus_1(control_signal_1_for_i_add_1_stage_3), .c_i_plus_plus_2(control_signal_2_for_i_add_1_stage_3));      

   processing_element_2_iterations PE_stage_4(.c_i_1(control_signal_1_for_i_stage_4), .c_i_2(control_signal_2_for_i_stage_4),
      .c_i_plus_plus_1(control_signal_1_for_i_add_1_stage_4), .c_i_plus_plus_2(control_signal_2_for_i_add_1_stage_4),
      .H_i_minus_1(H_i_stage_3), .J_i_minus_1(J_i_stage_3), .R_i_minus_1(R_i_stage_3), .S_i_minus_1(S_i_stage_3),
      .H_i_plus_1(H_i_stage_4), .J_i_plus_1(J_i_stage_4), .R_i_plus_1(R_i_stage_4), .S_i_plus_1(S_i_stage_4));         
  control_unit_2_iterations CU_stage_4(.s_i_minus_1_bit_m(S_i_stage_3[132]), .s_i_minus_1_bit_m_minus_1(S_i_stage_3[131]),
  .r_i_minus_1_bit_m_minus_1(R_i_stage_3[131]), .sign_i_minus_1(sign_i_stage_3), .d_i_minus_1(d_i_stage_3), .sign_i_plus_1(sign_i_stage_4), .d_i_plus_1(d_i_stage_4),
      .c_i_1(control_signal_1_for_i_stage_4), .c_i_2(control_signal_2_for_i_stage_4),
      .c_i_plus_plus_1(control_signal_1_for_i_add_1_stage_4), .c_i_plus_plus_2(control_signal_2_for_i_add_1_stage_4));      
                           
   processing_element_2_iterations PE_stage_5(.c_i_1(control_signal_1_for_i_stage_5), .c_i_2(control_signal_2_for_i_stage_5),
      .c_i_plus_plus_1(control_signal_1_for_i_add_1_stage_5), .c_i_plus_plus_2(control_signal_2_for_i_add_1_stage_5),
      .H_i_minus_1(H_i_stage_4), .J_i_minus_1(J_i_stage_4), .R_i_minus_1(R_i_stage_4), .S_i_minus_1(S_i_stage_4),
      .H_i_plus_1(H_i_stage_5), .J_i_plus_1(J_i_stage_5), .R_i_plus_1(R_i_stage_5), .S_i_plus_1(S_i_stage_5));         
  control_unit_2_iterations CU_stage_5(.s_i_minus_1_bit_m(S_i_stage_4[132]), .s_i_minus_1_bit_m_minus_1(S_i_stage_4[131]),
  .r_i_minus_1_bit_m_minus_1(R_i_stage_4[131]), .sign_i_minus_1(sign_i_stage_4), .d_i_minus_1(d_i_stage_4), .sign_i_plus_1(sign_i_stage_5), .d_i_plus_1(d_i_stage_5),
      .c_i_1(control_signal_1_for_i_stage_5), .c_i_2(control_signal_2_for_i_stage_5),
      .c_i_plus_plus_1(control_signal_1_for_i_add_1_stage_5), .c_i_plus_plus_2(control_signal_2_for_i_add_1_stage_5));    
           
  assign S_i_old = start ? {polynomial_for_inverse, 1'b0} : S_reg;
  assign J_i_old = start ? {1'b1, {131{1'b0}}} : J_reg;
  assign H_i_old = start ? 131'b0 : H_reg;
  assign R_i_old = start ?  irreducible_polynomial : R_reg;
  assign sign_i_old = start ? 1 : sign_reg;
  assign d_i_old = start ? 2 : d_reg;
  
endmodule
