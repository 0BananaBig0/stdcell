module AND2_X1_HVT(A1, A2, ZN);
  input A1;
  input A2;
  output ZN;
endmodule

module AND2_X2_HVT(A1, A2, ZN);
  input A1;
  input A2;
  output ZN;
endmodule

module AND2_X4_HVT(A1, A2, ZN);
  input A1;
  input A2;
  output ZN;
endmodule

module AND3_X1_HVT(A1, A2, A3, ZN);
  input A1;
  input A2;
  input A3;
  output ZN;
endmodule

module AND3_X2_HVT(A1, A2, A3, ZN);
  input A1;
  input A2;
  input A3;
  output ZN;
endmodule

module AND3_X4_HVT(A1, A2, A3, ZN);
  input A1;
  input A2;
  input A3;
  output ZN;
endmodule

module AND4_X1_HVT(A1, A2, A3, A4,ZN);
  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;
endmodule

module AND4_X2_HVT(A1, A2, A3, A4,ZN);
  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;
endmodule

module AND4_X4_HVT(A1, A2, A3, A4,ZN);
  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;
endmodule

module ANTENNA_X1_HVT(A);
  input A;
endmodule

module AOI211_X1_HVT(A, B, C1, C2,ZN);
  input A;
  input B;
  input C1;
  input C2;
  output ZN;
endmodule

module AOI211_X2_HVT(A, B, C1, C2,ZN);
  input A;
  input B;
  input C1;
  input C2;
  output ZN;
endmodule

module AOI211_X4_HVT(A, B, C1, C2,ZN);
  input A;
  input B;
  input C1;
  input C2;
  output ZN;
endmodule

module AOI21_X1_HVT(A, B1, B2, ZN);
  input A;
  input B1;
  input B2;
  output ZN;
endmodule

module AOI21_X2_HVT(A, B1, B2, ZN);
  input A;
  input B1;
  input B2;
  output ZN;
endmodule

module AOI21_X4_HVT(A, B1, B2, ZN);
  input A;
  input B1;
  input B2;
  output ZN;
endmodule

module AOI221_X1_HVT(A, B1, B2, C1,C2, ZN);
  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;
endmodule

module AOI221_X2_HVT(A, B1, B2, C1,C2, ZN);
  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;
endmodule

module AOI221_X4_HVT(A, B1, B2, C1,C2, ZN);
  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;
endmodule

module AOI222_X1_HVT(A1, A2, B1, B2,C1, C2, ZN);
  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;
endmodule

module AOI222_X2_HVT(A1, A2, B1, B2,C1, C2, ZN);
  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;
endmodule

module AOI222_X4_HVT(A1, A2, B1, B2,C1, C2, ZN);
  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;
endmodule

module AOI22_X1_HVT(A1, A2, B1, B2,ZN);
  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;
endmodule

module AOI22_X2_HVT(A1, A2, B1, B2,ZN);
  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;
endmodule

module AOI22_X4_HVT(A1, A2, B1, B2,ZN);
  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;
endmodule

module BUF_X16_HVT(A, Z);
  input A;
  output Z;
endmodule

module BUF_X1_HVT(A, Z);
  input A;
  output Z;
endmodule

module BUF_X2_HVT(A, Z);
  input A;
  output Z;
endmodule

module BUF_X32_HVT(A, Z);
  input A;
  output Z;
endmodule

module BUF_X4_HVT(A, Z);
  input A;
  output Z;
endmodule

module BUF_X8_HVT(A, Z);
  input A;
  output Z;
endmodule

module CLKBUF_X1_HVT(A, Z);
  input A;
  output Z;
endmodule

module CLKBUF_X2_HVT(A, Z);
  input A;
  output Z;
endmodule

module CLKBUF_X3_HVT(A, Z);
  input A;
  output Z;
endmodule

/* module "CLKGATETST_X1_HVT_$_IQ"(CK, E, SE, IQ);
 *   input CK;
 *   input E;
 *   input SE;
 *   output IQ;
 * endmodule */

module CLKGATETST_X1_HVT(CK, E, GCK, SE);
    input CK;
    input E;
    input SE;
    output GCK;
endmodule

/* module "CLKGATETST_X2_HVT_$_IQ"(CK, E, SE, IQ);
 *   input CK;
 *   input E;
 *   input SE;
 *   output IQ;
 * endmodule */

module CLKGATETST_X2_HVT(CK, E, GCK, SE);
    input CK;
    input E;
    input SE;
    output GCK;
