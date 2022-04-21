module ALU (A, B, C_in, Select, ALU_out, Status);

input [31:0] A;
input [31:0] B;
input [2:0] Select; 
input C_in;

output  [31:0] ALU_out;
output reg [3:0] Status;

wire C_out;
reg V, Z, N;
wire [31:0] I4, I5, I6;
reg[31:0] I0, I1, I2, I3, I7;

adder32bit dut1 (A,B, C_in, C_out, I4);
shift_register dut2 (A, B, I5, I6);



always @( A or B)

begin

	I0 = A ^ B;
	I1 = A & B;
	I2 = A | B;
	I3 = ~(A|B);

	
	I7 = 32'b0;
	
	

end	
	
	Mux_8to1 dut3 (ALU_out,I0,I1,I2,I3,I4,I5,I6,I7,Select);
	
always @ (ALU_out or I4 or C_out)
	begin
	
	if (Select == 3'b100)
		Status[0] = C_out; // Status[0] = C_out: Carryout
	else Status[0] = 0;
	
	if (Select == 3'b100)
		Status[1] = ((~A[31]) & (~B[31]) & I4[31]) | ( A[31] & B[31] & (~I4[31]));    // Status[1] = V: Overflow
	else Status[1] = 0;
	
	
	if (ALU_out == 32'b0)
			Status[2] = 1;              //Status[2] is Z
		else Status[2] = 0; 

	
		
	Status [3] = ALU_out[31];  // Status[3] = N: Negative
	
end


endmodule
