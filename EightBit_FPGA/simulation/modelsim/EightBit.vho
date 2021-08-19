-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Standard Edition"

-- DATE "06/30/2021 20:28:16"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	EightBit IS
    PORT (
	CLK_50M : IN std_logic;
	CLR : IN std_logic;
	rst : IN std_logic;
	clk_out : BUFFER std_logic;
	r_out : BUFFER std_logic_vector(7 DOWNTO 0);
	d_out : BUFFER std_logic_vector(7 DOWNTO 0);
	cmd_LD1 : BUFFER std_logic;
	cmd_add1 : BUFFER std_logic;
	cmd_sub1 : BUFFER std_logic;
	cmd_and1 : BUFFER std_logic;
	cmd_shl1 : BUFFER std_logic;
	HALT1 : BUFFER std_logic;
	OUTPUT : BUFFER std_logic_vector(7 DOWNTO 0);
	sel : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END EightBit;

-- Design Ports Information
-- clk_out	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[0]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[2]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[3]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[4]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[5]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[6]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[7]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[1]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[3]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[4]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[5]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[6]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[7]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_LD1	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_add1	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_sub1	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_and1	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_shl1	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HALT1	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50M	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EightBit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50M : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_r_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cmd_LD1 : std_logic;
SIGNAL ww_cmd_add1 : std_logic;
SIGNAL ww_cmd_sub1 : std_logic;
SIGNAL ww_cmd_and1 : std_logic;
SIGNAL ww_cmd_shl1 : std_logic;
SIGNAL ww_HALT1 : std_logic;
SIGNAL ww_OUTPUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL \M8|HALT~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M8|Mux6~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M3|acc1[7]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M0|CLK_TEMP~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \r_out[0]~output_o\ : std_logic;
SIGNAL \r_out[1]~output_o\ : std_logic;
SIGNAL \r_out[2]~output_o\ : std_logic;
SIGNAL \r_out[3]~output_o\ : std_logic;
SIGNAL \r_out[4]~output_o\ : std_logic;
SIGNAL \r_out[5]~output_o\ : std_logic;
SIGNAL \r_out[6]~output_o\ : std_logic;
SIGNAL \r_out[7]~output_o\ : std_logic;
SIGNAL \d_out[0]~output_o\ : std_logic;
SIGNAL \d_out[1]~output_o\ : std_logic;
SIGNAL \d_out[2]~output_o\ : std_logic;
SIGNAL \d_out[3]~output_o\ : std_logic;
SIGNAL \d_out[4]~output_o\ : std_logic;
SIGNAL \d_out[5]~output_o\ : std_logic;
SIGNAL \d_out[6]~output_o\ : std_logic;
SIGNAL \d_out[7]~output_o\ : std_logic;
SIGNAL \cmd_LD1~output_o\ : std_logic;
SIGNAL \cmd_add1~output_o\ : std_logic;
SIGNAL \cmd_sub1~output_o\ : std_logic;
SIGNAL \cmd_and1~output_o\ : std_logic;
SIGNAL \cmd_shl1~output_o\ : std_logic;
SIGNAL \HALT1~output_o\ : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[4]~output_o\ : std_logic;
SIGNAL \OUTPUT[5]~output_o\ : std_logic;
SIGNAL \OUTPUT[6]~output_o\ : std_logic;
SIGNAL \OUTPUT[7]~output_o\ : std_logic;
SIGNAL \sel[0]~output_o\ : std_logic;
SIGNAL \sel[1]~output_o\ : std_logic;
SIGNAL \sel[2]~output_o\ : std_logic;
SIGNAL \sel[3]~output_o\ : std_logic;
SIGNAL \CLK_50M~input_o\ : std_logic;
SIGNAL \CLK_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \M0|COUNTER[0]~12_combout\ : std_logic;
SIGNAL \M0|COUNTER[0]~feeder_combout\ : std_logic;
SIGNAL \M0|COUNTER[2]~7\ : std_logic;
SIGNAL \M0|COUNTER[3]~8_combout\ : std_logic;
SIGNAL \M0|COUNTER[3]~9\ : std_logic;
SIGNAL \M0|COUNTER[4]~10_combout\ : std_logic;
SIGNAL \M0|Equal0~1_combout\ : std_logic;
SIGNAL \M0|COUNTER[1]~4_combout\ : std_logic;
SIGNAL \M0|COUNTER[1]~5\ : std_logic;
SIGNAL \M0|COUNTER[2]~6_combout\ : std_logic;
SIGNAL \M0|Equal0~0_combout\ : std_logic;
SIGNAL \M0|CLK_TEMP~0_combout\ : std_logic;
SIGNAL \M0|CLK_TEMP~0clkctrl_outclk\ : std_logic;
SIGNAL \M6|QOUT[3]~4_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \CLR~inputclkctrl_outclk\ : std_logic;
SIGNAL \M8|HALT~clkctrl_outclk\ : std_logic;
SIGNAL \M1|TEMP[5]~feeder_combout\ : std_logic;
SIGNAL \M1|TEMP[7]~feeder_combout\ : std_logic;
SIGNAL \M1|TEMP[0]~1_combout\ : std_logic;
SIGNAL \M1|TEMP[1]~0_combout\ : std_logic;
SIGNAL \M1|TEMP[2]~feeder_combout\ : std_logic;
SIGNAL \M2|IIR~combout\ : std_logic;
SIGNAL \M9|Mux2~0_combout\ : std_logic;
SIGNAL \M9|Mux1~0_combout\ : std_logic;
SIGNAL \M8|REGQ[7]~feeder_combout\ : std_logic;
SIGNAL \M8|Mux6~0_combout\ : std_logic;
SIGNAL \M8|Mux6~1_combout\ : std_logic;
SIGNAL \M8|Mux6~1clkctrl_outclk\ : std_logic;
SIGNAL \M8|Mux1~0_combout\ : std_logic;
SIGNAL \M8|cmd_shl~combout\ : std_logic;
SIGNAL \M8|Mux4~0_combout\ : std_logic;
SIGNAL \M8|cmd_add~combout\ : std_logic;
SIGNAL \M8|Mux3~0_combout\ : std_logic;
SIGNAL \M8|cmd_sub~combout\ : std_logic;
SIGNAL \M2|IA~0_combout\ : std_logic;
SIGNAL \M2|IDR~0_combout\ : std_logic;
SIGNAL \M2|IDR~combout\ : std_logic;
SIGNAL \M8|Mux2~0_combout\ : std_logic;
SIGNAL \M8|cmd_and~combout\ : std_logic;
SIGNAL \M2|IPC~3_combout\ : std_logic;
SIGNAL \M2|IPC~4_combout\ : std_logic;
SIGNAL \M6|QOUT[0]~3_combout\ : std_logic;
SIGNAL \M7|ADDR_OUT[0]~feeder_combout\ : std_logic;
SIGNAL \M9|Mux3~0_combout\ : std_logic;
SIGNAL \M8|Mux5~0_combout\ : std_logic;
SIGNAL \M8|cmd_ld~combout\ : std_logic;
SIGNAL \M2|IMAR~0_combout\ : std_logic;
SIGNAL \M2|IMAR~combout\ : std_logic;
SIGNAL \M9|Mux4~0_combout\ : std_logic;
SIGNAL \M8|REGQ[1]~feeder_combout\ : std_logic;
SIGNAL \M8|Mux0~0_combout\ : std_logic;
SIGNAL \M8|HALT~combout\ : std_logic;
SIGNAL \M6|QOUT[1]~0_combout\ : std_logic;
SIGNAL \M6|QOUT[1]~1_combout\ : std_logic;
SIGNAL \M6|QOUT[2]~2_combout\ : std_logic;
SIGNAL \M9|Mux5~0_combout\ : std_logic;
SIGNAL \M2|IA~1_combout\ : std_logic;
SIGNAL \M2|IA~combout\ : std_logic;
SIGNAL \D2|scan:count[22]~q\ : std_logic;
SIGNAL \D2|Add0~0_combout\ : std_logic;
SIGNAL \D2|scan:count[0]~q\ : std_logic;
SIGNAL \D2|Add0~1\ : std_logic;
SIGNAL \D2|Add0~2_combout\ : std_logic;
SIGNAL \D2|scan:count[1]~q\ : std_logic;
SIGNAL \D2|Add0~3\ : std_logic;
SIGNAL \D2|Add0~4_combout\ : std_logic;
SIGNAL \D2|scan:count[2]~q\ : std_logic;
SIGNAL \D2|Add0~5\ : std_logic;
SIGNAL \D2|Add0~6_combout\ : std_logic;
SIGNAL \D2|scan:count[3]~q\ : std_logic;
SIGNAL \D2|Add0~7\ : std_logic;
SIGNAL \D2|Add0~8_combout\ : std_logic;
SIGNAL \D2|Equal0~1_combout\ : std_logic;
SIGNAL \D2|Equal0~0_combout\ : std_logic;
SIGNAL \D2|Equal0~2_combout\ : std_logic;
SIGNAL \D2|Equal0~3_combout\ : std_logic;
SIGNAL \D2|Equal0~4_combout\ : std_logic;
SIGNAL \D2|scan:count[28]~q\ : std_logic;
SIGNAL \D2|Add0~45\ : std_logic;
SIGNAL \D2|Add0~46_combout\ : std_logic;
SIGNAL \D2|scan:count[23]~q\ : std_logic;
SIGNAL \D2|Add0~47\ : std_logic;
SIGNAL \D2|Add0~48_combout\ : std_logic;
SIGNAL \D2|scan:count[24]~q\ : std_logic;
SIGNAL \D2|Add0~49\ : std_logic;
SIGNAL \D2|Add0~50_combout\ : std_logic;
SIGNAL \D2|scan:count[25]~q\ : std_logic;
SIGNAL \D2|Add0~51\ : std_logic;
SIGNAL \D2|Add0~52_combout\ : std_logic;
SIGNAL \D2|scan:count[26]~q\ : std_logic;
SIGNAL \D2|Add0~53\ : std_logic;
SIGNAL \D2|Add0~54_combout\ : std_logic;
SIGNAL \D2|scan:count[27]~q\ : std_logic;
SIGNAL \D2|Add0~55\ : std_logic;
SIGNAL \D2|Add0~56_combout\ : std_logic;
SIGNAL \D2|scan:count[29]~q\ : std_logic;
SIGNAL \D2|Add0~57\ : std_logic;
SIGNAL \D2|Add0~58_combout\ : std_logic;
SIGNAL \D2|scan:count[30]~q\ : std_logic;
SIGNAL \D2|Add0~59\ : std_logic;
SIGNAL \D2|Add0~60_combout\ : std_logic;
SIGNAL \D2|Equal0~8_combout\ : std_logic;
SIGNAL \D2|Equal0~9_combout\ : std_logic;
SIGNAL \D2|count~0_combout\ : std_logic;
SIGNAL \D2|scan:count[4]~q\ : std_logic;
SIGNAL \D2|Add0~9\ : std_logic;
SIGNAL \D2|Add0~10_combout\ : std_logic;
SIGNAL \D2|scan:count[5]~q\ : std_logic;
SIGNAL \D2|Add0~11\ : std_logic;
SIGNAL \D2|Add0~12_combout\ : std_logic;
SIGNAL \D2|scan:count[6]~q\ : std_logic;
SIGNAL \D2|Add0~13\ : std_logic;
SIGNAL \D2|Add0~14_combout\ : std_logic;
SIGNAL \D2|scan:count[7]~q\ : std_logic;
SIGNAL \D2|Add0~15\ : std_logic;
SIGNAL \D2|Add0~16_combout\ : std_logic;
SIGNAL \D2|count~1_combout\ : std_logic;
SIGNAL \D2|count~2_combout\ : std_logic;
SIGNAL \D2|scan:count[8]~q\ : std_logic;
SIGNAL \D2|Add0~17\ : std_logic;
SIGNAL \D2|Add0~18_combout\ : std_logic;
SIGNAL \D2|count~3_combout\ : std_logic;
SIGNAL \D2|scan:count[9]~q\ : std_logic;
SIGNAL \D2|Add0~19\ : std_logic;
SIGNAL \D2|Add0~20_combout\ : std_logic;
SIGNAL \D2|count~4_combout\ : std_logic;
SIGNAL \D2|scan:count[10]~q\ : std_logic;
SIGNAL \D2|Add0~21\ : std_logic;
SIGNAL \D2|Add0~22_combout\ : std_logic;
SIGNAL \D2|scan:count[11]~q\ : std_logic;
SIGNAL \D2|Add0~23\ : std_logic;
SIGNAL \D2|Add0~24_combout\ : std_logic;
SIGNAL \D2|scan:count[12]~q\ : std_logic;
SIGNAL \D2|Add0~25\ : std_logic;
SIGNAL \D2|Add0~26_combout\ : std_logic;
SIGNAL \D2|count~5_combout\ : std_logic;
SIGNAL \D2|scan:count[13]~q\ : std_logic;
SIGNAL \D2|Add0~27\ : std_logic;
SIGNAL \D2|Add0~28_combout\ : std_logic;
SIGNAL \D2|scan:count[14]~q\ : std_logic;
SIGNAL \D2|Add0~29\ : std_logic;
SIGNAL \D2|Add0~30_combout\ : std_logic;
SIGNAL \D2|scan:count[15]~q\ : std_logic;
SIGNAL \D2|Add0~31\ : std_logic;
SIGNAL \D2|Add0~32_combout\ : std_logic;
SIGNAL \D2|scan:count[16]~q\ : std_logic;
SIGNAL \D2|Add0~33\ : std_logic;
SIGNAL \D2|Add0~34_combout\ : std_logic;
SIGNAL \D2|scan:count[17]~q\ : std_logic;
SIGNAL \D2|Add0~35\ : std_logic;
SIGNAL \D2|Add0~36_combout\ : std_logic;
SIGNAL \D2|scan:count[18]~q\ : std_logic;
SIGNAL \D2|Add0~37\ : std_logic;
SIGNAL \D2|Add0~38_combout\ : std_logic;
SIGNAL \D2|scan:count[19]~q\ : std_logic;
SIGNAL \D2|Add0~39\ : std_logic;
SIGNAL \D2|Add0~40_combout\ : std_logic;
SIGNAL \D2|scan:count[20]~q\ : std_logic;
SIGNAL \D2|Add0~41\ : std_logic;
SIGNAL \D2|Add0~42_combout\ : std_logic;
SIGNAL \D2|scan:count[21]~q\ : std_logic;
SIGNAL \D2|Add0~43\ : std_logic;
SIGNAL \D2|Add0~44_combout\ : std_logic;
SIGNAL \D2|Equal0~5_combout\ : std_logic;
SIGNAL \D2|Equal0~6_combout\ : std_logic;
SIGNAL \D2|Equal0~7_combout\ : std_logic;
SIGNAL \D2|sel[0]~0_combout\ : std_logic;
SIGNAL \M2|IPC~0_combout\ : std_logic;
SIGNAL \M2|ALU_AND~combout\ : std_logic;
SIGNAL \M2|IPC~2_combout\ : std_logic;
SIGNAL \M2|ALU_SUB~combout\ : std_logic;
SIGNAL \M2|IPC~1_combout\ : std_logic;
SIGNAL \M2|ALU_ADD~combout\ : std_logic;
SIGNAL \M3|Add0~27_combout\ : std_logic;
SIGNAL \M3|Add0~28_combout\ : std_logic;
SIGNAL \M3|Add0~8_combout\ : std_logic;
SIGNAL \M3|Add0~9_combout\ : std_logic;
SIGNAL \M3|Add0~10_combout\ : std_logic;
SIGNAL \M3|Add0~11_combout\ : std_logic;
SIGNAL \M3|Add0~13_cout\ : std_logic;
SIGNAL \M3|Add0~15\ : std_logic;
SIGNAL \M3|Add0~17\ : std_logic;
SIGNAL \M3|Add0~19\ : std_logic;
SIGNAL \M3|Add0~21\ : std_logic;
SIGNAL \M3|Add0~23\ : std_logic;
SIGNAL \M3|Add0~26\ : std_logic;
SIGNAL \M3|Add0~29_combout\ : std_logic;
SIGNAL \M3|acc1[0]~0_combout\ : std_logic;
SIGNAL \M3|Add0~31_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \M2|ALU_SHL~0_combout\ : std_logic;
SIGNAL \M2|ALU_SHL~combout\ : std_logic;
SIGNAL \M3|acc1[7]~1_combout\ : std_logic;
SIGNAL \M3|acc1[7]~1clkctrl_outclk\ : std_logic;
SIGNAL \M3|Add0~32_combout\ : std_logic;
SIGNAL \M3|Add0~33_combout\ : std_logic;
SIGNAL \M3|Add0~30\ : std_logic;
SIGNAL \M3|Add0~34_combout\ : std_logic;
SIGNAL \M3|Add0~43_combout\ : std_logic;
SIGNAL \M3|Add0~25_combout\ : std_logic;
SIGNAL \M3|Add0~42_combout\ : std_logic;
SIGNAL \M3|Add0~22_combout\ : std_logic;
SIGNAL \M3|Add0~24_combout\ : std_logic;
SIGNAL \D1|Mux13~0_combout\ : std_logic;
SIGNAL \M3|Add0~20_combout\ : std_logic;
SIGNAL \M3|Add0~41_combout\ : std_logic;
SIGNAL \M3|Add0~45_combout\ : std_logic;
SIGNAL \M3|Add0~38_combout\ : std_logic;
SIGNAL \M3|Add0~16_combout\ : std_logic;
SIGNAL \M3|Add0~44_combout\ : std_logic;
SIGNAL \M3|Add0~18_combout\ : std_logic;
SIGNAL \M3|Add0~39_combout\ : std_logic;
SIGNAL \M3|Add0~40_combout\ : std_logic;
SIGNAL \M3|Add0~14_combout\ : std_logic;
SIGNAL \M3|Add0~36_combout\ : std_logic;
SIGNAL \M3|Add0~37_combout\ : std_logic;
SIGNAL \D1|Mux6~0_combout\ : std_logic;
SIGNAL \D2|Mux0~0_combout\ : std_logic;
SIGNAL \D1|Mux12~0_combout\ : std_logic;
SIGNAL \D1|Mux5~0_combout\ : std_logic;
SIGNAL \D2|Mux3~0_combout\ : std_logic;
SIGNAL \D1|Mux4~0_combout\ : std_logic;
SIGNAL \D1|Mux11~0_combout\ : std_logic;
SIGNAL \D2|Mux4~0_combout\ : std_logic;
SIGNAL \D1|Mux10~0_combout\ : std_logic;
SIGNAL \D1|Mux3~0_combout\ : std_logic;
SIGNAL \D2|Mux5~0_combout\ : std_logic;
SIGNAL \D1|Mux2~0_combout\ : std_logic;
SIGNAL \D1|Mux9~0_combout\ : std_logic;
SIGNAL \D2|Mux6~0_combout\ : std_logic;
SIGNAL \D1|Mux1~0_combout\ : std_logic;
SIGNAL \D1|Mux8~0_combout\ : std_logic;
SIGNAL \D2|Mux7~0_combout\ : std_logic;
SIGNAL \D1|Mux0~0_combout\ : std_logic;
SIGNAL \D1|Mux7~0_combout\ : std_logic;
SIGNAL \D2|Mux8~0_combout\ : std_logic;
SIGNAL \M8|REGQ\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \M0|COUNTER\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \M4|REGQ\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \M5|REGQ\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \D2|sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \M3|acc1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \M7|ADDR_OUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M1|TEMP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \M6|QOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M2|ALT_INV_IIR~combout\ : std_logic;
SIGNAL \M2|ALT_INV_IMAR~combout\ : std_logic;
SIGNAL \M2|ALT_INV_IA~combout\ : std_logic;
SIGNAL \M0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \D2|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \D2|ALT_INV_sel\ : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK_50M <= CLK_50M;
ww_CLR <= CLR;
ww_rst <= rst;
clk_out <= ww_clk_out;
r_out <= ww_r_out;
d_out <= ww_d_out;
cmd_LD1 <= ww_cmd_LD1;
cmd_add1 <= ww_cmd_add1;
cmd_sub1 <= ww_cmd_sub1;
cmd_and1 <= ww_cmd_and1;
cmd_shl1 <= ww_cmd_shl1;
HALT1 <= ww_HALT1;
OUTPUT <= ww_OUTPUT;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\M8|HALT~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \M8|HALT~combout\);