endmodule

/* module "CLKGATETST_X4_HVT_$_IQ"(CK, E, SE, IQ);
 *   input CK;
 *   input E;
 *   input SE;
 *   output IQ;
 * endmodule */

module CLKGATETST_X4_HVT(CK, E, GCK, SE);
    input CK;
    input E;
    input SE;
    output GCK;
endmodule

/* module "CLKGATETST_X8_HVT_$_IQ"(CK, E, SE, IQ);
 *   input CK;
 *   input E;
 *   input SE;
 *   output IQ;
 * endmodule */

module CLKGATETST_X8_HVT(CK, E, GCK, SE);
    input CK;
    input E;
    input SE;
    output GCK;
endmodule

/* module "CLKGATE_X1_HVT_$_IQ"(CK, E, IQ);
 *     input CK;
 *     input E;
 *     output IQ;
 * endmodule */

module CLKGATE_X1_HVT(CK, E, GCK);
  input CK;
  input E;
  output GCK;
endmodule

/* module "CLKGATE_X2_HVT_$_IQ"(CK, E, IQ);
 *     input CK;
 *     input E;
 *     output IQ;
 * endmodule */

module CLKGATE_X2_HVT(CK, E, GCK);
  input CK;
  input E;
  output GCK;
endmodule

/* module "CLKGATE_X4_HVT_$_IQ"(CK, E, IQ);
 *     input CK;
 *     input E;
 *     output IQ;
 * endmodule */

module CLKGATE_X4_HVT(CK, E, GCK);
  input CK;
  input E;
  output GCK;
endmodule

/* module "CLKGATE_X8_HVT_$_IQ"(CK, E, IQ);
 *     input CK;
 *     input E;
 *     output IQ;
 * endmodule */

module CLKGATE_X8_HVT(CK, E, GCK);
  input CK;
  input E;
  output GCK;
endmodule

module DFFRS_X1_HVT(CK, D, Q, QN,RN, SN);
  input CK;
  input D;
  input RN;
  input SN;
  output Q;
  output QN;
endmodule

module DFFRS_X2_HVT(CK, D, Q, QN,RN, SN);
  input CK;
  input D;
  input RN;
  input SN;
  output Q;
  output QN;
endmodule

module DFFR_X1_HVT(CK, D, Q, QN,RN);
  input CK;
  input D;
  input RN;
  output Q;
  output QN;
endmodule

module DFFR_X2_HVT(CK, D, Q, QN,RN);
  input CK;
  input D;
  input RN;
  output Q;
  output QN;
endmodule

module DFFS_X1_HVT(CK, D, Q, QN, SN);
  input CK;
  input D;
  input SN;
  output Q;
  output QN;
endmodule

module DFFS_X2_HVT(CK, D, Q, QN, SN);
  input CK;
  input D;
  input SN;
  output Q;
  output QN;
endmodule

module DFF_X1_HVT(CK, D, Q, QN);
  input CK;
  input D;
  output Q;
  output QN;
endmodule

module DFF_X2_HVT(CK, D, Q, QN);
  input CK;
  input D;
  output Q;
  output QN;
endmodule

module DLH_X1_HVT(D, G, Q);
  input D;
  input G;
  output Q;
endmodule

module DLH_X2_HVT(D, G, Q);
  input D;
  input G;
  output Q;
endmodule

module DLL_X1_HVT(D, GN, Q);
  input D;
  input GN;
  output Q;
endmodule

module DLL_X2_HVT(D, GN, Q);
  input D;
  input GN;
  output Q;
endmodule

module FA_X1_HVT(A, B, CI, CO,S);
  input A;
  input B;
  input CI;
  output CO;
  output S;
endmodule

module FILLCELL_X16_HVT();
endmodule

module FILLCELL_X1_HVT( );
endmodule

module FILLCELL_X2_HVT( );
endmodule

module FILLCELL_X32_HVT( );
endmodule

module FILLCELL_X4_HVT( );
endmodule

module FILLCELL_X8_HVT( );
endmodule

module HA_X1_HVT(A, B, CO, S);
  input A;
  input B;
  output CO;
  output S;
endmodule

module INV_X16_HVT(A, ZN);
  input A;
  output ZN;
endmodule

module INV_X1_HVT(A, ZN);
  input A;
  output ZN;
endmodule

module INV_X2_HVT(A, ZN);
  input A;
  output ZN;
