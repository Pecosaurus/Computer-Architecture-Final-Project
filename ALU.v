module ALU (A, B, C_in, Select, ALU_out, Status);



input [31:0] A;
input [31:0] B;
//input MuxSel;
input [3:0] Select; 
input C_in;

output [31:0] ALU_out;
output reg [3:0] Status;

wire C_out;
reg V, Z, N;
wire [31:0] I4, I5, I6;
reg[31:0] I0, I1, I2, I3, I7;


adder_subtractor32bit dut1 (A,B,C_in, Select[3], C_out,I4);

shift_register dut2 (A, B, I5, I6);
 
always @ (ALU_out) begin
	
	N = A[31] ^ B[31]; //Negative
	//assign C_out = ALU_out[31]; //carryout
	V = ((A[31] & B[31]) | (~A[31] & ~B[31])); //overflow
	Z = (ALU_out[30:0] == 0) ? 1'b1 : 1'b0; // Zero

	Status = {C_out, N, V, Z};

end

always @( A or B)

begin

	I0 = A ^ B;
	I1 = A & B;
	I2 = A | B;
	I3 = ~(A|B);

	
	I7 = 32'b0;
	
	

end	
	
	Mux_8to1 dut3 (ALU_out,I0,I1,I2,I3,I4,I5,I6,I7,Select[2:0]);
	

endmodule
