`timescale  1ns / 1ns

module tb_rst_sync;

// rst_sync Parameters
parameter PERIOD  = 10;


// rst_sync Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 0 ;
reg   locked                               = 0 ;

// rst_sync Outputs
wire  sys_rst_n                            ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
    #(PERIOD*2) locked =  1;
end
initial begin
    #100;
    rst_n  =  0;
    #50;
    rst_n  =  1;
    #20;
    locked =  0;
    #50;
    locked =  1;

    #100;
    rst_n  =  0;
    locked =  0;
    #50;
    rst_n  =  1;
    #20;
    locked =  1;

end
rst_sync  u_rst_sync (
    .clk                     ( clk         ),
    .rst_n                   ( rst_n       ),
    .locked                  ( locked      ),

    .sys_rst_n               ( sys_rst_n   )
);

initial
begin
    #3000;
    $finish;
end

endmodule