endmodule

module INV_X32_HVT(A, ZN);
  input A;
  output ZN;
endmodule

module INV_X4_HVT(A, ZN);
  input A;
  output ZN;
endmodule

module INV_X8_HVT(A, ZN);
  input A;
  output ZN;
endmodule

module LOGIC0_X1_HVT(Z);
  output Z;
endmodule

module LOGIC1_X1_HVT(Z);
  output Z;
endmodule

module MUX2_X1_HVT(A, B, S, Z);
  input A;
  input B;
  input S;
  output Z;
endmodule

module MUX2_X2_HVT(A, B, S, Z);
  input A;
  input B;
  input S;
  output Z;
endmodule

module NAND2_X1_HVT(A1, A2, ZN);
  input A1;
  input A2;
  output ZN;
endmodule

module NAND2_X2_HVT(A1, A2, ZN);
  input A1;
  input A2;
  output ZN;
endmodule

module NAND2_X4_HVT(A1, A2, ZN);
  input A1;
  input A2;
  output ZN;
endmodule

module NAND3_X1_HVT(A1, A2, A3, ZN);
  input A1;
  input A2;
  input A3;
  output ZN;
endmodule

module NAND3_X2_HVT(A1, A2, A3, ZN);
  input A1;
  input A2;
  input A3;
  output ZN;
endmodule

module NAND3_X4_HVT(A1, A2, A3, ZN);
  input A1;
  input A2;
  input A3;
  output ZN;
endmodule

module NAND4_X1_HVT(A1, A2, A3, A4,ZN);
  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;
endmodule

module NAND4_X2_HVT(A1, A2, A3, A4,ZN);
  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;
endmodule

module NAND4_X4_HVT(A1, A2, A3, A4,ZN);
  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;
endmodule

module NOR2_X1_HVT(A1, A2, ZN);
  input A1;
  input A2;
  output ZN;
endmodule

module NOR2_X2_HVT(A1, A2, ZN);
  input A1;
  input A2;
  output ZN;
endmodule

module NOR2_X4_HVT(A1, A2, ZN);
  input A1;
  input A2;
  output ZN;
endmodule

module NOR3_X1_HVT(A1, A2, A3, ZN);
  input A1;
  input A2;
  input A3;
  output ZN;
endmodule

module NOR3_X2_HVT(A1, A2, A3, ZN);
  input A1;
  input A2;
  input A3;
  output ZN;
endmodule

module NOR3_X4_HVT(A1, A2, A3, ZN);
  input A1;
  input A2;
  input A3;
  output ZN;
endmodule

module NOR4_X1_HVT(A1, A2, A3, A4,ZN);
  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;
endmodule

module NOR4_X2_HVT(A1, A2, A3, A4,ZN);
  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;
endmodule

module NOR4_X4_HVT(A1, A2, A3, A4, ZN);
  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;
endmodule

module OAI211_X1_HVT(A, B, C1, C2, ZN);
  input A;
  input B;
  input C1;
  input C2;
  output ZN;
endmodule

module OAI211_X2_HVT(A, B, C1, C2, ZN);
  input A;
  input B;
  input C1;
  input C2;
  output ZN;
endmodule

module OAI211_X4_HVT(A, B, C1, C2, ZN);
  input A;
  input B;
  input C1;
  input C2;
  output ZN;
endmodule

module OAI21_X1_HVT(A, B1, B2, ZN);
  input A;
  input B1;
  input B2;
  output ZN;
endmodule

module OAI21_X2_HVT(A, B1, B2, ZN);
  input A;
  input B1;
  input B2;
  output ZN;
endmodule

module OAI21_X4_HVT(A, B1, B2, ZN);
  input A;
  input B1;
  input B2;
  output ZN;
endmodule

module OAI221_X1_HVT(A, B1, B2, C1,C2, ZN);
  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;
endmodule

module OAI221_X2_HVT(A, B1, B2, C1,C2, ZN);
  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;
endmodule

module OAI221_X4_HVT(A, B1, B2, C1,C2, ZN);
  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;
endmodule

module OAI222_X1_HVT(A1, A2, B1, B2,C1, C2, ZN);
  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;
endmodule

module OAI222_X2_HVT(A1, A2, B1, B2,C1, C2, ZN);
  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;
endmodule

module OAI222_X4_HVT(A1, A2, B1, B2,C1, C2, ZN);
  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;
endmodule

