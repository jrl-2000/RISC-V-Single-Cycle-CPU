`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2022 08:29:23 AM
// Design Name: 
// Module Name: 
// Project Name: RISC-V Single Cycle Processor
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

module ALU
(
  output wire signed [31:0] Y,    // output of A B compute result
  output zero,                    // flag indicate the output is zero

  input signed [31:0] A,          // Data A
  input signed [31:0] B,          // Data B
  input [4:0] opcode              // Operation Code
  );

  reg [31:0] YI;
  reg zeroI;
always @ (*) begin
   
case (opcode)
    5'b00111: begin
    YI = A & B;
    zeroI = 0;
     if (YI == 0)
      
        zeroI = 1;
     else
        zeroI = 0;   
    end
    5'b00110: begin
    YI = A | B;
    zeroI = 0;
        if (YI == 0)
        
        zeroI = 1;
         else
        zeroI = 0;     
    end
    5'b00000: begin
    YI = A + B;
        if (YI == 0)
       
        zeroI = 1;
             else
        zeroI = 0; 
    end
    5'b10000: begin
    YI = A - B;
    if (YI == 0)
        zeroI = 1;
             else
        zeroI = 0; 
    end 
    5'b01000: begin //mult
    YI = A * B;
    zeroI = 0;
        if (YI == 0)
        zeroI = 1;
         else
        zeroI = 0; 

    end
    5'b00001: begin
     YI = A << B;
     if (YI == 0)
     zeroI = 1;
          else
        zeroI = 0; 
    end
    endcase
 end 
assign Y = YI;
assign zero = zeroI;
    
endmodule
