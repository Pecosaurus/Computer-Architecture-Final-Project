output reg [31:0] IROM_out;

always @(addr) begin

	case (addr)
		
		//8'h0 : IROM_out <= 32'h00000000;
		8'h0 : IROM_out <= 32'h00450693; // addi a3,a0,4
		8'h4 : IROM_out <= 32'h00100713; // addi a4,x0,1
		8'h8 : IROM_out <= 32'h00b76463; // bltu a4,a1,10
		8'hc : IROM_out <= 32'h00b708b3; // add  a7,a4,a1
		8'h10: IROM_out <= 32'h00d6a023; // sw   a3, 0(a3) 
		8'h14: IROM_out <= 32'h0006a803; // lw   a6,0(a3)
		8'h18: IROM_out <= 32'h01185a63; // bge  a6,a7,34
		
		8'h1c: IROM_out <= 32'h01162023; // sw   a7,0(a2)
		8'h20: IROM_out <= 32'hfff78793; // addi a5,a5,-1
		8'h24: IROM_out <= 32'hffc60613; // addi a2,a2,-4
		8'h28: IROM_out <= 32'hfe0796e3; // bne  a5,x0,1c
		8'h2c: IROM_out <= 32'h00279793; // slli a5,a5,0x2
		8'h30: IROM_out <= 32'h00f507b3; // add  a5,a0,a5
		8'h34: IROM_out <= 32'h0107a023; // sw   a6,0(a5)
		8'h38: IROM_out <= 32'h00170713; // addi a4,a4,1
		8'h3c: IROM_out <= 32'h00468693; // addi a3,a3,4
		8'h40 : IROM_out <= 32'h00008067; // jalr x0,x1,0
		8'h44: IROM_out <= 32'hfc1ff06f; // jal  x0,8
		
		/*
	   //8'h0 : IROM_out <= 32'h00000000;
		8'h0 : IROM_out <= 32'h00450693; // addi a3,a0,4
		8'h4 : IROM_out <= 32'h00100713; // addi a4,x0,1
		8'h8 : IROM_out <= 32'h00b76463; // bltu a4,a1,10
		//8'hc : IROM_out <= 32'h00008067; // jalr x0,x1,0
		8'hc: IROM_out <= 32'h0006a803; // lw   a6,0(a3)
		8'h10: IROM_out <= 32'h00068613; // addi a2,a3,0
		8'h14: IROM_out <= 32'h00070793; // addi a5,a4,0
		8'h18: IROM_out <= 32'hffc62883; // lw   a7,-4(a2)
		8'h1c: IROM_out <= 32'h01185a63; // bge  a6,a7,34
		8'h20: IROM_out <= 32'h01162023; // sw   a7,0(a2)
		8'h24: IROM_out <= 32'hfff78793; // addi a5,a5,-1
		8'h28: IROM_out <= 32'hffc60613; // addi a2,a2,-4
		8'h2c: IROM_out <= 32'hfe0796e3; // bne  a5,x0,1c
		8'h30: IROM_out <= 32'h00279793; // slli a5,a5,0x2
		8'h34: IROM_out <= 32'h00f507b3; // add  a5,a0,a5
		8'h38: IROM_out <= 32'h0107a023; // sw   a6,0(a5)
		8'h3c: IROM_out <= 32'h00170713; // addi a4,a4,1
		8'h40: IROM_out <= 32'h00468693; // addi a3,a3,4
		8'h44 : IROM_out <= 32'h00008067; // jalr x0,x1,0
		8'h48: IROM_out <= 32'hfc1ff06f; // jal  x0,8
		*/
		
	endcase

end

endmodule 
