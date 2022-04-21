module PC_ROM_and_Inst_Decoder (clk, reset, rd, rs1, rs2, imm);

input clk;
input reset;

output [4:0] rd;
output [4:0] rs1;
output [4:0] rs2;
output [11:0] imm;

wire [31:0] PC1; 
wire [31:0] PC2;
wire [31:0] IS;

PC uut_PC (clk, reset, PC2, PC1);
PC_adder uut_adder (PC1, PC2);
ROM uut_ROM (PC1, IS);
Instr_Decoder uut_ID (IS, rd, rs1, rs2, imm);

endmodule 
© 2022 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
