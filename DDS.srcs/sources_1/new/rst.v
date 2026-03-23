module rst_sync(
    input  wire clk,
    input  wire rst_n,     // external reset (active low)
    input  wire locked,    // PLL lock
    output wire sys_rst_n  // synchronized reset (active low)
);

wire rst_async_n;
reg [1:0] sync_ff;

// Asynchronous combination of external reset and PLL lock
assign rst_async_n = rst_n & locked;

// Synchronous reset logic
always @(posedge clk or negedge rst_async_n) begin
    if (!rst_async_n)
        sync_ff <= 2'b00;
    else
        sync_ff <= {sync_ff[0], 1'b1};
end

assign sys_rst_n = sync_ff[1];

endmodule