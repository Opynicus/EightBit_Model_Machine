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

-- DATE "06/29/2021 00:00:46"

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

ENTITY 	ALU_FPGA IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	acc : IN std_logic_vector(7 DOWNTO 0);
	reg : IN std_logic_vector(7 DOWNTO 0);
	cmd_add : IN std_logic;
	cmd_sub : IN std_logic;
	cmd_and : IN std_logic;
	cmd_shl : IN std_logic;
	alu_out : BUFFER std_logic_vector(7 DOWNTO 0);
	esum : IN std_logic;
	c_out : BUFFER std_logic_vector(7 DOWNTO 0);
	sel : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ALU_FPGA;

-- Design Ports Information
-- acc[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[3]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[4]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[5]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[6]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[7]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[3]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[5]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[6]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[7]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[0]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[1]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[4]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[5]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[6]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[7]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- esum	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_add	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_sub	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_shl	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_and	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_FPGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_acc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cmd_add : std_logic;
SIGNAL ww_cmd_sub : std_logic;
SIGNAL ww_cmd_and : std_logic;
SIGNAL ww_cmd_shl : std_logic;
SIGNAL ww_alu_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_esum : std_logic;
SIGNAL ww_c_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \acc[0]~input_o\ : std_logic;
SIGNAL \acc[1]~input_o\ : std_logic;
SIGNAL \acc[2]~input_o\ : std_logic;
SIGNAL \acc[3]~input_o\ : std_logic;
SIGNAL \acc[4]~input_o\ : std_logic;
SIGNAL \acc[5]~input_o\ : std_logic;
SIGNAL \acc[6]~input_o\ : std_logic;
SIGNAL \acc[7]~input_o\ : std_logic;
SIGNAL \reg[0]~input_o\ : std_logic;
SIGNAL \reg[1]~input_o\ : std_logic;
SIGNAL \reg[2]~input_o\ : std_logic;
SIGNAL \reg[3]~input_o\ : std_logic;
SIGNAL \reg[4]~input_o\ : std_logic;
SIGNAL \reg[5]~input_o\ : std_logic;
SIGNAL \reg[6]~input_o\ : std_logic;
SIGNAL \reg[7]~input_o\ : std_logic;
SIGNAL \esum~input_o\ : std_logic;
SIGNAL \alu_out[0]~output_o\ : std_logic;
SIGNAL \alu_out[1]~output_o\ : std_logic;
SIGNAL \alu_out[2]~output_o\ : std_logic;
SIGNAL \alu_out[3]~output_o\ : std_logic;
SIGNAL \alu_out[4]~output_o\ : std_logic;
SIGNAL \alu_out[5]~output_o\ : std_logic;
SIGNAL \alu_out[6]~output_o\ : std_logic;
SIGNAL \alu_out[7]~output_o\ : std_logic;
SIGNAL \c_out[0]~output_o\ : std_logic;
SIGNAL \c_out[1]~output_o\ : std_logic;
SIGNAL \c_out[2]~output_o\ : std_logic;
SIGNAL \c_out[3]~output_o\ : std_logic;
SIGNAL \c_out[4]~output_o\ : std_logic;
SIGNAL \c_out[5]~output_o\ : std_logic;
SIGNAL \c_out[6]~output_o\ : std_logic;
SIGNAL \c_out[7]~output_o\ : std_logic;
SIGNAL \sel[0]~output_o\ : std_logic;
SIGNAL \sel[1]~output_o\ : std_logic;
SIGNAL \sel[2]~output_o\ : std_logic;
SIGNAL \sel[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cmd_sub~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \cmd_add~input_o\ : std_logic;
SIGNAL \tmp~0_combout\ : std_logic;
SIGNAL \cmd_and~input_o\ : std_logic;
SIGNAL \tmp~1_combout\ : std_logic;
SIGNAL \cmd_shl~input_o\ : std_logic;
SIGNAL \tmp[0]~2_combout\ : std_logic;
SIGNAL \tmp~3_combout\ : std_logic;
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
SIGNAL \D2|Equal0~2_combout\ : std_logic;
SIGNAL \D2|Equal0~0_combout\ : std_logic;
SIGNAL \D2|Equal0~3_combout\ : std_logic;
SIGNAL \D2|Equal0~1_combout\ : std_logic;
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
SIGNAL \D2|scan:count[8]~q\ : std_logic;
SIGNAL \D2|Add0~17\ : std_logic;
SIGNAL \D2|Add0~18_combout\ : std_logic;
SIGNAL \D2|count~2_combout\ : std_logic;
SIGNAL \D2|scan:count[9]~q\ : std_logic;
SIGNAL \D2|Add0~19\ : std_logic;
SIGNAL \D2|Add0~20_combout\ : std_logic;
SIGNAL \D2|count~3_combout\ : std_logic;
SIGNAL \D2|scan:count[10]~q\ : std_logic;
SIGNAL \D2|Add0~21\ : std_logic;
SIGNAL \D2|Add0~22_combout\ : std_logic;
SIGNAL \D2|scan:count[11]~q\ : std_logic;
SIGNAL \D2|Add0~23\ : std_logic;
SIGNAL \D2|Add0~24_combout\ : std_logic;
SIGNAL \D2|scan:count[12]~q\ : std_logic;
SIGNAL \D2|Add0~25\ : std_logic;
SIGNAL \D2|Add0~26_combout\ : std_logic;
SIGNAL \D2|count~4_combout\ : std_logic;
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
SIGNAL \D2|Mux0~0_combout\ : std_logic;
SIGNAL \D1|Mux5~0_combout\ : std_logic;
SIGNAL \D1|Mux4~0_combout\ : std_logic;
SIGNAL \D2|Mux5~0_combout\ : std_logic;
SIGNAL \D2|Mux6~0_combout\ : std_logic;
SIGNAL \D2|Mux7~0_combout\ : std_logic;
SIGNAL \D1|Mux0~0_combout\ : std_logic;
SIGNAL tmp : std_logic_vector(7 DOWNTO 0);
SIGNAL \D2|sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \D1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \D2|ALT_INV_sel\ : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_acc <= acc;
ww_reg <= reg;
ww_cmd_add <= cmd_add;
ww_cmd_sub <= cmd_sub;
ww_cmd_and <= cmd_and;
ww_cmd_shl <= cmd_shl;
alu_out <= ww_alu_out;
ww_esum <= esum;
c_out <= ww_c_out;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\D1|ALT_INV_Mux0~0_combout\ <= NOT \D1|Mux0~0_combout\;
\D2|ALT_INV_sel\(0) <= NOT \D2|sel\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N23
\alu_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(0),
	devoe => ww_devoe,
	o => \alu_out[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\alu_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(1),
	devoe => ww_devoe,
	o => \alu_out[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\alu_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(0),
	devoe => ww_devoe,
	o => \alu_out[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\alu_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(3),
	devoe => ww_devoe,
	o => \alu_out[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\alu_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(1),
	devoe => ww_devoe,
	o => \alu_out[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\alu_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_out[5]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\alu_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_out[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\alu_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_out[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\c_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \c_out[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\c_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \c_out[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\c_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \c_out[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\c_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \c_out[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\c_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \c_out[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\c_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \c_out[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\c_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \c_out[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\c_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \c_out[7]~output_o\);

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
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N15
\cmd_sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_sub,
	o => \cmd_sub~input_o\);

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

-- Location: IOIBUF_X34_Y12_N22
\cmd_add~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_add,
	o => \cmd_add~input_o\);

-- Location: LCCOMB_X23_Y20_N4
\tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~0_combout\ = (\reset~input_o\ & ((!\cmd_add~input_o\) # (!\cmd_sub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_sub~input_o\,
	datac => \reset~input_o\,
	datad => \cmd_add~input_o\,
	combout => \tmp~0_combout\);

-- Location: IOIBUF_X34_Y12_N8
\cmd_and~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_and,
	o => \cmd_and~input_o\);

-- Location: LCCOMB_X23_Y20_N26
\tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~1_combout\ = (\reset~input_o\ & (\cmd_and~input_o\ & (\cmd_sub~input_o\ & \cmd_add~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cmd_and~input_o\,
	datac => \cmd_sub~input_o\,
	datad => \cmd_add~input_o\,
	combout => \tmp~1_combout\);

-- Location: IOIBUF_X34_Y12_N1
\cmd_shl~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_shl,
	o => \cmd_shl~input_o\);

-- Location: LCCOMB_X23_Y20_N20
\tmp[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[0]~2_combout\ = (!\cmd_shl~input_o\) # (!\tmp~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmp~1_combout\,
	datad => \cmd_shl~input_o\,
	combout => \tmp[0]~2_combout\);

-- Location: FF_X23_Y20_N5
\tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~0_combout\,
	ena => \tmp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(0));

-- Location: FF_X23_Y20_N27
\tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~1_combout\,
	ena => \tmp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(1));

-- Location: LCCOMB_X23_Y20_N12
\tmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~3_combout\ = (\reset~input_o\ & !\cmd_add~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \cmd_add~input_o\,
	combout => \tmp~3_combout\);

-- Location: FF_X23_Y20_N13
\tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~3_combout\,
	ena => \tmp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(3));

-- Location: FF_X9_Y21_N15
\D2|scan:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[22]~q\);

-- Location: LCCOMB_X9_Y22_N2
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

-- Location: FF_X9_Y22_N3
\D2|scan:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[0]~q\);

-- Location: LCCOMB_X9_Y22_N4
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

-- Location: FF_X9_Y22_N5
\D2|scan:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[1]~q\);

-- Location: LCCOMB_X9_Y22_N6
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

-- Location: FF_X9_Y22_N7
\D2|scan:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[2]~q\);

-- Location: LCCOMB_X9_Y22_N8
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

-- Location: FF_X9_Y22_N9
\D2|scan:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[3]~q\);

-- Location: LCCOMB_X9_Y22_N10
\D2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~8_combout\ = (\D2|scan:count[4]~q\ & (\D2|Add0~7\ $ (GND))) # (!\D2|scan:count[4]~q\ & (!\D2|Add0~7\ & VCC))
-- \D2|Add0~9\ = CARRY((\D2|scan:count[4]~q\ & !\D2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \D2|scan:count[4]~q\,
	datad => VCC,
	cin => \D2|Add0~7\,
	combout => \D2|Add0~8_combout\,
	cout => \D2|Add0~9\);

-- Location: LCCOMB_X8_Y21_N26
\D2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~2_combout\ = (\D2|Add0~16_combout\ & (\D2|Add0~18_combout\ & (\D2|Add0~20_combout\ & !\D2|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~16_combout\,
	datab => \D2|Add0~18_combout\,
	datac => \D2|Add0~20_combout\,
	datad => \D2|Add0~22_combout\,
	combout => \D2|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y22_N24
\D2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~0_combout\ = (!\D2|Add0~0_combout\ & (!\D2|Add0~6_combout\ & (!\D2|Add0~4_combout\ & !\D2|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~0_combout\,
	datab => \D2|Add0~6_combout\,
	datac => \D2|Add0~4_combout\,
	datad => \D2|Add0~2_combout\,
	combout => \D2|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y21_N22
\D2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~3_combout\ = (\D2|Add0~26_combout\ & (!\D2|Add0~28_combout\ & (!\D2|Add0~30_combout\ & !\D2|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~26_combout\,
	datab => \D2|Add0~28_combout\,
	datac => \D2|Add0~30_combout\,
	datad => \D2|Add0~24_combout\,
	combout => \D2|Equal0~3_combout\);

-- Location: LCCOMB_X9_Y22_N0
\D2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~1_combout\ = (\D2|Add0~8_combout\ & (!\D2|Add0~14_combout\ & (!\D2|Add0~10_combout\ & !\D2|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~8_combout\,
	datab => \D2|Add0~14_combout\,
	datac => \D2|Add0~10_combout\,
	datad => \D2|Add0~12_combout\,
	combout => \D2|Equal0~1_combout\);

-- Location: LCCOMB_X8_Y21_N4
\D2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~4_combout\ = (\D2|Equal0~2_combout\ & (\D2|Equal0~0_combout\ & (\D2|Equal0~3_combout\ & \D2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~2_combout\,
	datab => \D2|Equal0~0_combout\,
	datac => \D2|Equal0~3_combout\,
	datad => \D2|Equal0~1_combout\,
	combout => \D2|Equal0~4_combout\);

-- Location: FF_X9_Y21_N27
\D2|scan:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[28]~q\);

-- Location: LCCOMB_X9_Y21_N14
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

-- Location: LCCOMB_X9_Y21_N16
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

-- Location: FF_X9_Y21_N17
\D2|scan:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[23]~q\);

-- Location: LCCOMB_X9_Y21_N18
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

-- Location: FF_X9_Y21_N19
\D2|scan:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[24]~q\);

-- Location: LCCOMB_X9_Y21_N20
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

-- Location: FF_X9_Y21_N21
\D2|scan:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[25]~q\);

-- Location: LCCOMB_X9_Y21_N22
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

-- Location: FF_X9_Y21_N23
\D2|scan:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[26]~q\);

-- Location: LCCOMB_X9_Y21_N24
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

-- Location: FF_X9_Y21_N25
\D2|scan:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[27]~q\);

-- Location: LCCOMB_X9_Y21_N26
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

-- Location: FF_X9_Y21_N29
\D2|scan:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[29]~q\);

-- Location: LCCOMB_X9_Y21_N28
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

-- Location: FF_X9_Y21_N31
\D2|scan:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[30]~q\);

-- Location: LCCOMB_X9_Y21_N30
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

-- Location: LCCOMB_X8_Y21_N20
\D2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~8_combout\ = (!\D2|Add0~48_combout\ & (!\D2|Add0~52_combout\ & (!\D2|Add0~50_combout\ & !\D2|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~48_combout\,
	datab => \D2|Add0~52_combout\,
	datac => \D2|Add0~50_combout\,
	datad => \D2|Add0~54_combout\,
	combout => \D2|Equal0~8_combout\);

-- Location: LCCOMB_X8_Y21_N10
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

-- Location: LCCOMB_X8_Y21_N2
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

-- Location: FF_X8_Y21_N3
\D2|scan:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[4]~q\);

-- Location: LCCOMB_X9_Y22_N12
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

-- Location: FF_X9_Y22_N13
\D2|scan:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[5]~q\);

-- Location: LCCOMB_X9_Y22_N14
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

-- Location: FF_X9_Y22_N15
\D2|scan:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[6]~q\);

-- Location: LCCOMB_X9_Y22_N16
\D2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Add0~14_combout\ = (\D2|scan:count[7]~q\ & (!\D2|Add0~13\)) # (!\D2|scan:count[7]~q\ & ((\D2|Add0~13\) # (GND)))
-- \D2|Add0~15\ = CARRY((!\D2|Add0~13\) # (!\D2|scan:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D2|scan:count[7]~q\,
	datad => VCC,
	cin => \D2|Add0~13\,
	combout => \D2|Add0~14_combout\,
	cout => \D2|Add0~15\);

-- Location: FF_X9_Y22_N17
\D2|scan:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[7]~q\);

-- Location: LCCOMB_X9_Y22_N18
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

-- Location: LCCOMB_X8_Y21_N12
\D2|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|count~1_combout\ = (\D2|Add0~16_combout\ & (((!\D2|Equal0~9_combout\) # (!\D2|Equal0~7_combout\)) # (!\D2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~16_combout\,
	datab => \D2|Equal0~4_combout\,
	datac => \D2|Equal0~7_combout\,
	datad => \D2|Equal0~9_combout\,
	combout => \D2|count~1_combout\);

-- Location: FF_X8_Y21_N13
\D2|scan:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[8]~q\);

-- Location: LCCOMB_X9_Y22_N20
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

-- Location: LCCOMB_X8_Y21_N18
\D2|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|count~2_combout\ = (\D2|Add0~18_combout\ & (((!\D2|Equal0~9_combout\) # (!\D2|Equal0~7_combout\)) # (!\D2|Equal0~4_combout\)))

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
	combout => \D2|count~2_combout\);

-- Location: FF_X8_Y21_N19
\D2|scan:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[9]~q\);

-- Location: LCCOMB_X9_Y22_N22
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

-- Location: LCCOMB_X8_Y21_N28
\D2|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|count~3_combout\ = (\D2|Add0~20_combout\ & (((!\D2|Equal0~9_combout\) # (!\D2|Equal0~7_combout\)) # (!\D2|Equal0~4_combout\)))

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
	combout => \D2|count~3_combout\);

-- Location: FF_X8_Y21_N29
\D2|scan:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[10]~q\);

-- Location: LCCOMB_X9_Y22_N24
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

-- Location: FF_X9_Y22_N25
\D2|scan:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[11]~q\);

-- Location: LCCOMB_X9_Y22_N26
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

-- Location: FF_X9_Y22_N27
\D2|scan:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[12]~q\);

-- Location: LCCOMB_X9_Y22_N28
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

-- Location: LCCOMB_X8_Y21_N24
\D2|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|count~4_combout\ = (!\D2|Add0~56_combout\ & (!\D2|Add0~58_combout\ & (!\D2|Add0~60_combout\ & \D2|Equal0~8_combout\)))

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
	combout => \D2|count~4_combout\);

-- Location: LCCOMB_X8_Y21_N16
\D2|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|count~5_combout\ = (\D2|Add0~26_combout\ & (((!\D2|count~4_combout\) # (!\D2|Equal0~7_combout\)) # (!\D2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~26_combout\,
	datab => \D2|Equal0~4_combout\,
	datac => \D2|Equal0~7_combout\,
	datad => \D2|count~4_combout\,
	combout => \D2|count~5_combout\);

-- Location: FF_X8_Y21_N17
\D2|scan:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[13]~q\);

-- Location: LCCOMB_X9_Y22_N30
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

-- Location: FF_X9_Y22_N31
\D2|scan:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[14]~q\);

-- Location: LCCOMB_X9_Y21_N0
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

-- Location: FF_X9_Y21_N1
\D2|scan:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[15]~q\);

-- Location: LCCOMB_X9_Y21_N2
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

-- Location: FF_X9_Y21_N3
\D2|scan:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[16]~q\);

-- Location: LCCOMB_X9_Y21_N4
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

-- Location: FF_X9_Y21_N5
\D2|scan:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[17]~q\);

-- Location: LCCOMB_X9_Y21_N6
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

-- Location: FF_X9_Y21_N7
\D2|scan:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[18]~q\);

-- Location: LCCOMB_X9_Y21_N8
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

-- Location: FF_X9_Y21_N9
\D2|scan:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[19]~q\);

-- Location: LCCOMB_X9_Y21_N10
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

-- Location: FF_X9_Y21_N11
\D2|scan:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[20]~q\);

-- Location: LCCOMB_X9_Y21_N12
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

-- Location: FF_X9_Y21_N13
\D2|scan:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|scan:count[21]~q\);

-- Location: LCCOMB_X8_Y21_N14
\D2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~5_combout\ = (!\D2|Add0~32_combout\ & (!\D2|Add0~38_combout\ & (!\D2|Add0~34_combout\ & !\D2|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Add0~32_combout\,
	datab => \D2|Add0~38_combout\,
	datac => \D2|Add0~34_combout\,
	datad => \D2|Add0~36_combout\,
	combout => \D2|Equal0~5_combout\);

-- Location: LCCOMB_X8_Y21_N0
\D2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Equal0~6_combout\ = (!\D2|Add0~40_combout\ & !\D2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D2|Add0~40_combout\,
	datac => \D2|Add0~42_combout\,
	combout => \D2|Equal0~6_combout\);

-- Location: LCCOMB_X8_Y21_N30
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

-- Location: LCCOMB_X8_Y21_N8
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

-- Location: FF_X8_Y21_N9
\D2|sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|sel\(0));

-- Location: LCCOMB_X23_Y20_N18
\D2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Mux0~0_combout\ = (\D2|sel\(0) & (((tmp(1))))) # (!\D2|sel\(0) & (tmp(0) & (tmp(3) & !tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(0),
	datab => tmp(3),
	datac => \D2|sel\(0),
	datad => tmp(1),
	combout => \D2|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y20_N8
\D1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux5~0_combout\ = (tmp(0) & (!\D2|sel\(0) & (tmp(3) $ (!tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(0),
	datab => tmp(3),
	datac => \D2|sel\(0),
	datad => tmp(1),
	combout => \D1|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y20_N22
\D1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux4~0_combout\ = (!\D2|sel\(0) & (tmp(1) & (tmp(0) $ (!tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(0),
	datab => tmp(3),
	datac => \D2|sel\(0),
	datad => tmp(1),
	combout => \D1|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y20_N24
\D2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Mux5~0_combout\ = (tmp(1) & ((tmp(0)) # ((tmp(3)) # (\D2|sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(0),
	datab => tmp(3),
	datac => \D2|sel\(0),
	datad => tmp(1),
	combout => \D2|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y20_N14
\D2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Mux6~0_combout\ = (\D2|sel\(0) & (((tmp(1))))) # (!\D2|sel\(0) & (tmp(0) & (!tmp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(0),
	datab => tmp(3),
	datac => \D2|sel\(0),
	datad => tmp(1),
	combout => \D2|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\D2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2|Mux7~0_combout\ = (tmp(3) & ((\D2|sel\(0) & ((tmp(1)))) # (!\D2|sel\(0) & (tmp(0) & !tmp(1))))) # (!tmp(3) & (((tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(0),
	datab => tmp(3),
	datac => \D2|sel\(0),
	datad => tmp(1),
	combout => \D2|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y20_N10
\D1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1|Mux0~0_combout\ = (!\D2|sel\(0) & ((tmp(3)) # (tmp(0) $ (tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(0),
	datab => tmp(3),
	datac => \D2|sel\(0),
	datad => tmp(1),
	combout => \D1|Mux0~0_combout\);

-- Location: IOIBUF_X1_Y0_N22
\acc[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(0),
	o => \acc[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\acc[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(1),
	o => \acc[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\acc[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(2),
	o => \acc[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\acc[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(3),
	o => \acc[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\acc[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(4),
	o => \acc[4]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\acc[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(5),
	o => \acc[5]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\acc[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(6),
	o => \acc[6]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\acc[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(7),
	o => \acc[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\reg[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(0),
	o => \reg[0]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\reg[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(1),
	o => \reg[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\reg[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(2),
	o => \reg[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\reg[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(3),
	o => \reg[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\reg[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(4),
	o => \reg[4]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\reg[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(5),
	o => \reg[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\reg[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(6),
	o => \reg[6]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\reg[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(7),
	o => \reg[7]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\esum~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_esum,
	o => \esum~input_o\);

ww_alu_out(0) <= \alu_out[0]~output_o\;

ww_alu_out(1) <= \alu_out[1]~output_o\;

ww_alu_out(2) <= \alu_out[2]~output_o\;

ww_alu_out(3) <= \alu_out[3]~output_o\;

ww_alu_out(4) <= \alu_out[4]~output_o\;

ww_alu_out(5) <= \alu_out[5]~output_o\;

ww_alu_out(6) <= \alu_out[6]~output_o\;

ww_alu_out(7) <= \alu_out[7]~output_o\;

ww_c_out(0) <= \c_out[0]~output_o\;

ww_c_out(1) <= \c_out[1]~output_o\;

ww_c_out(2) <= \c_out[2]~output_o\;

ww_c_out(3) <= \c_out[3]~output_o\;

ww_c_out(4) <= \c_out[4]~output_o\;

ww_c_out(5) <= \c_out[5]~output_o\;

ww_c_out(6) <= \c_out[6]~output_o\;

ww_c_out(7) <= \c_out[7]~output_o\;

ww_sel(0) <= \sel[0]~output_o\;

ww_sel(1) <= \sel[1]~output_o\;

ww_sel(2) <= \sel[2]~output_o\;

ww_sel(3) <= \sel[3]~output_o\;
END structure;


