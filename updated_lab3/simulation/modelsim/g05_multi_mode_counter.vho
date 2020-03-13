-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "04/08/2019 16:56:50"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g05_multi_mode_counter IS
    PORT (
	start : IN std_logic;
	stop : IN std_logic;
	direction : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END g05_multi_mode_counter;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direction	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g05_multi_mode_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_direction : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \direction~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \fsm|intcount[3]~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clock_divider|Add0~53_sumout\ : std_logic;
SIGNAL \clock_divider|count[0]~6_combout\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \clock_divider|Add0~86\ : std_logic;
SIGNAL \clock_divider|Add0~9_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~10\ : std_logic;
SIGNAL \clock_divider|Add0~81_sumout\ : std_logic;
SIGNAL \clock_divider|count[17]~13_combout\ : std_logic;
SIGNAL \clock_divider|Add0~82\ : std_logic;
SIGNAL \clock_divider|Add0~13_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~14\ : std_logic;
SIGNAL \clock_divider|Add0~77_sumout\ : std_logic;
SIGNAL \clock_divider|count[19]~12_combout\ : std_logic;
SIGNAL \clock_divider|count[19]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~78\ : std_logic;
SIGNAL \clock_divider|Add0~73_sumout\ : std_logic;
SIGNAL \clock_divider|count[20]~11_combout\ : std_logic;
SIGNAL \clock_divider|count[25]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~74\ : std_logic;
SIGNAL \clock_divider|Add0~69_sumout\ : std_logic;
SIGNAL \clock_divider|count[21]~10_combout\ : std_logic;
SIGNAL \clock_divider|count[21]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~70\ : std_logic;
SIGNAL \clock_divider|Add0~65_sumout\ : std_logic;
SIGNAL \clock_divider|count[22]~9_combout\ : std_logic;
SIGNAL \clock_divider|Add0~66\ : std_logic;
SIGNAL \clock_divider|Add0~61_sumout\ : std_logic;
SIGNAL \clock_divider|count[23]~8_combout\ : std_logic;
SIGNAL \clock_divider|Add0~62\ : std_logic;
SIGNAL \clock_divider|Add0~17_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~18\ : std_logic;
SIGNAL \clock_divider|Add0~57_sumout\ : std_logic;
SIGNAL \clock_divider|count[25]~7_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider|count[18]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~0_combout\ : std_logic;
SIGNAL \clock_divider|count[17]~0_combout\ : std_logic;
SIGNAL \clock_divider|Add0~54\ : std_logic;
SIGNAL \clock_divider|Add0~49_sumout\ : std_logic;
SIGNAL \clock_divider|count[1]~5_combout\ : std_logic;
SIGNAL \clock_divider|count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~50\ : std_logic;
SIGNAL \clock_divider|Add0~45_sumout\ : std_logic;
SIGNAL \clock_divider|count[2]~4_combout\ : std_logic;
SIGNAL \clock_divider|Add0~46\ : std_logic;
SIGNAL \clock_divider|Add0~41_sumout\ : std_logic;
SIGNAL \clock_divider|count[3]~3_combout\ : std_logic;
SIGNAL \clock_divider|Add0~42\ : std_logic;
SIGNAL \clock_divider|Add0~37_sumout\ : std_logic;
SIGNAL \clock_divider|count[4]~2_combout\ : std_logic;
SIGNAL \clock_divider|count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~38\ : std_logic;
SIGNAL \clock_divider|Add0~33_sumout\ : std_logic;
SIGNAL \clock_divider|count[5]~1_combout\ : std_logic;
SIGNAL \clock_divider|Add0~34\ : std_logic;
SIGNAL \clock_divider|Add0~101_sumout\ : std_logic;
SIGNAL \clock_divider|count[6]~18_combout\ : std_logic;
SIGNAL \clock_divider|Add0~102\ : std_logic;
SIGNAL \clock_divider|Add0~5_sumout\ : std_logic;
SIGNAL \clock_divider|count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~6\ : std_logic;
SIGNAL \clock_divider|Add0~1_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~2\ : std_logic;
SIGNAL \clock_divider|Add0~29_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~30\ : std_logic;
SIGNAL \clock_divider|Add0~25_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~26\ : std_logic;
SIGNAL \clock_divider|Add0~21_sumout\ : std_logic;
SIGNAL \clock_divider|count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~22\ : std_logic;
SIGNAL \clock_divider|Add0~97_sumout\ : std_logic;
SIGNAL \clock_divider|count[12]~17_combout\ : std_logic;
SIGNAL \clock_divider|count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~98\ : std_logic;
SIGNAL \clock_divider|Add0~93_sumout\ : std_logic;
SIGNAL \clock_divider|count[13]~16_combout\ : std_logic;
SIGNAL \clock_divider|Add0~94\ : std_logic;
SIGNAL \clock_divider|Add0~89_sumout\ : std_logic;
SIGNAL \clock_divider|count[14]~15_combout\ : std_logic;
SIGNAL \clock_divider|count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~90\ : std_logic;
SIGNAL \clock_divider|Add0~85_sumout\ : std_logic;
SIGNAL \clock_divider|count[15]~14_combout\ : std_logic;
SIGNAL \clock_divider|count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~5_combout\ : std_logic;
SIGNAL \clock_divider|en_out~q\ : std_logic;
SIGNAL \fsm|intcount~11_combout\ : std_logic;
SIGNAL \fsm|intcount[3]~3_combout\ : std_logic;
SIGNAL \fsm|intcount[3]~_emulated_q\ : std_logic;
SIGNAL \fsm|intcount[3]~2_combout\ : std_logic;
SIGNAL \fsm|intcount[2]~5_combout\ : std_logic;
SIGNAL \fsm|intcount[2]~_emulated_q\ : std_logic;
SIGNAL \fsm|intcount[2]~4_combout\ : std_logic;
SIGNAL \fsm|intcount[1]~7_combout\ : std_logic;
SIGNAL \fsm|intcount[1]~_emulated_q\ : std_logic;
SIGNAL \fsm|intcount[1]~6_combout\ : std_logic;
SIGNAL \g05_7_segment_decoder0|Mux6~0_combout\ : std_logic;
SIGNAL \fsm|Mux0~0_combout\ : std_logic;
SIGNAL \fsm|Mux3~0_combout\ : std_logic;
SIGNAL \fsm|Mux2~0_combout\ : std_logic;
SIGNAL \fsm|Mux1~0_combout\ : std_logic;
SIGNAL \g05_7_segment_decoder0|Mux5~0_combout\ : std_logic;
SIGNAL \g05_7_segment_decoder0|Mux4~0_combout\ : std_logic;
SIGNAL \g05_7_segment_decoder0|Mux3~0_combout\ : std_logic;
SIGNAL \g05_7_segment_decoder0|Mux2~0_combout\ : std_logic;
SIGNAL \g05_7_segment_decoder0|Mux1~0_combout\ : std_logic;
SIGNAL \g05_7_segment_decoder0|Mux0~0_combout\ : std_logic;
SIGNAL \bcd_convert|add~0_combout\ : std_logic;
SIGNAL \clock_divider|count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \fsm|intcount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_count[19]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_count[21]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_count[25]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_count[18]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_stop~input_o\ : std_logic;
SIGNAL \ALT_INV_direction~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_enable~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_intcount[3]~1_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_intcount[1]~6_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_intcount[1]~_emulated_q\ : std_logic;
SIGNAL \fsm|ALT_INV_intcount[2]~4_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_intcount[2]~_emulated_q\ : std_logic;
SIGNAL \fsm|ALT_INV_intcount[3]~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_intcount[3]~_emulated_q\ : std_logic;
SIGNAL \g05_7_segment_decoder0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_intcount\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~33_sumout\ : std_logic;

BEGIN

ww_start <= start;
ww_stop <= stop;
ww_direction <= direction;
ww_reset <= reset;
ww_clk <= clk;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\clock_divider|ALT_INV_count[6]~DUPLICATE_q\ <= NOT \clock_divider|count[6]~DUPLICATE_q\;
\clock_divider|ALT_INV_count[12]~DUPLICATE_q\ <= NOT \clock_divider|count[12]~DUPLICATE_q\;
\clock_divider|ALT_INV_count[14]~DUPLICATE_q\ <= NOT \clock_divider|count[14]~DUPLICATE_q\;
\clock_divider|ALT_INV_count[19]~DUPLICATE_q\ <= NOT \clock_divider|count[19]~DUPLICATE_q\;
\clock_divider|ALT_INV_count[21]~DUPLICATE_q\ <= NOT \clock_divider|count[21]~DUPLICATE_q\;
\clock_divider|ALT_INV_count[25]~DUPLICATE_q\ <= NOT \clock_divider|count[25]~DUPLICATE_q\;
\clock_divider|ALT_INV_count[1]~DUPLICATE_q\ <= NOT \clock_divider|count[1]~DUPLICATE_q\;
\clock_divider|ALT_INV_count[4]~DUPLICATE_q\ <= NOT \clock_divider|count[4]~DUPLICATE_q\;
\clock_divider|ALT_INV_count[9]~DUPLICATE_q\ <= NOT \clock_divider|count[9]~DUPLICATE_q\;
\clock_divider|ALT_INV_count[11]~DUPLICATE_q\ <= NOT \clock_divider|count[11]~DUPLICATE_q\;
\clock_divider|ALT_INV_count[18]~DUPLICATE_q\ <= NOT \clock_divider|count[18]~DUPLICATE_q\;
\clock_divider|ALT_INV_count[16]~DUPLICATE_q\ <= NOT \clock_divider|count[16]~DUPLICATE_q\;
\clock_divider|ALT_INV_count[7]~DUPLICATE_q\ <= NOT \clock_divider|count[7]~DUPLICATE_q\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_stop~input_o\ <= NOT \stop~input_o\;
\ALT_INV_direction~input_o\ <= NOT \direction~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_enable~combout\ <= NOT \enable~combout\;
\fsm|ALT_INV_intcount[3]~1_combout\ <= NOT \fsm|intcount[3]~1_combout\;
\clock_divider|ALT_INV_Equal0~4_combout\ <= NOT \clock_divider|Equal0~4_combout\;
\clock_divider|ALT_INV_count\(6) <= NOT \clock_divider|count\(6);
\clock_divider|ALT_INV_count\(12) <= NOT \clock_divider|count\(12);
\clock_divider|ALT_INV_count\(13) <= NOT \clock_divider|count\(13);
\clock_divider|ALT_INV_count\(14) <= NOT \clock_divider|count\(14);
\clock_divider|ALT_INV_count\(15) <= NOT \clock_divider|count\(15);
\clock_divider|ALT_INV_count\(17) <= NOT \clock_divider|count\(17);
\clock_divider|ALT_INV_Equal0~3_combout\ <= NOT \clock_divider|Equal0~3_combout\;
\clock_divider|ALT_INV_count\(19) <= NOT \clock_divider|count\(19);
\clock_divider|ALT_INV_count\(20) <= NOT \clock_divider|count\(20);
\clock_divider|ALT_INV_count\(21) <= NOT \clock_divider|count\(21);
\clock_divider|ALT_INV_count\(22) <= NOT \clock_divider|count\(22);
\clock_divider|ALT_INV_count\(23) <= NOT \clock_divider|count\(23);
\clock_divider|ALT_INV_count\(25) <= NOT \clock_divider|count\(25);
\clock_divider|ALT_INV_Equal0~2_combout\ <= NOT \clock_divider|Equal0~2_combout\;
\clock_divider|ALT_INV_count\(0) <= NOT \clock_divider|count\(0);
\clock_divider|ALT_INV_count\(1) <= NOT \clock_divider|count\(1);
\clock_divider|ALT_INV_count\(2) <= NOT \clock_divider|count\(2);
\clock_divider|ALT_INV_count\(3) <= NOT \clock_divider|count\(3);
\clock_divider|ALT_INV_count\(4) <= NOT \clock_divider|count\(4);
\clock_divider|ALT_INV_count\(5) <= NOT \clock_divider|count\(5);
\clock_divider|ALT_INV_Equal0~1_combout\ <= NOT \clock_divider|Equal0~1_combout\;
\clock_divider|ALT_INV_Equal0~0_combout\ <= NOT \clock_divider|Equal0~0_combout\;
\fsm|ALT_INV_intcount[1]~6_combout\ <= NOT \fsm|intcount[1]~6_combout\;
\fsm|ALT_INV_intcount[1]~_emulated_q\ <= NOT \fsm|intcount[1]~_emulated_q\;
\fsm|ALT_INV_intcount[2]~4_combout\ <= NOT \fsm|intcount[2]~4_combout\;
\fsm|ALT_INV_intcount[2]~_emulated_q\ <= NOT \fsm|intcount[2]~_emulated_q\;
\fsm|ALT_INV_intcount[3]~2_combout\ <= NOT \fsm|intcount[3]~2_combout\;
\fsm|ALT_INV_intcount[3]~_emulated_q\ <= NOT \fsm|intcount[3]~_emulated_q\;
\g05_7_segment_decoder0|ALT_INV_Mux0~0_combout\ <= NOT \g05_7_segment_decoder0|Mux0~0_combout\;
\fsm|ALT_INV_Mux3~0_combout\ <= NOT \fsm|Mux3~0_combout\;
\fsm|ALT_INV_Mux1~0_combout\ <= NOT \fsm|Mux1~0_combout\;
\fsm|ALT_INV_Mux0~0_combout\ <= NOT \fsm|Mux0~0_combout\;
\fsm|ALT_INV_Mux2~0_combout\ <= NOT \fsm|Mux2~0_combout\;
\fsm|ALT_INV_intcount\(0) <= NOT \fsm|intcount\(0);
\clock_divider|ALT_INV_Add0~101_sumout\ <= NOT \clock_divider|Add0~101_sumout\;
\clock_divider|ALT_INV_Add0~97_sumout\ <= NOT \clock_divider|Add0~97_sumout\;
\clock_divider|ALT_INV_Add0~93_sumout\ <= NOT \clock_divider|Add0~93_sumout\;
\clock_divider|ALT_INV_Add0~89_sumout\ <= NOT \clock_divider|Add0~89_sumout\;
\clock_divider|ALT_INV_Add0~85_sumout\ <= NOT \clock_divider|Add0~85_sumout\;
\clock_divider|ALT_INV_Add0~81_sumout\ <= NOT \clock_divider|Add0~81_sumout\;
\clock_divider|ALT_INV_Add0~77_sumout\ <= NOT \clock_divider|Add0~77_sumout\;
\clock_divider|ALT_INV_Add0~73_sumout\ <= NOT \clock_divider|Add0~73_sumout\;
\clock_divider|ALT_INV_Add0~69_sumout\ <= NOT \clock_divider|Add0~69_sumout\;
\clock_divider|ALT_INV_Add0~65_sumout\ <= NOT \clock_divider|Add0~65_sumout\;
\clock_divider|ALT_INV_Add0~61_sumout\ <= NOT \clock_divider|Add0~61_sumout\;
\clock_divider|ALT_INV_Add0~57_sumout\ <= NOT \clock_divider|Add0~57_sumout\;
\clock_divider|ALT_INV_Add0~53_sumout\ <= NOT \clock_divider|Add0~53_sumout\;
\clock_divider|ALT_INV_Add0~49_sumout\ <= NOT \clock_divider|Add0~49_sumout\;
\clock_divider|ALT_INV_Add0~45_sumout\ <= NOT \clock_divider|Add0~45_sumout\;
\clock_divider|ALT_INV_Add0~41_sumout\ <= NOT \clock_divider|Add0~41_sumout\;
\clock_divider|ALT_INV_Add0~37_sumout\ <= NOT \clock_divider|Add0~37_sumout\;
\clock_divider|ALT_INV_Add0~33_sumout\ <= NOT \clock_divider|Add0~33_sumout\;
\clock_divider|ALT_INV_count\(9) <= NOT \clock_divider|count\(9);
\clock_divider|ALT_INV_count\(10) <= NOT \clock_divider|count\(10);
\clock_divider|ALT_INV_count\(11) <= NOT \clock_divider|count\(11);
\clock_divider|ALT_INV_count\(24) <= NOT \clock_divider|count\(24);
\clock_divider|ALT_INV_count\(18) <= NOT \clock_divider|count\(18);
\clock_divider|ALT_INV_count\(16) <= NOT \clock_divider|count\(16);
\clock_divider|ALT_INV_count\(7) <= NOT \clock_divider|count\(7);
\clock_divider|ALT_INV_count\(8) <= NOT \clock_divider|count\(8);

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g05_7_segment_decoder0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g05_7_segment_decoder0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g05_7_segment_decoder0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g05_7_segment_decoder0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g05_7_segment_decoder0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g05_7_segment_decoder0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g05_7_segment_decoder0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_convert|add~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_convert|add~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_convert|add~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_convert|add~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOIBUF_X12_Y0_N18
\direction~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction,
	o => \direction~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X40_Y2_N48
\fsm|intcount[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|intcount[3]~1_combout\ = ( \fsm|intcount[3]~1_combout\ & ( (!\direction~input_o\) # (\reset~input_o\) ) ) # ( !\fsm|intcount[3]~1_combout\ & ( (!\direction~input_o\ & !\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_direction~input_o\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \fsm|ALT_INV_intcount[3]~1_combout\,
	combout => \fsm|intcount[3]~1_combout\);

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X35_Y3_N30
\clock_divider|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~53_sumout\ = SUM(( !\clock_divider|count\(0) ) + ( VCC ) + ( !VCC ))
-- \clock_divider|Add0~54\ = CARRY(( !\clock_divider|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_count\(0),
	cin => GND,
	sumout => \clock_divider|Add0~53_sumout\,
	cout => \clock_divider|Add0~54\);

-- Location: LABCELL_X35_Y3_N0
\clock_divider|count[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[0]~6_combout\ = ( !\clock_divider|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~53_sumout\,
	combout => \clock_divider|count[0]~6_combout\);

-- Location: IOIBUF_X36_Y0_N18
\stop~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LABCELL_X37_Y2_N48
enable : cyclonev_lcell_comb
-- Equation(s):
-- \enable~combout\ = ( \start~input_o\ & ( \enable~combout\ & ( \stop~input_o\ ) ) ) # ( !\start~input_o\ & ( \enable~combout\ & ( \stop~input_o\ ) ) ) # ( !\start~input_o\ & ( !\enable~combout\ & ( \stop~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_stop~input_o\,
	datae => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_enable~combout\,
	combout => \enable~combout\);

-- Location: LABCELL_X35_Y2_N15
\clock_divider|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~85_sumout\ = SUM(( !\clock_divider|count\(15) ) + ( VCC ) + ( \clock_divider|Add0~90\ ))
-- \clock_divider|Add0~86\ = CARRY(( !\clock_divider|count\(15) ) + ( VCC ) + ( \clock_divider|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count\(15),
	cin => \clock_divider|Add0~90\,
	sumout => \clock_divider|Add0~85_sumout\,
	cout => \clock_divider|Add0~86\);

-- Location: LABCELL_X35_Y2_N18
\clock_divider|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~9_sumout\ = SUM(( \clock_divider|count\(16) ) + ( VCC ) + ( \clock_divider|Add0~86\ ))
-- \clock_divider|Add0~10\ = CARRY(( \clock_divider|count\(16) ) + ( VCC ) + ( \clock_divider|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count\(16),
	cin => \clock_divider|Add0~86\,
	sumout => \clock_divider|Add0~9_sumout\,
	cout => \clock_divider|Add0~10\);

-- Location: FF_X35_Y2_N20
\clock_divider|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~5_combout\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(16));

-- Location: LABCELL_X35_Y2_N21
\clock_divider|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~81_sumout\ = SUM(( !\clock_divider|count\(17) ) + ( VCC ) + ( \clock_divider|Add0~10\ ))
-- \clock_divider|Add0~82\ = CARRY(( !\clock_divider|count\(17) ) + ( VCC ) + ( \clock_divider|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_count\(17),
	cin => \clock_divider|Add0~10\,
	sumout => \clock_divider|Add0~81_sumout\,
	cout => \clock_divider|Add0~82\);

-- Location: LABCELL_X36_Y2_N51
\clock_divider|count[17]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[17]~13_combout\ = ( !\clock_divider|Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~81_sumout\,
	combout => \clock_divider|count[17]~13_combout\);

-- Location: FF_X36_Y2_N53
\clock_divider|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[17]~13_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(17));

-- Location: LABCELL_X35_Y2_N24
\clock_divider|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~13_sumout\ = SUM(( \clock_divider|count\(18) ) + ( VCC ) + ( \clock_divider|Add0~82\ ))
-- \clock_divider|Add0~14\ = CARRY(( \clock_divider|count\(18) ) + ( VCC ) + ( \clock_divider|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count\(18),
	cin => \clock_divider|Add0~82\,
	sumout => \clock_divider|Add0~13_sumout\,
	cout => \clock_divider|Add0~14\);

-- Location: FF_X35_Y2_N26
\clock_divider|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~5_combout\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(18));

-- Location: LABCELL_X35_Y2_N27
\clock_divider|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~77_sumout\ = SUM(( !\clock_divider|count[19]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~14\ ))
-- \clock_divider|Add0~78\ = CARRY(( !\clock_divider|count[19]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_count[19]~DUPLICATE_q\,
	cin => \clock_divider|Add0~14\,
	sumout => \clock_divider|Add0~77_sumout\,
	cout => \clock_divider|Add0~78\);

-- Location: LABCELL_X36_Y2_N21
\clock_divider|count[19]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[19]~12_combout\ = !\clock_divider|Add0~77_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_Add0~77_sumout\,
	combout => \clock_divider|count[19]~12_combout\);

-- Location: FF_X36_Y2_N23
\clock_divider|count[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[19]~12_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count[19]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y2_N30
\clock_divider|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~73_sumout\ = SUM(( !\clock_divider|count\(20) ) + ( VCC ) + ( \clock_divider|Add0~78\ ))
-- \clock_divider|Add0~74\ = CARRY(( !\clock_divider|count\(20) ) + ( VCC ) + ( \clock_divider|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count\(20),
	cin => \clock_divider|Add0~78\,
	sumout => \clock_divider|Add0~73_sumout\,
	cout => \clock_divider|Add0~74\);

-- Location: LABCELL_X36_Y2_N33
\clock_divider|count[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[20]~11_combout\ = ( !\clock_divider|Add0~73_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~73_sumout\,
	combout => \clock_divider|count[20]~11_combout\);

-- Location: FF_X36_Y2_N35
\clock_divider|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[20]~11_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(20));

-- Location: FF_X36_Y2_N22
\clock_divider|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[19]~12_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(19));

-- Location: FF_X36_Y2_N49
\clock_divider|count[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[25]~7_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count[25]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y2_N33
\clock_divider|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~69_sumout\ = SUM(( !\clock_divider|count[21]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~74\ ))
-- \clock_divider|Add0~70\ = CARRY(( !\clock_divider|count[21]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count[21]~DUPLICATE_q\,
	cin => \clock_divider|Add0~74\,
	sumout => \clock_divider|Add0~69_sumout\,
	cout => \clock_divider|Add0~70\);

-- Location: LABCELL_X36_Y2_N24
\clock_divider|count[21]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[21]~10_combout\ = !\clock_divider|Add0~69_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_Add0~69_sumout\,
	combout => \clock_divider|count[21]~10_combout\);

-- Location: FF_X36_Y2_N26
\clock_divider|count[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[21]~10_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count[21]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y2_N36
\clock_divider|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~65_sumout\ = SUM(( !\clock_divider|count\(22) ) + ( VCC ) + ( \clock_divider|Add0~70\ ))
-- \clock_divider|Add0~66\ = CARRY(( !\clock_divider|count\(22) ) + ( VCC ) + ( \clock_divider|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count\(22),
	cin => \clock_divider|Add0~70\,
	sumout => \clock_divider|Add0~65_sumout\,
	cout => \clock_divider|Add0~66\);

-- Location: LABCELL_X36_Y2_N27
\clock_divider|count[22]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[22]~9_combout\ = ( !\clock_divider|Add0~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~65_sumout\,
	combout => \clock_divider|count[22]~9_combout\);

-- Location: FF_X36_Y2_N29
\clock_divider|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[22]~9_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(22));

-- Location: LABCELL_X35_Y2_N39
\clock_divider|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~61_sumout\ = SUM(( !\clock_divider|count\(23) ) + ( VCC ) + ( \clock_divider|Add0~66\ ))
-- \clock_divider|Add0~62\ = CARRY(( !\clock_divider|count\(23) ) + ( VCC ) + ( \clock_divider|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count\(23),
	cin => \clock_divider|Add0~66\,
	sumout => \clock_divider|Add0~61_sumout\,
	cout => \clock_divider|Add0~62\);

-- Location: LABCELL_X36_Y2_N42
\clock_divider|count[23]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[23]~8_combout\ = ( !\clock_divider|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~61_sumout\,
	combout => \clock_divider|count[23]~8_combout\);

-- Location: FF_X36_Y2_N44
\clock_divider|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[23]~8_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(23));

-- Location: LABCELL_X35_Y2_N42
\clock_divider|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~17_sumout\ = SUM(( \clock_divider|count\(24) ) + ( VCC ) + ( \clock_divider|Add0~62\ ))
-- \clock_divider|Add0~18\ = CARRY(( \clock_divider|count\(24) ) + ( VCC ) + ( \clock_divider|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_count\(24),
	cin => \clock_divider|Add0~62\,
	sumout => \clock_divider|Add0~17_sumout\,
	cout => \clock_divider|Add0~18\);

-- Location: FF_X35_Y2_N44
\clock_divider|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~5_combout\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(24));

-- Location: LABCELL_X35_Y2_N45
\clock_divider|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~57_sumout\ = SUM(( !\clock_divider|count[25]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count[25]~DUPLICATE_q\,
	cin => \clock_divider|Add0~18\,
	sumout => \clock_divider|Add0~57_sumout\);

-- Location: LABCELL_X36_Y2_N48
\clock_divider|count[25]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[25]~7_combout\ = ( !\clock_divider|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~57_sumout\,
	combout => \clock_divider|count[25]~7_combout\);

-- Location: FF_X36_Y2_N50
\clock_divider|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[25]~7_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(25));

-- Location: FF_X36_Y2_N25
\clock_divider|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[21]~10_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(21));

-- Location: LABCELL_X36_Y2_N12
\clock_divider|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~3_combout\ = ( \clock_divider|count\(22) & ( \clock_divider|count\(21) & ( (\clock_divider|count\(20) & (\clock_divider|count\(19) & (\clock_divider|count\(25) & \clock_divider|count\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_count\(20),
	datab => \clock_divider|ALT_INV_count\(19),
	datac => \clock_divider|ALT_INV_count\(25),
	datad => \clock_divider|ALT_INV_count\(23),
	datae => \clock_divider|ALT_INV_count\(22),
	dataf => \clock_divider|ALT_INV_count\(21),
	combout => \clock_divider|Equal0~3_combout\);

-- Location: FF_X35_Y2_N4
\clock_divider|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~5_combout\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(11));

-- Location: FF_X35_Y2_N25
\clock_divider|count[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~5_combout\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count[18]~DUPLICATE_q\);

-- Location: FF_X35_Y2_N19
\clock_divider|count[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~5_combout\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count[16]~DUPLICATE_q\);

-- Location: FF_X35_Y3_N58
\clock_divider|count[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~5_combout\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count[9]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N57
\clock_divider|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~1_combout\ = ( !\clock_divider|count[16]~DUPLICATE_q\ & ( !\clock_divider|count[9]~DUPLICATE_q\ & ( (!\clock_divider|count\(10) & (!\clock_divider|count\(11) & (!\clock_divider|count[18]~DUPLICATE_q\ & !\clock_divider|count\(24)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_count\(10),
	datab => \clock_divider|ALT_INV_count\(11),
	datac => \clock_divider|ALT_INV_count[18]~DUPLICATE_q\,
	datad => \clock_divider|ALT_INV_count\(24),
	datae => \clock_divider|ALT_INV_count[16]~DUPLICATE_q\,
	dataf => \clock_divider|ALT_INV_count[9]~DUPLICATE_q\,
	combout => \clock_divider|Equal0~1_combout\);

-- Location: FF_X35_Y3_N28
\clock_divider|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(1));

-- Location: FF_X35_Y3_N8
\clock_divider|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[4]~2_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(4));

-- Location: LABCELL_X35_Y3_N12
\clock_divider|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~2_combout\ = ( \clock_divider|count\(0) & ( \clock_divider|count\(5) & ( (\clock_divider|count\(3) & (\clock_divider|count\(1) & (\clock_divider|count\(2) & \clock_divider|count\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_count\(3),
	datab => \clock_divider|ALT_INV_count\(1),
	datac => \clock_divider|ALT_INV_count\(2),
	datad => \clock_divider|ALT_INV_count\(4),
	datae => \clock_divider|ALT_INV_count\(0),
	dataf => \clock_divider|ALT_INV_count\(5),
	combout => \clock_divider|Equal0~2_combout\);

-- Location: FF_X35_Y3_N53
\clock_divider|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~5_combout\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(7));

-- Location: LABCELL_X35_Y3_N21
\clock_divider|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~0_combout\ = ( !\clock_divider|count\(7) & ( !\clock_divider|count\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_count\(8),
	dataf => \clock_divider|ALT_INV_count\(7),
	combout => \clock_divider|Equal0~0_combout\);

-- Location: LABCELL_X36_Y2_N6
\clock_divider|count[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[17]~0_combout\ = ( \clock_divider|Equal0~2_combout\ & ( \clock_divider|Equal0~0_combout\ & ( ((\clock_divider|Equal0~3_combout\ & (\clock_divider|Equal0~4_combout\ & \clock_divider|Equal0~1_combout\))) # (\enable~combout\) ) ) ) # ( 
-- !\clock_divider|Equal0~2_combout\ & ( \clock_divider|Equal0~0_combout\ & ( \enable~combout\ ) ) ) # ( \clock_divider|Equal0~2_combout\ & ( !\clock_divider|Equal0~0_combout\ & ( \enable~combout\ ) ) ) # ( !\clock_divider|Equal0~2_combout\ & ( 
-- !\clock_divider|Equal0~0_combout\ & ( \enable~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~combout\,
	datab => \clock_divider|ALT_INV_Equal0~3_combout\,
	datac => \clock_divider|ALT_INV_Equal0~4_combout\,
	datad => \clock_divider|ALT_INV_Equal0~1_combout\,
	datae => \clock_divider|ALT_INV_Equal0~2_combout\,
	dataf => \clock_divider|ALT_INV_Equal0~0_combout\,
	combout => \clock_divider|count[17]~0_combout\);

-- Location: FF_X35_Y3_N2
\clock_divider|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[0]~6_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(0));

-- Location: LABCELL_X35_Y3_N33
\clock_divider|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~49_sumout\ = SUM(( !\clock_divider|count[1]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~54\ ))
-- \clock_divider|Add0~50\ = CARRY(( !\clock_divider|count[1]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_count[1]~DUPLICATE_q\,
	cin => \clock_divider|Add0~54\,
	sumout => \clock_divider|Add0~49_sumout\,
	cout => \clock_divider|Add0~50\);

-- Location: LABCELL_X35_Y3_N27
\clock_divider|count[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[1]~5_combout\ = ( !\clock_divider|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~49_sumout\,
	combout => \clock_divider|count[1]~5_combout\);

-- Location: FF_X35_Y3_N29
\clock_divider|count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count[1]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y3_N36
\clock_divider|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~45_sumout\ = SUM(( !\clock_divider|count\(2) ) + ( VCC ) + ( \clock_divider|Add0~50\ ))
-- \clock_divider|Add0~46\ = CARRY(( !\clock_divider|count\(2) ) + ( VCC ) + ( \clock_divider|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count\(2),
	cin => \clock_divider|Add0~50\,
	sumout => \clock_divider|Add0~45_sumout\,
	cout => \clock_divider|Add0~46\);

-- Location: LABCELL_X35_Y3_N24
\clock_divider|count[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[2]~4_combout\ = !\clock_divider|Add0~45_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_Add0~45_sumout\,
	combout => \clock_divider|count[2]~4_combout\);

-- Location: FF_X35_Y3_N26
\clock_divider|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[2]~4_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(2));

-- Location: LABCELL_X35_Y3_N39
\clock_divider|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~41_sumout\ = SUM(( !\clock_divider|count\(3) ) + ( VCC ) + ( \clock_divider|Add0~46\ ))
-- \clock_divider|Add0~42\ = CARRY(( !\clock_divider|count\(3) ) + ( VCC ) + ( \clock_divider|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_count\(3),
	cin => \clock_divider|Add0~46\,
	sumout => \clock_divider|Add0~41_sumout\,
	cout => \clock_divider|Add0~42\);

-- Location: LABCELL_X35_Y3_N3
\clock_divider|count[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[3]~3_combout\ = ( !\clock_divider|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~41_sumout\,
	combout => \clock_divider|count[3]~3_combout\);

-- Location: FF_X35_Y3_N5
\clock_divider|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[3]~3_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(3));

-- Location: LABCELL_X35_Y3_N42
\clock_divider|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~37_sumout\ = SUM(( !\clock_divider|count[4]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~42\ ))
-- \clock_divider|Add0~38\ = CARRY(( !\clock_divider|count[4]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_count[4]~DUPLICATE_q\,
	cin => \clock_divider|Add0~42\,
	sumout => \clock_divider|Add0~37_sumout\,
	cout => \clock_divider|Add0~38\);

-- Location: LABCELL_X35_Y3_N6
\clock_divider|count[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[4]~2_combout\ = ( !\clock_divider|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~37_sumout\,
	combout => \clock_divider|count[4]~2_combout\);

-- Location: FF_X35_Y3_N7
\clock_divider|count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[4]~2_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count[4]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y3_N45
\clock_divider|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~33_sumout\ = SUM(( !\clock_divider|count\(5) ) + ( VCC ) + ( \clock_divider|Add0~38\ ))
-- \clock_divider|Add0~34\ = CARRY(( !\clock_divider|count\(5) ) + ( VCC ) + ( \clock_divider|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count\(5),
	cin => \clock_divider|Add0~38\,
	sumout => \clock_divider|Add0~33_sumout\,
	cout => \clock_divider|Add0~34\);

-- Location: LABCELL_X35_Y3_N9
\clock_divider|count[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[5]~1_combout\ = !\clock_divider|Add0~33_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_Add0~33_sumout\,
	combout => \clock_divider|count[5]~1_combout\);

-- Location: FF_X35_Y3_N11
\clock_divider|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[5]~1_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(5));

-- Location: LABCELL_X35_Y3_N48
\clock_divider|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~101_sumout\ = SUM(( !\clock_divider|count\(6) ) + ( VCC ) + ( \clock_divider|Add0~34\ ))
-- \clock_divider|Add0~102\ = CARRY(( !\clock_divider|count\(6) ) + ( VCC ) + ( \clock_divider|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count\(6),
	cin => \clock_divider|Add0~34\,
	sumout => \clock_divider|Add0~101_sumout\,
	cout => \clock_divider|Add0~102\);

-- Location: LABCELL_X35_Y3_N18
\clock_divider|count[6]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[6]~18_combout\ = ( !\clock_divider|Add0~101_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~101_sumout\,
	combout => \clock_divider|count[6]~18_combout\);

-- Location: FF_X35_Y3_N20
\clock_divider|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[6]~18_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(6));

-- Location: LABCELL_X35_Y3_N51
\clock_divider|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~5_sumout\ = SUM(( \clock_divider|count[7]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~102\ ))
-- \clock_divider|Add0~6\ = CARRY(( \clock_divider|count[7]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_count[7]~DUPLICATE_q\,
	cin => \clock_divider|Add0~102\,
	sumout => \clock_divider|Add0~5_sumout\,
	cout => \clock_divider|Add0~6\);

-- Location: FF_X35_Y3_N52
\clock_divider|count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~5_combout\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count[7]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y3_N54
\clock_divider|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~1_sumout\ = SUM(( \clock_divider|count\(8) ) + ( VCC ) + ( \clock_divider|Add0~6\ ))
-- \clock_divider|Add0~2\ = CARRY(( \clock_divider|count\(8) ) + ( VCC ) + ( \clock_divider|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count\(8),
	cin => \clock_divider|Add0~6\,
	sumout => \clock_divider|Add0~1_sumout\,
	cout => \clock_divider|Add0~2\);

-- Location: FF_X35_Y3_N56
\clock_divider|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~5_combout\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(8));

-- Location: LABCELL_X35_Y3_N57
\clock_divider|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~29_sumout\ = SUM(( \clock_divider|count\(9) ) + ( VCC ) + ( \clock_divider|Add0~2\ ))
-- \clock_divider|Add0~30\ = CARRY(( \clock_divider|count\(9) ) + ( VCC ) + ( \clock_divider|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count\(9),
	cin => \clock_divider|Add0~2\,
	sumout => \clock_divider|Add0~29_sumout\,
	cout => \clock_divider|Add0~30\);

-- Location: FF_X35_Y3_N59
\clock_divider|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~5_combout\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(9));

-- Location: LABCELL_X35_Y2_N0
\clock_divider|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~25_sumout\ = SUM(( \clock_divider|count\(10) ) + ( VCC ) + ( \clock_divider|Add0~30\ ))
-- \clock_divider|Add0~26\ = CARRY(( \clock_divider|count\(10) ) + ( VCC ) + ( \clock_divider|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count\(10),
	cin => \clock_divider|Add0~30\,
	sumout => \clock_divider|Add0~25_sumout\,
	cout => \clock_divider|Add0~26\);

-- Location: FF_X35_Y2_N2
\clock_divider|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~5_combout\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(10));

-- Location: LABCELL_X35_Y2_N3
\clock_divider|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~21_sumout\ = SUM(( \clock_divider|count[11]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~26\ ))
-- \clock_divider|Add0~22\ = CARRY(( \clock_divider|count[11]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_count[11]~DUPLICATE_q\,
	cin => \clock_divider|Add0~26\,
	sumout => \clock_divider|Add0~21_sumout\,
	cout => \clock_divider|Add0~22\);

-- Location: FF_X35_Y2_N5
\clock_divider|count[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~5_combout\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count[11]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y2_N6
\clock_divider|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~97_sumout\ = SUM(( !\clock_divider|count[12]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~22\ ))
-- \clock_divider|Add0~98\ = CARRY(( !\clock_divider|count[12]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_count[12]~DUPLICATE_q\,
	cin => \clock_divider|Add0~22\,
	sumout => \clock_divider|Add0~97_sumout\,
	cout => \clock_divider|Add0~98\);

-- Location: LABCELL_X35_Y2_N48
\clock_divider|count[12]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[12]~17_combout\ = ( !\clock_divider|Add0~97_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~97_sumout\,
	combout => \clock_divider|count[12]~17_combout\);

-- Location: FF_X36_Y2_N56
\clock_divider|count[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|count[12]~17_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count[12]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y2_N9
\clock_divider|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~93_sumout\ = SUM(( !\clock_divider|count\(13) ) + ( VCC ) + ( \clock_divider|Add0~98\ ))
-- \clock_divider|Add0~94\ = CARRY(( !\clock_divider|count\(13) ) + ( VCC ) + ( \clock_divider|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_count\(13),
	cin => \clock_divider|Add0~98\,
	sumout => \clock_divider|Add0~93_sumout\,
	cout => \clock_divider|Add0~94\);

-- Location: LABCELL_X36_Y2_N45
\clock_divider|count[13]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[13]~16_combout\ = ( !\clock_divider|Add0~93_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~93_sumout\,
	combout => \clock_divider|count[13]~16_combout\);

-- Location: FF_X36_Y2_N47
\clock_divider|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[13]~16_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(13));

-- Location: LABCELL_X35_Y2_N12
\clock_divider|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~89_sumout\ = SUM(( !\clock_divider|count[14]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~94\ ))
-- \clock_divider|Add0~90\ = CARRY(( !\clock_divider|count[14]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_count[14]~DUPLICATE_q\,
	cin => \clock_divider|Add0~94\,
	sumout => \clock_divider|Add0~89_sumout\,
	cout => \clock_divider|Add0~90\);

-- Location: LABCELL_X36_Y2_N30
\clock_divider|count[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[14]~15_combout\ = ( !\clock_divider|Add0~89_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~89_sumout\,
	combout => \clock_divider|count[14]~15_combout\);

-- Location: FF_X36_Y2_N32
\clock_divider|count[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[14]~15_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count[14]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N18
\clock_divider|count[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|count[15]~14_combout\ = ( !\clock_divider|Add0~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~85_sumout\,
	combout => \clock_divider|count[15]~14_combout\);

-- Location: FF_X36_Y2_N20
\clock_divider|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[15]~14_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(15));

-- Location: FF_X36_Y2_N55
\clock_divider|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|count[12]~17_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(12));

-- Location: FF_X35_Y3_N19
\clock_divider|count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[6]~18_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count[6]~DUPLICATE_q\);

-- Location: FF_X36_Y2_N31
\clock_divider|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|count[14]~15_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|count\(14));

-- Location: LABCELL_X36_Y2_N36
\clock_divider|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~4_combout\ = ( \clock_divider|count[6]~DUPLICATE_q\ & ( \clock_divider|count\(14) & ( (\clock_divider|count\(15) & (\clock_divider|count\(12) & (\clock_divider|count\(17) & \clock_divider|count\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_count\(15),
	datab => \clock_divider|ALT_INV_count\(12),
	datac => \clock_divider|ALT_INV_count\(17),
	datad => \clock_divider|ALT_INV_count\(13),
	datae => \clock_divider|ALT_INV_count[6]~DUPLICATE_q\,
	dataf => \clock_divider|ALT_INV_count\(14),
	combout => \clock_divider|Equal0~4_combout\);

-- Location: LABCELL_X36_Y2_N0
\clock_divider|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~5_combout\ = ( \clock_divider|Equal0~1_combout\ & ( \clock_divider|Equal0~3_combout\ & ( (\clock_divider|Equal0~4_combout\ & (\clock_divider|Equal0~0_combout\ & \clock_divider|Equal0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_Equal0~4_combout\,
	datac => \clock_divider|ALT_INV_Equal0~0_combout\,
	datad => \clock_divider|ALT_INV_Equal0~2_combout\,
	datae => \clock_divider|ALT_INV_Equal0~1_combout\,
	dataf => \clock_divider|ALT_INV_Equal0~3_combout\,
	combout => \clock_divider|Equal0~5_combout\);

-- Location: FF_X36_Y2_N10
\clock_divider|en_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \clock_divider|Equal0~5_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|en_out~q\);

-- Location: LABCELL_X40_Y2_N39
\fsm|intcount~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|intcount~11_combout\ = ( \fsm|intcount[3]~2_combout\ & ( \fsm|intcount[1]~6_combout\ & ( (!\fsm|intcount\(0) & ((!\direction~input_o\) # (!\fsm|intcount[2]~4_combout\))) ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( \fsm|intcount[1]~6_combout\ & ( 
-- !\fsm|intcount\(0) ) ) ) # ( \fsm|intcount[3]~2_combout\ & ( !\fsm|intcount[1]~6_combout\ & ( !\fsm|intcount\(0) ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( !\fsm|intcount[1]~6_combout\ & ( (!\fsm|intcount\(0) & ((\fsm|intcount[2]~4_combout\) # 
-- (\direction~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010101010101010101010101010101010101010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_intcount\(0),
	datac => \ALT_INV_direction~input_o\,
	datad => \fsm|ALT_INV_intcount[2]~4_combout\,
	datae => \fsm|ALT_INV_intcount[3]~2_combout\,
	dataf => \fsm|ALT_INV_intcount[1]~6_combout\,
	combout => \fsm|intcount~11_combout\);

-- Location: FF_X40_Y2_N35
\fsm|intcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \fsm|intcount~11_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|intcount\(0));

-- Location: LABCELL_X40_Y2_N21
\fsm|intcount[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|intcount[3]~3_combout\ = ( \direction~input_o\ & ( \fsm|intcount\(0) & ( !\fsm|intcount[3]~2_combout\ $ (!\fsm|intcount[3]~1_combout\ $ (((\fsm|intcount[2]~4_combout\ & \fsm|intcount[1]~6_combout\)))) ) ) ) # ( !\direction~input_o\ & ( 
-- \fsm|intcount\(0) & ( !\fsm|intcount[3]~2_combout\ $ (!\fsm|intcount[3]~1_combout\) ) ) ) # ( \direction~input_o\ & ( !\fsm|intcount\(0) & ( !\fsm|intcount[3]~1_combout\ $ (((!\fsm|intcount[3]~2_combout\) # ((\fsm|intcount[2]~4_combout\ & 
-- \fsm|intcount[1]~6_combout\)))) ) ) ) # ( !\direction~input_o\ & ( !\fsm|intcount\(0) & ( !\fsm|intcount[3]~2_combout\ $ (!\fsm|intcount[3]~1_combout\ $ (((!\fsm|intcount[2]~4_combout\ & !\fsm|intcount[1]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011000111100001111000010110100111100001111000011110001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_intcount[2]~4_combout\,
	datab => \fsm|ALT_INV_intcount[3]~2_combout\,
	datac => \fsm|ALT_INV_intcount[3]~1_combout\,
	datad => \fsm|ALT_INV_intcount[1]~6_combout\,
	datae => \ALT_INV_direction~input_o\,
	dataf => \fsm|ALT_INV_intcount\(0),
	combout => \fsm|intcount[3]~3_combout\);

-- Location: FF_X40_Y2_N23
\fsm|intcount[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \fsm|intcount[3]~3_combout\,
	clrn => \reset~input_o\,
	ena => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|intcount[3]~_emulated_q\);

-- Location: LABCELL_X40_Y2_N45
\fsm|intcount[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|intcount[3]~2_combout\ = ( \fsm|intcount[3]~1_combout\ & ( (!\reset~input_o\ & (!\direction~input_o\)) # (\reset~input_o\ & ((!\fsm|intcount[3]~_emulated_q\))) ) ) # ( !\fsm|intcount[3]~1_combout\ & ( (!\reset~input_o\ & (!\direction~input_o\)) # 
-- (\reset~input_o\ & ((\fsm|intcount[3]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101111101000001010111110101111101000001010111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_direction~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => \fsm|ALT_INV_intcount[3]~_emulated_q\,
	dataf => \fsm|ALT_INV_intcount[3]~1_combout\,
	combout => \fsm|intcount[3]~2_combout\);

-- Location: LABCELL_X40_Y2_N54
\fsm|intcount[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|intcount[2]~5_combout\ = ( \fsm|intcount[1]~6_combout\ & ( \fsm|intcount\(0) & ( !\fsm|intcount[2]~4_combout\ $ (!\direction~input_o\ $ (\fsm|intcount[3]~1_combout\)) ) ) ) # ( !\fsm|intcount[1]~6_combout\ & ( \fsm|intcount\(0) & ( 
-- !\fsm|intcount[2]~4_combout\ $ (!\fsm|intcount[3]~1_combout\) ) ) ) # ( \fsm|intcount[1]~6_combout\ & ( !\fsm|intcount\(0) & ( !\fsm|intcount[3]~1_combout\ $ (((!\fsm|intcount[2]~4_combout\) # ((\fsm|intcount[3]~2_combout\ & \direction~input_o\)))) ) ) ) 
-- # ( !\fsm|intcount[1]~6_combout\ & ( !\fsm|intcount\(0) & ( !\fsm|intcount[2]~4_combout\ $ (!\direction~input_o\ $ (!\fsm|intcount[3]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010010101001010101101010101101010100101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_intcount[2]~4_combout\,
	datab => \fsm|ALT_INV_intcount[3]~2_combout\,
	datac => \ALT_INV_direction~input_o\,
	datad => \fsm|ALT_INV_intcount[3]~1_combout\,
	datae => \fsm|ALT_INV_intcount[1]~6_combout\,
	dataf => \fsm|ALT_INV_intcount\(0),
	combout => \fsm|intcount[2]~5_combout\);

-- Location: FF_X40_Y2_N56
\fsm|intcount[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \fsm|intcount[2]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|intcount[2]~_emulated_q\);

-- Location: LABCELL_X40_Y2_N0
\fsm|intcount[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|intcount[2]~4_combout\ = ( \fsm|intcount[2]~_emulated_q\ & ( \reset~input_o\ & ( !\fsm|intcount[3]~1_combout\ ) ) ) # ( !\fsm|intcount[2]~_emulated_q\ & ( \reset~input_o\ & ( \fsm|intcount[3]~1_combout\ ) ) ) # ( \fsm|intcount[2]~_emulated_q\ & ( 
-- !\reset~input_o\ & ( !\direction~input_o\ ) ) ) # ( !\fsm|intcount[2]~_emulated_q\ & ( !\reset~input_o\ & ( !\direction~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_direction~input_o\,
	datac => \fsm|ALT_INV_intcount[3]~1_combout\,
	datae => \fsm|ALT_INV_intcount[2]~_emulated_q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \fsm|intcount[2]~4_combout\);

-- Location: LABCELL_X40_Y2_N27
\fsm|intcount[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|intcount[1]~7_combout\ = ( \direction~input_o\ & ( \fsm|intcount\(0) & ( !\fsm|intcount[1]~6_combout\ $ (\fsm|intcount[3]~1_combout\) ) ) ) # ( !\direction~input_o\ & ( \fsm|intcount\(0) & ( !\fsm|intcount[1]~6_combout\ $ 
-- (!\fsm|intcount[3]~1_combout\) ) ) ) # ( \direction~input_o\ & ( !\fsm|intcount\(0) & ( !\fsm|intcount[3]~1_combout\ $ (((!\fsm|intcount[1]~6_combout\) # ((\fsm|intcount[2]~4_combout\ & \fsm|intcount[3]~2_combout\)))) ) ) ) # ( !\direction~input_o\ & ( 
-- !\fsm|intcount\(0) & ( !\fsm|intcount[1]~6_combout\ $ (\fsm|intcount[3]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101010110100100101101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_intcount[1]~6_combout\,
	datab => \fsm|ALT_INV_intcount[2]~4_combout\,
	datac => \fsm|ALT_INV_intcount[3]~1_combout\,
	datad => \fsm|ALT_INV_intcount[3]~2_combout\,
	datae => \ALT_INV_direction~input_o\,
	dataf => \fsm|ALT_INV_intcount\(0),
	combout => \fsm|intcount[1]~7_combout\);

-- Location: FF_X40_Y2_N29
\fsm|intcount[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \fsm|intcount[1]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|intcount[1]~_emulated_q\);

-- Location: LABCELL_X40_Y2_N9
\fsm|intcount[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|intcount[1]~6_combout\ = ( \fsm|intcount[1]~_emulated_q\ & ( \reset~input_o\ & ( !\fsm|intcount[3]~1_combout\ ) ) ) # ( !\fsm|intcount[1]~_emulated_q\ & ( \reset~input_o\ & ( \fsm|intcount[3]~1_combout\ ) ) ) # ( \fsm|intcount[1]~_emulated_q\ & ( 
-- !\reset~input_o\ & ( !\direction~input_o\ ) ) ) # ( !\fsm|intcount[1]~_emulated_q\ & ( !\reset~input_o\ & ( !\direction~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_direction~input_o\,
	datad => \fsm|ALT_INV_intcount[3]~1_combout\,
	datae => \fsm|ALT_INV_intcount[1]~_emulated_q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \fsm|intcount[1]~6_combout\);

-- Location: LABCELL_X40_Y2_N30
\g05_7_segment_decoder0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \g05_7_segment_decoder0|Mux6~0_combout\ = ( \fsm|intcount[3]~2_combout\ & ( \fsm|intcount\(0) & ( (\fsm|intcount[1]~6_combout\ & !\fsm|intcount[2]~4_combout\) ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( \fsm|intcount\(0) & ( (\fsm|intcount[1]~6_combout\ & 
-- \fsm|intcount[2]~4_combout\) ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( !\fsm|intcount\(0) & ( !\fsm|intcount[2]~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_intcount[1]~6_combout\,
	datac => \fsm|ALT_INV_intcount[2]~4_combout\,
	datae => \fsm|ALT_INV_intcount[3]~2_combout\,
	dataf => \fsm|ALT_INV_intcount\(0),
	combout => \g05_7_segment_decoder0|Mux6~0_combout\);

-- Location: LABCELL_X37_Y2_N21
\fsm|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux0~0_combout\ = ( \fsm|intcount[3]~2_combout\ & ( \fsm|intcount\(0) & ( (!\fsm|intcount[2]~4_combout\) # (!\fsm|intcount[1]~6_combout\) ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( \fsm|intcount\(0) & ( \fsm|intcount[1]~6_combout\ ) ) ) # ( 
-- \fsm|intcount[3]~2_combout\ & ( !\fsm|intcount\(0) & ( \fsm|intcount[2]~4_combout\ ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( !\fsm|intcount\(0) & ( (\fsm|intcount[2]~4_combout\ & \fsm|intcount[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010101010100001111000011111111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_intcount[2]~4_combout\,
	datac => \fsm|ALT_INV_intcount[1]~6_combout\,
	datae => \fsm|ALT_INV_intcount[3]~2_combout\,
	dataf => \fsm|ALT_INV_intcount\(0),
	combout => \fsm|Mux0~0_combout\);

-- Location: LABCELL_X37_Y2_N33
\fsm|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux3~0_combout\ = ( \fsm|intcount[3]~2_combout\ & ( \fsm|intcount\(0) & ( (!\fsm|intcount[2]~4_combout\) # (\fsm|intcount[1]~6_combout\) ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( \fsm|intcount\(0) & ( (!\fsm|intcount[2]~4_combout\) # 
-- (!\fsm|intcount[1]~6_combout\) ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( !\fsm|intcount\(0) & ( \fsm|intcount[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111010111110101010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_intcount[2]~4_combout\,
	datac => \fsm|ALT_INV_intcount[1]~6_combout\,
	datae => \fsm|ALT_INV_intcount[3]~2_combout\,
	dataf => \fsm|ALT_INV_intcount\(0),
	combout => \fsm|Mux3~0_combout\);

-- Location: LABCELL_X37_Y2_N3
\fsm|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux2~0_combout\ = ( \fsm|intcount[3]~2_combout\ & ( \fsm|intcount\(0) & ( !\fsm|intcount[2]~4_combout\ ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( \fsm|intcount\(0) & ( (!\fsm|intcount[1]~6_combout\) # (\fsm|intcount[2]~4_combout\) ) ) ) # ( 
-- \fsm|intcount[3]~2_combout\ & ( !\fsm|intcount\(0) & ( !\fsm|intcount[2]~4_combout\ $ (!\fsm|intcount[1]~6_combout\) ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( !\fsm|intcount\(0) & ( (\fsm|intcount[2]~4_combout\ & !\fsm|intcount[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010110100101101011110101111101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_intcount[2]~4_combout\,
	datac => \fsm|ALT_INV_intcount[1]~6_combout\,
	datae => \fsm|ALT_INV_intcount[3]~2_combout\,
	dataf => \fsm|ALT_INV_intcount\(0),
	combout => \fsm|Mux2~0_combout\);

-- Location: LABCELL_X37_Y2_N24
\fsm|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux1~0_combout\ = ( \fsm|intcount[3]~2_combout\ & ( \fsm|intcount\(0) & ( !\fsm|intcount[1]~6_combout\ $ (!\fsm|intcount[2]~4_combout\) ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( \fsm|intcount\(0) & ( (!\fsm|intcount[1]~6_combout\ & 
-- \fsm|intcount[2]~4_combout\) ) ) ) # ( \fsm|intcount[3]~2_combout\ & ( !\fsm|intcount\(0) & ( (!\fsm|intcount[1]~6_combout\) # (!\fsm|intcount[2]~4_combout\) ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( !\fsm|intcount\(0) & ( \fsm|intcount[1]~6_combout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111001111110000001100000011000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_intcount[1]~6_combout\,
	datac => \fsm|ALT_INV_intcount[2]~4_combout\,
	datae => \fsm|ALT_INV_intcount[3]~2_combout\,
	dataf => \fsm|ALT_INV_intcount\(0),
	combout => \fsm|Mux1~0_combout\);

-- Location: LABCELL_X37_Y2_N15
\g05_7_segment_decoder0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \g05_7_segment_decoder0|Mux5~0_combout\ = ( \fsm|Mux2~0_combout\ & ( \fsm|Mux1~0_combout\ & ( !\fsm|Mux0~0_combout\ $ (!\fsm|Mux3~0_combout\) ) ) ) # ( !\fsm|Mux2~0_combout\ & ( \fsm|Mux1~0_combout\ & ( (!\fsm|Mux0~0_combout\ & !\fsm|Mux3~0_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Mux0~0_combout\,
	datad => \fsm|ALT_INV_Mux3~0_combout\,
	datae => \fsm|ALT_INV_Mux2~0_combout\,
	dataf => \fsm|ALT_INV_Mux1~0_combout\,
	combout => \g05_7_segment_decoder0|Mux5~0_combout\);

-- Location: LABCELL_X37_Y2_N54
\g05_7_segment_decoder0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \g05_7_segment_decoder0|Mux4~0_combout\ = ( !\fsm|Mux2~0_combout\ & ( \fsm|Mux1~0_combout\ & ( (\fsm|Mux0~0_combout\ & \fsm|Mux3~0_combout\) ) ) ) # ( \fsm|Mux2~0_combout\ & ( !\fsm|Mux1~0_combout\ & ( (!\fsm|Mux0~0_combout\ & \fsm|Mux3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Mux0~0_combout\,
	datac => \fsm|ALT_INV_Mux3~0_combout\,
	datae => \fsm|ALT_INV_Mux2~0_combout\,
	dataf => \fsm|ALT_INV_Mux1~0_combout\,
	combout => \g05_7_segment_decoder0|Mux4~0_combout\);

-- Location: LABCELL_X40_Y2_N51
\g05_7_segment_decoder0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \g05_7_segment_decoder0|Mux3~0_combout\ = ( \fsm|intcount[3]~2_combout\ & ( (\fsm|intcount[1]~6_combout\ & !\fsm|intcount[2]~4_combout\) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( (!\fsm|intcount\(0) & ((!\fsm|intcount[2]~4_combout\))) # (\fsm|intcount\(0) 
-- & (\fsm|intcount[1]~6_combout\ & \fsm|intcount[2]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000101101010100000010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_intcount\(0),
	datac => \fsm|ALT_INV_intcount[1]~6_combout\,
	datad => \fsm|ALT_INV_intcount[2]~4_combout\,
	dataf => \fsm|ALT_INV_intcount[3]~2_combout\,
	combout => \g05_7_segment_decoder0|Mux3~0_combout\);

-- Location: LABCELL_X37_Y2_N39
\g05_7_segment_decoder0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \g05_7_segment_decoder0|Mux2~0_combout\ = ( \fsm|Mux2~0_combout\ & ( \fsm|Mux1~0_combout\ & ( (!\fsm|Mux3~0_combout\) # (\fsm|Mux0~0_combout\) ) ) ) # ( !\fsm|Mux2~0_combout\ & ( \fsm|Mux1~0_combout\ & ( (!\fsm|Mux0~0_combout\) # (!\fsm|Mux3~0_combout\) ) 
-- ) ) # ( \fsm|Mux2~0_combout\ & ( !\fsm|Mux1~0_combout\ & ( !\fsm|Mux3~0_combout\ ) ) ) # ( !\fsm|Mux2~0_combout\ & ( !\fsm|Mux1~0_combout\ & ( !\fsm|Mux3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111101010101111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Mux0~0_combout\,
	datad => \fsm|ALT_INV_Mux3~0_combout\,
	datae => \fsm|ALT_INV_Mux2~0_combout\,
	dataf => \fsm|ALT_INV_Mux1~0_combout\,
	combout => \g05_7_segment_decoder0|Mux2~0_combout\);

-- Location: LABCELL_X40_Y2_N42
\g05_7_segment_decoder0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \g05_7_segment_decoder0|Mux1~0_combout\ = ( \fsm|intcount\(0) & ( (!\fsm|intcount[2]~4_combout\ & (!\fsm|intcount[1]~6_combout\ & !\fsm|intcount[3]~2_combout\)) # (\fsm|intcount[2]~4_combout\ & (!\fsm|intcount[1]~6_combout\ $ 
-- (!\fsm|intcount[3]~2_combout\))) ) ) # ( !\fsm|intcount\(0) & ( !\fsm|intcount[3]~2_combout\ $ (((!\fsm|intcount[2]~4_combout\ & \fsm|intcount[1]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100001100111100110000110011000011001100001100001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_intcount[2]~4_combout\,
	datac => \fsm|ALT_INV_intcount[1]~6_combout\,
	datad => \fsm|ALT_INV_intcount[3]~2_combout\,
	dataf => \fsm|ALT_INV_intcount\(0),
	combout => \g05_7_segment_decoder0|Mux1~0_combout\);

-- Location: LABCELL_X40_Y2_N15
\g05_7_segment_decoder0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \g05_7_segment_decoder0|Mux0~0_combout\ = ( \fsm|intcount[3]~2_combout\ & ( \fsm|intcount\(0) & ( !\fsm|intcount[2]~4_combout\ $ (!\fsm|intcount[1]~6_combout\) ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( \fsm|intcount\(0) & ( (!\fsm|intcount[2]~4_combout\) 
-- # (!\fsm|intcount[1]~6_combout\) ) ) ) # ( \fsm|intcount[3]~2_combout\ & ( !\fsm|intcount\(0) & ( (!\fsm|intcount[1]~6_combout\) # (\fsm|intcount[2]~4_combout\) ) ) ) # ( !\fsm|intcount[3]~2_combout\ & ( !\fsm|intcount\(0) & ( 
-- (\fsm|intcount[1]~6_combout\) # (\fsm|intcount[2]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111111111110101010111111111101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_intcount[2]~4_combout\,
	datad => \fsm|ALT_INV_intcount[1]~6_combout\,
	datae => \fsm|ALT_INV_intcount[3]~2_combout\,
	dataf => \fsm|ALT_INV_intcount\(0),
	combout => \g05_7_segment_decoder0|Mux0~0_combout\);

-- Location: LABCELL_X37_Y2_N42
\bcd_convert|add~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd_convert|add~0_combout\ = ( \fsm|Mux0~0_combout\ & ( \fsm|Mux1~0_combout\ ) ) # ( \fsm|Mux0~0_combout\ & ( !\fsm|Mux1~0_combout\ & ( \fsm|Mux2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Mux2~0_combout\,
	datae => \fsm|ALT_INV_Mux0~0_combout\,
	dataf => \fsm|ALT_INV_Mux1~0_combout\,
	combout => \bcd_convert|add~0_combout\);

-- Location: LABCELL_X50_Y32_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


