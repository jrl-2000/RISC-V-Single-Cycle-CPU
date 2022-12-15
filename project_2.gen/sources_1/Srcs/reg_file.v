`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2022 08:29:23 AM
// Design Name: 
// Module Name: 
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

module reg_file(clk, wren, wd, rr1, rr2, wr, rd1, rd2);
  input clk, wren; //clock and write enable ports
  input [4:0] rr1, rr2, wr; //5 bit register address inputs
  input [31:0] wd; //data to write
  output [31:0] rd1, rd2; //read data outputs

  reg [31:0] file [31:0]; //32 registers 32bits wide
   initial begin
	  
    // init rest of your file
   file[0]  = 32'h0;
   file[1]  = 32'h0;
   file[2]  = 32'h0;
   file[3]  = 32'h0;
   file[4]  = 32'h0;
   file[5]  = 32'h0;
   file[6]  = 32'h0;
   file[7]  = 32'h0;
   file[8]  = 32'h0;
   file[9]  = 32'h0;
   file[10]  = 32'h0;
   file[11]  = 32'h0;
   file[12]  = 32'h0;
   file[13]  = 32'h0;
   file[14]  = 32'h0;
   file[15]  = 32'h0;
   file[16]  = 32'h0;
   file[17]  = 32'h0;
   file[18]  = 32'h0;
   file[19]  = 32'h0;
   file[20]  = 32'h0;
   file[21]  = 32'h0;
   file[22]  = 32'h0;
   file[23]  = 32'h0;
   file[24]  = 32'h0;
   file[25]  = 32'h0;
   file[26]  = 32'h0;
   file[27]  = 32'h0;
   file[28]  = 32'h0;
   file[29]  = 32'h0;
   file[30]  = 32'h0;
   file[31]  = 32'h0;
   end

  //should be combinational
  assign rd1 = file[rr1];  // finish your desigh 
  assign rd2 = file[rr2]; // finish your desigh 

  //write data Logic when the wren triggered
  always @(posedge clk) begin
    // finish your design
    if(wren) begin
	       file[wr] <= wd;
	  end
  end

endmodule
