module MemGen_16_10(chip_en, wr_en, addr, wr_data, clock, rd_en, rd_data);
	input chip_en;
	input wr_en;
  input[9:0] addr;
  input[15:0] wr_data;
  input clock;
  input rd_en;
  output[15:0] rd_data;
endmodule
