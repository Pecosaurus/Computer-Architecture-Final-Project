module chipselect_decoder (in, en, CS0, CS1, CS2, CS3); //1-to-4 decoder

input [1:0] in;
input en;

output reg CS0, CS1, CS2, CS3;

always @(in or en)
begin
	if (en == 1'b1)
		if (in == 2'b00) begin
			CS0 <= 1'b1;
			CS1 <= 1'b0; 
			CS2 <= 1'b0; 
			CS3 <= 1'b0;
		end else if (in == 2'b01) begin
			CS0 <= 1'b0;
			CS1 <= 1'b1; 
			CS2 <= 1'b0; 
			CS3 <= 1'b0;
		end else if (in == 2'b10) begin
			CS0 <= 1'b0;
			CS1 <= 1'b0; 
			CS2 <= 1'b1; 
			CS3 <= 1'b0;
		end else if (in == 2'b11) begin
			CS0 <= 1'b0;
			CS1 <= 1'b0; 
			CS2 <= 1'b0; 
			CS3 <= 1'b1;
		end
		
		
	
	if (en==0) begin
			CS0 <= 1'b0;
			CS1 <= 1'b0;
			CS2 <= 1'b0;
			CS3 <= 1'b0;
	end

end

endmodule 
