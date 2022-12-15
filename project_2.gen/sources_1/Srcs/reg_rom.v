`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jonathan Lopez
// 
// Create Date: 10/31/2022 08:29:23 AM
// Design Name: 
// Module Name: register ROM
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

module reg_rom(addr, q);
  input [4:0] addr; //5 bit register address input
  output [31:0] q;  //read data outputs

  reg [31:0] file [31:0]; //32 registers 32bits wide
  integer i;

  initial begin
  // Init the instruction codes

//  //factorial 6 //part b

//  file[0] = 32'h00600513; //addi a0, x0, 6
//  file[1] = 32'h00c000ef; //jal ra, fact (12)
//  file[2] = 32'h00a02023; //sw a0, 0(x0)
//  file[3] = 32'h0000007f; //HALT
//  //fact:
//  file[4] = 32'hff810113; //addi sp, sp, -8
//  file[5] = 32'h00112223; //sw  ra, 4(sp)
//  file[6] = 32'h00a12023; //sw x10 0(x2)
//  file[7] = 32'hfff50513; //addi x10 x10 -1
//  file[8] = 32'h00051863; //bne a0, x0, else (16)
//  file[9] = 32'h00100513; //addi a0, x0, 1
//  file[10] = 32'h00810113; //addi sp, sp, 8
//  file[11] = 32'h00008067; //jalr x0, 0(ra)
//  //else:
//  file[12] = 32'hfe1ff0ef; //jal ra, fact(-32)
//  file[13] = 32'h00050293; //addi t0, a0,0
//  file[14] = 32'h00012503; //lw  a0, 0(sp) 
//  file[15] = 32'h00412083; //lw  ra, 4(sp)
//  file[16] = 32'h00810113; //addi sp, sp, 8 
//  file[17] = 32'h02550533; //mul a0, a0, t0
//  file[18] = 32'h00008067; //jalr x0, 0(ra)
  

  //prog2
//  file[0] = 32'h00800293;
//  file[1] = 32'h00f00313;
//  file[2] = 32'h0062a023;
//  file[3] = 32'h005303b3;
//  file[4] = 32'h40530e33;
//  file[5] = 32'h03c384b3;
//  file[6] = 32'h00428293;
//  file[7] = 32'hffc21903;
//  file[8] = 32'h41248933;
//  file[9] = 32'h00291913;
//  file[10] = 32'h0122a023;
//  file[11] = 32'h0000007f;//HALT
//  file[12] = 32'h00000000;
//  file[13] = 32'h00000000;
//  file[14] = 32'h00000000;
//  file[15] = 32'h00000000;
//  file[16] = 32'h00000000;
//  file[17] = 32'h00000000;
//  file[18] = 32'h00000000;

//  // prog1
  file[0] = 32'h00000093;
  file[1] = 32'h01000113;
  file[2] = 32'h06400193;
  file[3] = 32'h00800213;
  file[4] = 32'h002082b3;
  file[5] = 32'h00418333;
  file[6] = 32'h0050a023;
  file[7] = 32'h00612223;
  file[8] = 32'h0000007f;//HALT
  file[9] = 32'h00000000;
  file[10] = 32'h00000000;
  file[11] = 32'h00000000;
  file[12] = 32'h00000000;
  file[13] = 32'h00000000;
  file[14] = 32'h00000000;
  file[15] = 32'h00000000;
  file[16] = 32'h00000000;
  file[17] = 32'h00000000;
  file[18] = 32'h00000000;

//My Program
//file [0] = 32'h00100113;
//file [1] = 32'h402080b3;
//file [2] = 32'h00102223;
//file [3] = 32'hfe001ce3;
//file [4] = 32'h0000007f;
//file [5] = 32'h00000000;
//file [6] = 32'h00000000;
//file [7] = 32'h00000000;
//file [8] = 32'h00000000;
//file [9] = 32'h00000000;
//file[10] = 32'h00000000;
//file[11] = 32'h00000000;
//file[12] = 32'h00000000;
//file[13] = 32'h00000000;
//file[14] = 32'h00000000;
//file[15] = 32'h00000000;
//file[16] = 32'h00000000;
//file[17] = 32'h00000000;
//file[18] = 32'h00000000;




   //Fill the rest with 0's
  for (i = 19; i < 32; i = i + 1)begin
    file[i] = 32'h00000000;
  end  
  end

  // output the Instruction code
  assign q = file[addr];

endmodule
