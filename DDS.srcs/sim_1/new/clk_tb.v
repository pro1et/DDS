`timescale 1ns / 1ns

module clk_tb;

    // Testbench signals
    reg sys_clk;
    reg rst_n;
    wire clk_out;
    wire locked;
    // Instantiate the clock module
    clk uut (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .clk_out(clk_out),
        .locked(locked)
    );

    //======================================================
    // Generate 50 MHz system clock (period = 20 ns)
    //======================================================
    initial begin
        sys_clk = 0;
        forever #10 sys_clk = ~sys_clk;  // 50 MHz -> toggle every 10 ns
    end

    //======================================================
    // Generate reset pulse
    //======================================================
    initial begin
        rst_n = 0;           // Assert reset
        #50;                 // Hold reset for 50 ns
        rst_n = 1;           // Deassert reset
    end

    //======================================================
    // Monitor outputs
    //======================================================
    initial begin
        // Run simulation for 500 ns
        #15000;
        $stop;
    end

endmodule
