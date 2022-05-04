`timescale 1ns/1ps
module Datapath_tb;

reg [1:0] imm_sel;
reg RegRW, ALUsrc, MRW, WB, PCsrc;
reg [3:0] ALUop;
reg clk;
reg reset;

wire [31:0] Instr;
wire [31:0] Final_out;
wire [3:0] Status;

Datapath dut (imm_sel, RegRW, ALUsrc, ALUop, MRW, WB, PCsrc, clk, reset, Instr, Final_out, Status);

initial begin 

	reset = 1;
	clk = 0;
	imm_sel = 2'bxx;
	RegRW = 1'bx;
	ALUsrc = 1'bx;
	MRW = 1'bx;
	WB = 1'bx;
	PCsrc =1'bx;
	ALUop = 4'bx;
	
	#10

	reset = 0;
	// addi a3, a0, 4
	imm_sel = 2'b00;
	RegRW = 1'b1;
	ALUsrc = 1'b1;
	MRW = 1'b0;
	WB = 1'b1;
	PCsrc =1'b0;
	ALUop = 0100;

	#5
	
	// addi a4, x0, 1
	imm_sel = 2'b00;
	RegRW = 1'b1;
	ALUsrc = 1'b1;
	MRW = 1'b0;
	WB = 1'b1;
	PCsrc =1'b0;
	ALUop = 0100;
	
	#10
	//  bltu a4, a1, 10
	imm_sel = 2'b10;
	RegRW = 1'b0;
	ALUsrc = 1'b0;
	MRW = 1'b0;
	WB = 1'b1;
	PCsrc =1'b0;
	ALUop = 1100;
	
	#10;
	
	// add x7,x4,x1
	
	imm_sel = 2'bxx;
	RegRW = 1'b1;
	ALUsrc = 1'b0;
	MRW = 1'b0;
	WB = 1'b1;
	PCsrc = 1'b0;
	ALUop = 0100;
	 
	#10;
	
	 // sw x3, -1(x4)

	imm_sel =  2'b01;
	RegRW = 1'b0;
	ALUsrc = 1'b1;
	MRW = 1'b1;
	WB = 1'b1;
	PCsrc = 1'b0;
	ALUop = 0100;
	#10;
	
	// lw a6,0(a3) 
	imm_sel = 2'b00;
	RegRW = 1'b1;
	ALUsrc = 1'b1;
	MRW = 1'b0;
	WB = 1'b0;
	PCsrc = 0;
	ALUop = 0100;
	
	#10;
	
	// bge  a6,a7,34
	imm_sel = 2'b10;
	RegRW = 1'b0;
	ALUsrc = 1'b0;
	MRW = 1'b0;
	WB = 1'b1;
	PCsrc =1'b0;
	ALUop = 1100;
	
	#10 $stop;

end	

	always #5 clk = ~clk;
	

endmodule

