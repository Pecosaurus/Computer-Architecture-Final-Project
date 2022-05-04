module Datapath (imm_sel, RegRW, ALUsrc, ALUop, MRW, WB, PCsrc, clk, reset, Instr, Final_out, Status);

input [1:0] imm_sel;
input RegRW, ALUsrc, MRW, WB, PCsrc;
input [3:0] ALUop;
input clk;
input reset;

output [31:0] Instr;
output [31:0] Final_out;
output [3:0] Status;

wire [31:0] PC_out, PC_in;
wire [31:0] IROM_out;

wire [31:0] PCMuxIn1, PCMuxIn2;

wire [4:0] rd, rs1, rs2;
wire [31:0] instr_out;

wire [31:0] immout;

wire [31:0] S2;
wire [31:0] A, B;

wire [31:0] ALU_out;
wire C_in;

assign C_in = 0;

wire [31:0] RAM_out;
wire en;

assign en = 1'b1;

wire [31:0] Datapath_out;

// Datapath Component Instances

PC uut_PC (clk, reset, PC_in, PC_out);

ROM uut_ROM (PC_out, IROM_out);

Instr_Decoder uut_ID (IROM_out, rd, rs1, rs2, instr_out);

immgen uut_immgen (instr_out, imm_sel, immout);
assign Instr = instr_out;

regfile32x32 uut_regfile (clk, reset, RegRW, rd, Datapath_out, rs1, A, rs2, S2);

mux1 uut_ALUmux (S2,immout,ALUsrc,B);

ALU uut_ALU (A, B, C_in, ALUop, ALU_out, Status);

RAM_256x32 uut_RAM (ALU_out[7:0], S2, en, MRW, clk,RAM_out);


mux1 uut_Outputmux (RAM_out,ALU_out,WB,Datapath_out);
assign Final_out = Datapath_out;

PC_adder uut_Plus4adder (PC_out, PCMuxIn1);
Addr_Offset_Adder uut_AOadder (PC_out, immout, PCMuxIn2);

mux1 uut_PCinmux (PCMuxIn1,PCMuxIn2,PCsrc,PC_in);


endmodule 