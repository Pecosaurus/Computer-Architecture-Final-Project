module adder_subtractor32bit (A,B,C_in, MuxSel, C_out,O);

input [31:0] A;
input [31:0] B;
input C_in;
input MuxSel;

output C_out;
output [31:0] O;

wire [31:0] B_out;

twoscomplement dut (B, MuxSel, B_out);

adder32bit add_uut (A,B_out,C_in,C_out,O);



endmodule

/*
module adder_subtractor32bit (A,B,C_in, MuxSel, C_out,O);

input [31:0] A;
input [31:0] B;
input C_in;
input MuxSel;
wire [31:0] Sum;
wire [31:0] Difference;
output wire C_out;
output [31:0] O;

wire [31:0] B_ng;
wire Cin_ng;
wire C_outA;
wire C_outS;


assign B_ng = ~B;
assign Cin_ng = ~C_in;

adder32bit add_uut (A,B,C_in,C_outA,Sum);

adder32bit sub_uut (A,B_ng,Cin_ng,C_outS,Difference);

mux1 uut_Output(Sum,Difference,MuxSel,O); //0-add,1-diff

mux1C uut_Cout(C_outA, C_outS, MuxSel, C_out);


endmodule*/

