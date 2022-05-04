module PC_adder(PC, PCplus4);

	input [31:0] PC;
	output [31:0] PCplus4;
	
	
	assign PCplus4 = PC + 32'd4;
	 
endmodule 
