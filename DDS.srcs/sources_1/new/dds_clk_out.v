// Keep this as its own small file
module dds_clk_out (
    input  wire clk_in,   // 100MHz from your clk module
    output wire dac_clk   // The physical pin for the DAC
);

    // This ODDR ensures the clock stays on the "High-Speed" 
    // paths and doesn't get rounded or distorted.
    ODDR #(
        .DDR_CLK_EDGE("OPPOSITE_EDGE"), 
        .INIT(1'b0),    
        .SRTYPE("SYNC") 
    ) u_oddr_inst (
        .Q  (dac_clk),   
        .C  (clk_in),    
        .CE (1'b1),      
        .D1 (1'b1),      // Output 1 on rising edge
        .D2 (1'b0),      // Output 0 on falling edge
        .R  (1'b0),      
        .S  (1'b0)       
    );

endmodule