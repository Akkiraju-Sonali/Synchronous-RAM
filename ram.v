`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2025 14:36:30
// Design Name: 
// Module Name: ram
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


module ram(
    input wire clk,
    input wire we,
    input wire [3:0] addr,
    input wire [7:0] din,
    output reg [7:0] dout
    );
    // Memory declaration
    reg [7:0] mem [0:15];

    always @(posedge clk) begin
        if (we) begin
            mem[addr] <= din;       // Write operation
        end
        dout <= mem[addr];          // Read operation (synchronous)
    end
endmodule
