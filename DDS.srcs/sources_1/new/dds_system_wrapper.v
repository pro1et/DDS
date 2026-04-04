`timescale 1ns / 1ps
module dds_system_wrapper(
    input  wire        sys_clk,
    input  wire        rst_n,
    input  wire [2:0]  keys,
    output wire [13:0] dac_data,
    output wire        dac_clk,
    output wire        locked,
    output wire        button_flag
);

    // Wires coming OUT of dds_top
    wire clk_100M_internal;
    wire rst_n_internal;
    
    // Wires going INTO dds_top
    wire [31:0] w_ftw;
    wire [31:0] w_ptw;
    wire k1_p, k2_p, k3_p;
//    reg [31:0] w_ftw = 32'd8_589_934; // Default to 200kHz
//    reg [31:0] w_ptw = 32'd0;       // Default to 0 phase shift
    // 1. Instantiate the CORE first
    dds_top u_dds_core (
        .sys_clk       (sys_clk),
        .rst_n         (rst_n),
        .ftw           (w_ftw),
        .ptw           (w_ptw),
        .clk_out_100M  (clk_100M_internal), // Catch the clock here
        .sys_rst_n_out (rst_n_internal),    // Catch the reset here
        .dac_data      (dac_data),
        .dac_clk       (dac_clk),
        .locked        (locked)
    );

    // 2. Use those "caught" signals for the buttons
    ax_debounce u_db1 (.clk(clk_100M_internal), .rst_n(rst_n_internal), .button_in(keys[0]), .button_pulse(k1_p));
    ax_debounce u_db2 (.clk(clk_100M_internal), .rst_n(rst_n_internal), .button_in(keys[1]), .button_pulse(k2_p));
    ax_debounce u_db3 (.clk(clk_100M_internal), .rst_n(rst_n_internal), .button_in(keys[2]), .button_pulse(k3_p));

    // 3. Control logic also uses the "internal" signals
    dds_control u_ctrl (
        .clk(clk_100M_internal), 
        .rst_n(rst_n_internal),
        .key1_p(k1_p), .key2_p(k2_p), .key3_p(k3_p),
        .ftw(w_ftw), .ptw(w_ptw),
        .button_flag(button_flag)
    );

endmodule
