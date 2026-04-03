`timescale 1ns / 1ps

module tb_dds_system();

    // 1. Global Signals
    reg        sys_clk;    // 50MHz Input
    reg        rst_n;      // Master Reset
    reg  [2:0] keys;       // K4, K5, K6
    
    // Outputs from the wrapper
    wire [13:0] dac_data;
    wire        dac_clk;
    wire        locked;

    // 2. Instantiate the System Wrapper
    // We use the "defparam" or inline parameter to shorten the debounce time 
    // for simulation. Otherwise, we'd wait millions of cycles.
    dds_system_wrapper u_wrapper (
        .sys_clk  (sys_clk),
        .rst_n    (rst_n),
        .keys     (keys),
        .dac_data (dac_data),
        .dac_clk  (dac_clk),
        .locked   (locked)
    );

    // Overriding the debounce delay in the sub-modules for fast simulation
    // Note: You must ensure the instance names (u_db1, etc.) match your wrapper
    defparam u_wrapper.u_db1.DELAY_20MS = 21'd100;
    defparam u_wrapper.u_db2.DELAY_20MS = 21'd100;
    defparam u_wrapper.u_db3.DELAY_20MS = 21'd100;

    // 3. Clock Generation (50MHz = 20ns period)
    initial sys_clk = 0;
    always #10 sys_clk = ~sys_clk;

    // 4. Helper Task for Button Press
    task press_key;
        input integer key_index;
        begin
            $display("[Time %0t] Pressing Key %0d", $time, key_index);
            keys[key_index] = 0;   // Press (Active Low)
            #5000;                 // Hold for 5us (Enough for 100-cycle debounce)
            keys[key_index] = 1;   // Release
            #2000;                 // Gap between presses
        end
    endtask

    // 5. Main Test Procedure
    initial begin
        // Initialize
        rst_n = 0;
        keys  = 3'b111; // All keys up (1)
        
        #100;
        rst_n = 1; // Release reset
        
        // Wait for PLL to lock
        wait(locked == 1'b1);
        $display("[Time %0t] PLL Locked. System Ready.", $time);
        #1000;

        // --- TEST 1: Increase Frequency ---
        // Pressing K4 (keys[0]) 3 times
        repeat(3) begin
            press_key(0);
        end

        // --- TEST 2: Decrease Frequency ---
        // Pressing K5 (keys[1]) 1 time
        press_key(1);

        // --- TEST 3: Shift Phase ---
        // Pressing K6 (keys[2]) 2 times (should total 180 degrees)
        repeat(2) begin
            press_key(2);
        end

        #5000;
        $display("[Time %0t] Simulation Finished.", $time);
        $stop;
    end

    // 6. Optional: Monitor signal changes in the console
    initial begin
        $monitor("Time: %0t | FTW: %d | PTW: %h", $time, u_wrapper.w_ftw, u_wrapper.w_ptw);
    end

endmodule
