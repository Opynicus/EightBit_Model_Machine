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

-- DATE "07/10/2021 19:11:06"

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

ENTITY 	EightBit_Computer IS
    PORT (
	CLK_50Mhz : IN std_logic;
	CLR : IN std_logic;
	reset : IN std_logic;
	clk_out : BUFFER std_logic;
	r_out : BUFFER std_logic_vector(7 DOWNTO 0);
	d_out : BUFFER std_logic_vector(7 DOWNTO 0);
	cmd_LD1 : BUFFER std_logic;
	cmd_add1 : BUFFER std_logic;
	cmd_sub1 : BUFFER std_logic;
	cmd_and1 : BUFFER std_logic;
	cmd_or1 : BUFFER std_logic;
	cmd_xor1 : BUFFER std_logic;
	cmd_not1 : BUFFER std_logic;
	cmd_neg1 : BUFFER std_logic;
	cmd_shl1 : BUFFER std_logic;
	cmd_shr1 : BUFFER std_logic;
	HALT1 : BUFFER std_logic;
	OUTPUT : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END EightBit_Computer;

-- Design Ports Information
-- clk_out	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[0]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[2]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[3]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[5]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[6]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[7]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[0]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[3]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[4]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[6]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[7]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_LD1	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_add1	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_sub1	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_and1	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_or1	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_xor1	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_not1	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_neg1	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_shl1	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_shr1	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HALT1	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[4]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[5]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[6]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[7]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50Mhz	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EightBit_Computer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50Mhz : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_r_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cmd_LD1 : std_logic;
SIGNAL ww_cmd_add1 : std_logic;
SIGNAL ww_cmd_sub1 : std_logic;
SIGNAL ww_cmd_and1 : std_logic;
SIGNAL ww_cmd_or1 : std_logic;
SIGNAL ww_cmd_xor1 : std_logic;
SIGNAL ww_cmd_not1 : std_logic;
SIGNAL ww_cmd_neg1 : std_logic;
SIGNAL ww_cmd_shl1 : std_logic;
SIGNAL ww_cmd_shr1 : std_logic;
SIGNAL ww_HALT1 : std_logic;
SIGNAL ww_OUTPUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M0|CLK_TEMP~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M8|Mux10~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[4]~output_o\ : std_logic;
SIGNAL \OUTPUT[5]~output_o\ : std_logic;
SIGNAL \OUTPUT[6]~output_o\ : std_logic;
SIGNAL \OUTPUT[7]~output_o\ : std_logic;
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
SIGNAL \cmd_or1~output_o\ : std_logic;
SIGNAL \cmd_xor1~output_o\ : std_logic;
SIGNAL \cmd_not1~output_o\ : std_logic;
SIGNAL \cmd_neg1~output_o\ : std_logic;
SIGNAL \cmd_shl1~output_o\ : std_logic;
SIGNAL \cmd_shr1~output_o\ : std_logic;
SIGNAL \HALT1~output_o\ : std_logic;
SIGNAL \CLK_50Mhz~input_o\ : std_logic;
SIGNAL \M0|COUNTER[0]~12_combout\ : std_logic;
SIGNAL \M0|COUNTER[0]~feeder_combout\ : std_logic;
SIGNAL \M0|COUNTER[3]~9\ : std_logic;
SIGNAL \M0|COUNTER[4]~10_combout\ : std_logic;
SIGNAL \M0|Equal0~1_combout\ : std_logic;
SIGNAL \M0|COUNTER[1]~4_combout\ : std_logic;
SIGNAL \M0|COUNTER[1]~5\ : std_logic;
SIGNAL \M0|COUNTER[2]~6_combout\ : std_logic;
SIGNAL \M0|COUNTER[2]~7\ : std_logic;
SIGNAL \M0|COUNTER[3]~8_combout\ : std_logic;
SIGNAL \M0|Equal0~0_combout\ : std_logic;
SIGNAL \M0|CLK_TEMP~0_combout\ : std_logic;
SIGNAL \M0|CLK_TEMP~0clkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \M6|tmp_out[1]~6\ : std_logic;
SIGNAL \M6|tmp_out[2]~7_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \CLR~inputclkctrl_outclk\ : std_logic;
SIGNAL \M9|Mux6~3_combout\ : std_logic;
SIGNAL \M6|tmp_out[4]~12\ : std_logic;
SIGNAL \M6|tmp_out[5]~13_combout\ : std_logic;
SIGNAL \M7|Address_Out[5]~feeder_combout\ : std_logic;
SIGNAL \M9|Mux6~0_combout\ : std_logic;
SIGNAL \M9|Mux6~1_combout\ : std_logic;
SIGNAL \M9|Mux6~2_combout\ : std_logic;
SIGNAL \M9|Mux6~4_combout\ : std_logic;
SIGNAL \M9|Mux3~1_combout\ : std_logic;
SIGNAL \M9|Mux3~0_combout\ : std_logic;
SIGNAL \M9|Mux3~2_combout\ : std_logic;
SIGNAL \M1|TEMP[5]~feeder_combout\ : std_logic;
SIGNAL \M1|TEMP[0]~1_combout\ : std_logic;
SIGNAL \M1|TEMP[1]~0_combout\ : std_logic;
SIGNAL \M1|TEMP[2]~feeder_combout\ : std_logic;
SIGNAL \M9|Mux0~2_combout\ : std_logic;
SIGNAL \M9|Mux1~0_combout\ : std_logic;
SIGNAL \M9|Mux0~0_combout\ : std_logic;
SIGNAL \M9|Mux0~1_combout\ : std_logic;
SIGNAL \M9|Mux0~3_combout\ : std_logic;
SIGNAL \M5|REGQ[5]~feeder_combout\ : std_logic;
SIGNAL \M8|Mux1~2_combout\ : std_logic;
SIGNAL \M8|Mux1~3_combout\ : std_logic;
SIGNAL \M9|Mux5~1_combout\ : std_logic;
SIGNAL \M9|Mux5~0_combout\ : std_logic;
SIGNAL \M9|Mux5~2_combout\ : std_logic;
SIGNAL \M8|Mux10~0_combout\ : std_logic;
SIGNAL \M8|Mux10~0clkctrl_outclk\ : std_logic;
SIGNAL \M2|IIR~combout\ : std_logic;
SIGNAL \M8|Mux5~0_combout\ : std_logic;
SIGNAL \M8|Mux0~0_combout\ : std_logic;
SIGNAL \M8|Mux5~1_combout\ : std_logic;
SIGNAL \M2|IDR~3_combout\ : std_logic;
SIGNAL \M8|Mux0~3_combout\ : std_logic;
SIGNAL \M8|Mux1~0_combout\ : std_logic;
SIGNAL \M8|Mux1~1_combout\ : std_logic;
SIGNAL \M8|Mux4~0_combout\ : std_logic;
SIGNAL \M8|Mux4~1_combout\ : std_logic;
SIGNAL \M2|IDR~0_combout\ : std_logic;
SIGNAL \M8|Mux9~0_combout\ : std_logic;
SIGNAL \M2|IDR~2_combout\ : std_logic;
SIGNAL \M8|Mux3~3_combout\ : std_logic;
SIGNAL \M8|Mux6~0_combout\ : std_logic;
SIGNAL \M8|Mux7~0_combout\ : std_logic;
SIGNAL \M8|Mux8~0_combout\ : std_logic;
SIGNAL \M2|IDR~1_combout\ : std_logic;
SIGNAL \M2|IDR~4_combout\ : std_logic;
SIGNAL \M2|IDR~combout\ : std_logic;
SIGNAL \M8|Mux3~1_combout\ : std_logic;
SIGNAL \M8|Mux3~0_combout\ : std_logic;
SIGNAL \M8|Mux3~2_combout\ : std_logic;
SIGNAL \M2|IMAR~2_combout\ : std_logic;
SIGNAL \M2|IMAR~0_combout\ : std_logic;
SIGNAL \M2|IMAR~3_combout\ : std_logic;
SIGNAL \M2|IMAR~1_combout\ : std_logic;
SIGNAL \M2|IMAR~4_combout\ : std_logic;
SIGNAL \M2|IMAR~combout\ : std_logic;
SIGNAL \M9|Mux1~1_combout\ : std_logic;
SIGNAL \M9|Mux1~2_combout\ : std_logic;
SIGNAL \M9|Mux1~3_combout\ : std_logic;
SIGNAL \M9|Mux1~4_combout\ : std_logic;
SIGNAL \M8|Mux0~1_combout\ : std_logic;
SIGNAL \M8|Mux0~2_combout\ : std_logic;
SIGNAL \M2|IPC~0_combout\ : std_logic;
SIGNAL \M2|IPC~6_combout\ : std_logic;
SIGNAL \M6|tmp_out[2]~8\ : std_logic;
SIGNAL \M6|tmp_out[3]~9_combout\ : std_logic;
SIGNAL \M6|tmp_out[3]~10\ : std_logic;
SIGNAL \M6|tmp_out[4]~11_combout\ : std_logic;
SIGNAL \M7|Address_Out[4]~feeder_combout\ : std_logic;
SIGNAL \M9|Mux4~3_combout\ : std_logic;
SIGNAL \M9|Mux4~1_combout\ : std_logic;
SIGNAL \M9|Mux4~0_combout\ : std_logic;
SIGNAL \M9|Mux4~2_combout\ : std_logic;
SIGNAL \M9|Mux4~4_combout\ : std_logic;
SIGNAL \M2|IPC~4_combout\ : std_logic;
SIGNAL \M2|IPC~2_combout\ : std_logic;
SIGNAL \M2|IPC~3_combout\ : std_logic;
SIGNAL \M2|IPC~5_combout\ : std_logic;
SIGNAL \M6|tmp_out[0]~15_combout\ : std_logic;
SIGNAL \M6|tmp_out[1]~5_combout\ : std_logic;
SIGNAL \M9|Mux2~1_combout\ : std_logic;
SIGNAL \M9|Mux2~0_combout\ : std_logic;
SIGNAL \M9|Mux2~2_combout\ : std_logic;
SIGNAL \M8|Mux2~0_combout\ : std_logic;
SIGNAL \M8|Mux2~1_combout\ : std_logic;
SIGNAL \M2|IPC~1_combout\ : std_logic;
SIGNAL \M2|ALU_SUB~combout\ : std_logic;
SIGNAL \M2|IPC~7_combout\ : std_logic;
SIGNAL \M2|ALU_ADD~combout\ : std_logic;
SIGNAL \M3|tmp~0_combout\ : std_logic;
SIGNAL \M2|ESUM~2_combout\ : std_logic;
SIGNAL \M2|ESUM~0_combout\ : std_logic;
SIGNAL \M2|ESUM~1_combout\ : std_logic;
SIGNAL \M2|IA~0_combout\ : std_logic;
SIGNAL \M2|IA~combout\ : std_logic;
SIGNAL \M3|Add0~1_combout\ : std_logic;
SIGNAL \M3|Add0~0_combout\ : std_logic;
SIGNAL \M3|Add0~3_cout\ : std_logic;
SIGNAL \M3|Add0~4_combout\ : std_logic;
SIGNAL \M3|tmp~1_combout\ : std_logic;
SIGNAL \M2|ALU_NOT~0_combout\ : std_logic;
SIGNAL \M2|ALU_NOT~combout\ : std_logic;
SIGNAL \M2|ALU_XOR~combout\ : std_logic;
SIGNAL \M3|tmp~8_combout\ : std_logic;
SIGNAL \M2|IPC~8_combout\ : std_logic;
SIGNAL \M2|ALU_OR~combout\ : std_logic;
SIGNAL \M2|ALU_AND~combout\ : std_logic;
SIGNAL \M3|tmp~7_combout\ : std_logic;
SIGNAL \M3|tmp[1]~2_combout\ : std_logic;
SIGNAL \M2|ALU_NEG~0_combout\ : std_logic;
SIGNAL \M2|ALU_NEG~combout\ : std_logic;
SIGNAL \M3|tmp~3_combout\ : std_logic;
SIGNAL \M3|tmp[1]~5_combout\ : std_logic;
SIGNAL \M2|ALU_SHR~0_combout\ : std_logic;
SIGNAL \M2|ALU_SHR~combout\ : std_logic;
SIGNAL \M2|ALU_SHL~0_combout\ : std_logic;
SIGNAL \M2|ALU_SHL~combout\ : std_logic;
SIGNAL \M3|tmp~4_combout\ : std_logic;
SIGNAL \M3|tmp~6_combout\ : std_logic;
SIGNAL \M3|tmp~9_combout\ : std_logic;
SIGNAL \M3|tmp~10_combout\ : std_logic;
SIGNAL \M2|ESUM~3_combout\ : std_logic;
SIGNAL \M2|ESUM~combout\ : std_logic;
SIGNAL \M3|tmp~17_combout\ : std_logic;
SIGNAL \M3|tmp~16_combout\ : std_logic;
SIGNAL \M3|tmp[1]~11_combout\ : std_logic;
SIGNAL \M3|tmp[1]~12_combout\ : std_logic;
SIGNAL \M3|tmp[1]~13_combout\ : std_logic;
SIGNAL \M3|tmp~14_combout\ : std_logic;
SIGNAL \M3|tmp~15_combout\ : std_logic;
SIGNAL \M3|tmp~51_combout\ : std_logic;
SIGNAL \M3|tmp~52_combout\ : std_logic;
SIGNAL \M3|Add0~7_combout\ : std_logic;
SIGNAL \M3|Add0~6_combout\ : std_logic;
SIGNAL \M3|Add0~5\ : std_logic;
SIGNAL \M3|Add0~8_combout\ : std_logic;
SIGNAL \M3|tmp~18_combout\ : std_logic;
SIGNAL \M3|Add0~11_combout\ : std_logic;
SIGNAL \M3|Add0~10_combout\ : std_logic;
SIGNAL \M3|Add0~9\ : std_logic;
SIGNAL \M3|Add0~12_combout\ : std_logic;
SIGNAL \M3|tmp~19_combout\ : std_logic;
SIGNAL \M3|tmp~20_combout\ : std_logic;
SIGNAL \M3|tmp~49_combout\ : std_logic;
SIGNAL \M3|tmp~50_combout\ : std_logic;
SIGNAL \M3|tmp~21_combout\ : std_logic;
SIGNAL \M3|tmp~22_combout\ : std_logic;
SIGNAL \M3|tmp~23_combout\ : std_logic;
SIGNAL \M3|tmp~47_combout\ : std_logic;
SIGNAL \M3|tmp~48_combout\ : std_logic;
SIGNAL \M3|Add0~14_combout\ : std_logic;
SIGNAL \M3|Add0~15_combout\ : std_logic;
SIGNAL \M3|Add0~13\ : std_logic;
SIGNAL \M3|Add0~16_combout\ : std_logic;
SIGNAL \M3|tmp~24_combout\ : std_logic;
SIGNAL \M3|Add0~19_combout\ : std_logic;
SIGNAL \M3|Add0~18_combout\ : std_logic;
SIGNAL \M3|Add0~17\ : std_logic;
SIGNAL \M3|Add0~20_combout\ : std_logic;
SIGNAL \M4|REGQ[5]~feeder_combout\ : std_logic;
SIGNAL \M3|tmp~25_combout\ : std_logic;
SIGNAL \M3|tmp~26_combout\ : std_logic;
SIGNAL \M3|tmp~45_combout\ : std_logic;
SIGNAL \M3|tmp~46_combout\ : std_logic;
SIGNAL \M3|tmp~27_combout\ : std_logic;
SIGNAL \M3|Add0~23_combout\ : std_logic;
SIGNAL \M3|Add0~22_combout\ : std_logic;
SIGNAL \M3|Add0~21\ : std_logic;
SIGNAL \M3|Add0~24_combout\ : std_logic;
SIGNAL \M4|REGQ[6]~feeder_combout\ : std_logic;
SIGNAL \M3|tmp~28_combout\ : std_logic;
SIGNAL \M3|tmp~29_combout\ : std_logic;
SIGNAL \M3|tmp~43_combout\ : std_logic;
SIGNAL \M3|tmp~44_combout\ : std_logic;
SIGNAL \M3|tmp~30_combout\ : std_logic;
SIGNAL \M3|Add0~26_combout\ : std_logic;
SIGNAL \M3|Add0~27_combout\ : std_logic;
SIGNAL \M3|Add0~25\ : std_logic;
SIGNAL \M3|Add0~28_combout\ : std_logic;
SIGNAL \M4|REGQ[7]~feeder_combout\ : std_logic;
SIGNAL \M3|tmp~31_combout\ : std_logic;
SIGNAL \M3|tmp~32_combout\ : std_logic;
SIGNAL \M3|tmp~41_combout\ : std_logic;
SIGNAL \M3|tmp~42_combout\ : std_logic;
SIGNAL \M3|tmp~33_combout\ : std_logic;
SIGNAL \M3|tmp~34_combout\ : std_logic;
SIGNAL \M3|tmp~38_combout\ : std_logic;
SIGNAL \M3|Add0~30_combout\ : std_logic;
SIGNAL \M3|Add0~31_combout\ : std_logic;
SIGNAL \M3|Add0~29\ : std_logic;
SIGNAL \M3|Add0~32_combout\ : std_logic;
SIGNAL \M3|tmp~39_combout\ : std_logic;
SIGNAL \M3|tmp~36_combout\ : std_logic;
SIGNAL \M3|tmp~35_combout\ : std_logic;
SIGNAL \M3|tmp~37_combout\ : std_logic;
SIGNAL \M3|tmp~40_combout\ : std_logic;
SIGNAL \M5|REGQ\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \M0|COUNTER\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \M4|REGQ\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \M6|tmp_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \M8|REGQ\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \M3|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \M7|Address_Out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \M1|TEMP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \M0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \M2|ALT_INV_IMAR~combout\ : std_logic;
SIGNAL \M2|ALT_INV_ESUM~combout\ : std_logic;
SIGNAL \M2|ALT_INV_IIR~combout\ : std_logic;
SIGNAL \M2|ALT_INV_IA~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK_50Mhz <= CLK_50Mhz;
ww_CLR <= CLR;
ww_reset <= reset;
clk_out <= ww_clk_out;
r_out <= ww_r_out;
d_out <= ww_d_out;
cmd_LD1 <= ww_cmd_LD1;
cmd_add1 <= ww_cmd_add1;
cmd_sub1 <= ww_cmd_sub1;
cmd_and1 <= ww_cmd_and1;
cmd_or1 <= ww_cmd_or1;
cmd_xor1 <= ww_cmd_xor1;
cmd_not1 <= ww_cmd_not1;
cmd_neg1 <= ww_cmd_neg1;
cmd_shl1 <= ww_cmd_shl1;
cmd_shr1 <= ww_cmd_shr1;
HALT1 <= ww_HALT1;
OUTPUT <= ww_OUTPUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLR~input_o\);

