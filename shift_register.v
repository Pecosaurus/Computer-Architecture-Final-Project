module shift_register (A, B, SLout, SRout);

input [31:0] A;
input [31:0] B;
output reg [31:0] SLout;
output reg [31:0] SRout;
	
always @ (A or B)

begin 

	SLout <= A<<B[4:0];
	
	SRout <= A>>B[4:0];
	
end

endmodule 
