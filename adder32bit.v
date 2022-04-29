module adder32bit(A,B,C_in,C_out,Sum);
input [31:0] A;
input [31:0] B;
input C_in;
output reg [31:0] Sum;
output reg  C_out;

always @( A or B or C_in) begin

	{C_out,Sum} = A+B+C_in;

end
	
endmodule
