module PC(clk, reset, PC_in, PC_out);
	input clk;
	input reset;
	input [31:0] PC_in;
	output reg [31:0] PC_out;
	

	
	always @(posedge clk) begin
		if (reset)
			PC_out = 32'h00;
		
		else 
			PC_out = PC_in;
	
	end
	
endmodule
