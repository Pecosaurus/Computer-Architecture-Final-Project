module Addr_Offset_Adder (PC, Imm, AO_Adder_Out);

input [31:0] PC;
input [31:0] Imm;
output reg [31:0] AO_Adder_Out;
	
	always @ (PC or Imm) begin
	
		AO_Adder_Out = PC + Imm;
	
	end
	 
endmodule 