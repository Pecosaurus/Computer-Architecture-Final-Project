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

 
/*module adder32bit(A,B,C_in,C_out,Sum);
input [31:0] A;
input [31:0] B;
input C_in;
output [31:0] Sum;
output wire C_out;
wire [31:0] C;

// could have written a for loop not sure why I didn't


	fulladder dut0 (A[0], B[0], C_in, C[0], Sum[0]);
	fulladder dut1 (A[1], B[1], C[0], C[1], Sum[1]);
	fulladder dut2 (A[2], B[2], C[1], C[2], Sum[2]);
	fulladder dut3 (A[3], B[3], C[2], C[3], Sum[3]);

	fulladder dut4 (A[4], B[4], C[3], C[4], Sum[4]);
	fulladder dut5 (A[5], B[5], C[4], C[5], Sum[5]);
	fulladder dut6 (A[6], B[6], C[5], C[6], Sum[6]);
	fulladder dut7 (A[7], B[7], C[6], C[7], Sum[7]);

	fulladder dut8 (A[8], B[8], C[7], C[8], Sum[8]);
	fulladder dut9 (A[9], B[9], C[8], C[9], Sum[9]);
	fulladder dut10 (A[10], B[10], C[9], C[10], Sum[10]);
	fulladder dut11 (A[11], B[11], C[10], C[11], Sum[11]);

	fulladder dut12 (A[12], B[12], C[11], C[12], Sum[12]);
	fulladder dut13 (A[13], B[13], C[12], C[13], Sum[13]);
	fulladder dut14 (A[14], B[14], C[13], C[14], Sum[14]);
	fulladder dut15 (A[15], B[15], C[14], C[15], Sum[15]);

	fulladder dut16 (A[16], B[16], C[15], C[16], Sum[16]);
	fulladder dut17 (A[17], B[17], C[16], C[17], Sum[17]);
	fulladder dut18 (A[18], B[18], C[17], C[18], Sum[18]);
	fulladder dut19 (A[19], B[19], C[18], C[19], Sum[19]);

	fulladder dut20 (A[20], B[20], C[19], C[20], Sum[20]);
	fulladder dut21 (A[21], B[21], C[20], C[21], Sum[21]);
	fulladder dut22 (A[22], B[22], C[21], C[22], Sum[22]);
	fulladder dut23 (A[23], B[23], C[22], C[23], Sum[23]);

	fulladder dut24 (A[24], B[24], C[23], C[24], Sum[24]);
	fulladder dut25 (A[25], B[25], C[24], C[25], Sum[25]);
	fulladder dut26 (A[26], B[26], C[25], C[26], Sum[26]);
	fulladder dut27 (A[27], B[27], C[26], C[27], Sum[27]);

	fulladder dut28 (A[28], B[28], C[27], C[28], Sum[28]);
	fulladder dut29 (A[29], B[29], C[28], C[29], Sum[29]);
	fulladder dut30 (A[30], B[30], C[29], C[30], Sum[30]);
	fulladder dut31 (A[31], B[31], C[30], C_out, Sum[31]);
	
	//assign C_out = C[31];

endmodule */
