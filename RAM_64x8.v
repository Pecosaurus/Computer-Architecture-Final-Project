module RAM_64x8 (addr, Dinput, cs, rw, clk, Dout);

input [5:0] addr;
input [7:0] Dinput;
input cs;
input rw;
input clk;
output [7:0] Dout;

reg[7:0] memarray[5:0];
reg[7:0] mem_out;

always@ (posedge clk) begin
if (cs && rw)
memarray[addr] = Dinput;
end

always@ (posedge clk) begin
mem_out = memarray[addr];
end

assign Dout = cs & ~rw ? mem_out:8'b0;

endmodule 
