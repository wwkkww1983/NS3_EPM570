// megafunction wizard: %LPM_COUNTER%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_counter 

// ============================================================
// File Name: lpm_counter3.v
// Megafunction Name(s):
// 			lpm_counter
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 9.1 Build 350 03/24/2010 SP 2 SJ Web Edition
// ************************************************************


//Copyright (C) 1991-2010 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module lpm_counter3 (
	cin,
	clk_en,
	clock,
	cnt_en,
	sclr,
	cout,
	q);

	input	  cin;
	input	  clk_en;
	input	  clock;
	input	  cnt_en;
	input	  sclr;
	output	  cout;
	output	[7:0]  q;

	wire  sub_wire0;
	wire [7:0] sub_wire1;
	wire  cout = sub_wire0;
	wire [7:0] q = sub_wire1[7:0];

	lpm_counter	lpm_counter_component (
				.cin (cin),
				.clk_en (clk_en),
				.sclr (sclr),
				.clock (clock),
				.cnt_en (cnt_en),
				.cout (sub_wire0),
				.q (sub_wire1),
				.aclr (1'b0),
				.aload (1'b0),
				.aset (1'b0),
				.data ({8{1'b0}}),
				.eq (),
				.sload (1'b0),
				.sset (1'b0),
				.updown (1'b1));
	defparam
		lpm_counter_component.lpm_direction = "UP",
		lpm_counter_component.lpm_port_updown = "PORT_UNUSED",
		lpm_counter_component.lpm_type = "LPM_COUNTER",
		lpm_counter_component.lpm_width = 8;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ACLR NUMERIC "0"
// Retrieval info: PRIVATE: ALOAD NUMERIC "0"
// Retrieval info: PRIVATE: ASET NUMERIC "0"
// Retrieval info: PRIVATE: ASET_ALL1 NUMERIC "1"
// Retrieval info: PRIVATE: CLK_EN NUMERIC "1"
// Retrieval info: PRIVATE: CNT_EN NUMERIC "1"
// Retrieval info: PRIVATE: CarryIn NUMERIC "1"
// Retrieval info: PRIVATE: CarryOut NUMERIC "1"
// Retrieval info: PRIVATE: Direction NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "MAX II"
// Retrieval info: PRIVATE: ModulusCounter NUMERIC "0"
// Retrieval info: PRIVATE: ModulusValue NUMERIC "0"
// Retrieval info: PRIVATE: SCLR NUMERIC "1"
// Retrieval info: PRIVATE: SLOAD NUMERIC "0"
// Retrieval info: PRIVATE: SSET NUMERIC "0"
// Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: nBit NUMERIC "8"
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "UP"
// Retrieval info: CONSTANT: LPM_PORT_UPDOWN STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COUNTER"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "8"
// Retrieval info: USED_PORT: cin 0 0 0 0 INPUT NODEFVAL cin
// Retrieval info: USED_PORT: clk_en 0 0 0 0 INPUT NODEFVAL clk_en
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
// Retrieval info: USED_PORT: cnt_en 0 0 0 0 INPUT NODEFVAL cnt_en
// Retrieval info: USED_PORT: cout 0 0 0 0 OUTPUT NODEFVAL cout
// Retrieval info: USED_PORT: q 0 0 8 0 OUTPUT NODEFVAL q[7..0]
// Retrieval info: USED_PORT: sclr 0 0 0 0 INPUT NODEFVAL sclr
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: q 0 0 8 0 @q 0 0 8 0
// Retrieval info: CONNECT: @clk_en 0 0 0 0 clk_en 0 0 0 0
// Retrieval info: CONNECT: @cnt_en 0 0 0 0 cnt_en 0 0 0 0
// Retrieval info: CONNECT: @cin 0 0 0 0 cin 0 0 0 0
// Retrieval info: CONNECT: cout 0 0 0 0 @cout 0 0 0 0
// Retrieval info: CONNECT: @sclr 0 0 0 0 sclr 0 0 0 0
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter3.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter3.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter3.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter3.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter3_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter3_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter3_waveforms.html TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter3_wave*.jpg FALSE
// Retrieval info: LIB_FILE: lpm