\M0|CLK_TEMP~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \M0|CLK_TEMP~0_combout\);

\M8|Mux10~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \M8|Mux10~0_combout\);
\M0|ALT_INV_Equal0~1_combout\ <= NOT \M0|Equal0~1_combout\;
\M2|ALT_INV_IMAR~combout\ <= NOT \M2|IMAR~combout\;
\M2|ALT_INV_ESUM~combout\ <= NOT \M2|ESUM~combout\;
\M2|ALT_INV_IIR~combout\ <= NOT \M2|IIR~combout\;
\M2|ALT_INV_IA~combout\ <= NOT \M2|IA~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y18_N16
\OUTPUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3|tmp\(0),
	oe => \M2|ALT_INV_ESUM~combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\OUTPUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3|tmp\(1),
	oe => \M2|ALT_INV_ESUM~combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\OUTPUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3|tmp\(2),
	oe => \M2|ALT_INV_ESUM~combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\OUTPUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3|tmp\(3),
	oe => \M2|ALT_INV_ESUM~combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\OUTPUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3|tmp\(4),
	oe => \M2|ALT_INV_ESUM~combout\,
	devoe => ww_devoe,
	o => \OUTPUT[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\OUTPUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3|tmp\(5),
	oe => \M2|ALT_INV_ESUM~combout\,
	devoe => ww_devoe,
	o => \OUTPUT[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\OUTPUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3|tmp\(6),
	oe => \M2|ALT_INV_ESUM~combout\,
	devoe => ww_devoe,
	o => \OUTPUT[6]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\OUTPUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3|tmp\(7),
	oe => \M2|ALT_INV_ESUM~combout\,
	devoe => ww_devoe,
	o => \OUTPUT[7]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
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

-- Location: IOOBUF_X28_Y24_N2
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

-- Location: IOOBUF_X23_Y24_N9
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

-- Location: IOOBUF_X30_Y24_N23
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

-- Location: IOOBUF_X34_Y20_N9
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

-- Location: IOOBUF_X28_Y24_N9
\r_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M4|REGQ\(4),
	devoe => ww_devoe,
	o => \r_out[4]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\r_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M4|REGQ\(5),
	devoe => ww_devoe,
	o => \r_out[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X28_Y24_N23
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

-- Location: IOOBUF_X28_Y24_N16
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

-- Location: IOOBUF_X16_Y24_N9
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

-- Location: IOOBUF_X13_Y24_N16
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

-- Location: IOOBUF_X34_Y17_N23
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

-- Location: IOOBUF_X34_Y17_N2
\d_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M5|REGQ\(4),
	devoe => ww_devoe,
	o => \d_out[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\d_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M5|REGQ\(5),
	devoe => ww_devoe,
	o => \d_out[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
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

-- Location: IOOBUF_X34_Y17_N16
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

-- Location: IOOBUF_X16_Y24_N2
\cmd_LD1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \cmd_LD1~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\cmd_add1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \cmd_add1~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\cmd_sub1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \cmd_sub1~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\cmd_and1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \cmd_and1~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\cmd_or1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \cmd_or1~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\cmd_xor1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \cmd_xor1~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\cmd_not1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \cmd_not1~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\cmd_neg1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \cmd_neg1~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\cmd_shl1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \cmd_shl1~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\cmd_shr1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \cmd_shr1~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\HALT1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \HALT1~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK_50Mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50Mhz,
	o => \CLK_50Mhz~input_o\);

-- Location: LCCOMB_X22_Y12_N28
\M0|COUNTER[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|COUNTER[0]~12_combout\ = !\M0|COUNTER\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M0|COUNTER\(0),
	combout => \M0|COUNTER[0]~12_combout\);

-- Location: LCCOMB_X22_Y12_N30
\M0|COUNTER[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|COUNTER[0]~feeder_combout\ = \M0|COUNTER[0]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M0|COUNTER[0]~12_combout\,
	combout => \M0|COUNTER[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N22
\M0|COUNTER[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|COUNTER[3]~8_combout\ = (\M0|COUNTER\(3) & (\M0|COUNTER[2]~7\ $ (GND))) # (!\M0|COUNTER\(3) & (!\M0|COUNTER[2]~7\ & VCC))
-- \M0|COUNTER[3]~9\ = CARRY((\M0|COUNTER\(3) & !\M0|COUNTER[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M0|COUNTER\(3),
	datad => VCC,
	cin => \M0|COUNTER[2]~7\,
	combout => \M0|COUNTER[3]~8_combout\,
	cout => \M0|COUNTER[3]~9\);

-- Location: LCCOMB_X22_Y12_N24
\M0|COUNTER[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|COUNTER[4]~10_combout\ = \M0|COUNTER\(4) $ (\M0|COUNTER[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M0|COUNTER\(4),
	cin => \M0|COUNTER[3]~9\,
	combout => \M0|COUNTER[4]~10_combout\);

-- Location: FF_X22_Y12_N25
\M0|COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50Mhz~input_o\,
	d => \M0|COUNTER[4]~10_combout\,
	clrn => \M0|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M0|COUNTER\(4));

-- Location: LCCOMB_X22_Y12_N14
\M0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|Equal0~1_combout\ = (\M0|COUNTER\(4) & \M0|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M0|COUNTER\(4),
	datad => \M0|Equal0~0_combout\,
	combout => \M0|Equal0~1_combout\);

-- Location: FF_X22_Y12_N31
\M0|COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50Mhz~input_o\,
	d => \M0|COUNTER[0]~feeder_combout\,
	clrn => \M0|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M0|COUNTER\(0));

-- Location: LCCOMB_X22_Y12_N18
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

-- Location: FF_X22_Y12_N19
\M0|COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50Mhz~input_o\,
	d => \M0|COUNTER[1]~4_combout\,
	clrn => \M0|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M0|COUNTER\(1));

-- Location: LCCOMB_X22_Y12_N20
\M0|COUNTER[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|COUNTER[2]~6_combout\ = (\M0|COUNTER\(2) & (!\M0|COUNTER[1]~5\)) # (!\M0|COUNTER\(2) & ((\M0|COUNTER[1]~5\) # (GND)))
-- \M0|COUNTER[2]~7\ = CARRY((!\M0|COUNTER[1]~5\) # (!\M0|COUNTER\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M0|COUNTER\(2),
	datad => VCC,
	cin => \M0|COUNTER[1]~5\,
	combout => \M0|COUNTER[2]~6_combout\,
	cout => \M0|COUNTER[2]~7\);

-- Location: FF_X22_Y12_N21
\M0|COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50Mhz~input_o\,
	d => \M0|COUNTER[2]~6_combout\,
	clrn => \M0|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M0|COUNTER\(2));

-- Location: FF_X22_Y12_N23
\M0|COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50Mhz~input_o\,
	d => \M0|COUNTER[3]~8_combout\,
	clrn => \M0|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M0|COUNTER\(3));

-- Location: LCCOMB_X22_Y12_N4
\M0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|Equal0~0_combout\ = (\M0|COUNTER\(3) & (!\M0|COUNTER\(2) & (\M0|COUNTER\(0) & !\M0|COUNTER\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M0|COUNTER\(3),
	datab => \M0|COUNTER\(2),
	datac => \M0|COUNTER\(0),
	datad => \M0|COUNTER\(1),
	combout => \M0|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y12_N0
\M0|CLK_TEMP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M0|CLK_TEMP~0_combout\ = \M0|CLK_TEMP~0_combout\ $ (((\M0|Equal0~0_combout\ & \M0|COUNTER\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M0|CLK_TEMP~0_combout\,
	datac => \M0|Equal0~0_combout\,
	datad => \M0|COUNTER\(4),
	combout => \M0|CLK_TEMP~0_combout\);

-- Location: CLKCTRL_G8
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

-- Location: IOIBUF_X0_Y11_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X24_Y13_N0
\M6|tmp_out[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|tmp_out[1]~5_combout\ = (\M6|tmp_out\(0) & (\M6|tmp_out\(1) $ (VCC))) # (!\M6|tmp_out\(0) & (\M6|tmp_out\(1) & VCC))
-- \M6|tmp_out[1]~6\ = CARRY((\M6|tmp_out\(0) & \M6|tmp_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M6|tmp_out\(0),
	datab => \M6|tmp_out\(1),
	datad => VCC,
	combout => \M6|tmp_out[1]~5_combout\,
	cout => \M6|tmp_out[1]~6\);

-- Location: LCCOMB_X24_Y13_N2
\M6|tmp_out[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|tmp_out[2]~7_combout\ = (\M6|tmp_out\(2) & (!\M6|tmp_out[1]~6\)) # (!\M6|tmp_out\(2) & ((\M6|tmp_out[1]~6\) # (GND)))
-- \M6|tmp_out[2]~8\ = CARRY((!\M6|tmp_out[1]~6\) # (!\M6|tmp_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M6|tmp_out\(2),
	datad => VCC,
	cin => \M6|tmp_out[1]~6\,
	combout => \M6|tmp_out[2]~7_combout\,
	cout => \M6|tmp_out[2]~8\);

-- Location: IOIBUF_X0_Y11_N15
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: CLKCTRL_G1
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

-- Location: FF_X26_Y13_N11
\M7|Address_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M6|tmp_out\(0),
	sload => VCC,
	ena => \M2|ALT_INV_IMAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M7|Address_Out\(0));

-- Location: FF_X26_Y13_N15
\M7|Address_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M6|tmp_out\(3),
	sload => VCC,
	ena => \M2|ALT_INV_IMAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M7|Address_Out\(3));

-- Location: LCCOMB_X26_Y13_N26
\M9|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux6~3_combout\ = (\M7|Address_Out\(0) & (!\M7|Address_Out\(1) & ((\M7|Address_Out\(2))))) # (!\M7|Address_Out\(0) & (\M7|Address_Out\(3) & (\M7|Address_Out\(1) $ (!\M7|Address_Out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(0),
	datac => \M7|Address_Out\(3),
	datad => \M7|Address_Out\(2),
	combout => \M9|Mux6~3_combout\);

-- Location: LCCOMB_X24_Y13_N6
\M6|tmp_out[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|tmp_out[4]~11_combout\ = (\M6|tmp_out\(4) & (!\M6|tmp_out[3]~10\)) # (!\M6|tmp_out\(4) & ((\M6|tmp_out[3]~10\) # (GND)))
-- \M6|tmp_out[4]~12\ = CARRY((!\M6|tmp_out[3]~10\) # (!\M6|tmp_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M6|tmp_out\(4),
	datad => VCC,
	cin => \M6|tmp_out[3]~10\,
	combout => \M6|tmp_out[4]~11_combout\,
	cout => \M6|tmp_out[4]~12\);

-- Location: LCCOMB_X24_Y13_N8
\M6|tmp_out[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|tmp_out[5]~13_combout\ = \M6|tmp_out\(5) $ (!\M6|tmp_out[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M6|tmp_out\(5),
	cin => \M6|tmp_out[4]~12\,
	combout => \M6|tmp_out[5]~13_combout\);

-- Location: FF_X24_Y13_N9
\M6|tmp_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M6|tmp_out[5]~13_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	ena => \M2|IPC~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M6|tmp_out\(5));

-- Location: LCCOMB_X25_Y13_N20
\M7|Address_Out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M7|Address_Out[5]~feeder_combout\ = \M6|tmp_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M6|tmp_out\(5),
	combout => \M7|Address_Out[5]~feeder_combout\);

-- Location: FF_X25_Y13_N21
\M7|Address_Out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M7|Address_Out[5]~feeder_combout\,
	ena => \M2|ALT_INV_IMAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M7|Address_Out\(5));

-- Location: LCCOMB_X26_Y13_N10
\M9|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux6~0_combout\ = (!\M7|Address_Out\(3) & (\M7|Address_Out\(5) & (!\M7|Address_Out\(0) & !\M7|Address_Out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(3),
	datab => \M7|Address_Out\(5),
	datac => \M7|Address_Out\(0),
	datad => \M7|Address_Out\(2),
	combout => \M9|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y13_N18
\M9|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux6~1_combout\ = (\M7|Address_Out\(2) & (\M7|Address_Out\(0) $ (((\M7|Address_Out\(1) & !\M7|Address_Out\(3)))))) # (!\M7|Address_Out\(2) & (\M7|Address_Out\(1) & ((\M7|Address_Out\(0)) # (\M7|Address_Out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(0),
	datac => \M7|Address_Out\(3),
	datad => \M7|Address_Out\(2),
	combout => \M9|Mux6~1_combout\);

-- Location: LCCOMB_X26_Y13_N24
\M9|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux6~2_combout\ = (!\M7|Address_Out\(4) & ((\M9|Mux6~0_combout\) # ((!\M7|Address_Out\(5) & \M9|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M9|Mux6~0_combout\,
	datab => \M7|Address_Out\(5),
	datac => \M7|Address_Out\(4),
	datad => \M9|Mux6~1_combout\,
	combout => \M9|Mux6~2_combout\);

-- Location: LCCOMB_X26_Y13_N20
\M9|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux6~4_combout\ = (\M9|Mux6~2_combout\) # ((\M9|Mux6~3_combout\ & (!\M7|Address_Out\(5) & \M7|Address_Out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M9|Mux6~3_combout\,
	datab => \M7|Address_Out\(5),
	datac => \M7|Address_Out\(4),
	datad => \M9|Mux6~2_combout\,
	combout => \M9|Mux6~4_combout\);

-- Location: LCCOMB_X26_Y13_N6
\M9|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux3~1_combout\ = (\M7|Address_Out\(0)) # (\M7|Address_Out\(1) $ (((\M7|Address_Out\(2) & \M7|Address_Out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(2),
	datac => \M7|Address_Out\(3),
	datad => \M7|Address_Out\(0),
	combout => \M9|Mux3~1_combout\);

-- Location: LCCOMB_X26_Y13_N14
\M9|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux3~0_combout\ = (\M7|Address_Out\(1) & (\M7|Address_Out\(3) $ (((!\M7|Address_Out\(2)) # (!\M7|Address_Out\(0)))))) # (!\M7|Address_Out\(1) & ((\M7|Address_Out\(0) & ((!\M7|Address_Out\(2)))) # (!\M7|Address_Out\(0) & (\M7|Address_Out\(3) & 
-- \M7|Address_Out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(0),
	datac => \M7|Address_Out\(3),
	datad => \M7|Address_Out\(2),
	combout => \M9|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y14_N24
\M9|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux3~2_combout\ = (\M7|Address_Out\(4) & ((\M9|Mux3~0_combout\))) # (!\M7|Address_Out\(4) & (!\M9|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M9|Mux3~1_combout\,
	datac => \M7|Address_Out\(4),
	datad => \M9|Mux3~0_combout\,
	combout => \M9|Mux3~2_combout\);

-- Location: FF_X25_Y14_N25
\M5|REGQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M9|Mux3~2_combout\,
	sclr => \M7|Address_Out\(5),
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(3));

-- Location: FF_X23_Y13_N7
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

-- Location: FF_X24_Y13_N23
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

-- Location: LCCOMB_X25_Y13_N24
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

-- Location: FF_X25_Y13_N25
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

-- Location: FF_X23_Y13_N3
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

-- Location: FF_X21_Y13_N31
\M1|TEMP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M1|TEMP\(6),
	clrn => \CLR~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|TEMP\(7));

-- Location: LCCOMB_X21_Y13_N30
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

-- Location: FF_X23_Y13_N17
\M1|TEMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M1|TEMP[0]~1_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|TEMP\(0));

-- Location: LCCOMB_X25_Y13_N18
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

-- Location: FF_X25_Y13_N19
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

-- Location: LCCOMB_X21_Y13_N4
\M1|TEMP[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M1|TEMP[2]~feeder_combout\ = \M1|TEMP\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1|TEMP\(1),
	combout => \M1|TEMP[2]~feeder_combout\);

-- Location: FF_X21_Y13_N5
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

-- Location: LCCOMB_X26_Y16_N24
\M9|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux0~2_combout\ = (!\M7|Address_Out\(0) & (\M7|Address_Out\(3) & (\M7|Address_Out\(1) $ (!\M7|Address_Out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(0),
	datac => \M7|Address_Out\(4),
	datad => \M7|Address_Out\(3),
	combout => \M9|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y13_N12
\M9|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux1~0_combout\ = (!\M7|Address_Out\(3) & (!\M7|Address_Out\(4) & (\M7|Address_Out\(1) $ (\M7|Address_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(3),
	datac => \M7|Address_Out\(4),
	datad => \M7|Address_Out\(0),
	combout => \M9|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y13_N30
\M9|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux0~0_combout\ = (\M7|Address_Out\(3) & (\M7|Address_Out\(4) & (\M7|Address_Out\(1) $ (!\M7|Address_Out\(0))))) # (!\M7|Address_Out\(3) & (!\M7|Address_Out\(0) & (\M7|Address_Out\(1) $ (\M7|Address_Out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(3),
	datac => \M7|Address_Out\(4),
	datad => \M7|Address_Out\(0),
	combout => \M9|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y13_N8
\M9|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux0~1_combout\ = (!\M7|Address_Out\(2) & ((\M7|Address_Out\(5) & (\M9|Mux1~0_combout\)) # (!\M7|Address_Out\(5) & ((\M9|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M9|Mux1~0_combout\,
	datab => \M7|Address_Out\(2),
	datac => \M9|Mux0~0_combout\,
	datad => \M7|Address_Out\(5),
	combout => \M9|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y16_N20
\M9|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux0~3_combout\ = (\M9|Mux0~1_combout\) # ((\M7|Address_Out\(2) & (!\M7|Address_Out\(5) & \M9|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(2),
	datab => \M7|Address_Out\(5),
	datac => \M9|Mux0~2_combout\,
	datad => \M9|Mux0~1_combout\,
	combout => \M9|Mux0~3_combout\);

-- Location: FF_X23_Y16_N21
\M5|REGQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M9|Mux0~3_combout\,
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(7));

-- Location: FF_X23_Y13_N29
\M8|REGQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0_combout\,
	asdata => \M5|REGQ\(7),
	sload => VCC,
	ena => \M2|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M8|REGQ\(7));

-- Location: LCCOMB_X26_Y16_N12
\M5|REGQ[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|REGQ[5]~feeder_combout\ = \M9|Mux2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M9|Mux2~2_combout\,
	combout => \M5|REGQ[5]~feeder_combout\);

-- Location: FF_X26_Y16_N13
\M5|REGQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M5|REGQ[5]~feeder_combout\,
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(5));

-- Location: FF_X22_Y13_N7
\M8|REGQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0_combout\,
	asdata => \M5|REGQ\(5),
	sload => VCC,
	ena => \M2|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M8|REGQ\(5));

-- Location: LCCOMB_X22_Y13_N28
\M8|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux1~2_combout\ = (\M8|REGQ\(6) & !\M8|REGQ\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M8|REGQ\(6),
	datad => \M8|REGQ\(3),
	combout => \M8|Mux1~2_combout\);

-- Location: LCCOMB_X23_Y13_N0
\M8|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux1~3_combout\ = (!\M8|REGQ\(4) & (\M8|REGQ\(7) & (!\M8|REGQ\(5) & \M8|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(4),
	datab => \M8|REGQ\(7),
	datac => \M8|REGQ\(5),
	datad => \M8|Mux1~2_combout\,
	combout => \M8|Mux1~3_combout\);

-- Location: LCCOMB_X26_Y16_N20
\M9|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux5~1_combout\ = (\M7|Address_Out\(0) & (((\M7|Address_Out\(5)) # (!\M7|Address_Out\(3))))) # (!\M7|Address_Out\(0) & ((\M7|Address_Out\(2) & ((\M7|Address_Out\(5)))) # (!\M7|Address_Out\(2) & (\M7|Address_Out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(2),
	datab => \M7|Address_Out\(0),
	datac => \M7|Address_Out\(3),
	datad => \M7|Address_Out\(5),
	combout => \M9|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y16_N6
\M9|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux5~0_combout\ = (\M7|Address_Out\(4)) # ((\M7|Address_Out\(1) & !\M7|Address_Out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(4),
	datac => \M7|Address_Out\(0),
	combout => \M9|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y14_N16
\M9|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux5~2_combout\ = (\M7|Address_Out\(5) & (!\M9|Mux5~1_combout\ & !\M9|Mux5~0_combout\)) # (!\M7|Address_Out\(5) & ((!\M9|Mux5~0_combout\) # (!\M9|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(5),
	datac => \M9|Mux5~1_combout\,
	datad => \M9|Mux5~0_combout\,
	combout => \M9|Mux5~2_combout\);

-- Location: FF_X24_Y14_N17
\M5|REGQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M9|Mux5~2_combout\,
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(1));

-- Location: FF_X22_Y13_N19
\M8|REGQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0_combout\,
	asdata => \M5|REGQ\(1),
	sload => VCC,
	ena => \M2|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M8|REGQ\(1));

-- Location: LCCOMB_X22_Y13_N14
\M8|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux10~0_combout\ = (\M8|REGQ\(2) & (\M8|Mux1~3_combout\ & (\M8|REGQ\(0) & !\M8|REGQ\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(2),
	datab => \M8|Mux1~3_combout\,
	datac => \M8|REGQ\(0),
	datad => \M8|REGQ\(1),
	combout => \M8|Mux10~0_combout\);

-- Location: CLKCTRL_G2
\M8|Mux10~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \M8|Mux10~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \M8|Mux10~0clkctrl_outclk\);

-- Location: LCCOMB_X21_Y13_N16
\M2|IIR\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IIR~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (\M2|IIR~combout\)) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((!\M1|TEMP\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|IIR~combout\,
	datac => \M1|TEMP\(2),
	datad => \M8|Mux10~0clkctrl_outclk\,
	combout => \M2|IIR~combout\);

-- Location: FF_X22_Y13_N3
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

-- Location: LCCOMB_X22_Y13_N30
\M8|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux5~0_combout\ = (!\M8|REGQ\(3) & (\M8|REGQ\(6) & !\M8|REGQ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M8|REGQ\(3),
	datac => \M8|REGQ\(6),
	datad => \M8|REGQ\(7),
	combout => \M8|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y13_N4
\M8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux0~0_combout\ = (\M8|REGQ\(4) & (\M8|REGQ\(1) & (!\M8|REGQ\(0) & \M8|REGQ\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(4),
	datab => \M8|REGQ\(1),
	datac => \M8|REGQ\(0),
	datad => \M8|REGQ\(5),
	combout => \M8|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y13_N20
\M8|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux5~1_combout\ = (\M8|Mux5~0_combout\ & (\M8|Mux0~0_combout\ & \M8|REGQ\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux5~0_combout\,
	datac => \M8|Mux0~0_combout\,
	datad => \M8|REGQ\(2),
	combout => \M8|Mux5~1_combout\);

-- Location: LCCOMB_X24_Y13_N18
\M2|IDR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IDR~3_combout\ = (\M1|TEMP\(1)) # ((\M8|Mux5~1_combout\ & \M1|TEMP\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux5~1_combout\,
	datac => \M1|TEMP\(4),
	datad => \M1|TEMP\(1),
	combout => \M2|IDR~3_combout\);

-- Location: LCCOMB_X22_Y13_N22
\M8|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux0~3_combout\ = (!\M8|REGQ\(0) & \M8|REGQ\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M8|REGQ\(0),
	datad => \M8|REGQ\(1),
	combout => \M8|Mux0~3_combout\);

-- Location: LCCOMB_X22_Y13_N8
\M8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux1~0_combout\ = (\M8|REGQ\(6) & (!\M8|REGQ\(3) & (!\M8|REGQ\(4) & !\M8|REGQ\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(6),
	datab => \M8|REGQ\(3),
	datac => \M8|REGQ\(4),
	datad => \M8|REGQ\(5),
	combout => \M8|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y13_N0
\M8|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux1~1_combout\ = (\M8|REGQ\(7) & (\M8|Mux0~3_combout\ & (\M8|Mux1~0_combout\ & \M8|REGQ\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(7),
	datab => \M8|Mux0~3_combout\,
	datac => \M8|Mux1~0_combout\,
	datad => \M8|REGQ\(2),
	combout => \M8|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y13_N16
\M8|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux4~0_combout\ = (!\M8|REGQ\(3) & \M8|REGQ\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M8|REGQ\(3),
	datad => \M8|REGQ\(7),
	combout => \M8|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y13_N24
\M8|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux4~1_combout\ = (\M8|REGQ\(2) & (!\M8|REGQ\(6) & (\M8|Mux0~0_combout\ & \M8|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(2),
	datab => \M8|REGQ\(6),
	datac => \M8|Mux0~0_combout\,
	datad => \M8|Mux4~0_combout\,
	combout => \M8|Mux4~1_combout\);

-- Location: LCCOMB_X24_Y13_N10
\M2|IDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IDR~0_combout\ = (\M1|TEMP\(4) & ((\M8|Mux0~2_combout\) # ((\M8|Mux1~1_combout\) # (\M8|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux0~2_combout\,
	datab => \M8|Mux1~1_combout\,
	datac => \M1|TEMP\(4),
	datad => \M8|Mux4~1_combout\,
	combout => \M2|IDR~0_combout\);

-- Location: LCCOMB_X23_Y13_N4
\M8|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux9~0_combout\ = (\M8|REGQ\(2) & (!\M8|REGQ\(1) & (!\M8|REGQ\(0) & \M8|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(2),
	datab => \M8|REGQ\(1),
	datac => \M8|REGQ\(0),
	datad => \M8|Mux1~3_combout\,
	combout => \M8|Mux9~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\M2|IDR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IDR~2_combout\ = (\M1|TEMP\(4) & ((\M8|Mux3~2_combout\) # ((\M8|Mux9~0_combout\) # (\M8|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux3~2_combout\,
	datab => \M1|TEMP\(4),
	datac => \M8|Mux9~0_combout\,
	datad => \M8|Mux2~1_combout\,
	combout => \M2|IDR~2_combout\);

-- Location: LCCOMB_X22_Y13_N2
\M8|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux3~3_combout\ = (\M8|REGQ\(0) & !\M8|REGQ\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M8|REGQ\(0),
	datad => \M8|REGQ\(2),
	combout => \M8|Mux3~3_combout\);

-- Location: LCCOMB_X22_Y13_N18
\M8|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux6~0_combout\ = (\M8|Mux1~0_combout\ & (\M8|Mux3~3_combout\ & (!\M8|REGQ\(1) & \M8|REGQ\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux1~0_combout\,
	datab => \M8|Mux3~3_combout\,
	datac => \M8|REGQ\(1),
	datad => \M8|REGQ\(7),
	combout => \M8|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y13_N10
\M8|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux7~0_combout\ = (\M8|Mux1~0_combout\ & (\M8|Mux0~3_combout\ & (!\M8|REGQ\(2) & \M8|REGQ\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux1~0_combout\,
	datab => \M8|Mux0~3_combout\,
	datac => \M8|REGQ\(2),
	datad => \M8|REGQ\(7),
	combout => \M8|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y13_N12
\M8|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux8~0_combout\ = (\M8|Mux3~3_combout\ & (\M8|REGQ\(7) & (\M8|Mux1~0_combout\ & \M8|REGQ\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux3~3_combout\,
	datab => \M8|REGQ\(7),
	datac => \M8|Mux1~0_combout\,
	datad => \M8|REGQ\(1),
	combout => \M8|Mux8~0_combout\);

-- Location: LCCOMB_X24_Y13_N16
\M2|IDR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IDR~1_combout\ = (\M1|TEMP\(4) & ((\M8|Mux6~0_combout\) # ((\M8|Mux7~0_combout\) # (\M8|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux6~0_combout\,
	datab => \M8|Mux7~0_combout\,
	datac => \M1|TEMP\(4),
	datad => \M8|Mux8~0_combout\,
	combout => \M2|IDR~1_combout\);

-- Location: LCCOMB_X24_Y13_N24
\M2|IDR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IDR~4_combout\ = (\M2|IDR~3_combout\) # ((\M2|IDR~0_combout\) # ((\M2|IDR~2_combout\) # (\M2|IDR~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|IDR~3_combout\,
	datab => \M2|IDR~0_combout\,
	datac => \M2|IDR~2_combout\,
	datad => \M2|IDR~1_combout\,
	combout => \M2|IDR~4_combout\);

-- Location: LCCOMB_X24_Y13_N14
\M2|IDR\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IDR~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (\M2|IDR~combout\)) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((\M2|IDR~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|IDR~combout\,
	datac => \M2|IDR~4_combout\,
	datad => \M8|Mux10~0clkctrl_outclk\,
	combout => \M2|IDR~combout\);

-- Location: FF_X26_Y13_N21
\M5|REGQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M9|Mux6~4_combout\,
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(0));

-- Location: FF_X22_Y13_N15
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

-- Location: LCCOMB_X23_Y13_N30
\M8|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux3~1_combout\ = (\M8|REGQ\(4) & (\M8|REGQ\(0) & (\M8|REGQ\(5) & !\M8|REGQ\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(4),
	datab => \M8|REGQ\(0),
	datac => \M8|REGQ\(5),
	datad => \M8|REGQ\(2),
	combout => \M8|Mux3~1_combout\);

-- Location: LCCOMB_X23_Y13_N16
\M8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux3~0_combout\ = (!\M8|REGQ\(7) & !\M8|REGQ\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M8|REGQ\(7),
	datad => \M8|REGQ\(3),
	combout => \M8|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y13_N12
\M8|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux3~2_combout\ = (\M8|REGQ\(6) & (\M8|Mux3~1_combout\ & (!\M8|REGQ\(1) & \M8|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(6),
	datab => \M8|Mux3~1_combout\,
	datac => \M8|REGQ\(1),
	datad => \M8|Mux3~0_combout\,
	combout => \M8|Mux3~2_combout\);

-- Location: LCCOMB_X23_Y13_N6
\M2|IMAR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IMAR~2_combout\ = (\M1|TEMP\(3) & ((\M8|Mux3~2_combout\) # ((\M8|Mux9~0_combout\) # (\M8|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux3~2_combout\,
	datab => \M8|Mux9~0_combout\,
	datac => \M1|TEMP\(3),
	datad => \M8|Mux2~1_combout\,
	combout => \M2|IMAR~2_combout\);

-- Location: LCCOMB_X23_Y13_N20
\M2|IMAR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IMAR~0_combout\ = (\M1|TEMP\(3) & ((\M8|Mux4~1_combout\) # ((\M8|Mux0~2_combout\) # (\M8|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1|TEMP\(3),
	datab => \M8|Mux4~1_combout\,
	datac => \M8|Mux0~2_combout\,
	datad => \M8|Mux1~1_combout\,
	combout => \M2|IMAR~0_combout\);

-- Location: LCCOMB_X23_Y13_N28
\M2|IMAR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IMAR~3_combout\ = ((\M1|TEMP\(3) & \M8|Mux5~1_combout\)) # (!\M1|TEMP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1|TEMP\(3),
	datab => \M8|Mux5~1_combout\,
	datad => \M1|TEMP\(0),
	combout => \M2|IMAR~3_combout\);

-- Location: LCCOMB_X22_Y13_N26
\M2|IMAR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IMAR~1_combout\ = (\M1|TEMP\(3) & ((\M8|Mux7~0_combout\) # ((\M8|Mux8~0_combout\) # (\M8|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1|TEMP\(3),
	datab => \M8|Mux7~0_combout\,
	datac => \M8|Mux8~0_combout\,
	datad => \M8|Mux6~0_combout\,
	combout => \M2|IMAR~1_combout\);

-- Location: LCCOMB_X23_Y13_N14
\M2|IMAR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IMAR~4_combout\ = (\M2|IMAR~2_combout\) # ((\M2|IMAR~0_combout\) # ((\M2|IMAR~3_combout\) # (\M2|IMAR~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|IMAR~2_combout\,
	datab => \M2|IMAR~0_combout\,
	datac => \M2|IMAR~3_combout\,
	datad => \M2|IMAR~1_combout\,
	combout => \M2|IMAR~4_combout\);

-- Location: LCCOMB_X23_Y13_N18
\M2|IMAR\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IMAR~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (\M2|IMAR~combout\)) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((!\M2|IMAR~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|IMAR~combout\,
	datac => \M2|IMAR~4_combout\,
	datad => \M8|Mux10~0clkctrl_outclk\,
	combout => \M2|IMAR~combout\);

-- Location: FF_X26_Y13_N17
\M7|Address_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M6|tmp_out\(2),
	sload => VCC,
	ena => \M2|ALT_INV_IMAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M7|Address_Out\(2));

-- Location: LCCOMB_X26_Y13_N22
\M9|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux1~1_combout\ = (\M7|Address_Out\(4) & (\M7|Address_Out\(3) & (\M7|Address_Out\(1) $ (!\M7|Address_Out\(0))))) # (!\M7|Address_Out\(4) & (\M7|Address_Out\(1) & ((!\M7|Address_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(3),
	datac => \M7|Address_Out\(4),
	datad => \M7|Address_Out\(0),
	combout => \M9|Mux1~1_combout\);

-- Location: LCCOMB_X26_Y13_N28
\M9|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux1~2_combout\ = (!\M7|Address_Out\(2) & ((\M7|Address_Out\(5) & (\M9|Mux1~0_combout\)) # (!\M7|Address_Out\(5) & ((\M9|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M9|Mux1~0_combout\,
	datab => \M7|Address_Out\(2),
	datac => \M9|Mux1~1_combout\,
	datad => \M7|Address_Out\(5),
	combout => \M9|Mux1~2_combout\);

-- Location: LCCOMB_X26_Y16_N22
\M9|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux1~3_combout\ = (!\M7|Address_Out\(0) & (\M7|Address_Out\(4) & (\M7|Address_Out\(1) $ (!\M7|Address_Out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(0),
	datac => \M7|Address_Out\(4),
	datad => \M7|Address_Out\(3),
	combout => \M9|Mux1~3_combout\);

-- Location: LCCOMB_X23_Y16_N14
\M9|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux1~4_combout\ = (\M9|Mux1~2_combout\) # ((\M7|Address_Out\(2) & (!\M7|Address_Out\(5) & \M9|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(2),
	datab => \M7|Address_Out\(5),
	datac => \M9|Mux1~2_combout\,
	datad => \M9|Mux1~3_combout\,
	combout => \M9|Mux1~4_combout\);

-- Location: FF_X23_Y16_N15
\M5|REGQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M9|Mux1~4_combout\,
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(6));

-- Location: FF_X22_Y13_N31
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

-- Location: LCCOMB_X24_Y13_N22
\M8|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux0~1_combout\ = (\M8|REGQ\(3) & !\M8|REGQ\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M8|REGQ\(3),
	datad => \M8|REGQ\(7),
	combout => \M8|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y13_N20
\M8|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux0~2_combout\ = (\M8|REGQ\(2) & (!\M8|REGQ\(6) & (\M8|Mux0~1_combout\ & \M8|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(2),
	datab => \M8|REGQ\(6),
	datac => \M8|Mux0~1_combout\,
	datad => \M8|Mux0~0_combout\,
	combout => \M8|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y13_N30
\M2|IPC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~0_combout\ = (\M1|TEMP\(5) & ((\M8|Mux0~2_combout\) # ((\M8|Mux1~1_combout\) # (\M8|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux0~2_combout\,
	datab => \M8|Mux1~1_combout\,
	datac => \M8|Mux4~1_combout\,
	datad => \M1|TEMP\(5),
	combout => \M2|IPC~0_combout\);

-- Location: LCCOMB_X24_Y13_N28
\M2|IPC~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~6_combout\ = (!\M8|Mux10~0_combout\ & ((\M2|IPC~0_combout\) # (\M2|IPC~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|IPC~0_combout\,
	datac => \M8|Mux10~0_combout\,
	datad => \M2|IPC~5_combout\,
	combout => \M2|IPC~6_combout\);

-- Location: FF_X24_Y13_N3
\M6|tmp_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M6|tmp_out[2]~7_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	ena => \M2|IPC~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M6|tmp_out\(2));

-- Location: LCCOMB_X24_Y13_N4
\M6|tmp_out[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|tmp_out[3]~9_combout\ = (\M6|tmp_out\(3) & (\M6|tmp_out[2]~8\ $ (GND))) # (!\M6|tmp_out\(3) & (!\M6|tmp_out[2]~8\ & VCC))
-- \M6|tmp_out[3]~10\ = CARRY((\M6|tmp_out\(3) & !\M6|tmp_out[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M6|tmp_out\(3),
	datad => VCC,
	cin => \M6|tmp_out[2]~8\,
	combout => \M6|tmp_out[3]~9_combout\,
	cout => \M6|tmp_out[3]~10\);

-- Location: FF_X24_Y13_N5
\M6|tmp_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M6|tmp_out[3]~9_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	ena => \M2|IPC~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M6|tmp_out\(3));

-- Location: FF_X24_Y13_N7
\M6|tmp_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M6|tmp_out[4]~11_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	ena => \M2|IPC~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M6|tmp_out\(4));

-- Location: LCCOMB_X25_Y13_N6
\M7|Address_Out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M7|Address_Out[4]~feeder_combout\ = \M6|tmp_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M6|tmp_out\(4),
	combout => \M7|Address_Out[4]~feeder_combout\);

-- Location: FF_X25_Y13_N7
\M7|Address_Out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M7|Address_Out[4]~feeder_combout\,
	ena => \M2|ALT_INV_IMAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M7|Address_Out\(4));

-- Location: LCCOMB_X26_Y16_N30
\M9|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux4~3_combout\ = (\M7|Address_Out\(3) & (\M7|Address_Out\(1) $ (\M7|Address_Out\(0) $ (!\M7|Address_Out\(2))))) # (!\M7|Address_Out\(3) & (\M7|Address_Out\(0) & ((!\M7|Address_Out\(2)) # (!\M7|Address_Out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(0),
	datac => \M7|Address_Out\(2),
	datad => \M7|Address_Out\(3),
	combout => \M9|Mux4~3_combout\);

-- Location: LCCOMB_X26_Y13_N16
\M9|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux4~1_combout\ = (\M7|Address_Out\(1) & (!\M7|Address_Out\(0) & (\M7|Address_Out\(3) $ (\M7|Address_Out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(3),
	datac => \M7|Address_Out\(2),
	datad => \M7|Address_Out\(0),
	combout => \M9|Mux4~1_combout\);

-- Location: LCCOMB_X26_Y13_N0
\M9|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux4~0_combout\ = (!\M7|Address_Out\(3) & (!\M7|Address_Out\(2) & (\M7|Address_Out\(0) $ (\M7|Address_Out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(0),
	datab => \M7|Address_Out\(3),
	datac => \M7|Address_Out\(1),
	datad => \M7|Address_Out\(2),
	combout => \M9|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y13_N4
\M9|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux4~2_combout\ = (!\M7|Address_Out\(4) & ((\M7|Address_Out\(5) & ((\M9|Mux4~0_combout\))) # (!\M7|Address_Out\(5) & (!\M9|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M9|Mux4~1_combout\,
	datab => \M7|Address_Out\(5),
	datac => \M7|Address_Out\(4),
	datad => \M9|Mux4~0_combout\,
	combout => \M9|Mux4~2_combout\);

-- Location: LCCOMB_X25_Y16_N24
\M9|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux4~4_combout\ = (\M9|Mux4~2_combout\) # ((\M7|Address_Out\(4) & (!\M7|Address_Out\(5) & !\M9|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(4),
	datab => \M7|Address_Out\(5),
	datac => \M9|Mux4~3_combout\,
	datad => \M9|Mux4~2_combout\,
	combout => \M9|Mux4~4_combout\);

-- Location: FF_X25_Y16_N25
\M5|REGQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M9|Mux4~4_combout\,
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(2));

-- Location: FF_X22_Y13_N11
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

-- Location: LCCOMB_X25_Y13_N30
\M2|IPC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~4_combout\ = (\M8|REGQ\(2) & (\M1|TEMP\(5) & (\M8|Mux5~0_combout\ & \M8|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(2),
	datab => \M1|TEMP\(5),
	datac => \M8|Mux5~0_combout\,
	datad => \M8|Mux0~0_combout\,
	combout => \M2|IPC~4_combout\);

-- Location: LCCOMB_X25_Y13_N14
\M2|IPC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~2_combout\ = (!\M8|REGQ\(1) & \M8|REGQ\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M8|REGQ\(1),
	datad => \M8|REGQ\(6),
	combout => \M2|IPC~2_combout\);

-- Location: LCCOMB_X25_Y13_N16
\M2|IPC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~3_combout\ = (\M8|Mux3~1_combout\ & (\M2|IPC~2_combout\ & (\M8|Mux3~0_combout\ & \M1|TEMP\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux3~1_combout\,
	datab => \M2|IPC~2_combout\,
	datac => \M8|Mux3~0_combout\,
	datad => \M1|TEMP\(5),
	combout => \M2|IPC~3_combout\);

-- Location: LCCOMB_X24_Y13_N26
\M2|IPC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~5_combout\ = (\M2|IPC~4_combout\) # ((\M2|IPC~1_combout\) # ((\M2|IPC~3_combout\) # (\M1|TEMP\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|IPC~4_combout\,
	datab => \M2|IPC~1_combout\,
	datac => \M2|IPC~3_combout\,
	datad => \M1|TEMP\(2),
	combout => \M2|IPC~5_combout\);

-- Location: LCCOMB_X25_Y13_N4
\M6|tmp_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|tmp_out[0]~15_combout\ = \M6|tmp_out\(0) $ (((!\M8|Mux10~0_combout\ & ((\M2|IPC~5_combout\) # (\M2|IPC~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|IPC~5_combout\,
	datab => \M2|IPC~0_combout\,
	datac => \M6|tmp_out\(0),
	datad => \M8|Mux10~0_combout\,
	combout => \M6|tmp_out[0]~15_combout\);

-- Location: FF_X25_Y13_N5
\M6|tmp_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M6|tmp_out[0]~15_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M6|tmp_out\(0));

-- Location: FF_X24_Y13_N1
\M6|tmp_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M6|tmp_out[1]~5_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	ena => \M2|IPC~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M6|tmp_out\(1));

-- Location: FF_X26_Y13_N1
\M7|Address_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M6|tmp_out\(1),
	sload => VCC,
	ena => \M2|ALT_INV_IMAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M7|Address_Out\(1));

-- Location: LCCOMB_X26_Y16_N10
\M9|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux2~1_combout\ = (\M7|Address_Out\(4) & (\M7|Address_Out\(3) & ((\M7|Address_Out\(1)) # (!\M7|Address_Out\(2))))) # (!\M7|Address_Out\(4) & (\M7|Address_Out\(1) & (!\M7|Address_Out\(3) & !\M7|Address_Out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(4),
	datac => \M7|Address_Out\(3),
	datad => \M7|Address_Out\(2),
	combout => \M9|Mux2~1_combout\);

-- Location: LCCOMB_X26_Y16_N28
\M9|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux2~0_combout\ = (\M7|Address_Out\(4) & (\M7|Address_Out\(3) & (\M7|Address_Out\(1) $ (!\M7|Address_Out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|Address_Out\(1),
	datab => \M7|Address_Out\(4),
	datac => \M7|Address_Out\(3),
	datad => \M7|Address_Out\(2),
	combout => \M9|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y16_N8
\M9|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M9|Mux2~2_combout\ = (!\M7|Address_Out\(5) & ((\M7|Address_Out\(0) & ((\M9|Mux2~0_combout\))) # (!\M7|Address_Out\(0) & (!\M9|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M9|Mux2~1_combout\,
	datab => \M7|Address_Out\(5),
	datac => \M7|Address_Out\(0),
	datad => \M9|Mux2~0_combout\,
	combout => \M9|Mux2~2_combout\);

-- Location: FF_X25_Y16_N29
\M5|REGQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M9|Mux2~2_combout\,
	sload => VCC,
	ena => \M2|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M5|REGQ\(4));

-- Location: FF_X22_Y13_N9
\M8|REGQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0_combout\,
	asdata => \M5|REGQ\(4),
	sload => VCC,
	ena => \M2|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M8|REGQ\(4));

-- Location: LCCOMB_X22_Y13_N6
\M8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux2~0_combout\ = (!\M8|REGQ\(6) & (\M8|REGQ\(1) & (\M8|REGQ\(5) & !\M8|REGQ\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(6),
	datab => \M8|REGQ\(1),
	datac => \M8|REGQ\(5),
	datad => \M8|REGQ\(2),
	combout => \M8|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y13_N24
\M8|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8|Mux2~1_combout\ = (\M8|REGQ\(4) & (\M8|Mux3~0_combout\ & (\M8|Mux2~0_combout\ & \M8|REGQ\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(4),
	datab => \M8|Mux3~0_combout\,
	datac => \M8|Mux2~0_combout\,
	datad => \M8|REGQ\(0),
	combout => \M8|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y13_N12
\M2|IPC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~1_combout\ = (\M8|Mux2~1_combout\ & \M1|TEMP\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux2~1_combout\,
	datad => \M1|TEMP\(5),
	combout => \M2|IPC~1_combout\);

-- Location: LCCOMB_X25_Y16_N10
\M2|ALU_SUB\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_SUB~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (\M2|ALU_SUB~combout\)) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((!\M2|IPC~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SUB~combout\,
	datac => \M2|IPC~1_combout\,
	datad => \M8|Mux10~0clkctrl_outclk\,
	combout => \M2|ALU_SUB~combout\);

-- Location: LCCOMB_X25_Y16_N12
\M2|IPC~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~7_combout\ = (\M8|Mux1~1_combout\ & \M1|TEMP\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux1~1_combout\,
	datad => \M1|TEMP\(5),
	combout => \M2|IPC~7_combout\);

-- Location: LCCOMB_X25_Y16_N4
\M2|ALU_ADD\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_ADD~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (\M2|ALU_ADD~combout\)) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((!\M2|IPC~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|ALU_ADD~combout\,
	datac => \M2|IPC~7_combout\,
	datad => \M8|Mux10~0clkctrl_outclk\,
	combout => \M2|ALU_ADD~combout\);

-- Location: LCCOMB_X23_Y16_N26
\M3|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~0_combout\ = (\reset~input_o\ & (\M2|ALU_SUB~combout\ & \M2|ALU_ADD~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \M2|ALU_SUB~combout\,
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|tmp~0_combout\);

-- Location: LCCOMB_X23_Y13_N26
\M2|ESUM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ESUM~2_combout\ = (!\M8|Mux2~1_combout\ & (!\M8|Mux5~1_combout\ & !\M8|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux2~1_combout\,
	datab => \M8|Mux5~1_combout\,
	datad => \M8|Mux3~2_combout\,
	combout => \M2|ESUM~2_combout\);

-- Location: LCCOMB_X23_Y13_N10
\M2|ESUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ESUM~0_combout\ = ((\M8|REGQ\(0) & (\M8|REGQ\(2))) # (!\M8|REGQ\(0) & ((!\M8|REGQ\(1))))) # (!\M8|Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|REGQ\(2),
	datab => \M8|REGQ\(0),
	datac => \M8|REGQ\(1),
	datad => \M8|Mux1~3_combout\,
	combout => \M2|ESUM~0_combout\);

-- Location: LCCOMB_X23_Y16_N10
\M2|ESUM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ESUM~1_combout\ = (\M2|ESUM~0_combout\ & (!\M8|Mux9~0_combout\ & !\M8|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ESUM~0_combout\,
	datab => \M8|Mux9~0_combout\,
	datad => \M8|Mux4~1_combout\,
	combout => \M2|ESUM~1_combout\);

-- Location: LCCOMB_X23_Y16_N24
\M2|IA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IA~0_combout\ = (\M1|TEMP\(6) & (((\M8|Mux0~2_combout\) # (!\M2|ESUM~1_combout\)) # (!\M2|ESUM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ESUM~2_combout\,
	datab => \M8|Mux0~2_combout\,
	datac => \M2|ESUM~1_combout\,
	datad => \M1|TEMP\(6),
	combout => \M2|IA~0_combout\);

-- Location: LCCOMB_X23_Y16_N4
\M2|IA\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IA~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (\M2|IA~combout\)) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((!\M2|IA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|IA~combout\,
	datac => \M2|IA~0_combout\,
	datad => \M8|Mux10~0clkctrl_outclk\,
	combout => \M2|IA~combout\);

-- Location: FF_X25_Y16_N15
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

-- Location: LCCOMB_X25_Y16_N6
\M3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~1_combout\ = (\M2|ALU_ADD~combout\ & ((\M2|ALU_SUB~combout\ & (!\M4|REGQ\(0))) # (!\M2|ALU_SUB~combout\ & ((!\M5|REGQ\(0)))))) # (!\M2|ALU_ADD~combout\ & (((\M5|REGQ\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SUB~combout\,
	datab => \M4|REGQ\(0),
	datac => \M2|ALU_ADD~combout\,
	datad => \M5|REGQ\(0),
	combout => \M3|Add0~1_combout\);

-- Location: LCCOMB_X25_Y16_N28
\M3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~0_combout\ = (\M4|REGQ\(0)) # ((\M2|ALU_ADD~combout\ & \M2|ALU_SUB~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(0),
	datab => \M2|ALU_ADD~combout\,
	datad => \M2|ALU_SUB~combout\,
	combout => \M3|Add0~0_combout\);

-- Location: LCCOMB_X24_Y16_N2
\M3|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~3_cout\ = CARRY((\M2|ALU_ADD~combout\ & !\M2|ALU_SUB~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_ADD~combout\,
	datab => \M2|ALU_SUB~combout\,
	datad => VCC,
	cout => \M3|Add0~3_cout\);

-- Location: LCCOMB_X24_Y16_N4
\M3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~4_combout\ = (\M3|Add0~1_combout\ & ((\M3|Add0~0_combout\ & (\M3|Add0~3_cout\ & VCC)) # (!\M3|Add0~0_combout\ & (!\M3|Add0~3_cout\)))) # (!\M3|Add0~1_combout\ & ((\M3|Add0~0_combout\ & (!\M3|Add0~3_cout\)) # (!\M3|Add0~0_combout\ & 
-- ((\M3|Add0~3_cout\) # (GND)))))
-- \M3|Add0~5\ = CARRY((\M3|Add0~1_combout\ & (!\M3|Add0~0_combout\ & !\M3|Add0~3_cout\)) # (!\M3|Add0~1_combout\ & ((!\M3|Add0~3_cout\) # (!\M3|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~1_combout\,
	datab => \M3|Add0~0_combout\,
	datad => VCC,
	cin => \M3|Add0~3_cout\,
	combout => \M3|Add0~4_combout\,
	cout => \M3|Add0~5\);

-- Location: LCCOMB_X25_Y15_N14
\M3|tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~1_combout\ = (\reset~input_o\ & ((!\M2|ALU_ADD~combout\) # (!\M2|ALU_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SUB~combout\,
	datab => \reset~input_o\,
	datac => \M2|ALU_ADD~combout\,
	combout => \M3|tmp~1_combout\);

-- Location: LCCOMB_X23_Y15_N30
\M2|ALU_NOT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_NOT~0_combout\ = (\M8|Mux6~0_combout\ & \M1|TEMP\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M8|Mux6~0_combout\,
	datad => \M1|TEMP\(5),
	combout => \M2|ALU_NOT~0_combout\);

-- Location: LCCOMB_X23_Y15_N6
\M2|ALU_NOT\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_NOT~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (\M2|ALU_NOT~combout\)) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((!\M2|ALU_NOT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_NOT~combout\,
	datac => \M2|ALU_NOT~0_combout\,
	datad => \M8|Mux10~0clkctrl_outclk\,
	combout => \M2|ALU_NOT~combout\);

-- Location: LCCOMB_X25_Y15_N18
\M2|ALU_XOR\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_XOR~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((\M2|ALU_XOR~combout\))) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (!\M2|IPC~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|IPC~4_combout\,
	datac => \M8|Mux10~0clkctrl_outclk\,
	datad => \M2|ALU_XOR~combout\,
	combout => \M2|ALU_XOR~combout\);

-- Location: LCCOMB_X25_Y15_N22
\M3|tmp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~8_combout\ = (\M2|ALU_XOR~combout\ & (((!\M2|ALU_NOT~combout\ & !\M4|REGQ\(0))))) # (!\M2|ALU_XOR~combout\ & (\M5|REGQ\(0) $ (((\M4|REGQ\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M5|REGQ\(0),
	datab => \M2|ALU_NOT~combout\,
	datac => \M4|REGQ\(0),
	datad => \M2|ALU_XOR~combout\,
	combout => \M3|tmp~8_combout\);

-- Location: LCCOMB_X25_Y13_N28
\M2|IPC~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|IPC~8_combout\ = (\M8|Mux4~1_combout\ & \M1|TEMP\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M8|Mux4~1_combout\,
	datad => \M1|TEMP\(5),
	combout => \M2|IPC~8_combout\);

-- Location: LCCOMB_X25_Y15_N6
\M2|ALU_OR\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_OR~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((\M2|ALU_OR~combout\))) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (!\M2|IPC~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|IPC~8_combout\,
	datac => \M8|Mux10~0clkctrl_outclk\,
	datad => \M2|ALU_OR~combout\,
	combout => \M2|ALU_OR~combout\);

-- Location: LCCOMB_X25_Y15_N8
\M2|ALU_AND\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_AND~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((\M2|ALU_AND~combout\))) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (!\M2|IPC~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|IPC~3_combout\,
	datac => \M2|ALU_AND~combout\,
	datad => \M8|Mux10~0clkctrl_outclk\,
	combout => \M2|ALU_AND~combout\);

-- Location: LCCOMB_X25_Y15_N28
\M3|tmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~7_combout\ = (\M2|ALU_AND~combout\ & (!\M2|ALU_OR~combout\ & ((\M4|REGQ\(0)) # (\M5|REGQ\(0))))) # (!\M2|ALU_AND~combout\ & (((\M4|REGQ\(0) & \M5|REGQ\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_OR~combout\,
	datab => \M2|ALU_AND~combout\,
	datac => \M4|REGQ\(0),
	datad => \M5|REGQ\(0),
	combout => \M3|tmp~7_combout\);

-- Location: LCCOMB_X25_Y15_N4
\M3|tmp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp[1]~2_combout\ = (\M2|ALU_AND~combout\ & \M2|ALU_OR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M2|ALU_AND~combout\,
	datad => \M2|ALU_OR~combout\,
	combout => \M3|tmp[1]~2_combout\);

-- Location: LCCOMB_X23_Y15_N12
\M2|ALU_NEG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_NEG~0_combout\ = (\M8|Mux7~0_combout\ & \M1|TEMP\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8|Mux7~0_combout\,
	datad => \M1|TEMP\(5),
	combout => \M2|ALU_NEG~0_combout\);

-- Location: LCCOMB_X23_Y15_N28
\M2|ALU_NEG\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_NEG~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((\M2|ALU_NEG~combout\))) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (!\M2|ALU_NEG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|ALU_NEG~0_combout\,
	datac => \M8|Mux10~0clkctrl_outclk\,
	datad => \M2|ALU_NEG~combout\,
	combout => \M2|ALU_NEG~combout\);

-- Location: LCCOMB_X25_Y15_N10
\M3|tmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~3_combout\ = (\M2|ALU_NOT~combout\ & (\M3|tmp[1]~2_combout\ & (\M2|ALU_NEG~combout\ & \M2|ALU_XOR~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_NOT~combout\,
	datab => \M3|tmp[1]~2_combout\,
	datac => \M2|ALU_NEG~combout\,
	datad => \M2|ALU_XOR~combout\,
	combout => \M3|tmp~3_combout\);

-- Location: LCCOMB_X25_Y15_N0
\M3|tmp[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp[1]~5_combout\ = (\M2|ALU_XOR~combout\ & (\M2|ALU_NOT~combout\ & (!\M2|ALU_NEG~combout\ & \M3|tmp[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_XOR~combout\,
	datab => \M2|ALU_NOT~combout\,
	datac => \M2|ALU_NEG~combout\,
	datad => \M3|tmp[1]~2_combout\,
	combout => \M3|tmp[1]~5_combout\);

-- Location: LCCOMB_X23_Y15_N10
\M2|ALU_SHR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_SHR~0_combout\ = (\M8|Mux9~0_combout\ & \M1|TEMP\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M8|Mux9~0_combout\,
	datad => \M1|TEMP\(5),
	combout => \M2|ALU_SHR~0_combout\);

-- Location: LCCOMB_X23_Y15_N22
\M2|ALU_SHR\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_SHR~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((\M2|ALU_SHR~combout\))) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (!\M2|ALU_SHR~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|ALU_SHR~0_combout\,
	datac => \M2|ALU_SHR~combout\,
	datad => \M8|Mux10~0clkctrl_outclk\,
	combout => \M2|ALU_SHR~combout\);

-- Location: LCCOMB_X23_Y15_N24
\M2|ALU_SHL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_SHL~0_combout\ = (\M8|Mux8~0_combout\ & \M1|TEMP\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M8|Mux8~0_combout\,
	datad => \M1|TEMP\(5),
	combout => \M2|ALU_SHL~0_combout\);

-- Location: LCCOMB_X23_Y15_N4
\M2|ALU_SHL\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ALU_SHL~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (\M2|ALU_SHL~combout\)) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((!\M2|ALU_SHL~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|ALU_SHL~combout\,
	datac => \M2|ALU_SHL~0_combout\,
	datad => \M8|Mux10~0clkctrl_outclk\,
	combout => \M2|ALU_SHL~combout\);

-- Location: FF_X24_Y16_N25
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

-- Location: LCCOMB_X23_Y15_N8
\M3|tmp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~4_combout\ = (\M2|ALU_SHL~combout\ & ((\M2|ALU_SHR~combout\ & (\M3|tmp\(0))) # (!\M2|ALU_SHR~combout\ & ((\M4|REGQ\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SHR~combout\,
	datab => \M2|ALU_SHL~combout\,
	datac => \M3|tmp\(0),
	datad => \M4|REGQ\(1),
	combout => \M3|tmp~4_combout\);

-- Location: LCCOMB_X25_Y15_N2
\M3|tmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~6_combout\ = (\M3|tmp~3_combout\ & ((\M3|tmp~4_combout\) # ((\M3|tmp[1]~5_combout\ & \M3|Add0~4_combout\)))) # (!\M3|tmp~3_combout\ & (\M3|tmp[1]~5_combout\ & ((\M3|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp~3_combout\,
	datab => \M3|tmp[1]~5_combout\,
	datac => \M3|tmp~4_combout\,
	datad => \M3|Add0~4_combout\,
	combout => \M3|tmp~6_combout\);

-- Location: LCCOMB_X25_Y15_N16
\M3|tmp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~9_combout\ = (\M3|tmp~7_combout\) # ((\M3|tmp~6_combout\) # ((\M3|tmp~8_combout\ & \M3|tmp[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp~8_combout\,
	datab => \M3|tmp~7_combout\,
	datac => \M3|tmp[1]~2_combout\,
	datad => \M3|tmp~6_combout\,
	combout => \M3|tmp~9_combout\);

-- Location: LCCOMB_X25_Y15_N24
\M3|tmp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~10_combout\ = (\M3|tmp~0_combout\ & ((\M3|tmp~9_combout\) # ((\M3|Add0~4_combout\ & \M3|tmp~1_combout\)))) # (!\M3|tmp~0_combout\ & (\M3|Add0~4_combout\ & (\M3|tmp~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp~0_combout\,
	datab => \M3|Add0~4_combout\,
	datac => \M3|tmp~1_combout\,
	datad => \M3|tmp~9_combout\,
	combout => \M3|tmp~10_combout\);

-- Location: FF_X25_Y15_N25
\M3|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M3|tmp~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M3|tmp\(0));

-- Location: LCCOMB_X23_Y13_N2
\M2|ESUM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ESUM~3_combout\ = (\M1|TEMP\(6) & ((!\M2|ESUM~2_combout\) # (!\M2|ESUM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|ESUM~1_combout\,
	datac => \M1|TEMP\(6),
	datad => \M2|ESUM~2_combout\,
	combout => \M2|ESUM~3_combout\);

-- Location: LCCOMB_X23_Y13_N22
\M2|ESUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|ESUM~combout\ = (GLOBAL(\M8|Mux10~0clkctrl_outclk\) & ((\M2|ESUM~combout\))) # (!GLOBAL(\M8|Mux10~0clkctrl_outclk\) & (!\M2|ESUM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ESUM~3_combout\,
	datac => \M2|ESUM~combout\,
	datad => \M8|Mux10~0clkctrl_outclk\,
	combout => \M2|ESUM~combout\);

-- Location: LCCOMB_X25_Y16_N18
\M3|tmp~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~17_combout\ = (\reset~input_o\ & (((\M3|tmp[1]~5_combout\) # (!\M2|ALU_ADD~combout\)) # (!\M2|ALU_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SUB~combout\,
	datab => \M2|ALU_ADD~combout\,
	datac => \reset~input_o\,
	datad => \M3|tmp[1]~5_combout\,
	combout => \M3|tmp~17_combout\);

-- Location: LCCOMB_X24_Y14_N8
\M3|tmp~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~16_combout\ = (\reset~input_o\ & (\M2|ALU_SUB~combout\ & (\M2|ALU_ADD~combout\ & !\M3|tmp[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \M2|ALU_SUB~combout\,
	datac => \M2|ALU_ADD~combout\,
	datad => \M3|tmp[1]~5_combout\,
	combout => \M3|tmp~16_combout\);

-- Location: LCCOMB_X25_Y15_N30
\M3|tmp[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp[1]~11_combout\ = (\M2|ALU_AND~combout\ & ((\M2|ALU_XOR~combout\) # (!\M2|ALU_OR~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|ALU_XOR~combout\,
	datac => \M2|ALU_AND~combout\,
	datad => \M2|ALU_OR~combout\,
	combout => \M3|tmp[1]~11_combout\);

-- Location: LCCOMB_X23_Y15_N14
\M3|tmp[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp[1]~12_combout\ = (\M2|ALU_NOT~combout\ & ((\M2|ALU_SHR~combout\) # (!\M2|ALU_SHL~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SHR~combout\,
	datac => \M2|ALU_SHL~combout\,
	datad => \M2|ALU_NOT~combout\,
	combout => \M3|tmp[1]~12_combout\);

-- Location: FF_X25_Y16_N21
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

-- Location: LCCOMB_X23_Y15_N16
\M3|tmp[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp[1]~13_combout\ = (\M2|ALU_SHL~combout\ & \M2|ALU_NOT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M2|ALU_SHL~combout\,
	datad => \M2|ALU_NOT~combout\,
	combout => \M3|tmp[1]~13_combout\);

-- Location: LCCOMB_X24_Y14_N28
\M3|tmp~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~14_combout\ = (\M3|tmp[1]~13_combout\ & ((\M4|REGQ\(2)) # ((\M3|tmp[1]~12_combout\)))) # (!\M3|tmp[1]~13_combout\ & (((!\M4|REGQ\(1) & !\M3|tmp[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(2),
	datab => \M4|REGQ\(1),
	datac => \M3|tmp[1]~13_combout\,
	datad => \M3|tmp[1]~12_combout\,
	combout => \M3|tmp~14_combout\);

-- Location: LCCOMB_X24_Y14_N10
\M3|tmp~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~15_combout\ = (\M3|tmp[1]~12_combout\ & ((\M3|tmp~14_combout\ & ((\M3|tmp\(1)))) # (!\M3|tmp~14_combout\ & (\M4|REGQ\(0))))) # (!\M3|tmp[1]~12_combout\ & (((\M3|tmp~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(0),
	datab => \M3|tmp[1]~12_combout\,
	datac => \M3|tmp\(1),
	datad => \M3|tmp~14_combout\,
	combout => \M3|tmp~15_combout\);

-- Location: LCCOMB_X24_Y14_N18
\M3|tmp~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~51_combout\ = (\M3|tmp[1]~2_combout\ & ((\M3|tmp[1]~11_combout\ & ((\M3|tmp~15_combout\))) # (!\M3|tmp[1]~11_combout\ & (\M4|REGQ\(1))))) # (!\M3|tmp[1]~2_combout\ & (((\M4|REGQ\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~2_combout\,
	datab => \M3|tmp[1]~11_combout\,
	datac => \M4|REGQ\(1),
	datad => \M3|tmp~15_combout\,
	combout => \M3|tmp~51_combout\);

-- Location: LCCOMB_X24_Y14_N4
\M3|tmp~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~52_combout\ = (\M3|tmp~51_combout\ & ((\M3|tmp[1]~11_combout\) # (\M5|REGQ\(1) $ (\M3|tmp[1]~2_combout\)))) # (!\M3|tmp~51_combout\ & (\M5|REGQ\(1) & (\M3|tmp[1]~11_combout\ $ (\M3|tmp[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~11_combout\,
	datab => \M5|REGQ\(1),
	datac => \M3|tmp[1]~2_combout\,
	datad => \M3|tmp~51_combout\,
	combout => \M3|tmp~52_combout\);

-- Location: LCCOMB_X24_Y16_N0
\M3|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~7_combout\ = (\M2|ALU_ADD~combout\ & ((\M2|ALU_SUB~combout\ & ((!\M4|REGQ\(1)))) # (!\M2|ALU_SUB~combout\ & (!\M5|REGQ\(1))))) # (!\M2|ALU_ADD~combout\ & (\M5|REGQ\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M5|REGQ\(1),
	datab => \M4|REGQ\(1),
	datac => \M2|ALU_SUB~combout\,
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~7_combout\);

-- Location: LCCOMB_X24_Y16_N24
\M3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~6_combout\ = (\M4|REGQ\(1) & ((!\M2|ALU_ADD~combout\) # (!\M2|ALU_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|ALU_SUB~combout\,
	datac => \M4|REGQ\(1),
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~6_combout\);

-- Location: LCCOMB_X24_Y16_N6
\M3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~8_combout\ = ((\M3|Add0~7_combout\ $ (\M3|Add0~6_combout\ $ (!\M3|Add0~5\)))) # (GND)
-- \M3|Add0~9\ = CARRY((\M3|Add0~7_combout\ & ((\M3|Add0~6_combout\) # (!\M3|Add0~5\))) # (!\M3|Add0~7_combout\ & (\M3|Add0~6_combout\ & !\M3|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~7_combout\,
	datab => \M3|Add0~6_combout\,
	datad => VCC,
	cin => \M3|Add0~5\,
	combout => \M3|Add0~8_combout\,
	cout => \M3|Add0~9\);

-- Location: LCCOMB_X24_Y14_N30
\M3|tmp~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~18_combout\ = (\M3|tmp~17_combout\ & ((\M3|Add0~8_combout\) # ((\M3|tmp~16_combout\ & \M3|tmp~52_combout\)))) # (!\M3|tmp~17_combout\ & (\M3|tmp~16_combout\ & (\M3|tmp~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp~17_combout\,
	datab => \M3|tmp~16_combout\,
	datac => \M3|tmp~52_combout\,
	datad => \M3|Add0~8_combout\,
	combout => \M3|tmp~18_combout\);

-- Location: FF_X24_Y14_N31
\M3|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M3|tmp~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M3|tmp\(1));

-- Location: LCCOMB_X25_Y16_N20
\M3|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~11_combout\ = (\M2|ALU_ADD~combout\ & ((\M2|ALU_SUB~combout\ & ((!\M4|REGQ\(2)))) # (!\M2|ALU_SUB~combout\ & (!\M5|REGQ\(2))))) # (!\M2|ALU_ADD~combout\ & (((\M5|REGQ\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SUB~combout\,
	datab => \M5|REGQ\(2),
	datac => \M4|REGQ\(2),
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~11_combout\);

-- Location: LCCOMB_X25_Y16_N8
\M3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~10_combout\ = (\M4|REGQ\(2) & ((!\M2|ALU_SUB~combout\) # (!\M2|ALU_ADD~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M4|REGQ\(2),
	datac => \M2|ALU_ADD~combout\,
	datad => \M2|ALU_SUB~combout\,
	combout => \M3|Add0~10_combout\);

-- Location: LCCOMB_X24_Y16_N8
\M3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~12_combout\ = (\M3|Add0~11_combout\ & ((\M3|Add0~10_combout\ & (\M3|Add0~9\ & VCC)) # (!\M3|Add0~10_combout\ & (!\M3|Add0~9\)))) # (!\M3|Add0~11_combout\ & ((\M3|Add0~10_combout\ & (!\M3|Add0~9\)) # (!\M3|Add0~10_combout\ & ((\M3|Add0~9\) # 
-- (GND)))))
-- \M3|Add0~13\ = CARRY((\M3|Add0~11_combout\ & (!\M3|Add0~10_combout\ & !\M3|Add0~9\)) # (!\M3|Add0~11_combout\ & ((!\M3|Add0~9\) # (!\M3|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~11_combout\,
	datab => \M3|Add0~10_combout\,
	datad => VCC,
	cin => \M3|Add0~9\,
	combout => \M3|Add0~12_combout\,
	cout => \M3|Add0~13\);

-- Location: FF_X25_Y16_N3
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

-- Location: LCCOMB_X24_Y14_N6
\M3|tmp~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~19_combout\ = (\M3|tmp[1]~13_combout\ & (((\M3|tmp[1]~12_combout\)))) # (!\M3|tmp[1]~13_combout\ & ((\M3|tmp[1]~12_combout\ & ((\M4|REGQ\(1)))) # (!\M3|tmp[1]~12_combout\ & (!\M4|REGQ\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(2),
	datab => \M4|REGQ\(1),
	datac => \M3|tmp[1]~13_combout\,
	datad => \M3|tmp[1]~12_combout\,
	combout => \M3|tmp~19_combout\);

-- Location: LCCOMB_X24_Y14_N20
\M3|tmp~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~20_combout\ = (\M3|tmp[1]~13_combout\ & ((\M3|tmp~19_combout\ & ((\M3|tmp\(2)))) # (!\M3|tmp~19_combout\ & (\M4|REGQ\(3))))) # (!\M3|tmp[1]~13_combout\ & (((\M3|tmp~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(3),
	datab => \M3|tmp\(2),
	datac => \M3|tmp[1]~13_combout\,
	datad => \M3|tmp~19_combout\,
	combout => \M3|tmp~20_combout\);

-- Location: LCCOMB_X24_Y14_N2
\M3|tmp~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~49_combout\ = (\M3|tmp[1]~11_combout\ & ((\M3|tmp[1]~2_combout\ & ((\M3|tmp~20_combout\))) # (!\M3|tmp[1]~2_combout\ & (\M4|REGQ\(2))))) # (!\M3|tmp[1]~11_combout\ & (\M4|REGQ\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~11_combout\,
	datab => \M4|REGQ\(2),
	datac => \M3|tmp[1]~2_combout\,
	datad => \M3|tmp~20_combout\,
	combout => \M3|tmp~49_combout\);

-- Location: LCCOMB_X24_Y14_N12
\M3|tmp~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~50_combout\ = (\M3|tmp~49_combout\ & ((\M3|tmp[1]~11_combout\) # (\M5|REGQ\(2) $ (\M3|tmp[1]~2_combout\)))) # (!\M3|tmp~49_combout\ & (\M5|REGQ\(2) & (\M3|tmp[1]~11_combout\ $ (\M3|tmp[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~11_combout\,
	datab => \M5|REGQ\(2),
	datac => \M3|tmp[1]~2_combout\,
	datad => \M3|tmp~49_combout\,
	combout => \M3|tmp~50_combout\);

-- Location: LCCOMB_X24_Y14_N24
\M3|tmp~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~21_combout\ = (\M3|tmp~17_combout\ & ((\M3|Add0~12_combout\) # ((\M3|tmp~16_combout\ & \M3|tmp~50_combout\)))) # (!\M3|tmp~17_combout\ & (\M3|tmp~16_combout\ & ((\M3|tmp~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp~17_combout\,
	datab => \M3|tmp~16_combout\,
	datac => \M3|Add0~12_combout\,
	datad => \M3|tmp~50_combout\,
	combout => \M3|tmp~21_combout\);

-- Location: FF_X24_Y14_N25
\M3|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M3|tmp~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M3|tmp\(2));

-- Location: FF_X25_Y16_N31
\M4|REGQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	asdata => \M5|REGQ\(4),
	sload => VCC,
	ena => \M2|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M4|REGQ\(4));

-- Location: LCCOMB_X24_Y15_N4
\M3|tmp~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~22_combout\ = (\M3|tmp[1]~13_combout\ & (((\M4|REGQ\(4)) # (\M3|tmp[1]~12_combout\)))) # (!\M3|tmp[1]~13_combout\ & (!\M4|REGQ\(3) & ((!\M3|tmp[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(3),
	datab => \M4|REGQ\(4),
	datac => \M3|tmp[1]~13_combout\,
	datad => \M3|tmp[1]~12_combout\,
	combout => \M3|tmp~22_combout\);

-- Location: LCCOMB_X24_Y15_N10
\M3|tmp~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~23_combout\ = (\M3|tmp[1]~12_combout\ & ((\M3|tmp~22_combout\ & ((\M3|tmp\(3)))) # (!\M3|tmp~22_combout\ & (\M4|REGQ\(2))))) # (!\M3|tmp[1]~12_combout\ & (((\M3|tmp~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~12_combout\,
	datab => \M4|REGQ\(2),
	datac => \M3|tmp~22_combout\,
	datad => \M3|tmp\(3),
	combout => \M3|tmp~23_combout\);

-- Location: LCCOMB_X24_Y15_N8
\M3|tmp~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~47_combout\ = (\M3|tmp[1]~2_combout\ & ((\M3|tmp[1]~11_combout\ & ((\M3|tmp~23_combout\))) # (!\M3|tmp[1]~11_combout\ & (\M4|REGQ\(3))))) # (!\M3|tmp[1]~2_combout\ & (\M4|REGQ\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~2_combout\,
	datab => \M4|REGQ\(3),
	datac => \M3|tmp[1]~11_combout\,
	datad => \M3|tmp~23_combout\,
	combout => \M3|tmp~47_combout\);

-- Location: LCCOMB_X24_Y15_N30
\M3|tmp~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~48_combout\ = (\M3|tmp~47_combout\ & ((\M3|tmp[1]~11_combout\) # (\M5|REGQ\(3) $ (\M3|tmp[1]~2_combout\)))) # (!\M3|tmp~47_combout\ & (\M5|REGQ\(3) & (\M3|tmp[1]~11_combout\ $ (\M3|tmp[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~11_combout\,
	datab => \M5|REGQ\(3),
	datac => \M3|tmp~47_combout\,
	datad => \M3|tmp[1]~2_combout\,
	combout => \M3|tmp~48_combout\);

-- Location: LCCOMB_X25_Y16_N2
\M3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~14_combout\ = (\M4|REGQ\(3) & ((!\M2|ALU_ADD~combout\) # (!\M2|ALU_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SUB~combout\,
	datac => \M4|REGQ\(3),
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~14_combout\);

-- Location: LCCOMB_X25_Y16_N22
\M3|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~15_combout\ = (\M2|ALU_ADD~combout\ & ((\M2|ALU_SUB~combout\ & ((!\M4|REGQ\(3)))) # (!\M2|ALU_SUB~combout\ & (!\M5|REGQ\(3))))) # (!\M2|ALU_ADD~combout\ & (((\M5|REGQ\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SUB~combout\,
	datab => \M5|REGQ\(3),
	datac => \M4|REGQ\(3),
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~15_combout\);

-- Location: LCCOMB_X24_Y16_N10
\M3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~16_combout\ = ((\M3|Add0~14_combout\ $ (\M3|Add0~15_combout\ $ (!\M3|Add0~13\)))) # (GND)
-- \M3|Add0~17\ = CARRY((\M3|Add0~14_combout\ & ((\M3|Add0~15_combout\) # (!\M3|Add0~13\))) # (!\M3|Add0~14_combout\ & (\M3|Add0~15_combout\ & !\M3|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~14_combout\,
	datab => \M3|Add0~15_combout\,
	datad => VCC,
	cin => \M3|Add0~13\,
	combout => \M3|Add0~16_combout\,
	cout => \M3|Add0~17\);

-- Location: LCCOMB_X24_Y14_N26
\M3|tmp~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~24_combout\ = (\M3|tmp~17_combout\ & ((\M3|Add0~16_combout\) # ((\M3|tmp~16_combout\ & \M3|tmp~48_combout\)))) # (!\M3|tmp~17_combout\ & (\M3|tmp~16_combout\ & (\M3|tmp~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp~17_combout\,
	datab => \M3|tmp~16_combout\,
	datac => \M3|tmp~48_combout\,
	datad => \M3|Add0~16_combout\,
	combout => \M3|tmp~24_combout\);

-- Location: FF_X24_Y14_N27
\M3|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M3|tmp~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M3|tmp\(3));

-- Location: LCCOMB_X25_Y16_N30
\M3|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~19_combout\ = (\M2|ALU_ADD~combout\ & ((\M2|ALU_SUB~combout\ & ((!\M4|REGQ\(4)))) # (!\M2|ALU_SUB~combout\ & (!\M5|REGQ\(4))))) # (!\M2|ALU_ADD~combout\ & (((\M5|REGQ\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SUB~combout\,
	datab => \M5|REGQ\(4),
	datac => \M4|REGQ\(4),
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~19_combout\);

-- Location: LCCOMB_X25_Y16_N0
\M3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~18_combout\ = (\M4|REGQ\(4) & ((!\M2|ALU_SUB~combout\) # (!\M2|ALU_ADD~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(4),
	datac => \M2|ALU_ADD~combout\,
	datad => \M2|ALU_SUB~combout\,
	combout => \M3|Add0~18_combout\);

-- Location: LCCOMB_X24_Y16_N12
\M3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~20_combout\ = (\M3|Add0~19_combout\ & ((\M3|Add0~18_combout\ & (\M3|Add0~17\ & VCC)) # (!\M3|Add0~18_combout\ & (!\M3|Add0~17\)))) # (!\M3|Add0~19_combout\ & ((\M3|Add0~18_combout\ & (!\M3|Add0~17\)) # (!\M3|Add0~18_combout\ & ((\M3|Add0~17\) # 
-- (GND)))))
-- \M3|Add0~21\ = CARRY((\M3|Add0~19_combout\ & (!\M3|Add0~18_combout\ & !\M3|Add0~17\)) # (!\M3|Add0~19_combout\ & ((!\M3|Add0~17\) # (!\M3|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~19_combout\,
	datab => \M3|Add0~18_combout\,
	datad => VCC,
	cin => \M3|Add0~17\,
	combout => \M3|Add0~20_combout\,
	cout => \M3|Add0~21\);

-- Location: LCCOMB_X23_Y16_N12
\M4|REGQ[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|REGQ[5]~feeder_combout\ = \M5|REGQ\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M5|REGQ\(5),
	combout => \M4|REGQ[5]~feeder_combout\);

-- Location: FF_X23_Y16_N13
\M4|REGQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M4|REGQ[5]~feeder_combout\,
	ena => \M2|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M4|REGQ\(5));

-- Location: LCCOMB_X24_Y15_N16
\M3|tmp~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~25_combout\ = (\M3|tmp[1]~13_combout\ & (((\M3|tmp[1]~12_combout\)))) # (!\M3|tmp[1]~13_combout\ & ((\M3|tmp[1]~12_combout\ & (\M4|REGQ\(3))) # (!\M3|tmp[1]~12_combout\ & ((!\M4|REGQ\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(3),
	datab => \M4|REGQ\(4),
	datac => \M3|tmp[1]~13_combout\,
	datad => \M3|tmp[1]~12_combout\,
	combout => \M3|tmp~25_combout\);

-- Location: LCCOMB_X24_Y15_N2
\M3|tmp~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~26_combout\ = (\M3|tmp[1]~13_combout\ & ((\M3|tmp~25_combout\ & (\M3|tmp\(4))) # (!\M3|tmp~25_combout\ & ((\M4|REGQ\(5)))))) # (!\M3|tmp[1]~13_combout\ & (((\M3|tmp~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp\(4),
	datab => \M4|REGQ\(5),
	datac => \M3|tmp[1]~13_combout\,
	datad => \M3|tmp~25_combout\,
	combout => \M3|tmp~26_combout\);

-- Location: LCCOMB_X24_Y15_N0
\M3|tmp~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~45_combout\ = (\M3|tmp[1]~2_combout\ & ((\M3|tmp[1]~11_combout\ & ((\M3|tmp~26_combout\))) # (!\M3|tmp[1]~11_combout\ & (\M4|REGQ\(4))))) # (!\M3|tmp[1]~2_combout\ & (\M4|REGQ\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~2_combout\,
	datab => \M4|REGQ\(4),
	datac => \M3|tmp[1]~11_combout\,
	datad => \M3|tmp~26_combout\,
	combout => \M3|tmp~45_combout\);

-- Location: LCCOMB_X24_Y15_N14
\M3|tmp~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~46_combout\ = (\M3|tmp~45_combout\ & ((\M3|tmp[1]~11_combout\) # (\M3|tmp[1]~2_combout\ $ (\M5|REGQ\(4))))) # (!\M3|tmp~45_combout\ & (\M5|REGQ\(4) & (\M3|tmp[1]~2_combout\ $ (\M3|tmp[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~2_combout\,
	datab => \M5|REGQ\(4),
	datac => \M3|tmp[1]~11_combout\,
	datad => \M3|tmp~45_combout\,
	combout => \M3|tmp~46_combout\);

-- Location: LCCOMB_X24_Y16_N20
\M3|tmp~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~27_combout\ = (\M3|Add0~20_combout\ & ((\M3|tmp~17_combout\) # ((\M3|tmp~16_combout\ & \M3|tmp~46_combout\)))) # (!\M3|Add0~20_combout\ & (((\M3|tmp~16_combout\ & \M3|tmp~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~20_combout\,
	datab => \M3|tmp~17_combout\,
	datac => \M3|tmp~16_combout\,
	datad => \M3|tmp~46_combout\,
	combout => \M3|tmp~27_combout\);

-- Location: FF_X24_Y16_N21
\M3|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M3|tmp~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M3|tmp\(4));

-- Location: LCCOMB_X25_Y16_N16
\M3|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~23_combout\ = (\M2|ALU_ADD~combout\ & ((\M2|ALU_SUB~combout\ & ((!\M4|REGQ\(5)))) # (!\M2|ALU_SUB~combout\ & (!\M5|REGQ\(5))))) # (!\M2|ALU_ADD~combout\ & (((\M5|REGQ\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SUB~combout\,
	datab => \M5|REGQ\(5),
	datac => \M4|REGQ\(5),
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~23_combout\);

-- Location: LCCOMB_X25_Y16_N26
\M3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~22_combout\ = (\M4|REGQ\(5) & ((!\M2|ALU_SUB~combout\) # (!\M2|ALU_ADD~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2|ALU_ADD~combout\,
	datac => \M4|REGQ\(5),
	datad => \M2|ALU_SUB~combout\,
	combout => \M3|Add0~22_combout\);

-- Location: LCCOMB_X24_Y16_N14
\M3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~24_combout\ = ((\M3|Add0~23_combout\ $ (\M3|Add0~22_combout\ $ (!\M3|Add0~21\)))) # (GND)
-- \M3|Add0~25\ = CARRY((\M3|Add0~23_combout\ & ((\M3|Add0~22_combout\) # (!\M3|Add0~21\))) # (!\M3|Add0~23_combout\ & (\M3|Add0~22_combout\ & !\M3|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~23_combout\,
	datab => \M3|Add0~22_combout\,
	datad => VCC,
	cin => \M3|Add0~21\,
	combout => \M3|Add0~24_combout\,
	cout => \M3|Add0~25\);

-- Location: LCCOMB_X23_Y16_N22
\M4|REGQ[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|REGQ[6]~feeder_combout\ = \M5|REGQ\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M5|REGQ\(6),
	combout => \M4|REGQ[6]~feeder_combout\);

-- Location: FF_X23_Y16_N23
\M4|REGQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M4|REGQ[6]~feeder_combout\,
	ena => \M2|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M4|REGQ\(6));

-- Location: LCCOMB_X24_Y15_N28
\M3|tmp~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~28_combout\ = (\M3|tmp[1]~13_combout\ & (((\M4|REGQ\(6)) # (\M3|tmp[1]~12_combout\)))) # (!\M3|tmp[1]~13_combout\ & (!\M4|REGQ\(5) & ((!\M3|tmp[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(5),
	datab => \M4|REGQ\(6),
	datac => \M3|tmp[1]~13_combout\,
	datad => \M3|tmp[1]~12_combout\,
	combout => \M3|tmp~28_combout\);

-- Location: LCCOMB_X24_Y15_N6
\M3|tmp~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~29_combout\ = (\M3|tmp[1]~12_combout\ & ((\M3|tmp~28_combout\ & (\M3|tmp\(5))) # (!\M3|tmp~28_combout\ & ((\M4|REGQ\(4)))))) # (!\M3|tmp[1]~12_combout\ & (((\M3|tmp~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~12_combout\,
	datab => \M3|tmp\(5),
	datac => \M4|REGQ\(4),
	datad => \M3|tmp~28_combout\,
	combout => \M3|tmp~29_combout\);

-- Location: LCCOMB_X24_Y15_N20
\M3|tmp~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~43_combout\ = (\M3|tmp[1]~2_combout\ & ((\M3|tmp[1]~11_combout\ & ((\M3|tmp~29_combout\))) # (!\M3|tmp[1]~11_combout\ & (\M4|REGQ\(5))))) # (!\M3|tmp[1]~2_combout\ & (\M4|REGQ\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~2_combout\,
	datab => \M4|REGQ\(5),
	datac => \M3|tmp[1]~11_combout\,
	datad => \M3|tmp~29_combout\,
	combout => \M3|tmp~43_combout\);

-- Location: LCCOMB_X24_Y15_N26
\M3|tmp~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~44_combout\ = (\M3|tmp~43_combout\ & ((\M3|tmp[1]~11_combout\) # (\M3|tmp[1]~2_combout\ $ (\M5|REGQ\(5))))) # (!\M3|tmp~43_combout\ & (\M5|REGQ\(5) & (\M3|tmp[1]~2_combout\ $ (\M3|tmp[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~2_combout\,
	datab => \M5|REGQ\(5),
	datac => \M3|tmp[1]~11_combout\,
	datad => \M3|tmp~43_combout\,
	combout => \M3|tmp~44_combout\);

-- Location: LCCOMB_X24_Y16_N30
\M3|tmp~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~30_combout\ = (\M3|tmp~17_combout\ & ((\M3|Add0~24_combout\) # ((\M3|tmp~16_combout\ & \M3|tmp~44_combout\)))) # (!\M3|tmp~17_combout\ & (((\M3|tmp~16_combout\ & \M3|tmp~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp~17_combout\,
	datab => \M3|Add0~24_combout\,
	datac => \M3|tmp~16_combout\,
	datad => \M3|tmp~44_combout\,
	combout => \M3|tmp~30_combout\);

-- Location: FF_X24_Y16_N31
\M3|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M3|tmp~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M3|tmp\(5));

-- Location: LCCOMB_X23_Y16_N16
\M3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~26_combout\ = (\M4|REGQ\(6) & ((!\M2|ALU_ADD~combout\) # (!\M2|ALU_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(6),
	datac => \M2|ALU_SUB~combout\,
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~26_combout\);

-- Location: LCCOMB_X23_Y16_N6
\M3|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~27_combout\ = (\M2|ALU_ADD~combout\ & ((\M2|ALU_SUB~combout\ & (!\M4|REGQ\(6))) # (!\M2|ALU_SUB~combout\ & ((!\M5|REGQ\(6)))))) # (!\M2|ALU_ADD~combout\ & (((\M5|REGQ\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(6),
	datab => \M5|REGQ\(6),
	datac => \M2|ALU_SUB~combout\,
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~27_combout\);

-- Location: LCCOMB_X24_Y16_N16
\M3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~28_combout\ = (\M3|Add0~26_combout\ & ((\M3|Add0~27_combout\ & (\M3|Add0~25\ & VCC)) # (!\M3|Add0~27_combout\ & (!\M3|Add0~25\)))) # (!\M3|Add0~26_combout\ & ((\M3|Add0~27_combout\ & (!\M3|Add0~25\)) # (!\M3|Add0~27_combout\ & ((\M3|Add0~25\) # 
-- (GND)))))
-- \M3|Add0~29\ = CARRY((\M3|Add0~26_combout\ & (!\M3|Add0~27_combout\ & !\M3|Add0~25\)) # (!\M3|Add0~26_combout\ & ((!\M3|Add0~25\) # (!\M3|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M3|Add0~26_combout\,
	datab => \M3|Add0~27_combout\,
	datad => VCC,
	cin => \M3|Add0~25\,
	combout => \M3|Add0~28_combout\,
	cout => \M3|Add0~29\);

-- Location: LCCOMB_X23_Y16_N0
\M4|REGQ[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|REGQ[7]~feeder_combout\ = \M5|REGQ\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M5|REGQ\(7),
	combout => \M4|REGQ[7]~feeder_combout\);

-- Location: FF_X23_Y16_N1
\M4|REGQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M4|REGQ[7]~feeder_combout\,
	ena => \M2|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M4|REGQ\(7));

-- Location: LCCOMB_X24_Y15_N24
\M3|tmp~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~31_combout\ = (\M3|tmp[1]~13_combout\ & (((\M3|tmp[1]~12_combout\)))) # (!\M3|tmp[1]~13_combout\ & ((\M3|tmp[1]~12_combout\ & (\M4|REGQ\(5))) # (!\M3|tmp[1]~12_combout\ & ((!\M4|REGQ\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(5),
	datab => \M4|REGQ\(6),
	datac => \M3|tmp[1]~13_combout\,
	datad => \M3|tmp[1]~12_combout\,
	combout => \M3|tmp~31_combout\);

-- Location: LCCOMB_X24_Y15_N18
\M3|tmp~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~32_combout\ = (\M3|tmp[1]~13_combout\ & ((\M3|tmp~31_combout\ & ((\M3|tmp\(6)))) # (!\M3|tmp~31_combout\ & (\M4|REGQ\(7))))) # (!\M3|tmp[1]~13_combout\ & (((\M3|tmp~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|REGQ\(7),
	datab => \M3|tmp\(6),
	datac => \M3|tmp[1]~13_combout\,
	datad => \M3|tmp~31_combout\,
	combout => \M3|tmp~32_combout\);

-- Location: LCCOMB_X24_Y15_N12
\M3|tmp~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~41_combout\ = (\M3|tmp[1]~2_combout\ & ((\M3|tmp[1]~11_combout\ & ((\M3|tmp~32_combout\))) # (!\M3|tmp[1]~11_combout\ & (\M4|REGQ\(6))))) # (!\M3|tmp[1]~2_combout\ & (\M4|REGQ\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~2_combout\,
	datab => \M4|REGQ\(6),
	datac => \M3|tmp[1]~11_combout\,
	datad => \M3|tmp~32_combout\,
	combout => \M3|tmp~41_combout\);

-- Location: LCCOMB_X24_Y15_N22
\M3|tmp~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~42_combout\ = (\M3|tmp~41_combout\ & ((\M3|tmp[1]~11_combout\) # (\M3|tmp[1]~2_combout\ $ (\M5|REGQ\(6))))) # (!\M3|tmp~41_combout\ & (\M5|REGQ\(6) & (\M3|tmp[1]~2_combout\ $ (\M3|tmp[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~2_combout\,
	datab => \M5|REGQ\(6),
	datac => \M3|tmp[1]~11_combout\,
	datad => \M3|tmp~41_combout\,
	combout => \M3|tmp~42_combout\);

-- Location: LCCOMB_X24_Y16_N28
\M3|tmp~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~33_combout\ = (\M3|tmp~17_combout\ & ((\M3|Add0~28_combout\) # ((\M3|tmp~16_combout\ & \M3|tmp~42_combout\)))) # (!\M3|tmp~17_combout\ & (((\M3|tmp~16_combout\ & \M3|tmp~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp~17_combout\,
	datab => \M3|Add0~28_combout\,
	datac => \M3|tmp~16_combout\,
	datad => \M3|tmp~42_combout\,
	combout => \M3|tmp~33_combout\);

-- Location: FF_X24_Y16_N29
\M3|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M3|tmp~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M3|tmp\(6));

-- Location: LCCOMB_X25_Y15_N20
\M3|tmp~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~34_combout\ = (\M2|ALU_AND~combout\ & (!\M2|ALU_OR~combout\ & ((\M4|REGQ\(7)) # (\M5|REGQ\(7))))) # (!\M2|ALU_AND~combout\ & (((\M4|REGQ\(7) & \M5|REGQ\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_OR~combout\,
	datab => \M2|ALU_AND~combout\,
	datac => \M4|REGQ\(7),
	datad => \M5|REGQ\(7),
	combout => \M3|tmp~34_combout\);

-- Location: LCCOMB_X25_Y16_N14
\M3|tmp~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~38_combout\ = (\reset~input_o\ & ((!\M2|ALU_ADD~combout\) # (!\M2|ALU_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SUB~combout\,
	datab => \reset~input_o\,
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|tmp~38_combout\);

-- Location: LCCOMB_X23_Y16_N28
\M3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~30_combout\ = (\M4|REGQ\(7) & ((!\M2|ALU_ADD~combout\) # (!\M2|ALU_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M4|REGQ\(7),
	datac => \M2|ALU_SUB~combout\,
	datad => \M2|ALU_ADD~combout\,
	combout => \M3|Add0~30_combout\);

-- Location: LCCOMB_X23_Y16_N18
\M3|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~31_combout\ = (\M2|ALU_ADD~combout\ & ((\M2|ALU_SUB~combout\ & ((!\M4|REGQ\(7)))) # (!\M2|ALU_SUB~combout\ & (!\M5|REGQ\(7))))) # (!\M2|ALU_ADD~combout\ & (((\M5|REGQ\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_ADD~combout\,
	datab => \M2|ALU_SUB~combout\,
	datac => \M5|REGQ\(7),
	datad => \M4|REGQ\(7),
	combout => \M3|Add0~31_combout\);

-- Location: LCCOMB_X24_Y16_N18
\M3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|Add0~32_combout\ = \M3|Add0~30_combout\ $ (\M3|Add0~29\ $ (!\M3|Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M3|Add0~30_combout\,
	datad => \M3|Add0~31_combout\,
	cin => \M3|Add0~29\,
	combout => \M3|Add0~32_combout\);

-- Location: LCCOMB_X24_Y16_N26
\M3|tmp~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~39_combout\ = (\M3|Add0~32_combout\ & ((\M3|tmp~38_combout\) # ((\M3|tmp[1]~5_combout\ & \M3|tmp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp[1]~5_combout\,
	datab => \M3|tmp~38_combout\,
	datac => \M3|tmp~0_combout\,
	datad => \M3|Add0~32_combout\,
	combout => \M3|tmp~39_combout\);

-- Location: LCCOMB_X25_Y15_N26
\M3|tmp~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~36_combout\ = (\M2|ALU_XOR~combout\ & (!\M2|ALU_NOT~combout\ & (!\M4|REGQ\(7)))) # (!\M2|ALU_XOR~combout\ & ((\M4|REGQ\(7) $ (\M5|REGQ\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_NOT~combout\,
	datab => \M2|ALU_XOR~combout\,
	datac => \M4|REGQ\(7),
	datad => \M5|REGQ\(7),
	combout => \M3|tmp~36_combout\);

-- Location: LCCOMB_X23_Y15_N26
\M3|tmp~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~35_combout\ = (\M2|ALU_SHL~combout\ & (\M2|ALU_SHR~combout\ & (\M3|tmp\(7)))) # (!\M2|ALU_SHL~combout\ & (((\M4|REGQ\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|ALU_SHR~combout\,
	datab => \M3|tmp\(7),
	datac => \M4|REGQ\(6),
	datad => \M2|ALU_SHL~combout\,
	combout => \M3|tmp~35_combout\);

-- Location: LCCOMB_X25_Y15_N12
\M3|tmp~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~37_combout\ = (\M3|tmp~3_combout\ & ((\M3|tmp~35_combout\) # ((\M3|tmp[1]~2_combout\ & \M3|tmp~36_combout\)))) # (!\M3|tmp~3_combout\ & (\M3|tmp[1]~2_combout\ & (\M3|tmp~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp~3_combout\,
	datab => \M3|tmp[1]~2_combout\,
	datac => \M3|tmp~36_combout\,
	datad => \M3|tmp~35_combout\,
	combout => \M3|tmp~37_combout\);

-- Location: LCCOMB_X24_Y16_N22
\M3|tmp~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|tmp~40_combout\ = (\M3|tmp~39_combout\) # ((\M3|tmp~0_combout\ & ((\M3|tmp~34_combout\) # (\M3|tmp~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|tmp~0_combout\,
	datab => \M3|tmp~34_combout\,
	datac => \M3|tmp~39_combout\,
	datad => \M3|tmp~37_combout\,
	combout => \M3|tmp~40_combout\);

-- Location: FF_X24_Y16_N23
\M3|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M0|CLK_TEMP~0clkctrl_outclk\,
	d => \M3|tmp~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M3|tmp\(7));

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

ww_cmd_or1 <= \cmd_or1~output_o\;

ww_cmd_xor1 <= \cmd_xor1~output_o\;

ww_cmd_not1 <= \cmd_not1~output_o\;

ww_cmd_neg1 <= \cmd_neg1~output_o\;

ww_cmd_shl1 <= \cmd_shl1~output_o\;

ww_cmd_shr1 <= \cmd_shr1~output_o\;

ww_HALT1 <= \HALT1~output_o\;

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(4) <= \OUTPUT[4]~output_o\;

ww_OUTPUT(5) <= \OUTPUT[5]~output_o\;

ww_OUTPUT(6) <= \OUTPUT[6]~output_o\;

ww_OUTPUT(7) <= \OUTPUT[7]~output_o\;
END structure;


