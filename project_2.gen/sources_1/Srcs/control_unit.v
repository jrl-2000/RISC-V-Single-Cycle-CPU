`timescale 1ns / 1ps
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

module control_unit(
	input 	[6:0] instr,
	output [1:0] aluop,
	output	Branch,
	output  MemRead,
	output  MemtoReg,
	output  MemWrite,
	output  ALUSrc,
	output  RegWrite,
	output  Jump,
	output JALR,
	output BNE,
	output JAL
);

assign Branch = (instr == 7'b0110011) ? 1'b0: //R-type
							  	(instr == 7'b0010011) ? 1'b0: // I-type
								(instr == 7'b0100011) ? 1'b0: // S-type
								(instr == 7'b0000011) ? 1'b0:	 // L-type
								(instr == 7'b1100011) ? 1'b1:	 // B-type
								(instr == 7'b1101111) ? 1'b1:	 // J-Type
								
									 1'b0; //default
assign aluop = (instr == 7'b0110011) ? 2'b10: //R-type
							  	(instr == 7'b0010011) ? 2'b11: // I-type
								(instr == 7'b0100011) ? 2'b00: // S-type
								(instr == 7'b0000011) ? 2'b00:	 // L-type
								(instr == 7'b1100011) ? 2'b01:	 // B-type
								(instr == 7'b1101111) ? 2'b00:	 // JAL
								
									 2'b00;
assign MemRead = (instr == 7'b0110011) ? 1'b0: //R-type
							  	(instr == 7'b0010011) ? 1'b0: // I-type
								(instr == 7'b0100011) ? 1'b0: // S-type
								(instr == 7'b0000011) ? 1'b1:	 // L-type
								(instr == 7'b1100011) ? 1'b0:	 // B-type
								(instr == 7'b1101111) ? 1'b0:	 // JAL
								
									 1'b0; //default
assign MemtoReg = (instr == 7'b0110011) ? 1'b0: //R-type
							  	(instr == 7'b0010011) ? 1'b0: // I-type
								(instr == 7'b0100011) ? 1'b0: // S-type
								(instr == 7'b0000011) ? 1'b1:	 // L-type
								(instr == 7'b1100011) ? 1'b0:	 // B-type
								(instr == 7'b1101111) ? 1'b0:	 // JAL
								
									 1'b0; //default
assign MemWrite = (instr == 7'b0110011) ? 1'b0: //R-type
							  	(instr == 7'b0010011) ? 1'b0: // I-type
								(instr == 7'b0100011) ? 1'b1: // S-type
								(instr == 7'b0000011) ? 1'b0:	 // L-type
								(instr == 7'b1100011) ? 1'b0:	 // B-type
								(instr == 7'b1101111) ? 1'b0:	 // JAL
								//(instr == 7'b0010011) ? 1'b0:	 // JALR
									 1'b0; //default
assign ALUSrc = (instr == 7'b0110011) ? 1'b0: //R-type
							  	(instr == 7'b0010011) ? 1'b1: // I-type
								(instr == 7'b0100011) ? 1'b1: // S-type
								(instr == 7'b0000011) ? 1'b1:	 // L-type
								(instr == 7'b1100011) ? 1'b0:	 // B-type
								(instr == 7'b1101111) ? 1'b0:	 // JAL
									 1'b0; //default
assign RegWrite = (instr == 7'b0110011) ? 1'b1: //R-type
							  	(instr == 7'b0010011) ? 1'b1: // I-type
								(instr == 7'b0100011) ? 1'b0: // S-type
								(instr == 7'b0000011) ? 1'b1:	 // L-type
								(instr == 7'b1100011) ? 1'b0:	 // B-type
								(instr == 7'b1101111) ? 1'b1:	 // JAL
								
									 1'b0; //default
assign Jump = (instr == 7'b0110011) ? 1'b0: //R-type
							  	(instr == 7'b0010011) ? 1'b0: // I-type
								(instr == 7'b0100011) ? 1'b0: // S-type
								(instr == 7'b0000011) ? 1'b0:	 // L-type
								(instr == 7'b1100011) ? 1'b0:	 // B-type
								(instr == 7'b1101111) ? 1'b1:	 // JAL
								
									 1'b0; //default

//Flags for BNE and JALR
assign BNE = (instr == 7'b1100011) ? 1'b1 : 1'b0;
assign JALR = (instr == 7'b1100111) ? 1'b1 : 1'b0;
assign JAL = (instr == 7'b1101111) ? 1'b1: 1'b0;
								
endmodule
