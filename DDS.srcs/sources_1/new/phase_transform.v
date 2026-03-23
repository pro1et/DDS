module phase_transform (
    input  wire [12:0] phase_in,    // The 13-bit phase from accumulator
    output reg  [10:0]  rom_addr,    // The 11-bit address for your BRAM
    output reg         inv_sign     // Signal to tell the next stage to negate the result
);

    wire [1:0] quadrant = phase_in[12:11]; // Top 2 bits
    wire [10:0] raw_addr = phase_in[10:0];   // Remaining 11 bits

    always @(*) begin
        case (quadrant)
            2'b00: begin // Quadrant 1
                rom_addr = raw_addr;
                inv_sign = 1'b0;
            end
            2'b01: begin // Quadrant 2 (Mirrored)
                rom_addr = ~raw_addr; // Flip bits to count backward
                inv_sign = 1'b0;
            end
            2'b10: begin // Quadrant 3 (Negative)
                rom_addr = raw_addr;
                inv_sign = 1'b1;
            end
            2'b11: begin // Quadrant 4 (Mirrored + Negative)
                rom_addr = ~raw_addr; // Flip bits to count backward
                inv_sign = 1'b1;
            end
        endcase
    end

endmodule