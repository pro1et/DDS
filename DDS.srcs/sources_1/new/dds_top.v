`timescale 1ns / 1ps

module dds_top(
    input  wire        sys_clk,      // 50 MHz board clock
    input  wire        rst_n,        // External reset button
    input  wire [31:0] ftw,          // Frequency Tuning Word (Frequency_command)
    input  wire [31:0] ptw,          // Phase Tuning Word (Phase_sum)
    output wire [13:0] dac_data,     // 14-bit Sine Wave data
    output wire        dac_clk,      // Clock signal for DAC904
    output wire        locked,        // PLL lock status LED
    output wire        clk_out_100M, // 100MHz clock output for internal use
    output wire        sys_rst_n_out // Synchronized reset output for internal use
    );
    wire clk_100M; // Internal 100MHz clock
    wire sys_rst_n; // Internal synchronized reset
    // Internal Signal Interconnects
    wire [12:0] phase_raw;
    wire [10:0] lut_addr;
    wire        lut_inv_sign;
    
    // 1. Clock Wizard: Generate 100MHz from 50MHz
    clk u_clk_gen (
        .sys_clk (sys_clk),
        .rst_n   (rst_n),
        .locked  (locked),
        .clk_out (clk_100M)
    );

    // 2. Reset Synchronizer: Ensure clean startup
    rst_sync u_rst_sync (
        .clk       (clk_100M),
        .rst_n     (rst_n),
        .locked    (locked),
        .sys_rst_n (sys_rst_n)
    );
    assign clk_out_100M  = clk_100M;   // Connect internal clock to output port
    assign sys_rst_n_out = sys_rst_n; // Connect synchronized reset to output port
    // 3. Phase Accumulator: Heart of the DDS
    accumulator #(
        .ADDR_WIDTH(32),
        .PHASE_WIDTH(13)
    ) u_phase_acc (
        .clk           (clk_100M),
        .rst_n         (sys_rst_n),
        .en            (1'b1),
        .freq_control  (ftw),
        .phase_offset  (ptw),
        .phase_out     (phase_raw)
    );

    // 4. Phase Transform: Quarter-Wave Symmetry Logic
    phase_transform u_phase_prep (
        .phase_in (phase_raw),
        .rom_addr (lut_addr),
        .inv_sign (lut_inv_sign)
    );

    // 5. Sine Lookup: ROM + Amplitude Calculation
    sine_lookup_rom u_sine_output (
        .clk      (clk_100M),
        .inv_sign (lut_inv_sign),
        .rom_addr (lut_addr),
        .rst_n    (sys_rst_n),
        .dac_data (dac_data)
    );

    // 6. Clock Forwarding: Send 100MHz to DAC via ODDR
    dds_clk_out u_dac_clk_forward (
        .clk_in  (clk_100M),
        .dac_clk (dac_clk)
    );

endmodule