module OAI22_X1_HVT(A1, A2, B1, B2,ZN);
  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;
endmodule

module OAI22_X2_HVT(A1, A2, B1, B2,ZN);
  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;
endmodule

module OAI22_X4_HVT(A1, A2, B1, B2,ZN);
  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;
endmodule

module OAI33_X1_HVT(A1, A2, A3, B1,B2, B3, ZN);
  input A1;
  input A2;
  input A3;
  input B1;
  input B2;
  input B3;
  output ZN;
endmodule

module OR2_X1_HVT(A1, A2, ZN);
  input A1;
  input A2;
  output ZN;
endmodule

module OR2_X2_HVT(A1, A2, ZN);
  input A1;
  input A2;
  output ZN;
endmodule

module OR2_X4_HVT(A1, A2, ZN);
  input A1;
  input A2;
  output ZN;
endmodule

module OR3_X1_HVT(A1, A2, A3, ZN);
  input A1;
  input A2;
  input A3;
  output ZN;
endmodule

module OR3_X2_HVT(A1, A2, A3, ZN);
  input A1;
  input A2;
  input A3;
  output ZN;
endmodule

module OR3_X4_HVT(A1, A2, A3, ZN);
  input A1;
  input A2;
  input A3;
  output ZN;
endmodule

module OR4_X1_HVT(A1, A2, A3, A4, ZN);
  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;
endmodule

module OR4_X2_HVT(A1, A2, A3, A4, ZN);
  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;
endmodule

module OR4_X4_HVT(A1, A2, A3, A4, ZN);
  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;
endmodule

module SDFFRS_X1_HVT(CK, D, Q, QN,RN, SE, SI, SN);
  input CK;
  input D;
  input RN;
  input SE;
  input SI;
  input SN;
  output Q;
  output QN;
endmodule

module SDFFRS_X2_HVT(CK, D, Q, QN,RN, SE, SI, SN);
  input CK;
  input D;
  input RN;
  input SE;
  input SI;
  input SN;
  output Q;
  output QN;
endmodule

module SDFFR_X1_HVT(CK, D, Q, QN,RN, SE, SI);
  input CK;
  input D;
  input RN;
  input SE;
  input SI;
  output Q;
  output QN;
endmodule

module SDFFR_X2_HVT(CK, D, Q, QN,RN, SE, SI);
  input CK;
  input D;
  input RN;
  input SE;
  input SI;
  output Q;
  output QN;
endmodule

module SDFFS_X1_HVT(CK, D, Q, QN, SE, SI, SN);
  input CK;
  input D;
  input SE;
  input SI;
  input SN;
  output Q;
  output QN;
endmodule

module SDFFS_X2_HVT(CK, D, Q, QN, SE, SI, SN);
  input CK;
  input D;
  input SE;
  input SI;
  input SN;
  output Q;
  output QN;
endmodule

module SDFF_X1_HVT(CK, D, Q, QN,SE, SI);
  input CK;
  input D;
  input SE;
  input SI;
  output Q;
  output QN;
endmodule

module SDFF_X2_HVT(CK, D, Q, QN,SE, SI);
  input CK;
  input D;
  input SE;
  input SI;
  output Q;
  output QN;
endmodule

module TBUF_X16_HVT(A, EN, Z);
  input A;
  input EN;
  output Z;
endmodule

module TBUF_X1_HVT(A, EN, Z);
  input A;
  input EN;
  output Z;
endmodule

module TBUF_X2_HVT(A, EN, Z);
  input A;
  input EN;
  output Z;
endmodule

module TBUF_X4_HVT(A, EN, Z);
  input A;
  input EN;
  output Z;
endmodule

module TBUF_X8_HVT(A, EN, Z);
  input A;
  input EN;
  output Z;
endmodule

module TINV_X1_HVT(EN, I, ZN);
  input EN;
  input I;
  output ZN;
endmodule

module TLAT_X1_HVT(D, G, OE, Q);
  input D;
  input G;
  input OE;
  output Q;
endmodule

module XNOR2_X1_HVT(A, B, ZN);
  input A;
  input B;
  output ZN;
endmodule

module XNOR2_X2_HVT(A, B, ZN);
  input A;
  input B;
  output ZN;
endmodule

module XOR2_X1_HVT(A, B, Z);
  input A;
  input B;
  output Z;
endmodule

module XOR2_X2_HVT(A, B, Z);
  input A;
  input B;
  output Z;
endmodule
