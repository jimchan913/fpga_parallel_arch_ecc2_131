`timescale 1ns / 1ps

module processing_element_2_iterations(input wire c_i_1, c_i_2, c_i_plus_plus_1, c_i_plus_plus_2,
 input wire [131:1] H_i_minus_1, input wire [132:1] J_i_minus_1, input wire [132:1] R_i_minus_1, input wire [132:1] S_i_minus_1,
 output reg [131:1] H_i_plus_1, output reg [132:1] J_i_plus_1, output reg [132:1] R_i_plus_1, output reg [132:1] S_i_plus_1);
 
 wire [132:1] temp_R, temp_J_intermediate, temp_S_intermediate;
 wire [131:1] temp_H;
 wire [132:1] S_shift_1_bit;
 wire [132:1] R_XOR_S_shift_1_bit;
 wire [132:1] J_XOR_H;
 
 assign temp_R = (((R_i_minus_1 ^ S_i_minus_1) & {132{c_i_1}}) << 1) | ((S_i_minus_1 << 1) & {132{~c_i_1}});
 assign temp_H = ((({1'b0, H_i_minus_1} ^ J_i_minus_1) & {132{c_i_1}}) | (J_i_minus_1 & {132{~c_i_1}})) >> 1; 
 assign temp_S_intermediate = (S_i_minus_1 & {132{c_i_2}}) | (R_i_minus_1 & {132{~c_i_2}});
 assign temp_J_intermediate = (((J_i_minus_1 & {132{c_i_2}}) | ({1'b0, H_i_minus_1} & {132{~c_i_2}})) >> 1) ; //^ {1'b0, H_i_minus_1} ^ J_i_minus_1;

 assign S_shift_1_bit = S_i_minus_1 << 1;
 assign R_XOR_S_shift_1_bit = (R_i_minus_1 ^ S_i_minus_1) << 1;
 assign J_XOR_H =  {1'b0, H_i_minus_1} ^ J_i_minus_1;
 
 always@* 
 begin
    case({c_i_1, c_i_plus_plus_1})
    2'b00:
    begin
        S_i_plus_1 = S_shift_1_bit << 1;
        J_i_plus_1 = J_i_minus_1;
    end
    2'b01:
    begin
        S_i_plus_1 = (S_shift_1_bit ^ temp_S_intermediate) << 1;
        J_i_plus_1 = temp_J_intermediate ^ J_i_minus_1;
    end
    2'b10:
    begin
        S_i_plus_1 = R_XOR_S_shift_1_bit << 1;
        J_i_plus_1 = J_XOR_H;
    end    
    2'b11:
    begin
        S_i_plus_1 = (R_XOR_S_shift_1_bit ^ temp_S_intermediate) << 1;
        J_i_plus_1 = temp_J_intermediate ^ J_XOR_H;
    end
    endcase
    
    case({c_i_2, c_i_plus_plus_2})
    2'b00:
    begin
        R_i_plus_1 = R_i_minus_1;
        H_i_plus_1 = H_i_minus_1 >> 2;
    end       
    2'b01:
    begin
        R_i_plus_1 = temp_R;
        H_i_plus_1 = temp_H;
    end
    2'b10:
    begin
        R_i_plus_1 = S_i_minus_1;
        H_i_plus_1 = J_i_minus_1 >> 2;
    end
    2'b11:
    begin
        R_i_plus_1 = temp_R;
        H_i_plus_1 = temp_H;        
    end
    endcase 
 end
 
endmodule
