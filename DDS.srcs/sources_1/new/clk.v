`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/13 20:57:30
// Design Name: 
// Module Name: clk
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module clk(
    input  wire sys_clk,    // 50 MHz system clock
    input  wire rst_n,      // active-low reset
    output wire locked,     // PLL lock status
    output wire clk_out   // 100 MHz
);
    wire clk_out2;   // 100 MHz with 180° phase shift
    wire clk_out3;   // 25 MHz
    //==================================================
    // Clocking Wizard Instance
    //==================================================
    clk_wiz_0 u_clk_wiz_0 (
        // Clock out ports
        .clk_out1(clk_out),     // 100 MHz
        .clk_out2(clk_out2),     // 100 MHz pi phase shift
        .clk_out3(clk_out3),     // 25 MHz

        // Status and control signals
        .resetn(rst_n),          // active-low reset
        .locked(locked),         // PLL locked

        // Clock in ports
        .clk_in1(sys_clk)        // 50 MHz input
    );

endmodule