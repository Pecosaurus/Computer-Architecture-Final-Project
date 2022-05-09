module controlunit (instr, zero, imm_sel, regrw, alusrc, aluop, memrw, pcsrc, wb);

	input  [31:0] instr;
	input zero;
	output reg regrw, alusrc, memrw, pcsrc, wb;
	output reg [1:0] imm_sel;
	output reg [2:0] aluop;
	wire [3:0] opcode;
	
	assign opcode = {{instr[13:12]}, {instr[5:4]}};
	
	always @ (*) begin
		case(opcode)
			4'b0011: begin
				imm_sel = 2'b00;
				alusrc = 1'b0;
				aluop = 3'b000;
				memrw = 1'b0;
				wb = 1'b1;
				pcsrc = 1'b0;
				regrw = 1'b1;
			end
			
			4'b1011: begin
				imm_sel = 2'b00;
				alusrc = 1'b0;
				aluop = 3'b001;
				memrw = 1'b0;
				wb = 1'b1;
				pcsrc = 1'b0;
				regrw = 1'b1;
			end
				
			4'b0111: begin
				imm_sel = 2'b00;
				alusrc = 1'b0;
				aluop = 3'b010;
				memrw = 1'b0;
				wb = 1'b1;
				pcsrc = 1'b0;
				regrw = 1'b1;
			end
			
			4'b0001: begin
				imm_sel = 2'b01;
				alusrc = 1'b1;
				aluop = 3'b000;
				memrw = 1'b0;
				wb = 1'b1;
				pcsrc = 1'b0;
				regrw = 1'b1;
			end
			
			4'b1001: begin
				imm_sel = 2'b01;
				alusrc = 1'b1;
				aluop = 3'b001;
				memrw = 1'b0;
				wb = 1'b1;
				pcsrc = 1'b0;
				regrw = 1'b1;
			end
				
			4'b0101: begin
				imm_sel = 2'b01;
				alusrc = 1'b1;
				aluop = 3'b010;
				memrw = 1'b0;
				wb = 1'b1;
				pcsrc = 1'b0;
				regrw = 1'b1;
			end
				
			4'b1000: begin
				imm_sel = 2'b01;
				alusrc = 1'b1;
				aluop = 3'b000;
				memrw = 1'b0;
				wb = 1'b0;
				pcsrc = 1'b0;
				regrw = 1'b1;
			end
			
			4'b1010: begin
				imm_sel = 2'b10;
				alusrc = 1'b1;
				aluop = 3'b000;
				memrw = 1'b1;
				wb = 1'b0;
				pcsrc = 1'b0;
				regrw = 1'b0;
			end
				
			4'b0010: begin
				imm_sel = 2'b11;
				alusrc = 1'b0;
				aluop = 3'b011;
				memrw = 1'b0;
				wb = 1'b1;
				pcsrc = zero;
				regrw = 1'b0;
			end
			
			default: begin
				imm_sel = 2'b00;
				alusrc = 1'b0;
				aluop = 3'b000;
				memrw = 1'b0;
				wb = 1'b0;
				pcsrc = 1'b0;
				regrw = 1'b0;
			end
				
		endcase
	end
 
endmodule 