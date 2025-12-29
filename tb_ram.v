`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2025 15:07:37
// Design Name: 
// Module Name: tb_ram
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



module ram_tb;

    reg clk;
    reg we;
    reg [3:0] addr;
    reg [7:0] din;
    wire [7:0] dout;

    // Instantiate RAM
    ram uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        we = 0;
        addr = 0;
        din = 0;

        // Write data
        #10 we = 1; addr = 4'b0001; din = 8'hAA;
        #10 addr = 4'b0010; din = 8'h55;
        #10 we = 0;

        // Read data
        #10 addr = 4'b0001;
        #10 addr = 4'b0010;

        #20 $finish;
    end

endmodule

