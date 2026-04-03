`timescale 1ns / 1ps
module dds_control (
    input  wire clk,            // 100MHz clock
    input  wire rst_n,          // System reset
    input  wire key1_p,         // Pulse from K4: Increase Frequency
    input  wire key2_p,         // Pulse from K5: Decrease Frequency
    input  wire key3_p,         // Pulse from K6: Shift Phase
    output reg [31:0] ftw,      // Frequency Tuning Word to DDS
    output reg [31:0] ptw       // Phase Tuning Word to DDS
);

    // Math: FTW = (Freq_Out * 2^32) / Clock_Freq
    // (100,000 * 4,294,967,296) / 100,000,000 = 4,294,967
    localparam FTW_100KHZ = 32'd4_294_967;

    // (10,000 * 4,294,967,296) / 100,000,000 = 429,497
    localparam FTW_10KHZ  = 32'd429_497;

    // Phase: 2^32 represents 360 degrees.
    // 90 degrees (pi/2) is 2^32 / 4 = 2^30 = 1,073,741,824 (0x40000000)
    localparam PTW_PI_2   = 32'h4000_0000;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ftw <= FTW_100KHZ; // Set default frequency on startup
            ptw <= 32'd0;      // Set default phase to 0
        end else begin
            // Frequency Up
            if (key1_p) 
                ftw <= ftw + FTW_10KHZ;
            // Frequency Down
            else if (key2_p)
                ftw <= ftw - FTW_10KHZ;

            // Phase Shift: Every press jumps the wave forward by 90 degrees
            if (key3_p)
                ptw <= ptw + PTW_PI_2;
        end
    end
endmodule
