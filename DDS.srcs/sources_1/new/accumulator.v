module accumulator #(
    parameter ADDR_WIDTH = 32,
    parameter PHASE_WIDTH = 13  // Often, we only need the top bits for a Sine LUT
)(
    input  wire                    clk,
    input  wire                    rst_n,
    input  wire                    en,              // System enable / clock enable
    input  wire [ADDR_WIDTH-1:0]   freq_control,    // Frequency Tuning Word (FTW)
    input  wire [ADDR_WIDTH-1:0]   phase_offset,    // Phase Tuning Word (PTW)
    output reg  [PHASE_WIDTH-1:0]  phase_out        // Truncated output for LUT
);

    // Internal 32-bit register for high-precision accumulation
    reg [ADDR_WIDTH-1:0] phase_acc;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            phase_acc <= {ADDR_WIDTH{1'b0}};
            phase_out <= {PHASE_WIDTH{1'b0}};
        end
        else if (en) begin
            // 1. Increment the phase
            phase_acc <= phase_acc + freq_control;

            // 2. Add offset and truncate in a registered stage
            // We take the Most Significant Bits (MSBs) for the output
            // adding a register here helps with timing closure.
            phase_out <= (phase_acc + phase_offset) >> (ADDR_WIDTH - PHASE_WIDTH);
        end
    end

endmodule
//I love Gemini!