\CLR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLR~input_o\);

\M8|Mux6~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \M8|Mux6~1_combout\);

\M3|acc1[7]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \M3|acc1[7]~1_combout\);

\CLK_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50M~input_o\);

\M0|CLK_TEMP~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \M0|CLK_TEMP~0_combout\);
\M2|ALT_INV_IIR~combout\ <= NOT \M2|IIR~combout\;
\M2|ALT_INV_IMAR~combout\ <= NOT \M2|IMAR~combout\;
\M2|ALT_INV_IA~combout\ <= NOT \M2|IA~combout\;
\M0|ALT_INV_Equal0~1_combout\ <= NOT \M0|Equal0~1_combout\;
\D2|ALT_INV_Mux8~0_combout\ <= NOT \D2|Mux8~0_combout\;
\D2|ALT_INV_sel\(0) <= NOT \D2|sel\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y7_N2
\clk_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M0|CLK_TEMP~0_combout\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\r_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M4|REGQ\(0),
	devoe => ww_devoe,
	o => \r_out[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\r_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M4|REGQ\(1),
	devoe => ww_devoe,
	o => \r_out[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\r_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M4|REGQ\(2),
	devoe => ww_devoe,
	o => \r_out[2]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\r_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M4|REGQ\(3),
	devoe => ww_devoe,
	o => \r_out[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\r_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \r_out[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\r_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \r_out[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\r_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M4|REGQ\(6),
	devoe => ww_devoe,
	o => \r_out[6]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\r_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M4|REGQ\(7),
	devoe => ww_devoe,
	o => \r_out[7]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\d_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M5|REGQ\(0),
	devoe => ww_devoe,
	o => \d_out[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\d_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M5|REGQ\(1),
	devoe => ww_devoe,
	o => \d_out[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\d_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M5|REGQ\(2),
	devoe => ww_devoe,
	o => \d_out[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\d_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M5|REGQ\(3),
	devoe => ww_devoe,
	o => \d_out[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\d_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d_out[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\d_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d_out[5]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\d_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M5|REGQ\(6),
	devoe => ww_devoe,
	o => \d_out[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\d_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M5|REGQ\(7),
	devoe => ww_devoe,
	o => \d_out[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\cmd_LD1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|cmd_ld~combout\,
	devoe => ww_devoe,
	o => \cmd_LD1~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\cmd_add1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|cmd_add~combout\,
	devoe => ww_devoe,
	o => \cmd_add1~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\cmd_sub1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|cmd_sub~combout\,
	devoe => ww_devoe,
	o => \cmd_sub1~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\cmd_and1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|cmd_and~combout\,
	devoe => ww_devoe,
	o => \cmd_and1~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\cmd_shl1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|cmd_shl~combout\,
	devoe => ww_devoe,
	o => \cmd_shl1~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\HALT1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|HALT~combout\,
	devoe => ww_devoe,
	o => \HALT1~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\OUTPUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\OUTPUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\OUTPUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\OUTPUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\OUTPUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\OUTPUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\OUTPUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\OUTPUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OUTPUT[7]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\sel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sel[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\sel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sel[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\sel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|sel\(0),
	devoe => ww_devoe,
	o => \sel[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\sel[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|ALT_INV_sel\(0),
	devoe => ww_devoe,
	o => \sel[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK_50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50M,
	o => \CLK_50M~input_o\);

-- Location: CLKCTRL_G2
\CLK_50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X7_Y11_N24
\M0|COUNTER[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|COUNTER[0]~12_combout\ = !\M0|COUNTER\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M0|COUNTER\(0),
	combout => \M0|COUNTER[0]~12_combout\);

-- Location: LCCOMB_X7_Y11_N28
\M0|COUNTER[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|COUNTER[0]~feeder_combout\ = \M0|COUNTER[0]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M0|COUNTER[0]~12_combout\,
	combout => \M0|COUNTER[0]~feeder_combout\);

-- Location: LCCOMB_X7_Y11_N6
\M0|COUNTER[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|COUNTER[2]~6_combout\ = (\M0|COUNTER\(2) & (!\M0|COUNTER[1]~5\)) # (!\M0|COUNTER\(2) & ((\M0|COUNTER[1]~5\) # (GND)))
-- \M0|COUNTER[2]~7\ = CARRY((!\M0|COUNTER[1]~5\) # (!\M0|COUNTER\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M0|COUNTER\(2),
	datad => VCC,
	cin => \M0|COUNTER[1]~5\,
	combout => \M0|COUNTER[2]~6_combout\,
	cout => \M0|COUNTER[2]~7\);

-- Location: LCCOMB_X7_Y11_N8
\M0|COUNTER[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|COUNTER[3]~8_combout\ = (\M0|COUNTER\(3) & (\M0|COUNTER[2]~7\ $ (GND))) # (!\M0|COUNTER\(3) & (!\M0|COUNTER[2]~7\ & VCC))
-- \M0|COUNTER[3]~9\ = CARRY((\M0|COUNTER\(3) & !\M0|COUNTER[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M0|COUNTER\(3),
	datad => VCC,
	cin => \M0|COUNTER[2]~7\,
	combout => \M0|COUNTER[3]~8_combout\,
	cout => \M0|COUNTER[3]~9\);

-- Location: FF_X7_Y11_N9
\M0|COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~input_o\,
	d => \M0|COUNTER[3]~8_combout\,
	clrn => \M0|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M0|COUNTER\(3));

-- Location: LCCOMB_X7_Y11_N10
\M0|COUNTER[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|COUNTER[4]~10_combout\ = \M0|COUNTER\(4) $ (\M0|COUNTER[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M0|COUNTER\(4),
	cin => \M0|COUNTER[3]~9\,
	combout => \M0|COUNTER[4]~10_combout\);

-- Location: FF_X7_Y11_N11
\M0|COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~input_o\,
	d => \M0|COUNTER[4]~10_combout\,
	clrn => \M0|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M0|COUNTER\(4));

-- Location: LCCOMB_X7_Y11_N0
\M0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|Equal0~1_combout\ = (\M0|Equal0~0_combout\ & \M0|COUNTER\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M0|Equal0~0_combout\,
	datad => \M0|COUNTER\(4),
	combout => \M0|Equal0~1_combout\);

-- Location: FF_X7_Y11_N29
\M0|COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \M0|COUNTER[0]~feeder_combout\,
	clrn => \M0|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M0|COUNTER\(0));

-- Location: LCCOMB_X7_Y11_N4
\M0|COUNTER[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|COUNTER[1]~4_combout\ = (\M0|COUNTER\(0) & (\M0|COUNTER\(1) $ (VCC))) # (!\M0|COUNTER\(0) & (\M0|COUNTER\(1) & VCC))
-- \M0|COUNTER[1]~5\ = CARRY((\M0|COUNTER\(0) & \M0|COUNTER\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M0|COUNTER\(0),
	datab => \M0|COUNTER\(1),
	datad => VCC,
	combout => \M0|COUNTER[1]~4_combout\,
	cout => \M0|COUNTER[1]~5\);

-- Location: FF_X7_Y11_N5
\M0|COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~input_o\,
	d => \M0|COUNTER[1]~4_combout\,
	clrn => \M0|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M0|COUNTER\(1));

-- Location: FF_X7_Y11_N7
\M0|COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~input_o\,
	d => \M0|COUNTER[2]~6_combout\,
	clrn => \M0|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M0|COUNTER\(2));

-- Location: LCCOMB_X7_Y11_N30
\M0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|Equal0~0_combout\ = (!\M0|COUNTER\(2) & (\M0|COUNTER\(3) & (!\M0|COUNTER\(1) & \M0|COUNTER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M0|COUNTER\(2),
	datab => \M0|COUNTER\(3),
	datac => \M0|COUNTER\(1),
	datad => \M0|COUNTER\(0),
	combout => \M0|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y11_N26
\M0|CLK_TEMP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|CLK_TEMP~0_combout\ = \M0|CLK_TEMP~0_combout\ $ (((\M0|Equal0~0_combout\ & \M0|COUNTER\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M0|CLK_TEMP~0_combout\,
	datac => \M0|Equal0~0_combout\,
	datad => \M0|COUNTER\(4),
	combout => \M0|CLK_TEMP~0_combout\);

-- Location: CLKCTRL_G4
\M0|CLK_TEMP~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \M0|CLK_TEMP~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \M0|CLK_TEMP~0clkctrl_outclk\);

-- Location: LCCOMB_X28_Y6_N8
\M6|QOUT[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|QOUT[3]~4_combout\ = \M6|QOUT\(3) $ (((\M6|QOUT\(1) & (\M6|QOUT[1]~0_combout\ & \M6|QOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M6|QOUT\(1),
	datab => \M6|QOUT[1]~0_combout\,
	datac => \M6|QOUT\(3),
	datad => \M6|QOUT\(2),
	combout => \M6|QOUT[3]~4_combout\);

-- Location: IOIBUF_X0_Y11_N22
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: CLKCTRL_G3
\CLR~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLR~inputclkctrl_outclk\);

-- Location: FF_X28_Y6_N9
\M6|QOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M6|QOUT[3]~4_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M6|QOUT\(3));

-- Location: CLKCTRL_G8
\M8|HALT~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \M8|HALT~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \M8|HALT~clkctrl_outclk\);

-- Location: FF_X28_Y6_N25
\M1|TEMP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M1|TEMP\(2),
	clrn => \CLR~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|TEMP\(3));

-- Location: FF_X29_Y7_N17
\M1|TEMP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M1|TEMP\(3),
	clrn => \CLR~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|TEMP\(4));

-- Location: LCCOMB_X28_Y6_N12
\M1|TEMP[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M1|TEMP[5]~feeder_combout\ = \M1|TEMP\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1|TEMP\(4),
	combout => \M1|TEMP[5]~feeder_combout\);

-- Location: FF_X28_Y6_N13
\M1|TEMP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M1|TEMP[5]~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|TEMP\(5));

-- Location: FF_X29_Y7_N21
\M1|TEMP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M1|TEMP\(5),
	clrn => \CLR~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|TEMP\(6));

-- Location: LCCOMB_X28_Y7_N30
\M1|TEMP[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M1|TEMP[7]~feeder_combout\ = \M1|TEMP\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1|TEMP\(6),
	combout => \M1|TEMP[7]~feeder_combout\);

-- Location: FF_X28_Y7_N31
\M1|TEMP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M1|TEMP[7]~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|TEMP\(7));

-- Location: LCCOMB_X28_Y6_N20
\M1|TEMP[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M1|TEMP[0]~1_combout\ = !\M1|TEMP\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1|TEMP\(7),
	combout => \M1|TEMP[0]~1_combout\);

-- Location: FF_X28_Y6_N21
\M1|TEMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M1|TEMP[0]~1_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|TEMP\(0));

-- Location: LCCOMB_X29_Y7_N22
\M1|TEMP[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M1|TEMP[1]~0_combout\ = !\M1|TEMP\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1|TEMP\(0),
	combout => \M1|TEMP[1]~0_combout\);

-- Location: FF_X29_Y7_N23
\M1|TEMP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M1|TEMP[1]~0_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|TEMP\(1));

-- Location: LCCOMB_X28_Y6_N4
\M1|TEMP[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M1|TEMP[2]~feeder_combout\ = \M1|TEMP\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1|TEMP\(1),
	combout => \M1|TEMP[2]~feeder_combout\);

-- Location: FF_X28_Y6_N5
\M1|TEMP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M1|TEMP[2]~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|TEMP\(2));

-- Location: LCCOMB_X28_Y6_N6
\M2|IIR\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IIR~combout\ = (GLOBAL(\M8|HALT~clkctrl_outclk\) & (\M2|IIR~combout\)) # (!GLOBAL(\M8|HALT~clkctrl_outclk\) & ((!\M1|TEMP\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|IIR~combout\,
	datab => \M1|TEMP\(2),
	datad => \M8|HALT~clkctrl_outclk\,
	combout => \M2|IIR~combout\);

-- Location: FF_X29_Y6_N3
\M8|REGQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M5|REGQ\(0),
	sload => VCC,
	ena => \M2|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M8|REGQ\(0));

-- Location: FF_X28_Y6_N11
\M7|ADDR_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M6|QOUT\(1),
	sload => VCC,
	ena => \M2|ALT_INV_IMAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M7|ADDR_OUT\(1));

-- Location: LCCOMB_X29_Y7_N2
\M9|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux2~0_combout\ = (!\M7|ADDR_OUT\(2) & (\M7|ADDR_OUT\(1) & \M7|ADDR_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|ADDR_OUT\(2),
	datac => \M7|ADDR_OUT\(1),
	datad => \M7|ADDR_OUT\(0),
	combout => \M9|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y7_N4
\M9|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux1~0_combout\ = (\M7|ADDR_OUT\(3)) # (!\M7|ADDR_OUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|ADDR_OUT\(3),
	datad => \M7|ADDR_OUT\(0),
	combout => \M9|Mux1~0_combout\);

-- Location: FF_X29_Y7_N7
\M5|REGQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M9|Mux1~0_combout\,
	sload => VCC,
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(7));

-- Location: LCCOMB_X29_Y6_N6
\M8|REGQ[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|REGQ[7]~feeder_combout\ = \M5|REGQ\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M5|REGQ\(7),
	combout => \M8|REGQ[7]~feeder_combout\);

-- Location: FF_X29_Y6_N7
\M8|REGQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0_combout\,
	d => \M8|REGQ[7]~feeder_combout\,
	ena => \M2|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M8|REGQ\(7));

-- Location: FF_X29_Y7_N5
\M5|REGQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M9|Mux1~0_combout\,
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(6));

-- Location: FF_X29_Y6_N21
\M8|REGQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0_combout\,
	asdata => \M5|REGQ\(6),
	sload => VCC,
	ena => \M2|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M8|REGQ\(6));

-- Location: LCCOMB_X29_Y6_N20
\M8|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux6~0_combout\ = (\M8|REGQ\(6) & (!\M8|REGQ\(3) & ((!\M8|REGQ\(2)) # (!\M8|REGQ\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(1),
	datab => \M8|REGQ\(2),
	datac => \M8|REGQ\(6),
	datad => \M8|REGQ\(3),
	combout => \M8|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y6_N24
\M8|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux6~1_combout\ = (\M8|REGQ\(7) & \M8|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M8|REGQ\(7),
	datad => \M8|Mux6~0_combout\,
	combout => \M8|Mux6~1_combout\);

-- Location: CLKCTRL_G5
\M8|Mux6~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \M8|Mux6~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \M8|Mux6~1clkctrl_outclk\);

-- Location: LCCOMB_X29_Y6_N0
\M8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux1~0_combout\ = (!\M8|REGQ\(1) & (!\M8|REGQ\(3) & (\M8|REGQ\(2) & \M8|REGQ\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(1),
	datab => \M8|REGQ\(3),
	datac => \M8|REGQ\(2),
	datad => \M8|REGQ\(0),
	combout => \M8|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y7_N2
\M8|cmd_shl\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|cmd_shl~combout\ = (GLOBAL(\M8|Mux6~1clkctrl_outclk\) & ((\M8|Mux1~0_combout\))) # (!GLOBAL(\M8|Mux6~1clkctrl_outclk\) & (\M8|cmd_shl~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M8|cmd_shl~combout\,
	datac => \M8|Mux6~1clkctrl_outclk\,
	datad => \M8|Mux1~0_combout\,
	combout => \M8|cmd_shl~combout\);

-- Location: LCCOMB_X29_Y6_N24
\M8|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux4~0_combout\ = (\M8|REGQ\(1) & (!\M8|REGQ\(0) & (!\M8|REGQ\(3) & !\M8|REGQ\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(1),
	datab => \M8|REGQ\(0),
	datac => \M8|REGQ\(3),
	datad => \M8|REGQ\(2),
	combout => \M8|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y6_N12
\M8|cmd_add\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|cmd_add~combout\ = (GLOBAL(\M8|Mux6~1clkctrl_outclk\) & ((\M8|Mux4~0_combout\))) # (!GLOBAL(\M8|Mux6~1clkctrl_outclk\) & (\M8|cmd_add~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|cmd_add~combout\,
	datab => \M8|Mux4~0_combout\,
	datad => \M8|Mux6~1clkctrl_outclk\,
	combout => \M8|cmd_add~combout\);

-- Location: LCCOMB_X29_Y6_N2
\M8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux3~0_combout\ = (\M8|REGQ\(1) & (!\M8|REGQ\(3) & (\M8|REGQ\(0) & !\M8|REGQ\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(1),
	datab => \M8|REGQ\(3),
	datac => \M8|REGQ\(0),
	datad => \M8|REGQ\(2),
	combout => \M8|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y6_N4
\M8|cmd_sub\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|cmd_sub~combout\ = (GLOBAL(\M8|Mux6~1clkctrl_outclk\) & ((\M8|Mux3~0_combout\))) # (!GLOBAL(\M8|Mux6~1clkctrl_outclk\) & (\M8|cmd_sub~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M8|cmd_sub~combout\,
	datac => \M8|Mux3~0_combout\,
	datad => \M8|Mux6~1clkctrl_outclk\,
	combout => \M8|cmd_sub~combout\);

-- Location: LCCOMB_X29_Y7_N10
\M2|IA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IA~0_combout\ = (\M8|cmd_shl~combout\) # ((\M8|cmd_add~combout\) # ((\M8|cmd_and~combout\) # (\M8|cmd_sub~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|cmd_shl~combout\,
	datab => \M8|cmd_add~combout\,
	datac => \M8|cmd_and~combout\,
	datad => \M8|cmd_sub~combout\,
	combout => \M2|IA~0_combout\);

-- Location: LCCOMB_X29_Y7_N12
\M2|IDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IDR~0_combout\ = (\M1|TEMP\(1)) # ((\M1|TEMP\(4) & ((\M2|IA~0_combout\) # (\M8|cmd_ld~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|IA~0_combout\,
	datab => \M1|TEMP\(4),
	datac => \M1|TEMP\(1),
	datad => \M8|cmd_ld~combout\,
	combout => \M2|IDR~0_combout\);

-- Location: LCCOMB_X29_Y7_N6
\M2|IDR\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IDR~combout\ = (GLOBAL(\M8|HALT~clkctrl_outclk\) & (\M2|IDR~combout\)) # (!GLOBAL(\M8|HALT~clkctrl_outclk\) & ((\M2|IDR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|IDR~combout\,
	datab => \M8|HALT~clkctrl_outclk\,
	datad => \M2|IDR~0_combout\,
	combout => \M2|IDR~combout\);

-- Location: FF_X29_Y7_N3
\M5|REGQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M9|Mux2~0_combout\,
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(3));

-- Location: FF_X29_Y6_N25
\M8|REGQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0_combout\,
	asdata => \M5|REGQ\(3),
	sload => VCC,
	ena => \M2|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M8|REGQ\(3));

-- Location: LCCOMB_X29_Y6_N14
\M8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux2~0_combout\ = (!\M8|REGQ\(1) & (!\M8|REGQ\(3) & (\M8|REGQ\(2) & !\M8|REGQ\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(1),
	datab => \M8|REGQ\(3),
	datac => \M8|REGQ\(2),
	datad => \M8|REGQ\(0),
	combout => \M8|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y6_N28
\M8|cmd_and\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|cmd_and~combout\ = (GLOBAL(\M8|Mux6~1clkctrl_outclk\) & (\M8|Mux2~0_combout\)) # (!GLOBAL(\M8|Mux6~1clkctrl_outclk\) & ((\M8|cmd_and~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux2~0_combout\,
	datac => \M8|Mux6~1clkctrl_outclk\,
	datad => \M8|cmd_and~combout\,
	combout => \M8|cmd_and~combout\);

-- Location: LCCOMB_X28_Y6_N26
\M2|IPC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~3_combout\ = (\M1|TEMP\(5) & ((\M8|cmd_and~combout\) # ((\M8|cmd_add~combout\) # (\M8|cmd_sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1|TEMP\(5),
	datab => \M8|cmd_and~combout\,
	datac => \M8|cmd_add~combout\,
	datad => \M8|cmd_sub~combout\,
	combout => \M2|IPC~3_combout\);

-- Location: LCCOMB_X28_Y6_N18
\M2|IPC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~4_combout\ = (\M1|TEMP\(2)) # ((\M1|TEMP\(5) & \M8|cmd_ld~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1|TEMP\(5),
	datab => \M1|TEMP\(2),
	datad => \M8|cmd_ld~combout\,
	combout => \M2|IPC~4_combout\);

-- Location: LCCOMB_X28_Y6_N16
\M6|QOUT[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|QOUT[0]~3_combout\ = \M6|QOUT\(0) $ (((!\M8|HALT~combout\ & ((\M2|IPC~3_combout\) # (\M2|IPC~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|HALT~combout\,
	datab => \M2|IPC~3_combout\,
	datac => \M6|QOUT\(0),
	datad => \M2|IPC~4_combout\,
	combout => \M6|QOUT[0]~3_combout\);

-- Location: FF_X28_Y6_N17
\M6|QOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M6|QOUT[0]~3_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M6|QOUT\(0));

-- Location: LCCOMB_X28_Y6_N14
\M7|ADDR_OUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M7|ADDR_OUT[0]~feeder_combout\ = \M6|QOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M6|QOUT\(0),
	combout => \M7|ADDR_OUT[0]~feeder_combout\);

-- Location: FF_X28_Y6_N15
\M7|ADDR_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M7|ADDR_OUT[0]~feeder_combout\,
	ena => \M2|ALT_INV_IMAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M7|ADDR_OUT\(0));

-- Location: LCCOMB_X29_Y7_N0
\M9|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux3~0_combout\ = (\M7|ADDR_OUT\(2) & (!\M7|ADDR_OUT\(3) & ((\M7|ADDR_OUT\(0)) # (\M7|ADDR_OUT\(1))))) # (!\M7|ADDR_OUT\(2) & ((\M7|ADDR_OUT\(3) & (!\M7|ADDR_OUT\(0) & !\M7|ADDR_OUT\(1))) # (!\M7|ADDR_OUT\(3) & (\M7|ADDR_OUT\(0) & \M7|ADDR_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|ADDR_OUT\(2),
	datab => \M7|ADDR_OUT\(3),
	datac => \M7|ADDR_OUT\(0),
	datad => \M7|ADDR_OUT\(1),
	combout => \M9|Mux3~0_combout\);

-- Location: FF_X29_Y7_N1
\M5|REGQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M9|Mux3~0_combout\,
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(2));

-- Location: FF_X29_Y6_N27
\M8|REGQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0_combout\,
	asdata => \M5|REGQ\(2),
	sload => VCC,
	ena => \M2|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M8|REGQ\(2));

-- Location: LCCOMB_X29_Y6_N26
\M8|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux5~0_combout\ = (!\M8|REGQ\(1) & (\M8|REGQ\(0) & (!\M8|REGQ\(2) & !\M8|REGQ\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(1),
	datab => \M8|REGQ\(0),
	datac => \M8|REGQ\(2),
	datad => \M8|REGQ\(3),
	combout => \M8|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y6_N18
\M8|cmd_ld\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|cmd_ld~combout\ = (GLOBAL(\M8|Mux6~1clkctrl_outclk\) & (\M8|Mux5~0_combout\)) # (!GLOBAL(\M8|Mux6~1clkctrl_outclk\) & ((\M8|cmd_ld~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M8|Mux5~0_combout\,
	datac => \M8|cmd_ld~combout\,
	datad => \M8|Mux6~1clkctrl_outclk\,
	combout => \M8|cmd_ld~combout\);

-- Location: LCCOMB_X28_Y6_N24
\M2|IMAR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IMAR~0_combout\ = ((\M1|TEMP\(3) & ((\M8|cmd_ld~combout\) # (\M2|IA~0_combout\)))) # (!\M1|TEMP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|cmd_ld~combout\,
	datab => \M1|TEMP\(0),
	datac => \M1|TEMP\(3),
	datad => \M2|IA~0_combout\,
	combout => \M2|IMAR~0_combout\);

-- Location: LCCOMB_X28_Y6_N10
\M2|IMAR\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IMAR~combout\ = (GLOBAL(\M8|HALT~clkctrl_outclk\) & (\M2|IMAR~combout\)) # (!GLOBAL(\M8|HALT~clkctrl_outclk\) & ((!\M2|IMAR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|IMAR~combout\,
	datab => \M8|HALT~clkctrl_outclk\,
	datad => \M2|IMAR~0_combout\,
	combout => \M2|IMAR~combout\);

-- Location: FF_X28_Y6_N7
\M7|ADDR_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M6|QOUT\(3),
	sload => VCC,
	ena => \M2|ALT_INV_IMAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M7|ADDR_OUT\(3));

-- Location: LCCOMB_X29_Y7_N14
\M9|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux4~0_combout\ = (!\M7|ADDR_OUT\(3) & ((\M7|ADDR_OUT\(2) & (!\M7|ADDR_OUT\(0) & !\M7|ADDR_OUT\(1))) # (!\M7|ADDR_OUT\(2) & (\M7|ADDR_OUT\(0) $ (\M7|ADDR_OUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|ADDR_OUT\(2),
	datab => \M7|ADDR_OUT\(3),
	datac => \M7|ADDR_OUT\(0),
	datad => \M7|ADDR_OUT\(1),
	combout => \M9|Mux4~0_combout\);

-- Location: FF_X29_Y7_N15
\M5|REGQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M9|Mux4~0_combout\,
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(1));

-- Location: LCCOMB_X29_Y6_N30
\M8|REGQ[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|REGQ[1]~feeder_combout\ = \M5|REGQ\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M5|REGQ\(1),
	combout => \M8|REGQ[1]~feeder_combout\);

-- Location: FF_X29_Y6_N31
\M8|REGQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M8|REGQ[1]~feeder_combout\,
	ena => \M2|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M8|REGQ\(1));

-- Location: LCCOMB_X29_Y6_N10
\M8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux0~0_combout\ = (!\M8|REGQ\(1) & (!\M8|REGQ\(3) & (!\M8|REGQ\(2) & !\M8|REGQ\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(1),
	datab => \M8|REGQ\(3),
	datac => \M8|REGQ\(2),
	datad => \M8|REGQ\(0),
	combout => \M8|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y6_N22
\M8|HALT\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|HALT~combout\ = (GLOBAL(\M8|Mux6~1clkctrl_outclk\) & (\M8|Mux0~0_combout\)) # (!GLOBAL(\M8|Mux6~1clkctrl_outclk\) & ((\M8|HALT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M8|Mux0~0_combout\,
	datac => \M8|HALT~combout\,
	datad => \M8|Mux6~1clkctrl_outclk\,
	combout => \M8|HALT~combout\);

-- Location: LCCOMB_X28_Y6_N2
\M6|QOUT[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|QOUT[1]~0_combout\ = (!\M8|HALT~combout\ & (\M6|QOUT\(0) & ((\M2|IPC~3_combout\) # (\M2|IPC~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|HALT~combout\,
	datab => \M6|QOUT\(0),
	datac => \M2|IPC~3_combout\,
	datad => \M2|IPC~4_combout\,
	combout => \M6|QOUT[1]~0_combout\);

-- Location: LCCOMB_X28_Y6_N30
\M6|QOUT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|QOUT[1]~1_combout\ = \M6|QOUT[1]~0_combout\ $ (\M6|QOUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M6|QOUT[1]~0_combout\,
	datac => \M6|QOUT\(1),
	combout => \M6|QOUT[1]~1_combout\);

-- Location: FF_X28_Y6_N31
\M6|QOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M6|QOUT[1]~1_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M6|QOUT\(1));

-- Location: LCCOMB_X28_Y6_N22
\M6|QOUT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|QOUT[2]~2_combout\ = \M6|QOUT\(2) $ (((\M6|QOUT\(1) & \M6|QOUT[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M6|QOUT\(1),
	datab => \M6|QOUT[1]~0_combout\,
	datac => \M6|QOUT\(2),
	combout => \M6|QOUT[2]~2_combout\);

-- Location: FF_X28_Y6_N23
\M6|QOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M6|QOUT[2]~2_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M6|QOUT\(2));

-- Location: FF_X28_Y6_N19
\M7|ADDR_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M6|QOUT\(2),
	sload => VCC,
	ena => \M2|ALT_INV_IMAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M7|ADDR_OUT\(2));

-- Location: LCCOMB_X29_Y7_N8
\M9|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux5~0_combout\ = (\M7|ADDR_OUT\(1) & ((\M7|ADDR_OUT\(0)))) # (!\M7|ADDR_OUT\(1) & ((\M7|ADDR_OUT\(2)) # (!\M7|ADDR_OUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|ADDR_OUT\(2),
	datac => \M7|ADDR_OUT\(1),
	datad => \M7|ADDR_OUT\(0),
	combout => \M9|Mux5~0_combout\);

-- Location: FF_X29_Y7_N9
\M5|REGQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M9|Mux5~0_combout\,
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(0));

-- Location: LCCOMB_X29_Y7_N24
\M2|IA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IA~1_combout\ = (\M1|TEMP\(6) & ((\M2|IA~0_combout\) # (\M8|cmd_ld~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|IA~0_combout\,
	datab => \M8|cmd_ld~combout\,
	datad => \M1|TEMP\(6),
	combout => \M2|IA~1_combout\);

-- Location: LCCOMB_X30_Y7_N28
\M2|IA\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IA~combout\ = (GLOBAL(\M8|HALT~clkctrl_outclk\) & (\M2|IA~combout\)) # (!GLOBAL(\M8|HALT~clkctrl_outclk\) & ((!\M2|IA~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|IA~combout\,
	datac => \M8|HALT~clkctrl_outclk\,
	datad => \M2|IA~1_combout\,
	combout => \M2|IA~combout\);

-- Location: FF_X30_Y7_N23
\M4|REGQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M5|REGQ\(0),
	sload => VCC,
	ena => \M2|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M4|REGQ\(0));

-- Location: FF_X30_Y7_N27
\M4|REGQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M5|REGQ\(1),
	sload => VCC,
	ena => \M2|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M4|REGQ\(1));

-- Location: FF_X30_Y7_N31
\M4|REGQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M5|REGQ\(2),
	sload => VCC,
	ena => \M2|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M4|REGQ\(2));

-- Location: FF_X30_Y7_N1
\M4|REGQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M5|REGQ\(3),
	sload => VCC,
	ena => \M2|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M4|REGQ\(3));

-- Location: FF_X30_Y7_N21
\M4|REGQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M5|REGQ\(6),
	sload => VCC,
	ena => \M2|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M4|REGQ\(6));

-- Location: FF_X30_Y7_N19
\M4|REGQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M5|REGQ\(7),
	sload => VCC,
	ena => \M2|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M4|REGQ\(7));

-- Location: FF_X10_Y21_N15
\D2|scan:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[22]~q\);

-- Location: LCCOMB_X10_Y22_N2
\D2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~0_combout\ = \D2|scan:count[0]~q\ $ (VCC)
-- \D2|Add0~1\ = CARRY(\D2|scan:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[0]~q\,
	datad => VCC,
	combout => \D2|Add0~0_combout\,
	cout => \D2|Add0~1\);

-- Location: FF_X10_Y22_N3
\D2|scan:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[0]~q\);

-- Location: LCCOMB_X10_Y22_N4
\D2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~2_combout\ = (\D2|scan:count[1]~q\ & (!\D2|Add0~1\)) # (!\D2|scan:count[1]~q\ & ((\D2|Add0~1\) # (GND)))
-- \D2|Add0~3\ = CARRY((!\D2|Add0~1\) # (!\D2|scan:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[1]~q\,
	datad => VCC,
	cin => \D2|Add0~1\,
	combout => \D2|Add0~2_combout\,
	cout => \D2|Add0~3\);

-- Location: FF_X10_Y22_N5
\D2|scan:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[1]~q\);

-- Location: LCCOMB_X10_Y22_N6
\D2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~4_combout\ = (\D2|scan:count[2]~q\ & (\D2|Add0~3\ $ (GND))) # (!\D2|scan:count[2]~q\ & (!\D2|Add0~3\ & VCC))
-- \D2|Add0~5\ = CARRY((\D2|scan:count[2]~q\ & !\D2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[2]~q\,
	datad => VCC,
	cin => \D2|Add0~3\,
	combout => \D2|Add0~4_combout\,
	cout => \D2|Add0~5\);

-- Location: FF_X10_Y22_N7
\D2|scan:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[2]~q\);

-- Location: LCCOMB_X10_Y22_N8
\D2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~6_combout\ = (\D2|scan:count[3]~q\ & (!\D2|Add0~5\)) # (!\D2|scan:count[3]~q\ & ((\D2|Add0~5\) # (GND)))
-- \D2|Add0~7\ = CARRY((!\D2|Add0~5\) # (!\D2|scan:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[3]~q\,
	datad => VCC,
	cin => \D2|Add0~5\,
	combout => \D2|Add0~6_combout\,
	cout => \D2|Add0~7\);

-- Location: FF_X10_Y22_N9
\D2|scan:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[3]~q\);

-- Location: LCCOMB_X10_Y22_N10
\D2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~8_combout\ = (\D2|scan:count[4]~q\ & (\D2|Add0~7\ $ (GND))) # (!\D2|scan:count[4]~q\ & (!\D2|Add0~7\ & VCC))
-- \D2|Add0~9\ = CARRY((\D2|scan:count[4]~q\ & !\D2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[4]~q\,
	datad => VCC,
	cin => \D2|Add0~7\,
	combout => \D2|Add0~8_combout\,
	cout => \D2|Add0~9\);

-- Location: LCCOMB_X10_Y22_N0
\D2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~1_combout\ = (\D2|Add0~8_combout\ & (!\D2|Add0~10_combout\ & (!\D2|Add0~14_combout\ & !\D2|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~8_combout\,
	datab => \D2|Add0~10_combout\,
	datac => \D2|Add0~14_combout\,
	datad => \D2|Add0~12_combout\,
	combout => \D2|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y22_N8
\D2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~0_combout\ = (!\D2|Add0~0_combout\ & (!\D2|Add0~6_combout\ & (!\D2|Add0~2_combout\ & !\D2|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~0_combout\,
	datab => \D2|Add0~6_combout\,
	datac => \D2|Add0~2_combout\,
	datad => \D2|Add0~4_combout\,
	combout => \D2|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y21_N14
\D2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~2_combout\ = (\D2|Add0~18_combout\ & (\D2|Add0~16_combout\ & (!\D2|Add0~22_combout\ & \D2|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~18_combout\,
	datab => \D2|Add0~16_combout\,
	datac => \D2|Add0~22_combout\,
	datad => \D2|Add0~20_combout\,
	combout => \D2|Equal0~2_combout\);

-- Location: LCCOMB_X9_Y21_N18
\D2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~3_combout\ = (!\D2|Add0~28_combout\ & (!\D2|Add0~30_combout\ & (!\D2|Add0~24_combout\ & \D2|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~28_combout\,
	datab => \D2|Add0~30_combout\,
	datac => \D2|Add0~24_combout\,
	datad => \D2|Add0~26_combout\,
	combout => \D2|Equal0~3_combout\);

-- Location: LCCOMB_X9_Y21_N8
\D2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~4_combout\ = (\D2|Equal0~1_combout\ & (\D2|Equal0~0_combout\ & (\D2|Equal0~2_combout\ & \D2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~1_combout\,
	datab => \D2|Equal0~0_combout\,
	datac => \D2|Equal0~2_combout\,
	datad => \D2|Equal0~3_combout\,
	combout => \D2|Equal0~4_combout\);

-- Location: FF_X10_Y21_N27
\D2|scan:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[28]~q\);

-- Location: LCCOMB_X10_Y21_N14
\D2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~44_combout\ = (\D2|scan:count[22]~q\ & (\D2|Add0~43\ $ (GND))) # (!\D2|scan:count[22]~q\ & (!\D2|Add0~43\ & VCC))
-- \D2|Add0~45\ = CARRY((\D2|scan:count[22]~q\ & !\D2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[22]~q\,
	datad => VCC,
	cin => \D2|Add0~43\,
	combout => \D2|Add0~44_combout\,
	cout => \D2|Add0~45\);

-- Location: LCCOMB_X10_Y21_N16
\D2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~46_combout\ = (\D2|scan:count[23]~q\ & (!\D2|Add0~45\)) # (!\D2|scan:count[23]~q\ & ((\D2|Add0~45\) # (GND)))
-- \D2|Add0~47\ = CARRY((!\D2|Add0~45\) # (!\D2|scan:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[23]~q\,
	datad => VCC,
	cin => \D2|Add0~45\,
	combout => \D2|Add0~46_combout\,
	cout => \D2|Add0~47\);

-- Location: FF_X10_Y21_N17
\D2|scan:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[23]~q\);

-- Location: LCCOMB_X10_Y21_N18
\D2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~48_combout\ = (\D2|scan:count[24]~q\ & (\D2|Add0~47\ $ (GND))) # (!\D2|scan:count[24]~q\ & (!\D2|Add0~47\ & VCC))
-- \D2|Add0~49\ = CARRY((\D2|scan:count[24]~q\ & !\D2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[24]~q\,
	datad => VCC,
	cin => \D2|Add0~47\,
	combout => \D2|Add0~48_combout\,
	cout => \D2|Add0~49\);

-- Location: FF_X10_Y21_N19
\D2|scan:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[24]~q\);

-- Location: LCCOMB_X10_Y21_N20
\D2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~50_combout\ = (\D2|scan:count[25]~q\ & (!\D2|Add0~49\)) # (!\D2|scan:count[25]~q\ & ((\D2|Add0~49\) # (GND)))
-- \D2|Add0~51\ = CARRY((!\D2|Add0~49\) # (!\D2|scan:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[25]~q\,
	datad => VCC,
	cin => \D2|Add0~49\,
	combout => \D2|Add0~50_combout\,
	cout => \D2|Add0~51\);

-- Location: FF_X10_Y21_N21
\D2|scan:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[25]~q\);

-- Location: LCCOMB_X10_Y21_N22
\D2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~52_combout\ = (\D2|scan:count[26]~q\ & (\D2|Add0~51\ $ (GND))) # (!\D2|scan:count[26]~q\ & (!\D2|Add0~51\ & VCC))
-- \D2|Add0~53\ = CARRY((\D2|scan:count[26]~q\ & !\D2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[26]~q\,
	datad => VCC,
	cin => \D2|Add0~51\,
	combout => \D2|Add0~52_combout\,
	cout => \D2|Add0~53\);

-- Location: FF_X10_Y21_N23
\D2|scan:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[26]~q\);

-- Location: LCCOMB_X10_Y21_N24
\D2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~54_combout\ = (\D2|scan:count[27]~q\ & (!\D2|Add0~53\)) # (!\D2|scan:count[27]~q\ & ((\D2|Add0~53\) # (GND)))
-- \D2|Add0~55\ = CARRY((!\D2|Add0~53\) # (!\D2|scan:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[27]~q\,
	datad => VCC,
	cin => \D2|Add0~53\,
	combout => \D2|Add0~54_combout\,
	cout => \D2|Add0~55\);

-- Location: FF_X10_Y21_N25
\D2|scan:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[27]~q\);

-- Location: LCCOMB_X10_Y21_N26
\D2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~56_combout\ = (\D2|scan:count[28]~q\ & (\D2|Add0~55\ $ (GND))) # (!\D2|scan:count[28]~q\ & (!\D2|Add0~55\ & VCC))
-- \D2|Add0~57\ = CARRY((\D2|scan:count[28]~q\ & !\D2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[28]~q\,
	datad => VCC,
	cin => \D2|Add0~55\,
	combout => \D2|Add0~56_combout\,
	cout => \D2|Add0~57\);

-- Location: FF_X10_Y21_N29
\D2|scan:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[29]~q\);

-- Location: LCCOMB_X10_Y21_N28
\D2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~58_combout\ = (\D2|scan:count[29]~q\ & (!\D2|Add0~57\)) # (!\D2|scan:count[29]~q\ & ((\D2|Add0~57\) # (GND)))
-- \D2|Add0~59\ = CARRY((!\D2|Add0~57\) # (!\D2|scan:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[29]~q\,
	datad => VCC,
	cin => \D2|Add0~57\,
	combout => \D2|Add0~58_combout\,
	cout => \D2|Add0~59\);

-- Location: FF_X10_Y21_N31
\D2|scan:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[30]~q\);

-- Location: LCCOMB_X10_Y21_N30
\D2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~60_combout\ = \D2|scan:count[30]~q\ $ (!\D2|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[30]~q\,
	cin => \D2|Add0~59\,
	combout => \D2|Add0~60_combout\);

-- Location: LCCOMB_X9_Y21_N12
\D2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~8_combout\ = (!\D2|Add0~50_combout\ & (!\D2|Add0~48_combout\ & (!\D2|Add0~52_combout\ & !\D2|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~50_combout\,
	datab => \D2|Add0~48_combout\,
	datac => \D2|Add0~52_combout\,
	datad => \D2|Add0~54_combout\,
	combout => \D2|Equal0~8_combout\);

-- Location: LCCOMB_X9_Y21_N6
\D2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~9_combout\ = (!\D2|Add0~56_combout\ & (!\D2|Add0~58_combout\ & (!\D2|Add0~60_combout\ & \D2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~56_combout\,
	datab => \D2|Add0~58_combout\,
	datac => \D2|Add0~60_combout\,
	datad => \D2|Equal0~8_combout\,
	combout => \D2|Equal0~9_combout\);

-- Location: LCCOMB_X9_Y21_N2
\D2|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|count~0_combout\ = (\D2|Add0~8_combout\ & (((!\D2|Equal0~9_combout\) # (!\D2|Equal0~7_combout\)) # (!\D2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~8_combout\,
	datab => \D2|Equal0~4_combout\,
	datac => \D2|Equal0~7_combout\,
	datad => \D2|Equal0~9_combout\,
	combout => \D2|count~0_combout\);

-- Location: FF_X9_Y21_N3
\D2|scan:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[4]~q\);

-- Location: LCCOMB_X10_Y22_N12
\D2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~10_combout\ = (\D2|scan:count[5]~q\ & (!\D2|Add0~9\)) # (!\D2|scan:count[5]~q\ & ((\D2|Add0~9\) # (GND)))
-- \D2|Add0~11\ = CARRY((!\D2|Add0~9\) # (!\D2|scan:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[5]~q\,
	datad => VCC,
	cin => \D2|Add0~9\,
	combout => \D2|Add0~10_combout\,
	cout => \D2|Add0~11\);

-- Location: FF_X10_Y22_N13
\D2|scan:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[5]~q\);

-- Location: LCCOMB_X10_Y22_N14
\D2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~12_combout\ = (\D2|scan:count[6]~q\ & (\D2|Add0~11\ $ (GND))) # (!\D2|scan:count[6]~q\ & (!\D2|Add0~11\ & VCC))
-- \D2|Add0~13\ = CARRY((\D2|scan:count[6]~q\ & !\D2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[6]~q\,
	datad => VCC,
	cin => \D2|Add0~11\,
	combout => \D2|Add0~12_combout\,
	cout => \D2|Add0~13\);

-- Location: FF_X10_Y22_N15
\D2|scan:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[6]~q\);

-- Location: LCCOMB_X10_Y22_N16
\D2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~14_combout\ = (\D2|scan:count[7]~q\ & (!\D2|Add0~13\)) # (!\D2|scan:count[7]~q\ & ((\D2|Add0~13\) # (GND)))
-- \D2|Add0~15\ = CARRY((!\D2|Add0~13\) # (!\D2|scan:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[7]~q\,
	datad => VCC,
	cin => \D2|Add0~13\,
	combout => \D2|Add0~14_combout\,
	cout => \D2|Add0~15\);

-- Location: FF_X10_Y22_N17
\D2|scan:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[7]~q\);

-- Location: LCCOMB_X10_Y22_N18
\D2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~16_combout\ = (\D2|scan:count[8]~q\ & (\D2|Add0~15\ $ (GND))) # (!\D2|scan:count[8]~q\ & (!\D2|Add0~15\ & VCC))
-- \D2|Add0~17\ = CARRY((\D2|scan:count[8]~q\ & !\D2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[8]~q\,
	datad => VCC,
	cin => \D2|Add0~15\,
	combout => \D2|Add0~16_combout\,
	cout => \D2|Add0~17\);

-- Location: LCCOMB_X9_Y21_N20
\D2|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|count~1_combout\ = (!\D2|Add0~56_combout\ & (!\D2|Add0~58_combout\ & (!\D2|Add0~60_combout\ & \D2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~56_combout\,
	datab => \D2|Add0~58_combout\,
	datac => \D2|Add0~60_combout\,
	datad => \D2|Equal0~8_combout\,
	combout => \D2|count~1_combout\);

-- Location: LCCOMB_X9_Y21_N0
\D2|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|count~2_combout\ = (\D2|Add0~16_combout\ & (((!\D2|count~1_combout\) # (!\D2|Equal0~7_combout\)) # (!\D2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~16_combout\,
	datab => \D2|Equal0~4_combout\,
	datac => \D2|Equal0~7_combout\,
	datad => \D2|count~1_combout\,
	combout => \D2|count~2_combout\);

-- Location: FF_X9_Y21_N1
\D2|scan:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[8]~q\);

-- Location: LCCOMB_X10_Y22_N20
\D2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~18_combout\ = (\D2|scan:count[9]~q\ & (!\D2|Add0~17\)) # (!\D2|scan:count[9]~q\ & ((\D2|Add0~17\) # (GND)))
-- \D2|Add0~19\ = CARRY((!\D2|Add0~17\) # (!\D2|scan:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[9]~q\,
	datad => VCC,
	cin => \D2|Add0~17\,
	combout => \D2|Add0~18_combout\,
	cout => \D2|Add0~19\);

-- Location: LCCOMB_X9_Y21_N22
\D2|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|count~3_combout\ = (\D2|Add0~18_combout\ & (((!\D2|Equal0~9_combout\) # (!\D2|Equal0~7_combout\)) # (!\D2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~18_combout\,
	datab => \D2|Equal0~4_combout\,
	datac => \D2|Equal0~7_combout\,
	datad => \D2|Equal0~9_combout\,
	combout => \D2|count~3_combout\);

-- Location: FF_X9_Y21_N23
\D2|scan:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[9]~q\);

-- Location: LCCOMB_X10_Y22_N22
\D2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~20_combout\ = (\D2|scan:count[10]~q\ & (\D2|Add0~19\ $ (GND))) # (!\D2|scan:count[10]~q\ & (!\D2|Add0~19\ & VCC))
-- \D2|Add0~21\ = CARRY((\D2|scan:count[10]~q\ & !\D2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[10]~q\,
	datad => VCC,
	cin => \D2|Add0~19\,
	combout => \D2|Add0~20_combout\,
	cout => \D2|Add0~21\);

-- Location: LCCOMB_X9_Y21_N16
\D2|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|count~4_combout\ = (\D2|Add0~20_combout\ & (((!\D2|Equal0~9_combout\) # (!\D2|Equal0~7_combout\)) # (!\D2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~20_combout\,
	datab => \D2|Equal0~4_combout\,
	datac => \D2|Equal0~7_combout\,
	datad => \D2|Equal0~9_combout\,
	combout => \D2|count~4_combout\);

-- Location: FF_X9_Y21_N17
\D2|scan:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[10]~q\);

-- Location: LCCOMB_X10_Y22_N24
\D2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~22_combout\ = (\D2|scan:count[11]~q\ & (!\D2|Add0~21\)) # (!\D2|scan:count[11]~q\ & ((\D2|Add0~21\) # (GND)))
-- \D2|Add0~23\ = CARRY((!\D2|Add0~21\) # (!\D2|scan:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[11]~q\,
	datad => VCC,
	cin => \D2|Add0~21\,
	combout => \D2|Add0~22_combout\,
	cout => \D2|Add0~23\);

-- Location: FF_X10_Y22_N25
\D2|scan:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[11]~q\);

-- Location: LCCOMB_X10_Y22_N26
\D2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~24_combout\ = (\D2|scan:count[12]~q\ & (\D2|Add0~23\ $ (GND))) # (!\D2|scan:count[12]~q\ & (!\D2|Add0~23\ & VCC))
-- \D2|Add0~25\ = CARRY((\D2|scan:count[12]~q\ & !\D2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[12]~q\,
	datad => VCC,
	cin => \D2|Add0~23\,
	combout => \D2|Add0~24_combout\,
	cout => \D2|Add0~25\);

-- Location: FF_X10_Y22_N27
\D2|scan:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[12]~q\);

-- Location: LCCOMB_X10_Y22_N28
\D2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~26_combout\ = (\D2|scan:count[13]~q\ & (!\D2|Add0~25\)) # (!\D2|scan:count[13]~q\ & ((\D2|Add0~25\) # (GND)))
-- \D2|Add0~27\ = CARRY((!\D2|Add0~25\) # (!\D2|scan:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[13]~q\,
	datad => VCC,
	cin => \D2|Add0~25\,
	combout => \D2|Add0~26_combout\,
	cout => \D2|Add0~27\);

-- Location: LCCOMB_X9_Y21_N4
\D2|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|count~5_combout\ = (\D2|Add0~26_combout\ & (((!\D2|Equal0~9_combout\) # (!\D2|Equal0~7_combout\)) # (!\D2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~26_combout\,
	datab => \D2|Equal0~4_combout\,
	datac => \D2|Equal0~7_combout\,
	datad => \D2|Equal0~9_combout\,
	combout => \D2|count~5_combout\);

-- Location: FF_X9_Y21_N5
\D2|scan:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[13]~q\);

-- Location: LCCOMB_X10_Y22_N30
\D2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~28_combout\ = (\D2|scan:count[14]~q\ & (\D2|Add0~27\ $ (GND))) # (!\D2|scan:count[14]~q\ & (!\D2|Add0~27\ & VCC))
-- \D2|Add0~29\ = CARRY((\D2|scan:count[14]~q\ & !\D2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[14]~q\,
	datad => VCC,
	cin => \D2|Add0~27\,
	combout => \D2|Add0~28_combout\,
	cout => \D2|Add0~29\);

-- Location: FF_X10_Y22_N31
\D2|scan:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[14]~q\);

-- Location: LCCOMB_X10_Y21_N0
\D2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~30_combout\ = (\D2|scan:count[15]~q\ & (!\D2|Add0~29\)) # (!\D2|scan:count[15]~q\ & ((\D2|Add0~29\) # (GND)))
-- \D2|Add0~31\ = CARRY((!\D2|Add0~29\) # (!\D2|scan:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[15]~q\,
	datad => VCC,
	cin => \D2|Add0~29\,
	combout => \D2|Add0~30_combout\,
	cout => \D2|Add0~31\);

-- Location: FF_X10_Y21_N1
\D2|scan:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[15]~q\);

-- Location: LCCOMB_X10_Y21_N2
\D2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~32_combout\ = (\D2|scan:count[16]~q\ & (\D2|Add0~31\ $ (GND))) # (!\D2|scan:count[16]~q\ & (!\D2|Add0~31\ & VCC))
-- \D2|Add0~33\ = CARRY((\D2|scan:count[16]~q\ & !\D2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[16]~q\,
	datad => VCC,
	cin => \D2|Add0~31\,
	combout => \D2|Add0~32_combout\,
	cout => \D2|Add0~33\);

-- Location: FF_X10_Y21_N3
\D2|scan:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[16]~q\);

-- Location: LCCOMB_X10_Y21_N4
\D2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~34_combout\ = (\D2|scan:count[17]~q\ & (!\D2|Add0~33\)) # (!\D2|scan:count[17]~q\ & ((\D2|Add0~33\) # (GND)))
-- \D2|Add0~35\ = CARRY((!\D2|Add0~33\) # (!\D2|scan:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[17]~q\,
	datad => VCC,
	cin => \D2|Add0~33\,
	combout => \D2|Add0~34_combout\,
	cout => \D2|Add0~35\);

-- Location: FF_X10_Y21_N5
\D2|scan:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[17]~q\);

-- Location: LCCOMB_X10_Y21_N6
\D2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~36_combout\ = (\D2|scan:count[18]~q\ & (\D2|Add0~35\ $ (GND))) # (!\D2|scan:count[18]~q\ & (!\D2|Add0~35\ & VCC))
-- \D2|Add0~37\ = CARRY((\D2|scan:count[18]~q\ & !\D2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[18]~q\,
	datad => VCC,
	cin => \D2|Add0~35\,
	combout => \D2|Add0~36_combout\,
	cout => \D2|Add0~37\);

-- Location: FF_X10_Y21_N7
\D2|scan:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[18]~q\);

-- Location: LCCOMB_X10_Y21_N8
\D2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~38_combout\ = (\D2|scan:count[19]~q\ & (!\D2|Add0~37\)) # (!\D2|scan:count[19]~q\ & ((\D2|Add0~37\) # (GND)))
-- \D2|Add0~39\ = CARRY((!\D2|Add0~37\) # (!\D2|scan:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[19]~q\,
	datad => VCC,
	cin => \D2|Add0~37\,
	combout => \D2|Add0~38_combout\,
	cout => \D2|Add0~39\);

-- Location: FF_X10_Y21_N9
\D2|scan:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[19]~q\);

-- Location: LCCOMB_X10_Y21_N10
\D2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~40_combout\ = (\D2|scan:count[20]~q\ & (\D2|Add0~39\ $ (GND))) # (!\D2|scan:count[20]~q\ & (!\D2|Add0~39\ & VCC))
-- \D2|Add0~41\ = CARRY((\D2|scan:count[20]~q\ & !\D2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[20]~q\,
	datad => VCC,
	cin => \D2|Add0~39\,
	combout => \D2|Add0~40_combout\,
	cout => \D2|Add0~41\);

-- Location: FF_X10_Y21_N11
\D2|scan:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[20]~q\);

-- Location: LCCOMB_X10_Y21_N12
\D2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~42_combout\ = (\D2|scan:count[21]~q\ & (!\D2|Add0~41\)) # (!\D2|scan:count[21]~q\ & ((\D2|Add0~41\) # (GND)))
-- \D2|Add0~43\ = CARRY((!\D2|Add0~41\) # (!\D2|scan:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[21]~q\,
	datad => VCC,
	cin => \D2|Add0~41\,
	combout => \D2|Add0~42_combout\,
	cout => \D2|Add0~43\);

-- Location: FF_X10_Y21_N13
\D2|scan:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[21]~q\);

-- Location: LCCOMB_X9_Y21_N26
\D2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~5_combout\ = (!\D2|Add0~36_combout\ & (!\D2|Add0~34_combout\ & (!\D2|Add0~38_combout\ & !\D2|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~36_combout\,
	datab => \D2|Add0~34_combout\,
	datac => \D2|Add0~38_combout\,
	datad => \D2|Add0~32_combout\,
	combout => \D2|Equal0~5_combout\);

-- Location: LCCOMB_X9_Y21_N28
\D2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~6_combout\ = (!\D2|Add0~42_combout\ & !\D2|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D2|Add0~42_combout\,
	datad => \D2|Add0~40_combout\,
	combout => \D2|Equal0~6_combout\);

-- Location: LCCOMB_X9_Y21_N30
\D2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~7_combout\ = (!\D2|Add0~44_combout\ & (!\D2|Add0~46_combout\ & (\D2|Equal0~5_combout\ & \D2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~44_combout\,
	datab => \D2|Add0~46_combout\,
	datac => \D2|Equal0~5_combout\,
	datad => \D2|Equal0~6_combout\,
	combout => \D2|Equal0~7_combout\);

-- Location: LCCOMB_X9_Y21_N24
\D2|sel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|sel[0]~0_combout\ = \D2|sel\(0) $ (((\D2|Equal0~7_combout\ & (\D2|Equal0~4_combout\ & \D2|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~7_combout\,
	datab => \D2|Equal0~4_combout\,
	datac => \D2|sel\(0),
	datad => \D2|Equal0~9_combout\,
	combout => \D2|sel[0]~0_combout\);

-- Location: FF_X9_Y21_N25
\D2|sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \D2|sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|sel\(0));

-- Location: LCCOMB_X28_Y6_N0
\M2|IPC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~0_combout\ = (\M1|TEMP\(5) & \M8|cmd_and~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1|TEMP\(5),
	datad => \M8|cmd_and~combout\,
	combout => \M2|IPC~0_combout\);

-- Location: LCCOMB_X28_Y7_N10
\M2|ALU_AND\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_AND~combout\ = (\M8|HALT~combout\ & (\M2|ALU_AND~combout\)) # (!\M8|HALT~combout\ & ((!\M2|IPC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_AND~combout\,
	datac => \M8|HALT~combout\,
	datad => \M2|IPC~0_combout\,
	combout => \M2|ALU_AND~combout\);

-- Location: LCCOMB_X29_Y6_N16
\M2|IPC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~2_combout\ = (\M8|cmd_sub~combout\ & \M1|TEMP\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M8|cmd_sub~combout\,
	datad => \M1|TEMP\(5),
	combout => \M2|IPC~2_combout\);

-- Location: LCCOMB_X29_Y6_N28
\M2|ALU_SUB\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_SUB~combout\ = (\M8|HALT~combout\ & (\M2|ALU_SUB~combout\)) # (!\M8|HALT~combout\ & ((!\M2|IPC~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|HALT~combout\,
	datab => \M2|ALU_SUB~combout\,
	datad => \M2|IPC~2_combout\,
	combout => \M2|ALU_SUB~combout\);

-- Location: LCCOMB_X29_Y7_N20
\M2|IPC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~1_combout\ = (\M8|cmd_add~combout\ & \M1|TEMP\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M8|cmd_add~combout\,
	datac => \M1|TEMP\(5),
	combout => \M2|IPC~1_combout\);

-- Location: LCCOMB_X30_Y7_N24
\M2|ALU_ADD\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_ADD~combout\ = (GLOBAL(\M8|HALT~clkctrl_outclk\) & (\M2|ALU_ADD~combout\)) # (!GLOBAL(\M8|HALT~clkctrl_outclk\) & ((!\M2|IPC~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_ADD~combout\,
	datac => \M8|HALT~clkctrl_outclk\,
	datad => \M2|IPC~1_combout\,
	combout => \M2|ALU_ADD~combout\);

-- Location: LCCOMB_X31_Y7_N18
\M3|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~27_combout\ = (!\M2|ALU_AND~combout\ & (\M4|REGQ\(6) & (\M2|ALU_SUB~combout\ & \M2|ALU_ADD~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_AND~combout\,
	datab => \M4|REGQ\(6),
	datac => \M2|ALU_SUB~combout\,
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~27_combout\);

-- Location: LCCOMB_X30_Y7_N0
\M3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~28_combout\ = \M5|REGQ\(6) $ (\M2|ALU_ADD~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M5|REGQ\(6),
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~28_combout\);

-- Location: LCCOMB_X29_Y7_N16
\M3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~8_combout\ = \M5|REGQ\(3) $ (\M2|ALU_ADD~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M5|REGQ\(3),
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~8_combout\);

-- Location: LCCOMB_X30_Y7_N20
\M3|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~9_combout\ = \M2|ALU_ADD~combout\ $ (\M5|REGQ\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_ADD~combout\,
	datad => \M5|REGQ\(2),
	combout => \M3|Add0~9_combout\);

-- Location: LCCOMB_X30_Y7_N22
\M3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~10_combout\ = \M2|ALU_ADD~combout\ $ (\M5|REGQ\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_ADD~combout\,
	datad => \M5|REGQ\(1),
	combout => \M3|Add0~10_combout\);

-- Location: LCCOMB_X30_Y7_N30
\M3|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~11_combout\ = \M2|ALU_ADD~combout\ $ (\M5|REGQ\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_ADD~combout\,
	datad => \M5|REGQ\(0),
	combout => \M3|Add0~11_combout\);

-- Location: LCCOMB_X30_Y7_N2
\M3|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~13_cout\ = CARRY(\M2|ALU_ADD~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|ALU_ADD~combout\,
	datad => VCC,
	cout => \M3|Add0~13_cout\);

-- Location: LCCOMB_X30_Y7_N4
\M3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~14_combout\ = (\M4|REGQ\(0) & ((\M3|Add0~11_combout\ & (\M3|Add0~13_cout\ & VCC)) # (!\M3|Add0~11_combout\ & (!\M3|Add0~13_cout\)))) # (!\M4|REGQ\(0) & ((\M3|Add0~11_combout\ & (!\M3|Add0~13_cout\)) # (!\M3|Add0~11_combout\ & ((\M3|Add0~13_cout\) 
-- # (GND)))))
-- \M3|Add0~15\ = CARRY((\M4|REGQ\(0) & (!\M3|Add0~11_combout\ & !\M3|Add0~13_cout\)) # (!\M4|REGQ\(0) & ((!\M3|Add0~13_cout\) # (!\M3|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(0),
	datab => \M3|Add0~11_combout\,
	datad => VCC,
	cin => \M3|Add0~13_cout\,
	combout => \M3|Add0~14_combout\,
	cout => \M3|Add0~15\);

-- Location: LCCOMB_X30_Y7_N6
\M3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~16_combout\ = ((\M4|REGQ\(1) $ (\M3|Add0~10_combout\ $ (!\M3|Add0~15\)))) # (GND)
-- \M3|Add0~17\ = CARRY((\M4|REGQ\(1) & ((\M3|Add0~10_combout\) # (!\M3|Add0~15\))) # (!\M4|REGQ\(1) & (\M3|Add0~10_combout\ & !\M3|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(1),
	datab => \M3|Add0~10_combout\,
	datad => VCC,
	cin => \M3|Add0~15\,
	combout => \M3|Add0~16_combout\,
	cout => \M3|Add0~17\);

-- Location: LCCOMB_X30_Y7_N8
\M3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~18_combout\ = (\M4|REGQ\(2) & ((\M3|Add0~9_combout\ & (\M3|Add0~17\ & VCC)) # (!\M3|Add0~9_combout\ & (!\M3|Add0~17\)))) # (!\M4|REGQ\(2) & ((\M3|Add0~9_combout\ & (!\M3|Add0~17\)) # (!\M3|Add0~9_combout\ & ((\M3|Add0~17\) # (GND)))))
-- \M3|Add0~19\ = CARRY((\M4|REGQ\(2) & (!\M3|Add0~9_combout\ & !\M3|Add0~17\)) # (!\M4|REGQ\(2) & ((!\M3|Add0~17\) # (!\M3|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(2),
	datab => \M3|Add0~9_combout\,
	datad => VCC,
	cin => \M3|Add0~17\,
	combout => \M3|Add0~18_combout\,
	cout => \M3|Add0~19\);

-- Location: LCCOMB_X30_Y7_N10
\M3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~20_combout\ = ((\M4|REGQ\(3) $ (\M3|Add0~8_combout\ $ (!\M3|Add0~19\)))) # (GND)
-- \M3|Add0~21\ = CARRY((\M4|REGQ\(3) & ((\M3|Add0~8_combout\) # (!\M3|Add0~19\))) # (!\M4|REGQ\(3) & (\M3|Add0~8_combout\ & !\M3|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(3),
	datab => \M3|Add0~8_combout\,
	datad => VCC,
	cin => \M3|Add0~19\,
	combout => \M3|Add0~20_combout\,
	cout => \M3|Add0~21\);

-- Location: LCCOMB_X30_Y7_N12
\M3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~22_combout\ = (\M2|ALU_ADD~combout\ & (!\M3|Add0~21\)) # (!\M2|ALU_ADD~combout\ & ((\M3|Add0~21\) # (GND)))
-- \M3|Add0~23\ = CARRY((!\M3|Add0~21\) # (!\M2|ALU_ADD~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_ADD~combout\,
	datad => VCC,
	cin => \M3|Add0~21\,
	combout => \M3|Add0~22_combout\,
	cout => \M3|Add0~23\);

-- Location: LCCOMB_X30_Y7_N14
\M3|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~25_combout\ = (\M2|ALU_ADD~combout\ & (\M3|Add0~23\ $ (GND))) # (!\M2|ALU_ADD~combout\ & (!\M3|Add0~23\ & VCC))
-- \M3|Add0~26\ = CARRY((\M2|ALU_ADD~combout\ & !\M3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_ADD~combout\,
	datad => VCC,
	cin => \M3|Add0~23\,
	combout => \M3|Add0~25_combout\,
	cout => \M3|Add0~26\);

-- Location: LCCOMB_X30_Y7_N16
\M3|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~29_combout\ = (\M3|Add0~28_combout\ & ((\M4|REGQ\(6) & (\M3|Add0~26\ & VCC)) # (!\M4|REGQ\(6) & (!\M3|Add0~26\)))) # (!\M3|Add0~28_combout\ & ((\M4|REGQ\(6) & (!\M3|Add0~26\)) # (!\M4|REGQ\(6) & ((\M3|Add0~26\) # (GND)))))
-- \M3|Add0~30\ = CARRY((\M3|Add0~28_combout\ & (!\M4|REGQ\(6) & !\M3|Add0~26\)) # (!\M3|Add0~28_combout\ & ((!\M3|Add0~26\) # (!\M4|REGQ\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~28_combout\,
	datab => \M4|REGQ\(6),
	datad => VCC,
	cin => \M3|Add0~26\,
	combout => \M3|Add0~29_combout\,
	cout => \M3|Add0~30\);

-- Location: LCCOMB_X29_Y6_N8
\M3|acc1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|acc1[0]~0_combout\ = (\M2|ALU_SUB~combout\ & \M2|ALU_ADD~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M2|ALU_SUB~combout\,
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|acc1[0]~0_combout\);

-- Location: LCCOMB_X31_Y7_N16
\M3|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~31_combout\ = (\M3|Add0~27_combout\ & ((\M5|REGQ\(6)) # ((\M3|Add0~29_combout\ & !\M3|acc1[0]~0_combout\)))) # (!\M3|Add0~27_combout\ & (((\M3|Add0~29_combout\ & !\M3|acc1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~27_combout\,
	datab => \M5|REGQ\(6),
	datac => \M3|Add0~29_combout\,
	datad => \M3|acc1[0]~0_combout\,
	combout => \M3|Add0~31_combout\);

-- Location: IOIBUF_X34_Y9_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X28_Y7_N14
\M2|ALU_SHL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_SHL~0_combout\ = (\M1|TEMP\(5) & \M8|cmd_shl~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1|TEMP\(5),
	datad => \M8|cmd_shl~combout\,
	combout => \M2|ALU_SHL~0_combout\);

-- Location: LCCOMB_X28_Y7_N20
\M2|ALU_SHL\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_SHL~combout\ = (\M8|HALT~combout\ & (\M2|ALU_SHL~combout\)) # (!\M8|HALT~combout\ & ((!\M2|ALU_SHL~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|ALU_SHL~combout\,
	datac => \M2|ALU_SHL~0_combout\,
	datad => \M8|HALT~combout\,
	combout => \M2|ALU_SHL~combout\);

-- Location: LCCOMB_X28_Y7_N0
\M3|acc1[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|acc1[7]~1_combout\ = (((!\M2|ALU_SHL~combout\) # (!\M2|ALU_SUB~combout\)) # (!\M2|ALU_ADD~combout\)) # (!\M2|ALU_AND~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_AND~combout\,
	datab => \M2|ALU_ADD~combout\,
	datac => \M2|ALU_SUB~combout\,
	datad => \M2|ALU_SHL~combout\,
	combout => \M3|acc1[7]~1_combout\);

-- Location: CLKCTRL_G9
\M3|acc1[7]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \M3|acc1[7]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \M3|acc1[7]~1clkctrl_outclk\);

-- Location: LCCOMB_X31_Y7_N26
\M3|acc1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|acc1\(6) = (\rst~input_o\ & ((GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & (\M3|Add0~31_combout\)) # (!GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & ((\M3|acc1\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~31_combout\,
	datab => \rst~input_o\,
	datac => \M3|acc1\(6),
	datad => \M3|acc1[7]~1clkctrl_outclk\,
	combout => \M3|acc1\(6));

-- Location: LCCOMB_X31_Y7_N14
\M3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~32_combout\ = (\M2|ALU_AND~combout\ & (((\M4|REGQ\(6))))) # (!\M2|ALU_AND~combout\ & (\M4|REGQ\(7) & ((\M5|REGQ\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_AND~combout\,
	datab => \M4|REGQ\(7),
	datac => \M4|REGQ\(6),
	datad => \M5|REGQ\(7),
	combout => \M3|Add0~32_combout\);

-- Location: LCCOMB_X30_Y7_N26
\M3|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~33_combout\ = \M5|REGQ\(7) $ (\M2|ALU_ADD~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M5|REGQ\(7),
	datab => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~33_combout\);

-- Location: LCCOMB_X30_Y7_N18
\M3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~34_combout\ = \M4|REGQ\(7) $ (\M3|Add0~30\ $ (!\M3|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M4|REGQ\(7),
	datad => \M3|Add0~33_combout\,
	cin => \M3|Add0~30\,
	combout => \M3|Add0~34_combout\);

-- Location: LCCOMB_X31_Y7_N10
\M3|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~43_combout\ = (\M2|ALU_ADD~combout\ & ((\M2|ALU_SUB~combout\ & (\M3|Add0~32_combout\)) # (!\M2|ALU_SUB~combout\ & ((\M3|Add0~34_combout\))))) # (!\M2|ALU_ADD~combout\ & (((\M3|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~32_combout\,
	datab => \M2|ALU_ADD~combout\,
	datac => \M3|Add0~34_combout\,
	datad => \M2|ALU_SUB~combout\,
	combout => \M3|Add0~43_combout\);

-- Location: LCCOMB_X31_Y7_N8
\M3|acc1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|acc1\(7) = (\rst~input_o\ & ((GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & (\M3|Add0~43_combout\)) # (!GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & ((\M3|acc1\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~43_combout\,
	datab => \rst~input_o\,
	datac => \M3|acc1\(7),
	datad => \M3|acc1[7]~1clkctrl_outclk\,
	combout => \M3|acc1\(7));

-- Location: LCCOMB_X31_Y7_N0
\M3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~42_combout\ = (\M3|Add0~25_combout\ & ((!\M2|ALU_ADD~combout\) # (!\M2|ALU_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SUB~combout\,
	datac => \M3|Add0~25_combout\,
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~42_combout\);

-- Location: LCCOMB_X31_Y7_N4
\M3|acc1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|acc1\(5) = (\rst~input_o\ & ((GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & (\M3|Add0~42_combout\)) # (!GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & ((\M3|acc1\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~42_combout\,
	datab => \rst~input_o\,
	datac => \M3|acc1\(5),
	datad => \M3|acc1[7]~1clkctrl_outclk\,
	combout => \M3|acc1\(5));

-- Location: LCCOMB_X29_Y7_N18
\M3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~24_combout\ = (\M3|acc1[0]~0_combout\ & (\M4|REGQ\(3) & (\M2|ALU_AND~combout\))) # (!\M3|acc1[0]~0_combout\ & (((\M3|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(3),
	datab => \M2|ALU_AND~combout\,
	datac => \M3|Add0~22_combout\,
	datad => \M3|acc1[0]~0_combout\,
	combout => \M3|Add0~24_combout\);

-- Location: LCCOMB_X29_Y7_N28
\M3|acc1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|acc1\(4) = (\rst~input_o\ & ((GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & (\M3|Add0~24_combout\)) # (!GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & ((\M3|acc1\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~24_combout\,
	datab => \M3|acc1\(4),
	datac => \rst~input_o\,
	datad => \M3|acc1[7]~1clkctrl_outclk\,
	combout => \M3|acc1\(4));

-- Location: LCCOMB_X31_Y7_N28
\D1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux13~0_combout\ = (\M3|acc1\(6) & (!\M3|acc1\(5) & (\M3|acc1\(7) $ (!\M3|acc1\(4))))) # (!\M3|acc1\(6) & (\M3|acc1\(4) & (\M3|acc1\(7) $ (!\M3|acc1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(6),
	datab => \M3|acc1\(7),
	datac => \M3|acc1\(5),
	datad => \M3|acc1\(4),
	combout => \D1|Mux13~0_combout\);

-- Location: LCCOMB_X28_Y7_N28
\M3|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~41_combout\ = (\M2|ALU_AND~combout\ & (((\M4|REGQ\(2))))) # (!\M2|ALU_AND~combout\ & (\M4|REGQ\(3) & ((\M5|REGQ\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_AND~combout\,
	datab => \M4|REGQ\(3),
	datac => \M4|REGQ\(2),
	datad => \M5|REGQ\(3),
	combout => \M3|Add0~41_combout\);

-- Location: LCCOMB_X29_Y7_N30
\M3|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~45_combout\ = (\M2|ALU_SUB~combout\ & ((\M2|ALU_ADD~combout\ & ((\M3|Add0~41_combout\))) # (!\M2|ALU_ADD~combout\ & (\M3|Add0~20_combout\)))) # (!\M2|ALU_SUB~combout\ & (\M3|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SUB~combout\,
	datab => \M3|Add0~20_combout\,
	datac => \M3|Add0~41_combout\,
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~45_combout\);

-- Location: LCCOMB_X29_Y7_N26
\M3|acc1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|acc1\(3) = (\rst~input_o\ & ((GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & (\M3|Add0~45_combout\)) # (!GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & ((\M3|acc1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~45_combout\,
	datab => \rst~input_o\,
	datac => \M3|acc1\(3),
	datad => \M3|acc1[7]~1clkctrl_outclk\,
	combout => \M3|acc1\(3));

-- Location: LCCOMB_X28_Y7_N12
\M3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~38_combout\ = (\M2|ALU_AND~combout\ & (((\M4|REGQ\(0))))) # (!\M2|ALU_AND~combout\ & (\M4|REGQ\(1) & ((\M5|REGQ\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_AND~combout\,
	datab => \M4|REGQ\(1),
	datac => \M4|REGQ\(0),
	datad => \M5|REGQ\(1),
	combout => \M3|Add0~38_combout\);

-- Location: LCCOMB_X28_Y7_N18
\M3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~44_combout\ = (\M2|ALU_SUB~combout\ & ((\M2|ALU_ADD~combout\ & (\M3|Add0~38_combout\)) # (!\M2|ALU_ADD~combout\ & ((\M3|Add0~16_combout\))))) # (!\M2|ALU_SUB~combout\ & (((\M3|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~38_combout\,
	datab => \M2|ALU_SUB~combout\,
	datac => \M3|Add0~16_combout\,
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~44_combout\);

-- Location: LCCOMB_X28_Y7_N22
\M3|acc1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|acc1\(1) = (\rst~input_o\ & ((GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & (\M3|Add0~44_combout\)) # (!GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & ((\M3|acc1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~44_combout\,
	datab => \rst~input_o\,
	datac => \M3|acc1\(1),
	datad => \M3|acc1[7]~1clkctrl_outclk\,
	combout => \M3|acc1\(1));

-- Location: LCCOMB_X28_Y7_N16
\M3|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~39_combout\ = (\M3|acc1[0]~0_combout\ & (((\M5|REGQ\(2) & \M4|REGQ\(2))))) # (!\M3|acc1[0]~0_combout\ & (\M3|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~18_combout\,
	datab => \M5|REGQ\(2),
	datac => \M3|acc1[0]~0_combout\,
	datad => \M4|REGQ\(2),
	combout => \M3|Add0~39_combout\);

-- Location: LCCOMB_X28_Y7_N6
\M3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~40_combout\ = (\M3|acc1[0]~0_combout\ & ((\M2|ALU_AND~combout\ & (\M4|REGQ\(1))) # (!\M2|ALU_AND~combout\ & ((\M3|Add0~39_combout\))))) # (!\M3|acc1[0]~0_combout\ & (((\M3|Add0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1[0]~0_combout\,
	datab => \M2|ALU_AND~combout\,
	datac => \M4|REGQ\(1),
	datad => \M3|Add0~39_combout\,
	combout => \M3|Add0~40_combout\);

-- Location: LCCOMB_X28_Y7_N4
\M3|acc1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|acc1\(2) = (\rst~input_o\ & ((GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & (\M3|Add0~40_combout\)) # (!GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & ((\M3|acc1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~40_combout\,
	datab => \rst~input_o\,
	datac => \M3|acc1\(2),
	datad => \M3|acc1[7]~1clkctrl_outclk\,
	combout => \M3|acc1\(2));

-- Location: LCCOMB_X28_Y7_N8
\M3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~36_combout\ = (!\M2|ALU_AND~combout\ & (\M2|ALU_ADD~combout\ & (\M4|REGQ\(0) & \M2|ALU_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_AND~combout\,
	datab => \M2|ALU_ADD~combout\,
	datac => \M4|REGQ\(0),
	datad => \M2|ALU_SUB~combout\,
	combout => \M3|Add0~36_combout\);

-- Location: LCCOMB_X28_Y7_N24
\M3|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~37_combout\ = (\M3|Add0~14_combout\ & (((\M3|Add0~36_combout\ & \M5|REGQ\(0))) # (!\M3|acc1[0]~0_combout\))) # (!\M3|Add0~14_combout\ & (\M3|Add0~36_combout\ & (\M5|REGQ\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~14_combout\,
	datab => \M3|Add0~36_combout\,
	datac => \M5|REGQ\(0),
	datad => \M3|acc1[0]~0_combout\,
	combout => \M3|Add0~37_combout\);

-- Location: LCCOMB_X28_Y7_N26
\M3|acc1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|acc1\(0) = (\rst~input_o\ & ((GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & (\M3|Add0~37_combout\)) # (!GLOBAL(\M3|acc1[7]~1clkctrl_outclk\) & ((\M3|acc1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~37_combout\,
	datab => \rst~input_o\,
	datac => \M3|acc1\(0),
	datad => \M3|acc1[7]~1clkctrl_outclk\,
	combout => \M3|acc1\(0));

-- Location: LCCOMB_X25_Y7_N28
\D1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux6~0_combout\ = (\M3|acc1\(3) & (\M3|acc1\(0) & (\M3|acc1\(1) $ (\M3|acc1\(2))))) # (!\M3|acc1\(3) & (!\M3|acc1\(1) & (\M3|acc1\(2) $ (\M3|acc1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(3),
	datab => \M3|acc1\(1),
	datac => \M3|acc1\(2),
	datad => \M3|acc1\(0),
	combout => \D1|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y7_N14
\D2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Mux0~0_combout\ = (\D2|sel\(0) & (\D1|Mux13~0_combout\)) # (!\D2|sel\(0) & ((\D1|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D2|sel\(0),
	datac => \D1|Mux13~0_combout\,
	datad => \D1|Mux6~0_combout\,
	combout => \D2|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y7_N6
\D1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux12~0_combout\ = (\M3|acc1\(7) & ((\M3|acc1\(4) & ((\M3|acc1\(5)))) # (!\M3|acc1\(4) & (\M3|acc1\(6))))) # (!\M3|acc1\(7) & (\M3|acc1\(6) & (\M3|acc1\(5) $ (\M3|acc1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(6),
	datab => \M3|acc1\(7),
	datac => \M3|acc1\(5),
	datad => \M3|acc1\(4),
	combout => \D1|Mux12~0_combout\);

-- Location: LCCOMB_X25_Y7_N0
\D1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux5~0_combout\ = (\M3|acc1\(3) & ((\M3|acc1\(0) & (\M3|acc1\(1))) # (!\M3|acc1\(0) & ((\M3|acc1\(2)))))) # (!\M3|acc1\(3) & (\M3|acc1\(2) & (\M3|acc1\(1) $ (\M3|acc1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(3),
	datab => \M3|acc1\(1),
	datac => \M3|acc1\(2),
	datad => \M3|acc1\(0),
	combout => \D1|Mux5~0_combout\);

-- Location: LCCOMB_X25_Y7_N2
\D2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Mux3~0_combout\ = (\D2|sel\(0) & (\D1|Mux12~0_combout\)) # (!\D2|sel\(0) & ((\D1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D2|sel\(0),
	datac => \D1|Mux12~0_combout\,
	datad => \D1|Mux5~0_combout\,
	combout => \D2|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y7_N4
\D1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux4~0_combout\ = (\M3|acc1\(3) & (\M3|acc1\(2) & ((\M3|acc1\(1)) # (!\M3|acc1\(0))))) # (!\M3|acc1\(3) & (\M3|acc1\(1) & (!\M3|acc1\(2) & !\M3|acc1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(3),
	datab => \M3|acc1\(1),
	datac => \M3|acc1\(2),
	datad => \M3|acc1\(0),
	combout => \D1|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y7_N24
\D1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux11~0_combout\ = (\M3|acc1\(6) & (\M3|acc1\(7) & ((\M3|acc1\(5)) # (!\M3|acc1\(4))))) # (!\M3|acc1\(6) & (!\M3|acc1\(7) & (\M3|acc1\(5) & !\M3|acc1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(6),
	datab => \M3|acc1\(7),
	datac => \M3|acc1\(5),
	datad => \M3|acc1\(4),
	combout => \D1|Mux11~0_combout\);

-- Location: LCCOMB_X25_Y7_N6
\D2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Mux4~0_combout\ = (\D2|sel\(0) & ((\D1|Mux11~0_combout\))) # (!\D2|sel\(0) & (\D1|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1|Mux4~0_combout\,
	datac => \D2|sel\(0),
	datad => \D1|Mux11~0_combout\,
	combout => \D2|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y7_N2
\D1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux10~0_combout\ = (\M3|acc1\(5) & ((\M3|acc1\(6) & ((\M3|acc1\(4)))) # (!\M3|acc1\(6) & (\M3|acc1\(7) & !\M3|acc1\(4))))) # (!\M3|acc1\(5) & (!\M3|acc1\(7) & (\M3|acc1\(6) $ (\M3|acc1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(6),
	datab => \M3|acc1\(7),
	datac => \M3|acc1\(5),
	datad => \M3|acc1\(4),
	combout => \D1|Mux10~0_combout\);

-- Location: LCCOMB_X25_Y7_N16
\D1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux3~0_combout\ = (\M3|acc1\(1) & ((\M3|acc1\(2) & ((\M3|acc1\(0)))) # (!\M3|acc1\(2) & (\M3|acc1\(3) & !\M3|acc1\(0))))) # (!\M3|acc1\(1) & (!\M3|acc1\(3) & (\M3|acc1\(2) $ (\M3|acc1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(3),
	datab => \M3|acc1\(1),
	datac => \M3|acc1\(2),
	datad => \M3|acc1\(0),
	combout => \D1|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y7_N18
\D2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Mux5~0_combout\ = (\D2|sel\(0) & (\D1|Mux10~0_combout\)) # (!\D2|sel\(0) & ((\D1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1|Mux10~0_combout\,
	datab => \D1|Mux3~0_combout\,
	datac => \D2|sel\(0),
	combout => \D2|Mux5~0_combout\);

-- Location: LCCOMB_X25_Y7_N24
\D1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux2~0_combout\ = (\M3|acc1\(1) & (!\M3|acc1\(3) & ((\M3|acc1\(0))))) # (!\M3|acc1\(1) & ((\M3|acc1\(2) & (!\M3|acc1\(3))) # (!\M3|acc1\(2) & ((\M3|acc1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(3),
	datab => \M3|acc1\(1),
	datac => \M3|acc1\(2),
	datad => \M3|acc1\(0),
	combout => \D1|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y7_N12
\D1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux9~0_combout\ = (\M3|acc1\(5) & (((!\M3|acc1\(7) & \M3|acc1\(4))))) # (!\M3|acc1\(5) & ((\M3|acc1\(6) & (!\M3|acc1\(7))) # (!\M3|acc1\(6) & ((\M3|acc1\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(6),
	datab => \M3|acc1\(7),
	datac => \M3|acc1\(5),
	datad => \M3|acc1\(4),
	combout => \D1|Mux9~0_combout\);

-- Location: LCCOMB_X25_Y7_N22
\D2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Mux6~0_combout\ = (\D2|sel\(0) & ((\D1|Mux9~0_combout\))) # (!\D2|sel\(0) & (\D1|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1|Mux2~0_combout\,
	datac => \D2|sel\(0),
	datad => \D1|Mux9~0_combout\,
	combout => \D2|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y7_N20
\D1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux1~0_combout\ = (\M3|acc1\(1) & (!\M3|acc1\(3) & ((\M3|acc1\(0)) # (!\M3|acc1\(2))))) # (!\M3|acc1\(1) & (\M3|acc1\(0) & (\M3|acc1\(3) $ (!\M3|acc1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(3),
	datab => \M3|acc1\(1),
	datac => \M3|acc1\(2),
	datad => \M3|acc1\(0),
	combout => \D1|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y7_N22
\D1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux8~0_combout\ = (\M3|acc1\(6) & (\M3|acc1\(4) & (\M3|acc1\(7) $ (\M3|acc1\(5))))) # (!\M3|acc1\(6) & (!\M3|acc1\(7) & ((\M3|acc1\(5)) # (\M3|acc1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(6),
	datab => \M3|acc1\(7),
	datac => \M3|acc1\(5),
	datad => \M3|acc1\(4),
	combout => \D1|Mux8~0_combout\);

-- Location: LCCOMB_X25_Y7_N30
\D2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Mux7~0_combout\ = (\D2|sel\(0) & ((\D1|Mux8~0_combout\))) # (!\D2|sel\(0) & (\D1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1|Mux1~0_combout\,
	datac => \D2|sel\(0),
	datad => \D1|Mux8~0_combout\,
	combout => \D2|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y7_N12
\D1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux0~0_combout\ = (\M3|acc1\(0) & ((\M3|acc1\(3)) # (\M3|acc1\(1) $ (\M3|acc1\(2))))) # (!\M3|acc1\(0) & ((\M3|acc1\(1)) # (\M3|acc1\(3) $ (\M3|acc1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(3),
	datab => \M3|acc1\(1),
	datac => \M3|acc1\(2),
	datad => \M3|acc1\(0),
	combout => \D1|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y7_N20
\D1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux7~0_combout\ = (\M3|acc1\(4) & ((\M3|acc1\(7)) # (\M3|acc1\(6) $ (\M3|acc1\(5))))) # (!\M3|acc1\(4) & ((\M3|acc1\(5)) # (\M3|acc1\(6) $ (\M3|acc1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|acc1\(6),
	datab => \M3|acc1\(7),
	datac => \M3|acc1\(5),
	datad => \M3|acc1\(4),
	combout => \D1|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y7_N26
\D2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Mux8~0_combout\ = (\D2|sel\(0) & ((\D1|Mux7~0_combout\))) # (!\D2|sel\(0) & (\D1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1|Mux0~0_combout\,
	datac => \D2|sel\(0),
	datad => \D1|Mux7~0_combout\,
	combout => \D2|Mux8~0_combout\);

ww_clk_out <= \clk_out~output_o\;

ww_r_out(0) <= \r_out[0]~output_o\;

ww_r_out(1) <= \r_out[1]~output_o\;

ww_r_out(2) <= \r_out[2]~output_o\;

ww_r_out(3) <= \r_out[3]~output_o\;

ww_r_out(4) <= \r_out[4]~output_o\;

ww_r_out(5) <= \r_out[5]~output_o\;

ww_r_out(6) <= \r_out[6]~output_o\;

ww_r_out(7) <= \r_out[7]~output_o\;

ww_d_out(0) <= \d_out[0]~output_o\;

ww_d_out(1) <= \d_out[1]~output_o\;

ww_d_out(2) <= \d_out[2]~output_o\;

ww_d_out(3) <= \d_out[3]~output_o\;

ww_d_out(4) <= \d_out[4]~output_o\;

ww_d_out(5) <= \d_out[5]~output_o\;

ww_d_out(6) <= \d_out[6]~output_o\;

ww_d_out(7) <= \d_out[7]~output_o\;

ww_cmd_LD1 <= \cmd_LD1~output_o\;

ww_cmd_add1 <= \cmd_add1~output_o\;

ww_cmd_sub1 <= \cmd_sub1~output_o\;

ww_cmd_and1 <= \cmd_and1~output_o\;

ww_cmd_shl1 <= \cmd_shl1~output_o\;

ww_HALT1 <= \HALT1~output_o\;

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(4) <= \OUTPUT[4]~output_o\;

ww_OUTPUT(5) <= \OUTPUT[5]~output_o\;

ww_OUTPUT(6) <= \OUTPUT[6]~output_o\;

ww_OUTPUT(7) <= \OUTPUT[7]~output_o\;

ww_sel(0) <= \sel[0]~output_o\;

ww_sel(1) <= \sel[1]~output_o\;

ww_sel(2) <= \sel[2]~output_o\;

ww_sel(3) <= \sel[3]~output_o\;
END structure;


