module mux1(D0,D1,PCsrc,O);
input [31:0] D0, D1; 
input PCsrc;
output [31:0] O;

assign O=(PCsrc)?D1:D0;

endmodule 
