`timescale 1ns / 1ps

module processing_element_single_iter(input wire c_i_1, c_i_2,
 input wire [131:1] H_i_minus_1, input wire [132:1] J_i_minus_1, input wire [132:1] R_i_minus_1, input wire [132:1] S_i_minus_1,
 output reg [131:1] H_i, output reg [132:1] J_i, output reg [132:1] R_i, output reg [132:1] S_i);
    always@*
    begin
        if(c_i_1 == 1)
        begin
            S_i = (R_i_minus_1 ^ S_i_minus_1) << 1;
            J_i = {1'b0,H_i_minus_1} ^ J_i_minus_1;
        end
        else
        begin
            S_i = S_i_minus_1 << 1;
            J_i = J_i_minus_1;
        end
        if(c_i_2 == 1)
        begin
            R_i = S_i_minus_1;
            H_i = J_i_minus_1 >> 1; // corresponding to a right shift
        end
        else 
        begin
            R_i = R_i_minus_1;
            H_i = H_i_minus_1 >> 1;
        end
    end
endmodule
