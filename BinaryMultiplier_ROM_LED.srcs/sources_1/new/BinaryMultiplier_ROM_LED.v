`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2021 03:52:10
// Design Name: 
// Module Name: BinaryMultiplier_ROM_LED
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


module BinaryMultiplier_ROM_LED(
    input [1:0]a,
    input [1:0]b,
    output [3:0]result
    );
    reg [7:0] ROM [15:0];
    wire [7:0]w;
    initial $readmemb ("product.txt",ROM);
    assign w = ROM[{a,b}];
    assign result = w[3:0];
endmodule
