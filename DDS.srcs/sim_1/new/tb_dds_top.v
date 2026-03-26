`timescale 1ns / 1ns

module tb_dds_top();

    // 1. Interface Signals
    reg         sys_clk;
    reg         rst_n;
    reg  [31:0] ftw;
    reg  [31:0] ptw;
    
    wire [13:0] dac_data;
    wire        dac_clk;
    wire        locked;

    // 2. Instantiate the Unit Under Test (UUT)
    dds_top uut (
        .sys_clk    (sys_clk),
        .rst_n      (rst_n),
        .ftw        (ftw),
        .ptw        (ptw),
        .dac_data   (dac_data),
        .dac_clk    (dac_clk),
        .locked     (locked)
    );

    // 3. 50MHz System Clock Generation (20ns period)
    always begin
        #10 sys_clk = ~sys_clk;
    end

    // 4. Main Stimulus
    initial begin
        // Initialize inputs
        sys_clk = 0;
        rst_n   = 0;
        ptw     = 32'h0; // No phase shift for now
        
        // Calculate FTW for 1 MHz output frequency:
        // Formula: FTW = (Desired_Freq * 2^32) / System_Clock
        // FTW = (1,000,000 * 4,294,967,296) / 100,000,000 = 42,949,673
        ftw = 32'd42949673;

        // Hold reset for 100ns
        #100;
        rst_n = 1;

        // Wait for PLL to lock
        wait(locked == 1);
        $display("PLL Locked! Starting DDS Simulation...");

        // Let it run for a while to see several sine cycles
        #20000; 

        // Change frequency to 5 MHz to see it update
        // FTW = (5 * 42,949,673) = 214,748,365
        $display("Changing frequency to 5 MHz...");
        ftw = 32'd214748365;
        
        #10000;

        $display("Simulation Finished.");
        $stop;
    end

    // 5. Optional: Monitor output in terminal (Hex values)
    initial begin
        $monitor("Time: %t | DAC Data: %h", $time, dac_data);
    end

endmodule