`timescale 1ns / 1ps

module ax_debounce (
    input  wire clk,            // System clock (100MHz)
    input  wire rst_n,          // Synchronized reset (Active Low)
    input  wire button_in,      // Raw, asynchronous input from FPGA pin
    output reg  button_pulse    // High for exactly 1 cycle when a valid press is detected
);

    // 20ms at 100MHz = 2,000,000 clock cycles. 
    // This is the "settling time" to ignore mechanical bouncing.
    parameter DELAY_20MS = 21'd2_000_000; 

    wire button_sync;           // Output of the CDC synchronizer
    reg  button_reg_d1;         // Delayed version of button_sync for edge detection
    reg [19:0] count;           // Counter to track how long the signal is stable

    // -------------------------------------------------------------------------
    // 1. Clock Domain Crossing (CDC) Synchronization
    // Since the button is pressed by a human, it is asynchronous to the FPGA clock.
    // We use XPM_CDC to prevent "Metastability" (system crashes).
    // -------------------------------------------------------------------------
    xpm_cdc_single #(
        .DEST_SYNC_FF(2),   // 2-stage flip-flop synchronizer (Standard)
        .INIT_SYNC_FF(1),   // Buttons on MIZAR Z7 are Pull-Up (Normal = 1)
        .SIM_ASSERT_CHK(0), 
        .SRC_INPUT_REG(0)   
    ) u_xpm_cdc (
        .dest_out(button_sync), // Synchronized output
        .dest_clk(clk),         
        .src_clk(1'b0),         
        .src_in(button_in)      // Raw input
    );

    // -------------------------------------------------------------------------
    // 2. Debounce Logic & Edge Detection
    // -------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count <= 20'd0;
            button_reg_d1 <= 1'b1;
            button_pulse <= 1'b0;
        end else begin
            button_reg_d1 <= button_sync; // Store the previous state
            
            // Logic: If the current state matches the previous state, the button is stable.
            if (button_sync == button_reg_d1) begin
                if (count < DELAY_20MS)
                    count <= count + 1'b1; // Increment until we hit 20ms
                button_pulse <= 1'b0;
            end else begin
                // If signal changed, check if it was stable for 20ms first.
                // We only trigger on a Falling Edge (1 -> 0) because buttons are Active-Low.
                if (count == DELAY_20MS && button_reg_d1 == 1'b1 && button_sync == 1'b0)
                    button_pulse <= 1'b1;
                else
                    button_pulse <= 1'b0;
                
                count <= 20'd0; // Reset counter on ANY signal transition
            end
        end
    end
endmodule