`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2022 07:25:35 AM
// Design Name: 
// Module Name: tb_clkWizard
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


module tb_clkWizard(
    );
    reg clk=1;
    wire clk1, clk2, clk3;
    reg reset=0;
    wire lock;
    always
        #1 clk = ~clk;
        
    clk_wiz_0 clkWiz(
        .clk_out1(clk1),
        .clk_out2(clk2),
        .clk_out3(clk3),
        .reset(reset),
        .locked(lock),
        .clk_in1(clk)
    );
    
    initial begin
        #1
        reset = 1;
        #1
        reset = 0;
    end
    
endmodule
