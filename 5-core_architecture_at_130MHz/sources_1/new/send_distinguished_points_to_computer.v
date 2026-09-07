module send_distinguished_points_to_computer(
input                           sys_clk_p,      // system clock 200Mhz input on board
input                           sys_clk_n,
input                           rst_n    ,
output                          fan      ,
output                          uart_tx   
);

parameter                      CLK_FRE = 130;//Mhz
localparam                       IDLE =  0;
localparam                       SEND =  1;   //send distinguished point
localparam                       WAIT_DP =  2; 
localparam                       WAIT_HALF_SEC = 3;
localparam                       CYCLE_1_FOR_WRITE_DP_TO_REG = 4;
localparam                       CYCLE_2_FOR_WRTTE_DP_TO_REG = 5;
reg[7:0]                         tx_data;
reg[7:0]                         tx_str;
reg                              tx_data_valid;
wire                             tx_data_ready;
reg[7:0]                         tx_cnt;

reg [25:0]                        wait_cnt;
reg[3:0]                         state;

// Distnguished points data
wire [130:0] dp_coord_x_to_send;
wire [130:0] dp_coord_y_to_send;
wire [130:0] dp_coeff_c_to_send;
wire [130:0] dp_coeff_d_to_send;
// signal to read distnguished points
wire is_dp_in_storage;

wire        sys_clk;
assign   	fan = 1'd0;    // fan on

