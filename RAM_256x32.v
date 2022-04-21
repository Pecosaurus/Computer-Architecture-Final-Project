module RAM_256x32 (addr, Dinput, en, rw, clk, Dout);

input [7:0] addr;
input [31:0] Dinput;
input rw;
input clk;
input en;

output [31:0] Dout;

wire CS0, CS1, CS2, CS3;

wire [31:0] D_out_mg0, D_out_mg1, D_out_mg2, D_out_mg3;



chipselect_decoder DUT (addr[7:6], en, CS0, CS1, CS2, CS3);

RAM_64x8 inst04 (addr[5:0], Dinput[7:0], CS0, rw, clk, D_out_mg0[7:0]);
RAM_64x8 inst03 (addr[5:0], Dinput[15:8], CS0, rw, clk, D_out_mg0[15:8]);
RAM_64x8 inst02 (addr[5:0], Dinput[23:16], CS0, rw, clk, D_out_mg0[23:16]);
RAM_64x8 inst01 (addr[5:0], Dinput[31:24], CS0, rw, clk, D_out_mg0[31:24]);


RAM_64x8 inst14 (addr[5:0], Dinput[7:0], CS1, rw, clk, D_out_mg1[7:0]);
RAM_64x8 inst13 (addr[5:0], Dinput[15:8], CS1, rw, clk, D_out_mg1[15:8]);
RAM_64x8 inst12 (addr[5:0], Dinput[23:16], CS1, rw, clk, D_out_mg1[23:16]);
RAM_64x8 inst11 (addr[5:0], Dinput[31:24], CS1, rw, clk, D_out_mg1[31:24]);


RAM_64x8 inst24 (addr[5:0], Dinput[7:0], CS2, rw, clk, D_out_mg2[7:0]);
RAM_64x8 inst23 (addr[5:0], Dinput[15:8], CS2, rw, clk, D_out_mg2[15:8]);
RAM_64x8 inst22 (addr[5:0], Dinput[23:16], CS2, rw, clk, D_out_mg2[23:16]);
RAM_64x8 inst21 (addr[5:0], Dinput[31:24], CS2, rw, clk, D_out_mg2[31:24]);

RAM_64x8 inst34 (addr[5:0], Dinput[7:0], CS3, rw, clk, D_out_mg3[7:0]);
RAM_64x8 inst33 (addr[5:0], Dinput[15:8], CS3, rw, clk, D_out_mg3[15:8]);
RAM_64x8 inst32 (addr[5:0], Dinput[23:16], CS3, rw, clk, D_out_mg3[23:16]);
RAM_64x8 inst31 (addr[5:0], Dinput[31:24], CS3, rw, clk, D_out_mg3[31:24]);


TriStateBuffer inst0 (.in(D_out_mg0),.enable(CS0), .out(Dout));
TriStateBuffer inst1 (.in(D_out_mg1),.enable(CS1), .out(Dout));
TriStateBuffer inst2 (.in(D_out_mg2),.enable(CS2), .out(Dout));
TriStateBuffer inst3 (.in(D_out_mg3),.enable(CS3), .out(Dout));

/*
always @(tsb_out0 or tsb_out1 or tsb_out2 or tsb_out3) begin
	
	if (tsb_out0 != 32'bz) begin
			Dout = tsb_out0;
		
	end else if (tsb_out1 != 32'bz) begin
			Dout = tsb_out1;
		
	end else if (tsb_out2 != 32'bz) begin
			Dout = tsb_out2;
		
	end else if (tsb_out3 != 32'bz) begin
			Dout = tsb_out3;
		
	end
	
end
*/

endmodule 
