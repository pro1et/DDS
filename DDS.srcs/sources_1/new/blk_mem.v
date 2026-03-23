`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/17 17:38:52
// Design Name: 
// Module Name: blk_mem
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
// Simple block memory (ROM) implementation
module blk_mem(
    input wire clka,
    input wire [10:0] addra,
    output wire [9:0] douta
);

   blk_mem_gen_0 blk_mem_gen_0 (
  .clka(clka),    // input wire clka
  .addra(addra),  // input wire [10 : 0] addra
  .douta(douta)  // output wire [9 : 0] douta
    );
endmodule

