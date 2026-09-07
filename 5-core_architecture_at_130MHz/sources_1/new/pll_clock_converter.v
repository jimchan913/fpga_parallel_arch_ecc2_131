module pll_clock_converter(
input       sys_clk_p,      // Differentia system clock 200Mhz input on board
input       sys_clk_n,
input       rst_n,
output      clk_out           //pll clock output J14_Pin1v
                );
wire        locked;//时钟信号输出锁定
//wire        pll_clk_o;//锁相环输出时钟
/////////////////////PLL IP call////////////////////////////
clk_wiz_0 instance_name
   (
    // Clock out ports
    .clk_out1(clk_out),     // output clk_out1
    // Status and control signals
    .reset(~rst_n), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1_p(sys_clk_p),    // input clk_in1_p
    .clk_in1_n(sys_clk_n));    // input clk_in1_n
///////////////调用ODDR使时钟信号通过普通IO输出//////////////////	  
/*
ODDRE1 #(
      .IS_C_INVERTED(1'b0),  // Optional inversion for C
      .IS_D1_INVERTED(1'b0), // Unsupported, do not use
      .IS_D2_INVERTED(1'b0), // Unsupported, do not use
      .SRVAL(1'b0)           // Initializes the ODDRE1 Flip-Flops to the specified value (1'b0, 1'b1)
)
ODDRE1_inst (
      .Q(clk_out),   // 1-bit output: Data output to IOB
      .C(pll_clk_o),   // 1-bit input: High-speed clock input
      .D1(1'b1), // 1-bit input: Parallel data input 1
      .D2(1'b0), // 1-bit input: Parallel data input 2
      .SR(1'b0)  // 1-bit input: Active High Async Reset
   );       
*/
endmodule
