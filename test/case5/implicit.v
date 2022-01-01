module implicit (zn, a, b, c1, c2);
input a,b,c1,c2;
output zn;
  AOI211_X1 U1(.ZN(zn), .A(z), .B(b), .C1(c1), .C2(c2));
  XOR2_X1_SVT U2(.Z(z), .A(a), .B(b));
endmodule
