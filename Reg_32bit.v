module Reg_32bit(Q, D, L, R, clock);
	parameter N = 32; // number of bits
	output reg [N-1:0]Q; // registered output
	input [N-1:0]D; // data input
	input L; // load enable
	input R; // reset
	input clock; // clock
	
	always @(posedge clock or posedge R) begin
		if(R)
			Q <= 0;
		else if(L)
			Q <= D;
		else
			Q <= Q;
			//write all conditions
	end
	
endmodule
