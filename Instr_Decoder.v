module Instr_Decoder (instr, rd, rs1, rs2, instr_out);

input [31:0] instr;

output  [4:0] rd;
output  [4:0] rs1;
output [4:0] rs2;
output  [32:0] instr_out;



assign rd  = instr[11:7];
assign rs1 = instr[19:15];
assign rs2 = instr[24:20];
assign instr_out = instr;

endmodule