pll_clock_converter convert_clk_to_130mhz(
.sys_clk_p(sys_clk_p),
.sys_clk_n(sys_clk_n),
.rst_n(rst_n),
.clk_out(sys_clk)
);

 
always@(posedge sys_clk or negedge rst_n)
begin
	if(rst_n == 1'b0)
	begin
	    wait_cnt <= 26'd0; 
		tx_data <= 8'd0;
		state <= IDLE;
		tx_cnt <= 8'd0;
		tx_data_valid <= 1'b0;
	end
	else
	case(state)
		IDLE:
			state <= WAIT_DP;
		SEND:
		begin
		    wait_cnt <= 26'd0;
			tx_data <= tx_str;
			if(tx_data_valid == 1'b1 && tx_data_ready == 1'b1 && tx_cnt < 8'd67)//Send 68 bytes data !!!
			begin
				tx_cnt <= tx_cnt + 8'd1; //Send data counter
			end
			else if(tx_data_valid && tx_data_ready)//last byte sent is complete
			begin
				tx_cnt <= 8'd0;
				tx_data_valid <= 1'b0; // tx_data_valid represents whether the last byte send is valid, or is sending
				state <= WAIT_HALF_SEC;//WAIT_HALF_SEC;
			end
			else if(~tx_data_valid)
			begin
				tx_data_valid <= 1'b1; // we need to change this branch to consider the case that there is data to be transmitted
			end
		end
		WAIT_DP: // IDEA: wait until the FIFO Buffer for storing DP is not empty, such that there are DP available to send
		begin
		  if(is_dp_in_storage)
		  begin
		      state <= CYCLE_1_FOR_WRITE_DP_TO_REG;
		  end
		end  
		CYCLE_1_FOR_WRITE_DP_TO_REG:
		begin
		    state <= CYCLE_2_FOR_WRTTE_DP_TO_REG;
		end
		CYCLE_2_FOR_WRTTE_DP_TO_REG:
		begin
            state <= SEND;
		end
	   default:
			state <= IDLE;      
	   WAIT_HALF_SEC:
	   begin
	       wait_cnt = wait_cnt + 26'd1;
           if(wait_cnt >= CLK_FRE * 500000) // wait for 0.5 seconds                       
				state <= WAIT_DP;	  				
	   end     
	endcase
end

parallel_r_adding_walk_top_module top_module(.clk(sys_clk), .rst_n(rst_n), .start_enable(1'b1),
  .uart_state(state),  .is_dp_in_main_storage(is_dp_in_storage),
  .dp_coord_x_register_value(dp_coord_x_to_send), .dp_coord_y_register_value(dp_coord_y_to_send), 
  .dp_coeff_c_register_value(dp_coeff_c_to_send), .dp_coeff_d_register_value(dp_coeff_d_to_send));
//combinational logic
//Send Distnguished point
always@(*)
begin
	case(tx_cnt)	
		8'd0 :  tx_str <= {5'b0, dp_coord_x_to_send[130:128]};
		8'd1 :  tx_str <= dp_coord_x_to_send[127:120];
		8'd2 :  tx_str <= dp_coord_x_to_send[119:112];
		8'd3 :  tx_str <= dp_coord_x_to_send[111:104];
		8'd4 :  tx_str <= dp_coord_x_to_send[103:96];
		8'd5 :  tx_str <= dp_coord_x_to_send[95:88];
		8'd6 :  tx_str <= dp_coord_x_to_send[87:80];
		8'd7 :  tx_str <= dp_coord_x_to_send[79:72];
		8'd8 :  tx_str <= dp_coord_x_to_send[71:64];
		8'd9 :  tx_str <= dp_coord_x_to_send[63:56];
		8'd10:  tx_str <= dp_coord_x_to_send[55:48];
		8'd11:  tx_str <= dp_coord_x_to_send[47:40];
		8'd12:  tx_str <= dp_coord_x_to_send[39:32];
		8'd13:  tx_str <= dp_coord_x_to_send[31:24];
	    8'd14:  tx_str <= dp_coord_x_to_send[23:16];
		8'd15:  tx_str <= dp_coord_x_to_send[15:8];
	    8'd16:  tx_str <= dp_coord_x_to_send[7:0];	 
	    
		8'd17 :  tx_str <= {5'b0, dp_coord_y_to_send[130:128]};
		8'd18 :  tx_str <= dp_coord_y_to_send[127:120];
		8'd19:   tx_str <= dp_coord_y_to_send[119:112];
		8'd20:   tx_str <= dp_coord_y_to_send[111:104];
		8'd21 :  tx_str <= dp_coord_y_to_send[103:96];
		8'd22 :  tx_str <= dp_coord_y_to_send[95:88];
		8'd23 :  tx_str <= dp_coord_y_to_send[87:80];
		8'd24 :  tx_str <= dp_coord_y_to_send[79:72];
		8'd25 :  tx_str <= dp_coord_y_to_send[71:64];
		8'd26 :  tx_str <= dp_coord_y_to_send[63:56];
		8'd27:   tx_str <= dp_coord_y_to_send[55:48];
		8'd28:   tx_str <= dp_coord_y_to_send[47:40];
		8'd29:   tx_str <= dp_coord_y_to_send[39:32];
		8'd30:   tx_str <= dp_coord_y_to_send[31:24];
	    8'd31:   tx_str <= dp_coord_y_to_send[23:16];
		8'd32:   tx_str <= dp_coord_y_to_send[15:8];
	    8'd33:   tx_str <= dp_coord_y_to_send[7:0];	
		
		8'd34 :  tx_str <= {5'b0, dp_coeff_c_to_send[130:128]};
		8'd35 :  tx_str <= dp_coeff_c_to_send[127:120];
		8'd36:   tx_str <= dp_coeff_c_to_send[119:112];
		8'd37:   tx_str <= dp_coeff_c_to_send[111:104];
		8'd38 :  tx_str <= dp_coeff_c_to_send[103:96];
		8'd39 :  tx_str <= dp_coeff_c_to_send[95:88];
		8'd40 :  tx_str <= dp_coeff_c_to_send[87:80];
		8'd41 :  tx_str <= dp_coeff_c_to_send[79:72];
		8'd42 :  tx_str <= dp_coeff_c_to_send[71:64];
		8'd43 :  tx_str <= dp_coeff_c_to_send[63:56];
		8'd44:   tx_str <= dp_coeff_c_to_send[55:48];
		8'd45:   tx_str <= dp_coeff_c_to_send[47:40];
		8'd46:   tx_str <= dp_coeff_c_to_send[39:32];
		8'd47:   tx_str <= dp_coeff_c_to_send[31:24];
	    8'd48:   tx_str <= dp_coeff_c_to_send[23:16];
		8'd49:   tx_str <= dp_coeff_c_to_send[15:8];
	    8'd50:   tx_str <= dp_coeff_c_to_send[7:0];	
		
		8'd51 :  tx_str <= {5'b0, dp_coeff_d_to_send[130:128]};
		8'd52 :  tx_str <= dp_coeff_d_to_send[127:120];
		8'd53:   tx_str <= dp_coeff_d_to_send[119:112];
		8'd54:   tx_str <= dp_coeff_d_to_send[111:104];
		8'd55 :  tx_str <= dp_coeff_d_to_send[103:96];
		8'd56 :  tx_str <= dp_coeff_d_to_send[95:88];
		8'd57 :  tx_str <= dp_coeff_d_to_send[87:80];
		8'd58 :  tx_str <= dp_coeff_d_to_send[79:72];
		8'd59 :  tx_str <= dp_coeff_d_to_send[71:64];
		8'd60 :  tx_str <= dp_coeff_d_to_send[63:56];
		8'd61:   tx_str <= dp_coeff_d_to_send[55:48];
		8'd62:   tx_str <= dp_coeff_d_to_send[47:40];
		8'd63:   tx_str <= dp_coeff_d_to_send[39:32];
		8'd64:   tx_str <= dp_coeff_d_to_send[31:24];
	    8'd65:   tx_str <= dp_coeff_d_to_send[23:16];
		8'd66:   tx_str <= dp_coeff_d_to_send[15:8];
	    8'd67:   tx_str <= dp_coeff_d_to_send[7:0];	
	endcase
end

uart_tx#
(
	.CLK_FRE(CLK_FRE),
	.BAUD_RATE(115200)
) uart_tx_inst
(
	.clk                        (sys_clk                  ),
	.rst_n                      (rst_n                    ),
	.tx_data                    (tx_data                  ),
	.tx_data_valid              (tx_data_valid            ),
	.tx_data_ready              (tx_data_ready            ),
	.tx_pin                     (uart_tx                  )
);
endmodule
