module immgen(instr, sel, immout);
	input [31:0] instr;
	input [1:0] sel;
	output reg [31:0] immout;
	wire [31:0] immI;  //I type
	wire [31:0] immS;  //S type
	wire [31:0] immB;  //B type
	wire [31:0] out3 = 32'h00000000;
	
	assign immI[11:0] = instr[31:20];
	assign immI[31:12] = {20{instr[31]}};
	
	assign immS[11:0] = {instr[31:20], instr[11:7]};
	assign immS[31:12] = {20{instr[31]}};
	
	assign immB[0] = 0;
	assign immB[11:1] = {instr[7], instr[30:25], instr[11:8]};
	assign immB[31:12] = {20{instr[7]}};

	
	always @(sel)
	if (sel == 2'b00) immout = immI;
	
	else if (sel == 2'b01) immout = immS;
	
	else if (sel == 2'b10) immout = immB;
	
	else immout = out3;
	
	
endmodule
