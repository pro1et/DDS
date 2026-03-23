//~ `New testbench
`timescale  1ns / 1ns

module tb_blk_mem;

// blk_mem Parameters
parameter PERIOD  = 10;


// blk_mem Inputs
reg   clka                                 = 0 ;
reg   [11:0]  addra                        = 0 ;

// blk_mem Outputs
wire  [9:0]  douta                         ;
reg [11:0] i;

initial
begin
    forever #(PERIOD/2)  clka=~clka;
end

initial
begin
    for(i=0; i<4000; i=i+1) begin
        addra = i;
        #50;  
    end    
end
 
blk_mem  u_blk_mem (
    .clka                    ( clka          ),
    .addra                   ( addra  [11:0] ),
    .douta                   ( douta  [9:0]  )
);

initial
begin
    #200000
    $finish;
end

endmodule
