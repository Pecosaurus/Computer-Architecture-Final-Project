module twoscomplement (in, S, out);

input [31:0] in;
input S;

output reg [31:0] out; 

always @ (S or in) begin 
	case (S)
		1'b0: out = in;
		1'b1: out = (~in + 1);
		default : out = 31'bx;
	endcase 
end

endmodule 