`timescale 1ns / 1ns

module tb_accumulator();

    // 1. Parameters & Signals
    parameter ADDR_WIDTH = 32;
    parameter PHASE_WIDTH = 13; // 13 bits for 8192 points total
    
    reg clk;
    reg rst_n;
    reg en;
    reg [ADDR_WIDTH-1:0] freq_control;
    reg [ADDR_WIDTH-1:0] phase_offset;

    wire [PHASE_WIDTH-1:0] phase_out;
    wire [10:0] rom_addr;
    wire inv_sign;

    // 2. Instantiate the Accumulator (13-bit output)
    accumulator #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .PHASE_WIDTH(PHASE_WIDTH)
    ) dut_acc (
        .clk(clk),
        .rst_n(rst_n),
        .en(en),
        .freq_control(freq_control),
        .phase_offset(phase_offset),
        .phase_out(phase_out)
    );

    // 3. Instantiate the Phase Transform (11-bit ROM Address)
    phase_transform dut_trans (
        .phase_in(phase_out),
        .rom_addr(rom_addr),
        .inv_sign(inv_sign)
    );

    // 4. Clock Generation (100MHz)
    always #5 clk = ~clk;

    // 5. Simulation Logic
    initial begin
        // Initialize
        clk = 0;
        rst_n = 0;
        en = 0;
        phase_offset = 32'h0;
        
        // Let's set the frequency. 
        // To see the wave clearly, we want a step that increments 
        // the 13-bit phase out by about 1 each clock cycle.
        // Step = (1 << (32 - 13)) = 32'h00080000
        freq_control = 32'h00080000; 

        $display("--- Starting Simulation ---");
        #20 rst_n = 1;
        #10 en = 1;

        // Run for one full sine wave cycle (8192 points / steps)
        #82000; 

        // Test a 180-degree Phase Shift (0x80000000)
        $display("--- Applying 180 Degree Phase Offset ---");
        phase_offset = 32'h80000000;
        #20000;

        $display("--- Simulation Finished ---");
        $finish;
    end

    // 6. Monitoring the Quadrant Logic
    initial begin
        $monitor("Time: %0t | Phase: %d | ROM Addr: %d | Inv: %b | Quadrant: %b", 
                 $time, phase_out, rom_addr, inv_sign, phase_out[12:11]);
    end

endmodule