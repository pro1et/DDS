`timescale 1ns / 1ns

module tb_control_logic();

    // 1. Signals
    reg  clk;
    reg  rst_n;
    reg  key1_in; // Freq +
    reg  key2_in; // Freq -
    reg  key3_in; // Phase +
    
    wire [31:0] ftw;
    wire [31:0] ptw;
    
    wire k1_p, k2_p, k3_p;

    // 2. Instantiate Debouncers (using updated 21-bit widths)
    // We override the 20ms parameter to a smaller value for faster simulation
    // 20ms @ 100MHz is 2 million cycles (too slow for sim)
    // We will set it to 100 cycles for the testbench.
    parameter SIM_DELAY = 21'd100;

    ax_debounce #(.DELAY_20MS(SIM_DELAY)) u_db1 (
        .clk(clk), .rst_n(rst_n), .button_in(key1_in), .button_pulse(k1_p)
    );
    ax_debounce #(.DELAY_20MS(SIM_DELAY)) u_db2 (
        .clk(clk), .rst_n(rst_n), .button_in(key2_in), .button_pulse(k2_p)
    );
    ax_debounce #(.DELAY_20MS(SIM_DELAY)) u_db3 (
        .clk(clk), .rst_n(rst_n), .button_in(key3_in), .button_pulse(k3_p)
    );

    // 3. Instantiate Control Logic
    dds_control u_ctrl (
        .clk(clk), .rst_n(rst_n),
        .key1_p(k1_p), .key2_p(k2_p), .key3_p(k3_p),
        .ftw(ftw), .ptw(ptw)
    );

    // 4. Clock Generation (100MHz)
    always #5 clk = ~clk;

    // 5. Simulation Task: Simulate a Bouncy Button Press
    task simulate_press;
        input integer key_select;
        begin
            $display("Simulating bouncy press on Key %0d", key_select);
            // Simulate noise/bouncing (High-Low-High-Low)
            if(key_select == 1) key1_in = 0;
            #20; key1_in = 1;
            #15; key1_in = 0;
            #10; key1_in = 1;
            #25; key1_in = 0; // Final stable Low state
            
            // Wait longer than the debounce DELAY
            #(SIM_DELAY * 15); 
            
            // Release button
            key1_in = 1; 
            #200;
        end
    endtask

    // 6. Main Stimulus
    initial begin
        // Initialize
        clk = 0;
        rst_n = 0;
        key1_in = 1; // Pull-up default
        key2_in = 1;
        key3_in = 1;

        #100;
        rst_n = 1;
        #100;

        // Test 1: Check Default Values
        if (ftw == 32'd4_294_967) 
            $display("Check Passed: Default FTW is 100kHz");

        // Test 2: Bouncy Press on Key 1 (Freq +)
        simulate_press(1);
        $display("FTW after press: %0d", ftw);
        #1000;
        simulate_press(1);
        #1000;
        simulate_press(1);
        // Test 3: Press Key 3 (Phase +)
        key3_in = 0; // Stable press
        #(SIM_DELAY * 15);
        key3_in = 1;
        #100;
        $display("PTW after press: %h", ptw);
        key2_in = 0; // Stable press
        #(SIM_DELAY * 15);
        key2_in = 1;
        #1000;
        $display("Simulation Finished.");
        $stop;
    end

endmodule