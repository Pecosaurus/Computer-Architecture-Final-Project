module Mux_32to1 (o,i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,s);
	parameter N =32; // change N to 32 for implementation
	input [N-1:0]i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31;
	input [4:0]s;
	output reg [N-1:0]o;
	 
always @(s or i0 or i1 or i2 or i3 or i4 or i5 or i6 or i7 or i8 or i9 or i10 or i11 or i12 or i13 or i14 or i15 or i16 or i17 or i18 or i19 or i20 or i21 or i22 or i23 or i24 or i25 or i26 or i27 or i28 or i29 or i30 or i31)
begin
	case (s)
		5'b00000 : o = i0;
		5'b00001 : o = i1;
		5'b00010 : o = i2;
		5'b00011 : o = i3;
		5'b00100 : o = i4;
		5'b00101 : o = i5;
		5'b00110 : o = i6;
		5'b00111 : o = i7;
		5'b01000 : o = i8;
		5'b01001 : o = i9;
		5'b01010 : o = i10;
		5'b01011 : o = i11;
		5'b01100 : o = i12;
		5'b01101 : o = i13;
		5'b01110 : o = i14;
		5'b01111 : o = i15;
		5'b10000 : o = i16;
		5'b10001 : o = i17;
		5'b10010 : o = i18;
		5'b10011 : o = i19;
		5'b10100 : o = i20;
		5'b10101 : o = i21;
		5'b10110 : o = i22;
		5'b10111 : o = i23;
		5'b11000 : o = i24;
		5'b11001 : o = i25;
		5'b11010 : o = i26;
		5'b11011 : o = i27;
		5'b11100 : o = i28;
		5'b11101 : o = i29;
		5'b11110 : o = i30;
		5'b11111 : o = i31;
		default : o=8'bx;
	endcase

end
endmodule
