module sine_lookup_rom (
    input clk,
    input rst_n,
    input inv_sign,         // Signal from phase_transform
    input [10:0] rom_addr,  // Signal from phase_transform
    output reg [13:0] dac_data
);
    wire [9:0] rom_data;
    reg inv_sign_d1;        // Delayed version of inv_sign

    // 1. Instantiate the ROM (1-cycle latency)
    blk_mem u_blk_mem (
        .clka(clk),
        .addra(rom_addr),
        .douta(rom_data)    // Data appears 1 cycle later
    );

    // 2. Synchronize the sign bit with the ROM latency
    always @(posedge clk) begin
    if (!rst_n) begin
        inv_sign_d1 <= 1'b0;
    end else 
        inv_sign_d1 <= inv_sign;
    end

    // 3. Process the output using the synchronized sign bit
    always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dac_data <= 14'h2000; // Reset to the midpoint (silent/zero Volts)
    end else begin
        dac_data <= inv_sign_d1 ? (14'h2000 - {rom_data, 3'b0}) 
                                : (14'h2000 + {rom_data, 3'b0});
    end
    end

endmodule