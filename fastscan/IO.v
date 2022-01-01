module PADBID(C, I, OEN, PAD);
  input I;
  input OEN;
  inout PAD;
  output C;
endmodule

module PADCLK(C, PAD);
  input PAD;
  output C;
endmodule
