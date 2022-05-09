`timescale 1ns/1ps

module controlunit_tb;
	reg [31:0] instr;
	reg zero;
	wire [1:0] imm_sel;
	wire regrw, alusrc, memrw, pcsrc, wb;
	wire [2:0] aluop;
	
controlunit dut(.instr(instr), .zero(zero), .imm_sel(imm_sel), .regrw(regrw), .alusrc(alusrc), .aluop(aluop), .memrw(memrw), .pcsrc(pcsrc), .wb(wb));

initial begin
		instr = 32'h00000000;
		#10 instr = 32'h00450693; zero = 0;// addi a3,a0,4
		#10 instr = 32'h00100713; // addi a4,x0,1
		#10 instr = 32'h00b76463; // bltu a4,a1,10
		#10 instr = 32'h00b708b3; // add  a7,a4,a1
		#10 instr = 32'h00d6a023; // sw   a3, 0(a3) 
		#10 instr = 32'h0006a803; // lw   a6,0(a3)
		#10 instr = 32'h01185a63; // bge  a6,a7,34
		
		#10 instr = 32'h01162023; zero = 1'bx;// sw   a7,0(a2)
		#10 instr = 32'hfff78793; // addi a5,a5,-1
		#10 instr = 32'hffc60613; // addi a2,a2,-4
		#10 instr = 32'hfe0796e3; // bne  a5,x0,1c
		#10 instr = 32'h00279793; // slli a5,a5,0x2
		#10 instr = 32'h00f507b3; // add  a5,a0,a5
		#10 instr = 32'h0107a023; // sw   a6,0(a5)
		#10 instr = 32'h00170713; // addi a4,a4,1
		#10 instr = 32'h00468693; // addi a3,a3,4
		#10 instr = 32'h00008067; // jalr x0,x1,0
		#10 instr = 32'hfc1ff06f; // jal  x0,8
		#10 $stop;
end

endmodule