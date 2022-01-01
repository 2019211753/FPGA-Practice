////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Half_Add_timesim.v
// /___/   /\     Timestamp: Fri Oct 08 17:47:49 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 10 -pcf Half_Add.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim Half_Add.ncd Half_Add_timesim.v 
// Device	: 4vsx25ff668-10 (PRODUCTION 1.71 2013-10-13)
// Input file	: Half_Add.ncd
// Output file	: D:\EDA\half_add\netgen\par\Half_Add_timesim.v
// # of Modules	: 1
// Design Name	: Half_Add
// Xilinx        : F:\ISE1\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Half_Add (
  CO, A, B, SO
);
  output CO;
  input A;
  input B;
  output SO;
  wire CO_OBUF_0;
  wire SO_OBUF_0;
  wire A_IBUF_48;
  wire B_IBUF_49;
  wire XIL_ML_PMV_OUT_SIG;
  wire XIL_ML_UNUSED_DCM_CLKOUT_1;
  wire XIL_ML_UNUSED_DCM_CLKOUT_2;
  wire XIL_ML_UNUSED_DCM_CLKOUT_3;
  wire XIL_ML_UNUSED_DCM_CLKOUT_4;
  wire \A/INBUF_B ;
  wire \B/INBUF_B ;
  wire \XIL_ML_UNUSED_DCM_1/DCLK_104 ;
  wire \XIL_ML_UNUSED_DCM_1/PSCLK_103 ;
  wire \XIL_ML_UNUSED_DCM_1/DO0 ;
  wire \XIL_ML_UNUSED_DCM_1/DO1 ;
  wire \XIL_ML_UNUSED_DCM_1/DO2 ;
  wire \XIL_ML_UNUSED_DCM_1/DO3 ;
  wire \XIL_ML_UNUSED_DCM_1/DO4 ;
  wire \XIL_ML_UNUSED_DCM_1/DO5 ;
  wire \XIL_ML_UNUSED_DCM_1/DO6 ;
  wire \XIL_ML_UNUSED_DCM_1/DO7 ;
  wire \XIL_ML_UNUSED_DCM_1/DO8 ;
  wire \XIL_ML_UNUSED_DCM_1/DO9 ;
  wire \XIL_ML_UNUSED_DCM_1/DO10 ;
  wire \XIL_ML_UNUSED_DCM_1/DO11 ;
  wire \XIL_ML_UNUSED_DCM_1/DO12 ;
  wire \XIL_ML_UNUSED_DCM_1/DO13 ;
  wire \XIL_ML_UNUSED_DCM_1/DO14 ;
  wire \XIL_ML_UNUSED_DCM_1/DO15 ;
  wire \XIL_ML_UNUSED_DCM_1/DRDY ;
  wire \XIL_ML_UNUSED_DCM_1/PSDONE ;
  wire \XIL_ML_UNUSED_DCM_1/LOCKED ;
  wire \XIL_ML_UNUSED_DCM_1/CLKFX180 ;
  wire \XIL_ML_UNUSED_DCM_1/CLKFX ;
  wire \XIL_ML_UNUSED_DCM_1/CLKDV ;
  wire \XIL_ML_UNUSED_DCM_1/CLK2X180 ;
  wire \XIL_ML_UNUSED_DCM_1/CLK2X ;
  wire \XIL_ML_UNUSED_DCM_1/CLK270 ;
  wire \XIL_ML_UNUSED_DCM_1/CLK180 ;
  wire \XIL_ML_UNUSED_DCM_1/CLK90 ;
  wire \XIL_ML_UNUSED_DCM_1/PSEN_INTNOT ;
  wire \XIL_ML_UNUSED_DCM_1/CLKFB_INT ;
  wire \XIL_ML_UNUSED_DCM_1/CLKIN_INT ;
  wire \XIL_ML_UNUSED_DCM_2/DCLK_142 ;
  wire \XIL_ML_UNUSED_DCM_2/PSCLK_141 ;
  wire \XIL_ML_UNUSED_DCM_2/DO0 ;
  wire \XIL_ML_UNUSED_DCM_2/DO1 ;
  wire \XIL_ML_UNUSED_DCM_2/DO2 ;
  wire \XIL_ML_UNUSED_DCM_2/DO3 ;
  wire \XIL_ML_UNUSED_DCM_2/DO4 ;
  wire \XIL_ML_UNUSED_DCM_2/DO5 ;
  wire \XIL_ML_UNUSED_DCM_2/DO6 ;
  wire \XIL_ML_UNUSED_DCM_2/DO7 ;
  wire \XIL_ML_UNUSED_DCM_2/DO8 ;
  wire \XIL_ML_UNUSED_DCM_2/DO9 ;
  wire \XIL_ML_UNUSED_DCM_2/DO10 ;
  wire \XIL_ML_UNUSED_DCM_2/DO11 ;
  wire \XIL_ML_UNUSED_DCM_2/DO12 ;
  wire \XIL_ML_UNUSED_DCM_2/DO13 ;
  wire \XIL_ML_UNUSED_DCM_2/DO14 ;
  wire \XIL_ML_UNUSED_DCM_2/DO15 ;
  wire \XIL_ML_UNUSED_DCM_2/DRDY ;
  wire \XIL_ML_UNUSED_DCM_2/PSDONE ;
  wire \XIL_ML_UNUSED_DCM_2/LOCKED ;
  wire \XIL_ML_UNUSED_DCM_2/CLKFX180 ;
  wire \XIL_ML_UNUSED_DCM_2/CLKFX ;
  wire \XIL_ML_UNUSED_DCM_2/CLKDV ;
  wire \XIL_ML_UNUSED_DCM_2/CLK2X180 ;
  wire \XIL_ML_UNUSED_DCM_2/CLK2X ;
  wire \XIL_ML_UNUSED_DCM_2/CLK270 ;
  wire \XIL_ML_UNUSED_DCM_2/CLK180 ;
  wire \XIL_ML_UNUSED_DCM_2/CLK90 ;
  wire \XIL_ML_UNUSED_DCM_2/PSEN_INTNOT ;
  wire \XIL_ML_UNUSED_DCM_2/CLKFB_INT ;
  wire \XIL_ML_UNUSED_DCM_2/CLKIN_INT ;
  wire \XIL_ML_UNUSED_DCM_3/DCLK_180 ;
  wire \XIL_ML_UNUSED_DCM_3/PSCLK_179 ;
  wire \XIL_ML_UNUSED_DCM_3/DO0 ;
  wire \XIL_ML_UNUSED_DCM_3/DO1 ;
  wire \XIL_ML_UNUSED_DCM_3/DO2 ;
  wire \XIL_ML_UNUSED_DCM_3/DO3 ;
  wire \XIL_ML_UNUSED_DCM_3/DO4 ;
  wire \XIL_ML_UNUSED_DCM_3/DO5 ;
  wire \XIL_ML_UNUSED_DCM_3/DO6 ;
  wire \XIL_ML_UNUSED_DCM_3/DO7 ;
  wire \XIL_ML_UNUSED_DCM_3/DO8 ;
  wire \XIL_ML_UNUSED_DCM_3/DO9 ;
  wire \XIL_ML_UNUSED_DCM_3/DO10 ;
  wire \XIL_ML_UNUSED_DCM_3/DO11 ;
  wire \XIL_ML_UNUSED_DCM_3/DO12 ;
  wire \XIL_ML_UNUSED_DCM_3/DO13 ;
  wire \XIL_ML_UNUSED_DCM_3/DO14 ;
  wire \XIL_ML_UNUSED_DCM_3/DO15 ;
  wire \XIL_ML_UNUSED_DCM_3/DRDY ;
  wire \XIL_ML_UNUSED_DCM_3/PSDONE ;
  wire \XIL_ML_UNUSED_DCM_3/LOCKED ;
  wire \XIL_ML_UNUSED_DCM_3/CLKFX180 ;
  wire \XIL_ML_UNUSED_DCM_3/CLKFX ;
  wire \XIL_ML_UNUSED_DCM_3/CLKDV ;
  wire \XIL_ML_UNUSED_DCM_3/CLK2X180 ;
  wire \XIL_ML_UNUSED_DCM_3/CLK2X ;
  wire \XIL_ML_UNUSED_DCM_3/CLK270 ;
  wire \XIL_ML_UNUSED_DCM_3/CLK180 ;
  wire \XIL_ML_UNUSED_DCM_3/CLK90 ;
  wire \XIL_ML_UNUSED_DCM_3/PSEN_INTNOT ;
  wire \XIL_ML_UNUSED_DCM_3/CLKFB_INT ;
  wire \XIL_ML_UNUSED_DCM_3/CLKIN_INT ;
  wire \XIL_ML_UNUSED_DCM_4/DCLK_218 ;
  wire \XIL_ML_UNUSED_DCM_4/PSCLK_217 ;
  wire \XIL_ML_UNUSED_DCM_4/DO0 ;
  wire \XIL_ML_UNUSED_DCM_4/DO1 ;
  wire \XIL_ML_UNUSED_DCM_4/DO2 ;
  wire \XIL_ML_UNUSED_DCM_4/DO3 ;
  wire \XIL_ML_UNUSED_DCM_4/DO4 ;
  wire \XIL_ML_UNUSED_DCM_4/DO5 ;
  wire \XIL_ML_UNUSED_DCM_4/DO6 ;
  wire \XIL_ML_UNUSED_DCM_4/DO7 ;
  wire \XIL_ML_UNUSED_DCM_4/DO8 ;
  wire \XIL_ML_UNUSED_DCM_4/DO9 ;
  wire \XIL_ML_UNUSED_DCM_4/DO10 ;
  wire \XIL_ML_UNUSED_DCM_4/DO11 ;
  wire \XIL_ML_UNUSED_DCM_4/DO12 ;
  wire \XIL_ML_UNUSED_DCM_4/DO13 ;
  wire \XIL_ML_UNUSED_DCM_4/DO14 ;
  wire \XIL_ML_UNUSED_DCM_4/DO15 ;
  wire \XIL_ML_UNUSED_DCM_4/DRDY ;
  wire \XIL_ML_UNUSED_DCM_4/PSDONE ;
  wire \XIL_ML_UNUSED_DCM_4/LOCKED ;
  wire \XIL_ML_UNUSED_DCM_4/CLKFX180 ;
  wire \XIL_ML_UNUSED_DCM_4/CLKFX ;
  wire \XIL_ML_UNUSED_DCM_4/CLKDV ;
  wire \XIL_ML_UNUSED_DCM_4/CLK2X180 ;
  wire \XIL_ML_UNUSED_DCM_4/CLK2X ;
  wire \XIL_ML_UNUSED_DCM_4/CLK270 ;
  wire \XIL_ML_UNUSED_DCM_4/CLK180 ;
  wire \XIL_ML_UNUSED_DCM_4/CLK90 ;
  wire \XIL_ML_UNUSED_DCM_4/PSEN_INTNOT ;
  wire \XIL_ML_UNUSED_DCM_4/CLKFB_INT ;
  wire \XIL_ML_UNUSED_DCM_4/CLKIN_INT ;
  wire SO_OBUF_239;
  wire CO_OBUF_231;
  wire \NlwBufferSignal_CO_OBUF/I ;
  wire \NlwBufferSignal_SO_OBUF/I ;
  wire VCC;
  wire NLW_XIL_ML_UNUSED_DCM_1_RST_UNCONNECTED;
  wire GND;
  wire NLW_XIL_ML_UNUSED_DCM_1_DWE_UNCONNECTED;
  wire NLW_XIL_ML_UNUSED_DCM_1_DEN_UNCONNECTED;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DADDR[6]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DADDR[5]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DADDR[4]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DADDR[3]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DADDR[2]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DADDR[1]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DADDR[0]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[15]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[14]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[13]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[12]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[11]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[10]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[9]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[8]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[7]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[6]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[5]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[4]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[3]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[2]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[1]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_1_DI[0]_UNCONNECTED ;
  wire NLW_XIL_ML_UNUSED_DCM_2_RST_UNCONNECTED;
  wire NLW_XIL_ML_UNUSED_DCM_2_DWE_UNCONNECTED;
  wire NLW_XIL_ML_UNUSED_DCM_2_DEN_UNCONNECTED;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DADDR[6]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DADDR[5]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DADDR[4]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DADDR[3]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DADDR[2]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DADDR[1]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DADDR[0]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[15]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[14]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[13]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[12]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[11]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[10]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[9]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[8]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[7]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[6]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[5]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[4]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[3]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[2]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[1]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_2_DI[0]_UNCONNECTED ;
  wire NLW_XIL_ML_UNUSED_DCM_3_RST_UNCONNECTED;
  wire NLW_XIL_ML_UNUSED_DCM_3_DWE_UNCONNECTED;
  wire NLW_XIL_ML_UNUSED_DCM_3_DEN_UNCONNECTED;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DADDR[6]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DADDR[5]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DADDR[4]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DADDR[3]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DADDR[2]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DADDR[1]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DADDR[0]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[15]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[14]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[13]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[12]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[11]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[10]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[9]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[8]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[7]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[6]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[5]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[4]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[3]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[2]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[1]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_3_DI[0]_UNCONNECTED ;
  wire NLW_XIL_ML_UNUSED_DCM_4_RST_UNCONNECTED;
  wire NLW_XIL_ML_UNUSED_DCM_4_DWE_UNCONNECTED;
  wire NLW_XIL_ML_UNUSED_DCM_4_DEN_UNCONNECTED;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DADDR[6]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DADDR[5]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DADDR[4]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DADDR[3]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DADDR[2]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DADDR[1]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DADDR[0]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[15]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[14]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[13]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[12]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[11]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[10]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[9]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[8]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[7]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[6]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[5]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[4]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[3]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[2]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[1]_UNCONNECTED ;
  wire \NLW_XIL_ML_UNUSED_DCM_4_DI[0]_UNCONNECTED ;
  initial $sdf_annotate("netgen/par/half_add_timesim.sdf");
  X_OPAD #(
    .LOC ( "IOB_X2Y51" ))
  \CO/PAD  (
    .PAD(CO)
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y51" ))
  CO_OBUF (
    .I(\NlwBufferSignal_CO_OBUF/I ),
    .O(CO)
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y46" ))
  \SO/PAD  (
    .PAD(SO)
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y46" ))
  SO_OBUF (
    .I(\NlwBufferSignal_SO_OBUF/I ),
    .O(SO)
  );
  X_IPAD #(
    .LOC ( "IOB_X2Y44" ))
  \A/PAD  (
    .PAD(A)
  );
  X_BUF #(
    .LOC ( "IOB_X2Y44" ))
  \A/INBUF_USED  (
    .I(\A/INBUF_B ),
    .O(A_IBUF_48)
  );
  X_BUF #(
    .LOC ( "IOB_X2Y44" ))
  A_IBUF (
    .I(A),
    .O(\A/INBUF_B )
  );
  X_IPAD #(
    .LOC ( "IOB_X2Y52" ))
  \B/PAD  (
    .PAD(B)
  );
  X_BUF #(
    .LOC ( "IOB_X2Y52" ))
  \B/INBUF_USED  (
    .I(\B/INBUF_B ),
    .O(B_IBUF_49)
  );
  X_BUF #(
    .LOC ( "IOB_X2Y52" ))
  B_IBUF (
    .I(B),
    .O(\B/INBUF_B )
  );
  X_INV #(
    .LOC ( "DCM_ADV_X0Y0" ))
  \XIL_ML_UNUSED_DCM_1/PSENINV  (
    .I(VCC),
    .O(\XIL_ML_UNUSED_DCM_1/PSEN_INTNOT )
  );
  X_BUF #(
    .LOC ( "DCM_ADV_X0Y0" ))
  \XIL_ML_UNUSED_DCM_1/CLKFB  (
    .I(XIL_ML_UNUSED_DCM_CLKOUT_1),
    .O(\XIL_ML_UNUSED_DCM_1/CLKFB_INT )
  );
  X_BUF #(
    .LOC ( "DCM_ADV_X0Y0" ))
  \XIL_ML_UNUSED_DCM_1/CLKIN  (
    .I(XIL_ML_PMV_OUT_SIG),
    .O(\XIL_ML_UNUSED_DCM_1/CLKIN_INT )
  );
  X_DCM_ADV #(
    .CLK_FEEDBACK ( "1X" ),
    .CLKDV_DIVIDE ( 2.000000 ),
    .CLKFX_DIVIDE ( 1 ),
    .CLKFX_MULTIPLY ( 4 ),
    .CLKIN_DIVIDE_BY_2 ( "TRUE" ),
    .CLKOUT_PHASE_SHIFT ( "FIXED" ),
    .DCM_PERFORMANCE_MODE ( "MAX_SPEED" ),
    .DESKEW_ADJUST ( "17" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .STARTUP_WAIT ( "FALSE" ),
    .SIM_DEVICE ( "VIRTEX4" ),
    .CLKIN_PERIOD ( 10.0 ),
    .FACTORY_JF ( 16'hF0F0 ),
    .PHASE_SHIFT ( 0 ),
    .LOC ( "DCM_ADV_X0Y0" ))
  XIL_ML_UNUSED_DCM_1 (
    .CLKIN(\XIL_ML_UNUSED_DCM_1/CLKIN_INT ),
    .CLKFB(\XIL_ML_UNUSED_DCM_1/CLKFB_INT ),
    .RST(NLW_XIL_ML_UNUSED_DCM_1_RST_UNCONNECTED),
    .PSINCDEC(GND),
    .PSEN(\XIL_ML_UNUSED_DCM_1/PSEN_INTNOT ),
    .PSCLK(\XIL_ML_UNUSED_DCM_1/PSCLK_103 ),
    .DWE(NLW_XIL_ML_UNUSED_DCM_1_DWE_UNCONNECTED),
    .DEN(NLW_XIL_ML_UNUSED_DCM_1_DEN_UNCONNECTED),
    .DCLK(\XIL_ML_UNUSED_DCM_1/DCLK_104 ),
    .CLK0(XIL_ML_UNUSED_DCM_CLKOUT_1),
    .CLK90(\XIL_ML_UNUSED_DCM_1/CLK90 ),
    .CLK180(\XIL_ML_UNUSED_DCM_1/CLK180 ),
    .CLK270(\XIL_ML_UNUSED_DCM_1/CLK270 ),
    .CLK2X(\XIL_ML_UNUSED_DCM_1/CLK2X ),
    .CLK2X180(\XIL_ML_UNUSED_DCM_1/CLK2X180 ),
    .CLKDV(\XIL_ML_UNUSED_DCM_1/CLKDV ),
    .CLKFX(\XIL_ML_UNUSED_DCM_1/CLKFX ),
    .CLKFX180(\XIL_ML_UNUSED_DCM_1/CLKFX180 ),
    .LOCKED(\XIL_ML_UNUSED_DCM_1/LOCKED ),
    .PSDONE(\XIL_ML_UNUSED_DCM_1/PSDONE ),
    .DRDY(\XIL_ML_UNUSED_DCM_1/DRDY ),
    .DADDR({\NLW_XIL_ML_UNUSED_DCM_1_DADDR[6]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DADDR[5]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_1_DADDR[4]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DADDR[3]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DADDR[2]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_1_DADDR[1]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DADDR[0]_UNCONNECTED }),
    .DI({\NLW_XIL_ML_UNUSED_DCM_1_DI[15]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DI[14]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DI[13]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_1_DI[12]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DI[11]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DI[10]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_1_DI[9]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DI[8]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DI[7]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_1_DI[6]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DI[5]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DI[4]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_1_DI[3]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DI[2]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_1_DI[1]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_1_DI[0]_UNCONNECTED }),
    .DO({\XIL_ML_UNUSED_DCM_1/DO15 , \XIL_ML_UNUSED_DCM_1/DO14 , \XIL_ML_UNUSED_DCM_1/DO13 , \XIL_ML_UNUSED_DCM_1/DO12 , \XIL_ML_UNUSED_DCM_1/DO11 , 
\XIL_ML_UNUSED_DCM_1/DO10 , \XIL_ML_UNUSED_DCM_1/DO9 , \XIL_ML_UNUSED_DCM_1/DO8 , \XIL_ML_UNUSED_DCM_1/DO7 , \XIL_ML_UNUSED_DCM_1/DO6 , 
\XIL_ML_UNUSED_DCM_1/DO5 , \XIL_ML_UNUSED_DCM_1/DO4 , \XIL_ML_UNUSED_DCM_1/DO3 , \XIL_ML_UNUSED_DCM_1/DO2 , \XIL_ML_UNUSED_DCM_1/DO1 , 
\XIL_ML_UNUSED_DCM_1/DO0 })
  );
  X_INV #(
    .LOC ( "DCM_ADV_X0Y1" ))
  \XIL_ML_UNUSED_DCM_2/PSENINV  (
    .I(VCC),
    .O(\XIL_ML_UNUSED_DCM_2/PSEN_INTNOT )
  );
  X_BUF #(
    .LOC ( "DCM_ADV_X0Y1" ))
  \XIL_ML_UNUSED_DCM_2/CLKFB  (
    .I(XIL_ML_UNUSED_DCM_CLKOUT_2),
    .O(\XIL_ML_UNUSED_DCM_2/CLKFB_INT )
  );
  X_BUF #(
    .LOC ( "DCM_ADV_X0Y1" ))
  \XIL_ML_UNUSED_DCM_2/CLKIN  (
    .I(XIL_ML_PMV_OUT_SIG),
    .O(\XIL_ML_UNUSED_DCM_2/CLKIN_INT )
  );
  X_DCM_ADV #(
    .CLK_FEEDBACK ( "1X" ),
    .CLKDV_DIVIDE ( 2.000000 ),
    .CLKFX_DIVIDE ( 1 ),
    .CLKFX_MULTIPLY ( 4 ),
    .CLKIN_DIVIDE_BY_2 ( "TRUE" ),
    .CLKOUT_PHASE_SHIFT ( "FIXED" ),
    .DCM_PERFORMANCE_MODE ( "MAX_SPEED" ),
    .DESKEW_ADJUST ( "17" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .STARTUP_WAIT ( "FALSE" ),
    .SIM_DEVICE ( "VIRTEX4" ),
    .CLKIN_PERIOD ( 10.0 ),
    .FACTORY_JF ( 16'hF0F0 ),
    .PHASE_SHIFT ( 0 ),
    .LOC ( "DCM_ADV_X0Y1" ))
  XIL_ML_UNUSED_DCM_2 (
    .CLKIN(\XIL_ML_UNUSED_DCM_2/CLKIN_INT ),
    .CLKFB(\XIL_ML_UNUSED_DCM_2/CLKFB_INT ),
    .RST(NLW_XIL_ML_UNUSED_DCM_2_RST_UNCONNECTED),
    .PSINCDEC(GND),
    .PSEN(\XIL_ML_UNUSED_DCM_2/PSEN_INTNOT ),
    .PSCLK(\XIL_ML_UNUSED_DCM_2/PSCLK_141 ),
    .DWE(NLW_XIL_ML_UNUSED_DCM_2_DWE_UNCONNECTED),
    .DEN(NLW_XIL_ML_UNUSED_DCM_2_DEN_UNCONNECTED),
    .DCLK(\XIL_ML_UNUSED_DCM_2/DCLK_142 ),
    .CLK0(XIL_ML_UNUSED_DCM_CLKOUT_2),
    .CLK90(\XIL_ML_UNUSED_DCM_2/CLK90 ),
    .CLK180(\XIL_ML_UNUSED_DCM_2/CLK180 ),
    .CLK270(\XIL_ML_UNUSED_DCM_2/CLK270 ),
    .CLK2X(\XIL_ML_UNUSED_DCM_2/CLK2X ),
    .CLK2X180(\XIL_ML_UNUSED_DCM_2/CLK2X180 ),
    .CLKDV(\XIL_ML_UNUSED_DCM_2/CLKDV ),
    .CLKFX(\XIL_ML_UNUSED_DCM_2/CLKFX ),
    .CLKFX180(\XIL_ML_UNUSED_DCM_2/CLKFX180 ),
    .LOCKED(\XIL_ML_UNUSED_DCM_2/LOCKED ),
    .PSDONE(\XIL_ML_UNUSED_DCM_2/PSDONE ),
    .DRDY(\XIL_ML_UNUSED_DCM_2/DRDY ),
    .DADDR({\NLW_XIL_ML_UNUSED_DCM_2_DADDR[6]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DADDR[5]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_2_DADDR[4]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DADDR[3]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DADDR[2]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_2_DADDR[1]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DADDR[0]_UNCONNECTED }),
    .DI({\NLW_XIL_ML_UNUSED_DCM_2_DI[15]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DI[14]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DI[13]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_2_DI[12]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DI[11]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DI[10]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_2_DI[9]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DI[8]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DI[7]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_2_DI[6]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DI[5]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DI[4]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_2_DI[3]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DI[2]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_2_DI[1]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_2_DI[0]_UNCONNECTED }),
    .DO({\XIL_ML_UNUSED_DCM_2/DO15 , \XIL_ML_UNUSED_DCM_2/DO14 , \XIL_ML_UNUSED_DCM_2/DO13 , \XIL_ML_UNUSED_DCM_2/DO12 , \XIL_ML_UNUSED_DCM_2/DO11 , 
\XIL_ML_UNUSED_DCM_2/DO10 , \XIL_ML_UNUSED_DCM_2/DO9 , \XIL_ML_UNUSED_DCM_2/DO8 , \XIL_ML_UNUSED_DCM_2/DO7 , \XIL_ML_UNUSED_DCM_2/DO6 , 
\XIL_ML_UNUSED_DCM_2/DO5 , \XIL_ML_UNUSED_DCM_2/DO4 , \XIL_ML_UNUSED_DCM_2/DO3 , \XIL_ML_UNUSED_DCM_2/DO2 , \XIL_ML_UNUSED_DCM_2/DO1 , 
\XIL_ML_UNUSED_DCM_2/DO0 })
  );
  X_INV #(
    .LOC ( "DCM_ADV_X0Y2" ))
  \XIL_ML_UNUSED_DCM_3/PSENINV  (
    .I(VCC),
    .O(\XIL_ML_UNUSED_DCM_3/PSEN_INTNOT )
  );
  X_BUF #(
    .LOC ( "DCM_ADV_X0Y2" ))
  \XIL_ML_UNUSED_DCM_3/CLKFB  (
    .I(XIL_ML_UNUSED_DCM_CLKOUT_3),
    .O(\XIL_ML_UNUSED_DCM_3/CLKFB_INT )
  );
  X_BUF #(
    .LOC ( "DCM_ADV_X0Y2" ))
  \XIL_ML_UNUSED_DCM_3/CLKIN  (
    .I(XIL_ML_PMV_OUT_SIG),
    .O(\XIL_ML_UNUSED_DCM_3/CLKIN_INT )
  );
  X_DCM_ADV #(
    .CLK_FEEDBACK ( "1X" ),
    .CLKDV_DIVIDE ( 2.000000 ),
    .CLKFX_DIVIDE ( 1 ),
    .CLKFX_MULTIPLY ( 4 ),
    .CLKIN_DIVIDE_BY_2 ( "TRUE" ),
    .CLKOUT_PHASE_SHIFT ( "FIXED" ),
    .DCM_PERFORMANCE_MODE ( "MAX_SPEED" ),
    .DESKEW_ADJUST ( "17" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .STARTUP_WAIT ( "FALSE" ),
    .SIM_DEVICE ( "VIRTEX4" ),
    .CLKIN_PERIOD ( 10.0 ),
    .FACTORY_JF ( 16'hF0F0 ),
    .PHASE_SHIFT ( 0 ),
    .LOC ( "DCM_ADV_X0Y2" ))
  XIL_ML_UNUSED_DCM_3 (
    .CLKIN(\XIL_ML_UNUSED_DCM_3/CLKIN_INT ),
    .CLKFB(\XIL_ML_UNUSED_DCM_3/CLKFB_INT ),
    .RST(NLW_XIL_ML_UNUSED_DCM_3_RST_UNCONNECTED),
    .PSINCDEC(GND),
    .PSEN(\XIL_ML_UNUSED_DCM_3/PSEN_INTNOT ),
    .PSCLK(\XIL_ML_UNUSED_DCM_3/PSCLK_179 ),
    .DWE(NLW_XIL_ML_UNUSED_DCM_3_DWE_UNCONNECTED),
    .DEN(NLW_XIL_ML_UNUSED_DCM_3_DEN_UNCONNECTED),
    .DCLK(\XIL_ML_UNUSED_DCM_3/DCLK_180 ),
    .CLK0(XIL_ML_UNUSED_DCM_CLKOUT_3),
    .CLK90(\XIL_ML_UNUSED_DCM_3/CLK90 ),
    .CLK180(\XIL_ML_UNUSED_DCM_3/CLK180 ),
    .CLK270(\XIL_ML_UNUSED_DCM_3/CLK270 ),
    .CLK2X(\XIL_ML_UNUSED_DCM_3/CLK2X ),
    .CLK2X180(\XIL_ML_UNUSED_DCM_3/CLK2X180 ),
    .CLKDV(\XIL_ML_UNUSED_DCM_3/CLKDV ),
    .CLKFX(\XIL_ML_UNUSED_DCM_3/CLKFX ),
    .CLKFX180(\XIL_ML_UNUSED_DCM_3/CLKFX180 ),
    .LOCKED(\XIL_ML_UNUSED_DCM_3/LOCKED ),
    .PSDONE(\XIL_ML_UNUSED_DCM_3/PSDONE ),
    .DRDY(\XIL_ML_UNUSED_DCM_3/DRDY ),
    .DADDR({\NLW_XIL_ML_UNUSED_DCM_3_DADDR[6]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DADDR[5]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_3_DADDR[4]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DADDR[3]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DADDR[2]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_3_DADDR[1]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DADDR[0]_UNCONNECTED }),
    .DI({\NLW_XIL_ML_UNUSED_DCM_3_DI[15]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DI[14]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DI[13]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_3_DI[12]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DI[11]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DI[10]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_3_DI[9]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DI[8]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DI[7]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_3_DI[6]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DI[5]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DI[4]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_3_DI[3]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DI[2]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_3_DI[1]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_3_DI[0]_UNCONNECTED }),
    .DO({\XIL_ML_UNUSED_DCM_3/DO15 , \XIL_ML_UNUSED_DCM_3/DO14 , \XIL_ML_UNUSED_DCM_3/DO13 , \XIL_ML_UNUSED_DCM_3/DO12 , \XIL_ML_UNUSED_DCM_3/DO11 , 
\XIL_ML_UNUSED_DCM_3/DO10 , \XIL_ML_UNUSED_DCM_3/DO9 , \XIL_ML_UNUSED_DCM_3/DO8 , \XIL_ML_UNUSED_DCM_3/DO7 , \XIL_ML_UNUSED_DCM_3/DO6 , 
\XIL_ML_UNUSED_DCM_3/DO5 , \XIL_ML_UNUSED_DCM_3/DO4 , \XIL_ML_UNUSED_DCM_3/DO3 , \XIL_ML_UNUSED_DCM_3/DO2 , \XIL_ML_UNUSED_DCM_3/DO1 , 
\XIL_ML_UNUSED_DCM_3/DO0 })
  );
  X_INV #(
    .LOC ( "DCM_ADV_X0Y3" ))
  \XIL_ML_UNUSED_DCM_4/PSENINV  (
    .I(VCC),
    .O(\XIL_ML_UNUSED_DCM_4/PSEN_INTNOT )
  );
  X_BUF #(
    .LOC ( "DCM_ADV_X0Y3" ))
  \XIL_ML_UNUSED_DCM_4/CLKFB  (
    .I(XIL_ML_UNUSED_DCM_CLKOUT_4),
    .O(\XIL_ML_UNUSED_DCM_4/CLKFB_INT )
  );
  X_BUF #(
    .LOC ( "DCM_ADV_X0Y3" ))
  \XIL_ML_UNUSED_DCM_4/CLKIN  (
    .I(XIL_ML_PMV_OUT_SIG),
    .O(\XIL_ML_UNUSED_DCM_4/CLKIN_INT )
  );
  X_DCM_ADV #(
    .CLK_FEEDBACK ( "1X" ),
    .CLKDV_DIVIDE ( 2.000000 ),
    .CLKFX_DIVIDE ( 1 ),
    .CLKFX_MULTIPLY ( 4 ),
    .CLKIN_DIVIDE_BY_2 ( "TRUE" ),
    .CLKOUT_PHASE_SHIFT ( "FIXED" ),
    .DCM_PERFORMANCE_MODE ( "MAX_SPEED" ),
    .DESKEW_ADJUST ( "17" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .STARTUP_WAIT ( "FALSE" ),
    .SIM_DEVICE ( "VIRTEX4" ),
    .CLKIN_PERIOD ( 10.0 ),
    .FACTORY_JF ( 16'hF0F0 ),
    .PHASE_SHIFT ( 0 ),
    .LOC ( "DCM_ADV_X0Y3" ))
  XIL_ML_UNUSED_DCM_4 (
    .CLKIN(\XIL_ML_UNUSED_DCM_4/CLKIN_INT ),
    .CLKFB(\XIL_ML_UNUSED_DCM_4/CLKFB_INT ),
    .RST(NLW_XIL_ML_UNUSED_DCM_4_RST_UNCONNECTED),
    .PSINCDEC(GND),
    .PSEN(\XIL_ML_UNUSED_DCM_4/PSEN_INTNOT ),
    .PSCLK(\XIL_ML_UNUSED_DCM_4/PSCLK_217 ),
    .DWE(NLW_XIL_ML_UNUSED_DCM_4_DWE_UNCONNECTED),
    .DEN(NLW_XIL_ML_UNUSED_DCM_4_DEN_UNCONNECTED),
    .DCLK(\XIL_ML_UNUSED_DCM_4/DCLK_218 ),
    .CLK0(XIL_ML_UNUSED_DCM_CLKOUT_4),
    .CLK90(\XIL_ML_UNUSED_DCM_4/CLK90 ),
    .CLK180(\XIL_ML_UNUSED_DCM_4/CLK180 ),
    .CLK270(\XIL_ML_UNUSED_DCM_4/CLK270 ),
    .CLK2X(\XIL_ML_UNUSED_DCM_4/CLK2X ),
    .CLK2X180(\XIL_ML_UNUSED_DCM_4/CLK2X180 ),
    .CLKDV(\XIL_ML_UNUSED_DCM_4/CLKDV ),
    .CLKFX(\XIL_ML_UNUSED_DCM_4/CLKFX ),
    .CLKFX180(\XIL_ML_UNUSED_DCM_4/CLKFX180 ),
    .LOCKED(\XIL_ML_UNUSED_DCM_4/LOCKED ),
    .PSDONE(\XIL_ML_UNUSED_DCM_4/PSDONE ),
    .DRDY(\XIL_ML_UNUSED_DCM_4/DRDY ),
    .DADDR({\NLW_XIL_ML_UNUSED_DCM_4_DADDR[6]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DADDR[5]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_4_DADDR[4]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DADDR[3]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DADDR[2]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_4_DADDR[1]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DADDR[0]_UNCONNECTED }),
    .DI({\NLW_XIL_ML_UNUSED_DCM_4_DI[15]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DI[14]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DI[13]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_4_DI[12]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DI[11]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DI[10]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_4_DI[9]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DI[8]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DI[7]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_4_DI[6]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DI[5]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DI[4]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_4_DI[3]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DI[2]_UNCONNECTED , \NLW_XIL_ML_UNUSED_DCM_4_DI[1]_UNCONNECTED , 
\NLW_XIL_ML_UNUSED_DCM_4_DI[0]_UNCONNECTED }),
    .DO({\XIL_ML_UNUSED_DCM_4/DO15 , \XIL_ML_UNUSED_DCM_4/DO14 , \XIL_ML_UNUSED_DCM_4/DO13 , \XIL_ML_UNUSED_DCM_4/DO12 , \XIL_ML_UNUSED_DCM_4/DO11 , 
\XIL_ML_UNUSED_DCM_4/DO10 , \XIL_ML_UNUSED_DCM_4/DO9 , \XIL_ML_UNUSED_DCM_4/DO8 , \XIL_ML_UNUSED_DCM_4/DO7 , \XIL_ML_UNUSED_DCM_4/DO6 , 
\XIL_ML_UNUSED_DCM_4/DO5 , \XIL_ML_UNUSED_DCM_4/DO4 , \XIL_ML_UNUSED_DCM_4/DO3 , \XIL_ML_UNUSED_DCM_4/DO2 , \XIL_ML_UNUSED_DCM_4/DO1 , 
\XIL_ML_UNUSED_DCM_4/DO0 })
  );
  X_BUF #(
    .LOC ( "SLICE_X79Y48" ))
  \SO_OBUF/XUSED  (
    .I(SO_OBUF_239),
    .O(SO_OBUF_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X79Y48" ))
  \SO_OBUF/YUSED  (
    .I(CO_OBUF_231),
    .O(CO_OBUF_0)
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ),
    .LOC ( "SLICE_X79Y48" ))
  XLXI_2 (
    .ADR0(B_IBUF_49),
    .ADR1(A_IBUF_48),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(SO_OBUF_239)
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ),
    .LOC ( "SLICE_X79Y48" ))
  XLXI_1 (
    .ADR0(B_IBUF_49),
    .ADR1(A_IBUF_48),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(CO_OBUF_231)
  );
  X_BUF   \NlwBufferBlock_CO_OBUF/I  (
    .I(CO_OBUF_0),
    .O(\NlwBufferSignal_CO_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_SO_OBUF/I  (
    .I(SO_OBUF_0),
    .O(\NlwBufferSignal_SO_OBUF/I )
  );
  X_ONE   NlwBlock_Half_Add_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_Half_Add_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

