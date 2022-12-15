`timescale 1ns/1ns

module lab505(CLOCK_20);
   input CLOCK_20;

   // You need to set it as follow when implementation your design
   (* DONT_TOUCH = "TRUE" *)reg  [10:0] 		   PC;        // PC current
   (* DONT_TOUCH = "TRUE" *)wire [10:0]			PC_next;   // PC next to be latched
   (* DONT_TOUCH = "TRUE" *)wire [10:0]			PC_plus;   // PC + 4
   (* DONT_TOUCH = "TRUE" *)wire [10:0]			PC_offset; // PC offset for branching
   (* DONT_TOUCH = "TRUE" *)wire 					to_branch; // branch condition

   (* DONT_TOUCH = "TRUE" *)wire run;
   
   (* DONT_TOUCH = "TRUE" *)wire [31:0] 		A;         // ALU input A
   (* DONT_TOUCH = "TRUE" *)wire [31:0] 		B;         // ALU input B
   (* DONT_TOUCH = "TRUE" *)wire signed [31:0]	Y;			// From a1 of ALU.v
   (* DONT_TOUCH = "TRUE" *)wire [1:0]		aluop;			// From ctrl of control_unit.v
   (* DONT_TOUCH = "TRUE" *)wire [4:0]		aluopcode;		// From aluctrl of alu_control.v
   (* DONT_TOUCH = "TRUE" *)wire			zero;			// From a1 of ALU.v
   
   
   //Control Unit
   (* DONT_TOUCH = "TRUE" *)wire Branch; 
   (* DONT_TOUCH = "TRUE" *)wire MemRead; 
   (* DONT_TOUCH = "TRUE" *)wire MemtoReg; 
   (* DONT_TOUCH = "TRUE" *)wire MemWrite; 
   (* DONT_TOUCH = "TRUE" *)wire ALUSrc; 
   (* DONT_TOUCH = "TRUE" *)wire RegWrite; 
   (* DONT_TOUCH = "TRUE" *)wire Jump;

    // CU Flags fof BNE and JALR
   (* DONT_TOUCH = "TRUE" *)wire BNE;
   (* DONT_TOUCH = "TRUE" *)wire JALR; 
   (* DONT_TOUCH = "TRUE" *)wire JAL; 

   
   //register file
   (* DONT_TOUCH = "TRUE" *)wire [31:0] 		rd1_w;         
   (* DONT_TOUCH = "TRUE" *)wire [31:0] 		rd2_w;         
   (* DONT_TOUCH = "TRUE" *)wire [31:0] 		wd;
  // wire [31:0] wd;
   
   //reg_rom
   (* DONT_TOUCH = "TRUE" *)wire [31:0] q1;
   
   //Output clks
   (* DONT_TOUCH = "TRUE" *)wire outclk1;
   (* DONT_TOUCH = "TRUE" *)wire outclk2;
   (* DONT_TOUCH = "TRUE" *)wire outclk3;
   // remeber to use your locked signal
   (* DONT_TOUCH = "TRUE" *)wire locked;
   wire clk_fb;
   
   //imm_gen
   (* DONT_TOUCH = "TRUE" *)wire [31:0]immgenout;
   
   //RAM 
   (* DONT_TOUCH = "TRUE" *)wire [31:0] RDwire;
   

   // your PC intiial is better to be -4 to make sure the first clock will trigger your first instruction
   initial 
    PC = -4;
	parameter HALT = 7'b1111111;

// design run signal which indicate run and halt
   assign run = (q1[6:0] != HALT) ? 1 : 0;

    
    // =============== PC =======================
	always @(posedge outclk1 & locked) begin
	  if (run & locked) begin
         PC <= PC_next;
	  end
	end

   // finish your PC design
      assign PC_plus = PC + 4;
      assign PC_offset = PC + immgenout;
      assign PC_next = (Jump  & !BNE & !JALR) ? PC_offset : 
                      (Branch & !zero & BNE) ? PC_offset : 
                      (Branch &  zero  & BNE)  ? PC_plus   : 
                      (JALR) ? (rd1_w + immgenout)  :
                      PC_plus;
      assign to_branch = q1[12] ^ zero; //DAFQ IS THIS
      //assign PC_next = ;



   // ================ ALU =================
   // prepare for A and B
   assign A = rd1_w;
   assign B = (ALUSrc) ? immgenout : rd2_w;  // 1 = immediate, 0 = rd2
   
    ALU alu(
	   .Y (Y[31:0]),
	   .zero (zero),
	   .A (A[31:0]),
	   .B (B[31:0]),
	   .opcode (aluopcode[4:0]));
	       
    // ================ controller =================
    
    control_unit control_unit(
        .instr (q1[6:0]),
        .aluop (aluop[1:0]),
        .Branch (Branch),
        .MemRead (MemRead),
        .MemtoReg (MemtoReg),
        .MemWrite (MemWrite),
        .ALUSrc (ALUSrc),
        .RegWrite (RegWrite),
        .Jump (Jump),
        .JALR (JALR),
        .BNE (BNE),
        .JAL (JAL));
        


   // =================== ALU controller ============
   
   
    alu_control alu_control(
        .instr_split ({q1[30], q1[25], q1[14:12]}),
        .aluop       (aluop[1:0]),
        .aluopcode   (aluopcode[4:0]));
        
			    
   // ================ register file =================


   assign wd[31:0] = (JALR||JAL) ? PC_plus : (MemtoReg ?  RDwire[31:0]: Y[31:0]);

    reg_file reg_file(
        .clk (outclk3 & locked),
        .wren (RegWrite),
        .rr1 (q1[19:15]),
        .rr2 (q1[24:20]),
        .wr (q1[11:7]),
        .wd (wd[31:0]),
        .rd1 (rd1_w[31:0]),
        .rd2 (rd2_w[31:0]));

    // ================= immediate generator =======
    
    imm_gen imm_gen(
        .instr (q1[31:0]),
        .out (immgenout[31:0]));

    // =================== RAM ==========================
    blk_mem_gen_0 ram0 (
        .clka(outclk2 & locked),
        .ena(MemRead | MemWrite), 
        .wea(MemWrite),
        .addra(Y[31:0]),
        .dina(rd2_w[31:0]),
        .douta(RDwire[31:0])
    );
    
    // ================== Register ROM =============================
    reg_rom reg_rom(
        .addr (PC >> 2), //shift to use PC +4 or else it would be PC +1
        .q (q1[31:0]));

    // ================== MMCM =============================
    //in fetch/PC clk1
    //reg_file is clk 3
    //RAM/Data mem is clk2
    
    clk_wiz_0 clkWiz(
        //.clkfb_out (clk_fb)
        .clk_out1(outclk1),
        .clk_out2(outclk2),
        .clk_out3(outclk3),
        .reset(0),
        .locked(locked),
        .clk_in1(CLOCK_20));
	    //.clkfb_in (clk_fb));   
endmodule
