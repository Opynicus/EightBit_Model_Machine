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

-- DATE "06/07/2021 13:23:46"

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

ENTITY 	ALU IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	acc : IN std_logic_vector(7 DOWNTO 0);
	reg : IN std_logic_vector(7 DOWNTO 0);
	cmd_add : IN std_logic;
	cmd_sub : IN std_logic;
	cmd_and : IN std_logic;
	cmd_shl : IN std_logic;
	alu_out : OUT std_logic_vector(7 DOWNTO 0);
	esum : IN std_logic
	);
END ALU;

-- Design Ports Information
-- alu_out[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[4]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[5]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[6]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[7]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- esum	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_and	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[0]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_shl	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_add	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_sub	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[3]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[4]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[4]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[5]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[5]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[6]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[6]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[7]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[7]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
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
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu_out[0]~output_o\ : std_logic;
SIGNAL \alu_out[1]~output_o\ : std_logic;
SIGNAL \alu_out[2]~output_o\ : std_logic;
SIGNAL \alu_out[3]~output_o\ : std_logic;
SIGNAL \alu_out[4]~output_o\ : std_logic;
SIGNAL \alu_out[5]~output_o\ : std_logic;
SIGNAL \alu_out[6]~output_o\ : std_logic;
SIGNAL \alu_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cmd_sub~input_o\ : std_logic;
SIGNAL \cmd_add~input_o\ : std_logic;
SIGNAL \tmp[1]~8_combout\ : std_logic;
SIGNAL \acc[0]~input_o\ : std_logic;
SIGNAL \reg[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \cmd_and~input_o\ : std_logic;
SIGNAL \cmd_shl~input_o\ : std_logic;
SIGNAL \tmp~6_combout\ : std_logic;
SIGNAL \tmp~7_combout\ : std_logic;
SIGNAL \tmp~9_combout\ : std_logic;
SIGNAL \esum~input_o\ : std_logic;
SIGNAL \tmp[1]~10_combout\ : std_logic;
SIGNAL \tmp[1]~11_combout\ : std_logic;
SIGNAL \reg[1]~input_o\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \acc[1]~input_o\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \tmp~12_combout\ : std_logic;
SIGNAL \tmp~33_combout\ : std_logic;
SIGNAL \tmp~13_combout\ : std_logic;
SIGNAL \reg[2]~input_o\ : std_logic;
SIGNAL \acc[2]~input_o\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \tmp~14_combout\ : std_logic;
SIGNAL \tmp~15_combout\ : std_logic;
SIGNAL \tmp~16_combout\ : std_logic;
SIGNAL \tmp~17_combout\ : std_logic;
SIGNAL \reg[3]~input_o\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \acc[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \tmp~18_combout\ : std_logic;
SIGNAL \tmp~34_combout\ : std_logic;
SIGNAL \tmp~19_combout\ : std_logic;
SIGNAL \reg[4]~input_o\ : std_logic;
SIGNAL \acc[4]~input_o\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \tmp~20_combout\ : std_logic;
SIGNAL \tmp~21_combout\ : std_logic;
SIGNAL \tmp~22_combout\ : std_logic;
SIGNAL \tmp~23_combout\ : std_logic;
SIGNAL \acc[5]~input_o\ : std_logic;
SIGNAL \reg[5]~input_o\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \tmp~24_combout\ : std_logic;
SIGNAL \tmp~35_combout\ : std_logic;
SIGNAL \tmp~25_combout\ : std_logic;
SIGNAL \reg[6]~input_o\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \acc[6]~input_o\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \tmp~26_combout\ : std_logic;
SIGNAL \tmp~27_combout\ : std_logic;
SIGNAL \tmp~28_combout\ : std_logic;
SIGNAL \tmp~29_combout\ : std_logic;
SIGNAL \acc[7]~input_o\ : std_logic;
SIGNAL \tmp~30_combout\ : std_logic;
SIGNAL \reg[7]~input_o\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \tmp~31_combout\ : std_logic;
SIGNAL \tmp~32_combout\ : std_logic;
SIGNAL tmp : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_esum~input_o\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_esum~input_o\ <= NOT \esum~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y0_N9
\alu_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(0),
	oe => \ALT_INV_esum~input_o\,
	devoe => ww_devoe,
	o => \alu_out[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\alu_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(1),
	oe => \ALT_INV_esum~input_o\,
	devoe => ww_devoe,
	o => \alu_out[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\alu_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(2),
	oe => \ALT_INV_esum~input_o\,
	devoe => ww_devoe,
	o => \alu_out[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\alu_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(3),
	oe => \ALT_INV_esum~input_o\,
	devoe => ww_devoe,
	o => \alu_out[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\alu_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(4),
	oe => \ALT_INV_esum~input_o\,
	devoe => ww_devoe,
	o => \alu_out[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\alu_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(5),
	oe => \ALT_INV_esum~input_o\,
	devoe => ww_devoe,
	o => \alu_out[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\alu_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(6),
	oe => \ALT_INV_esum~input_o\,
	devoe => ww_devoe,
	o => \alu_out[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\alu_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(7),
	oe => \ALT_INV_esum~input_o\,
	devoe => ww_devoe,
	o => \alu_out[7]~output_o\);

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

-- Location: IOIBUF_X25_Y0_N1
\cmd_sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_sub,
	o => \cmd_sub~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\cmd_add~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_add,
	o => \cmd_add~input_o\);

-- Location: LCCOMB_X28_Y3_N30
\tmp[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[1]~8_combout\ = (\cmd_sub~input_o\ & \cmd_add~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_sub~input_o\,
	datad => \cmd_add~input_o\,
	combout => \tmp[1]~8_combout\);

-- Location: IOIBUF_X32_Y0_N22
\acc[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(0),
	o => \acc[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\reg[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(0),
	o => \reg[0]~input_o\);

-- Location: LCCOMB_X28_Y3_N24
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \reg[0]~input_o\ $ (\cmd_add~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg[0]~input_o\,
	datad => \cmd_add~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X29_Y3_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\cmd_add~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_add~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X29_Y3_N10
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\acc[0]~input_o\ & ((\Add0~0_combout\ & (\Add0~2_cout\ & VCC)) # (!\Add0~0_combout\ & (!\Add0~2_cout\)))) # (!\acc[0]~input_o\ & ((\Add0~0_combout\ & (!\Add0~2_cout\)) # (!\Add0~0_combout\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\acc[0]~input_o\ & (!\Add0~0_combout\ & !\Add0~2_cout\)) # (!\acc[0]~input_o\ & ((!\Add0~2_cout\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc[0]~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: IOIBUF_X34_Y4_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\cmd_and~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_and,
	o => \cmd_and~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\cmd_shl~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_shl,
	o => \cmd_shl~input_o\);

-- Location: LCCOMB_X28_Y3_N4
\tmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~6_combout\ = (\cmd_and~input_o\ & ((\cmd_shl~input_o\))) # (!\cmd_and~input_o\ & (\reg[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[0]~input_o\,
	datac => \cmd_and~input_o\,
	datad => \cmd_shl~input_o\,
	combout => \tmp~6_combout\);

-- Location: LCCOMB_X28_Y3_N18
\tmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~7_combout\ = (\tmp~6_combout\ & ((\cmd_and~input_o\ & ((tmp(0)))) # (!\cmd_and~input_o\ & (\acc[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_and~input_o\,
	datab => \tmp~6_combout\,
	datac => \acc[0]~input_o\,
	datad => tmp(0),
	combout => \tmp~7_combout\);

-- Location: LCCOMB_X28_Y3_N28
\tmp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~9_combout\ = (\reset~input_o\ & ((\tmp[1]~8_combout\ & ((\tmp~7_combout\))) # (!\tmp[1]~8_combout\ & (\Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~8_combout\,
	datab => \Add0~3_combout\,
	datac => \reset~input_o\,
	datad => \tmp~7_combout\,
	combout => \tmp~9_combout\);

-- Location: FF_X28_Y3_N29
\tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(0));

-- Location: IOIBUF_X16_Y0_N8
\esum~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_esum,
	o => \esum~input_o\);

-- Location: LCCOMB_X28_Y3_N0
\tmp[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[1]~10_combout\ = (((!\cmd_shl~input_o\ & \cmd_and~input_o\)) # (!\cmd_add~input_o\)) # (!\cmd_sub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_sub~input_o\,
	datab => \cmd_shl~input_o\,
	datac => \cmd_and~input_o\,
	datad => \cmd_add~input_o\,
	combout => \tmp[1]~10_combout\);

-- Location: LCCOMB_X28_Y3_N26
\tmp[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[1]~11_combout\ = (\cmd_sub~input_o\ & (\cmd_and~input_o\ & \cmd_add~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_sub~input_o\,
	datac => \cmd_and~input_o\,
	datad => \cmd_add~input_o\,
	combout => \tmp[1]~11_combout\);

-- Location: IOIBUF_X18_Y0_N15
\reg[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(1),
	o => \reg[1]~input_o\);

-- Location: LCCOMB_X28_Y3_N16
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \reg[1]~input_o\ $ (\cmd_add~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg[1]~input_o\,
	datad => \cmd_add~input_o\,
	combout => \Add0~5_combout\);

-- Location: IOIBUF_X34_Y4_N15
\acc[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(1),
	o => \acc[1]~input_o\);

-- Location: LCCOMB_X29_Y3_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\Add0~5_combout\ $ (\acc[1]~input_o\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\Add0~5_combout\ & ((\acc[1]~input_o\) # (!\Add0~4\))) # (!\Add0~5_combout\ & (\acc[1]~input_o\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \acc[1]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X28_Y3_N22
\tmp~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~12_combout\ = (\tmp[1]~11_combout\ & ((\acc[0]~input_o\))) # (!\tmp[1]~11_combout\ & (\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~11_combout\,
	datab => \Add0~6_combout\,
	datac => \acc[0]~input_o\,
	combout => \tmp~12_combout\);

-- Location: LCCOMB_X28_Y3_N12
\tmp~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~33_combout\ = (\tmp[1]~11_combout\ & (((tmp(1))))) # (!\tmp[1]~11_combout\ & (\acc[1]~input_o\ & (\reg[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~11_combout\,
	datab => \acc[1]~input_o\,
	datac => \reg[1]~input_o\,
	datad => tmp(1),
	combout => \tmp~33_combout\);

-- Location: LCCOMB_X28_Y3_N10
\tmp~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~13_combout\ = (\reset~input_o\ & ((\tmp[1]~10_combout\ & (\tmp~12_combout\)) # (!\tmp[1]~10_combout\ & ((\tmp~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \tmp[1]~10_combout\,
	datac => \tmp~12_combout\,
	datad => \tmp~33_combout\,
	combout => \tmp~13_combout\);

-- Location: FF_X28_Y3_N11
\tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(1));

-- Location: IOIBUF_X18_Y0_N22
\reg[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(2),
	o => \reg[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\acc[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(2),
	o => \acc[2]~input_o\);

-- Location: LCCOMB_X29_Y3_N28
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \cmd_add~input_o\ $ (\reg[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_add~input_o\,
	datac => \reg[2]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X29_Y3_N14
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\acc[2]~input_o\ & ((\Add0~8_combout\ & (\Add0~7\ & VCC)) # (!\Add0~8_combout\ & (!\Add0~7\)))) # (!\acc[2]~input_o\ & ((\Add0~8_combout\ & (!\Add0~7\)) # (!\Add0~8_combout\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\acc[2]~input_o\ & (!\Add0~8_combout\ & !\Add0~7\)) # (!\acc[2]~input_o\ & ((!\Add0~7\) # (!\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc[2]~input_o\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X29_Y3_N26
\tmp~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~14_combout\ = (\tmp[1]~10_combout\ & (((\Add0~9_combout\)))) # (!\tmp[1]~10_combout\ & (\reg[2]~input_o\ & ((\acc[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2]~input_o\,
	datab => \tmp[1]~10_combout\,
	datac => \Add0~9_combout\,
	datad => \acc[2]~input_o\,
	combout => \tmp~14_combout\);

-- Location: LCCOMB_X29_Y3_N4
\tmp~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~15_combout\ = (\tmp[1]~11_combout\ & ((\acc[1]~input_o\) # ((!\tmp[1]~10_combout\)))) # (!\tmp[1]~11_combout\ & (((\tmp~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~11_combout\,
	datab => \acc[1]~input_o\,
	datac => \tmp[1]~10_combout\,
	datad => \tmp~14_combout\,
	combout => \tmp~15_combout\);

-- Location: LCCOMB_X29_Y3_N6
\tmp~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~16_combout\ = (\reset~input_o\ & \tmp~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \tmp~15_combout\,
	combout => \tmp~16_combout\);

-- Location: LCCOMB_X28_Y3_N20
\tmp~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~17_combout\ = (\tmp~16_combout\ & (((\tmp[1]~10_combout\) # (tmp(2))) # (!\tmp[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~11_combout\,
	datab => \tmp[1]~10_combout\,
	datac => tmp(2),
	datad => \tmp~16_combout\,
	combout => \tmp~17_combout\);

-- Location: FF_X28_Y3_N21
\tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(2));

-- Location: IOIBUF_X34_Y7_N8
\reg[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(3),
	o => \reg[3]~input_o\);

-- Location: LCCOMB_X28_Y3_N8
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \cmd_add~input_o\ $ (\reg[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_add~input_o\,
	datad => \reg[3]~input_o\,
	combout => \Add0~11_combout\);

-- Location: IOIBUF_X34_Y9_N8
\acc[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(3),
	o => \acc[3]~input_o\);

-- Location: LCCOMB_X29_Y3_N16
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Add0~11_combout\ $ (\acc[3]~input_o\ $ (!\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\Add0~11_combout\ & ((\acc[3]~input_o\) # (!\Add0~10\))) # (!\Add0~11_combout\ & (\acc[3]~input_o\ & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \acc[3]~input_o\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X29_Y3_N30
\tmp~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~18_combout\ = (\tmp[1]~11_combout\ & ((\acc[2]~input_o\))) # (!\tmp[1]~11_combout\ & (\Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datac => \tmp[1]~11_combout\,
	datad => \acc[2]~input_o\,
	combout => \tmp~18_combout\);

-- Location: LCCOMB_X28_Y3_N6
\tmp~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~34_combout\ = (\tmp[1]~11_combout\ & (((tmp(3))))) # (!\tmp[1]~11_combout\ & (\acc[3]~input_o\ & (\reg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc[3]~input_o\,
	datab => \reg[3]~input_o\,
	datac => \tmp[1]~11_combout\,
	datad => tmp(3),
	combout => \tmp~34_combout\);

-- Location: LCCOMB_X28_Y3_N2
\tmp~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~19_combout\ = (\reset~input_o\ & ((\tmp[1]~10_combout\ & (\tmp~18_combout\)) # (!\tmp[1]~10_combout\ & ((\tmp~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \tmp[1]~10_combout\,
	datac => \tmp~18_combout\,
	datad => \tmp~34_combout\,
	combout => \tmp~19_combout\);

-- Location: FF_X28_Y3_N3
\tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(3));

-- Location: IOIBUF_X32_Y0_N15
\reg[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(4),
	o => \reg[4]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\acc[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(4),
	o => \acc[4]~input_o\);

-- Location: LCCOMB_X29_Y3_N0
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \cmd_add~input_o\ $ (\reg[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_add~input_o\,
	datad => \reg[4]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X29_Y3_N18
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\acc[4]~input_o\ & ((\Add0~14_combout\ & (\Add0~13\ & VCC)) # (!\Add0~14_combout\ & (!\Add0~13\)))) # (!\acc[4]~input_o\ & ((\Add0~14_combout\ & (!\Add0~13\)) # (!\Add0~14_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~16\ = CARRY((\acc[4]~input_o\ & (!\Add0~14_combout\ & !\Add0~13\)) # (!\acc[4]~input_o\ & ((!\Add0~13\) # (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc[4]~input_o\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X29_Y3_N2
\tmp~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~20_combout\ = (\tmp[1]~10_combout\ & (((\Add0~15_combout\)))) # (!\tmp[1]~10_combout\ & (\reg[4]~input_o\ & ((\acc[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[4]~input_o\,
	datab => \Add0~15_combout\,
	datac => \tmp[1]~10_combout\,
	datad => \acc[4]~input_o\,
	combout => \tmp~20_combout\);

-- Location: LCCOMB_X28_Y3_N14
\tmp~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~21_combout\ = (\tmp[1]~11_combout\ & ((\acc[3]~input_o\) # ((!\tmp[1]~10_combout\)))) # (!\tmp[1]~11_combout\ & (((\tmp~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc[3]~input_o\,
	datab => \tmp[1]~10_combout\,
	datac => \tmp[1]~11_combout\,
	datad => \tmp~20_combout\,
	combout => \tmp~21_combout\);

-- Location: LCCOMB_X31_Y3_N24
\tmp~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~22_combout\ = (\tmp~21_combout\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmp~21_combout\,
	datad => \reset~input_o\,
	combout => \tmp~22_combout\);

-- Location: LCCOMB_X30_Y3_N16
\tmp~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~23_combout\ = (\tmp~22_combout\ & (((tmp(4)) # (\tmp[1]~10_combout\)) # (!\tmp[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~11_combout\,
	datab => \tmp~22_combout\,
	datac => tmp(4),
	datad => \tmp[1]~10_combout\,
	combout => \tmp~23_combout\);

-- Location: FF_X30_Y3_N17
\tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(4));

-- Location: IOIBUF_X30_Y0_N8
\acc[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(5),
	o => \acc[5]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\reg[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(5),
	o => \reg[5]~input_o\);

-- Location: LCCOMB_X30_Y3_N12
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \cmd_add~input_o\ $ (\reg[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_add~input_o\,
	datad => \reg[5]~input_o\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X29_Y3_N20
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\acc[5]~input_o\ $ (\Add0~17_combout\ $ (!\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\acc[5]~input_o\ & ((\Add0~17_combout\) # (!\Add0~16\))) # (!\acc[5]~input_o\ & (\Add0~17_combout\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc[5]~input_o\,
	datab => \Add0~17_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X30_Y3_N30
\tmp~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~24_combout\ = (\tmp[1]~11_combout\ & ((\acc[4]~input_o\))) # (!\tmp[1]~11_combout\ & (\Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~11_combout\,
	datab => \Add0~18_combout\,
	datac => \acc[4]~input_o\,
	combout => \tmp~24_combout\);

-- Location: LCCOMB_X30_Y3_N2
\tmp~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~35_combout\ = (\tmp[1]~11_combout\ & (((tmp(5))))) # (!\tmp[1]~11_combout\ & (\acc[5]~input_o\ & (\reg[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc[5]~input_o\,
	datab => \reg[5]~input_o\,
	datac => \tmp[1]~11_combout\,
	datad => tmp(5),
	combout => \tmp~35_combout\);

-- Location: LCCOMB_X30_Y3_N6
\tmp~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~25_combout\ = (\reset~input_o\ & ((\tmp[1]~10_combout\ & (\tmp~24_combout\)) # (!\tmp[1]~10_combout\ & ((\tmp~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~10_combout\,
	datab => \reset~input_o\,
	datac => \tmp~24_combout\,
	datad => \tmp~35_combout\,
	combout => \tmp~25_combout\);

-- Location: FF_X30_Y3_N7
\tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(5));

-- Location: IOIBUF_X34_Y17_N15
\reg[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(6),
	o => \reg[6]~input_o\);

-- Location: LCCOMB_X30_Y3_N4
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \reg[6]~input_o\ $ (\cmd_add~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6]~input_o\,
	datac => \cmd_add~input_o\,
	combout => \Add0~20_combout\);

-- Location: IOIBUF_X34_Y2_N15
\acc[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(6),
	o => \acc[6]~input_o\);

-- Location: LCCOMB_X29_Y3_N22
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20_combout\ & ((\acc[6]~input_o\ & (\Add0~19\ & VCC)) # (!\acc[6]~input_o\ & (!\Add0~19\)))) # (!\Add0~20_combout\ & ((\acc[6]~input_o\ & (!\Add0~19\)) # (!\acc[6]~input_o\ & ((\Add0~19\) # (GND)))))
-- \Add0~22\ = CARRY((\Add0~20_combout\ & (!\acc[6]~input_o\ & !\Add0~19\)) # (!\Add0~20_combout\ & ((!\Add0~19\) # (!\acc[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \acc[6]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X30_Y3_N14
\tmp~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~26_combout\ = (\tmp[1]~10_combout\ & (((\Add0~21_combout\)))) # (!\tmp[1]~10_combout\ & (\reg[6]~input_o\ & ((\acc[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6]~input_o\,
	datab => \Add0~21_combout\,
	datac => \acc[6]~input_o\,
	datad => \tmp[1]~10_combout\,
	combout => \tmp~26_combout\);

-- Location: LCCOMB_X30_Y3_N8
\tmp~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~27_combout\ = (\tmp[1]~11_combout\ & (((\acc[5]~input_o\)) # (!\tmp[1]~10_combout\))) # (!\tmp[1]~11_combout\ & (((\tmp~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~10_combout\,
	datab => \tmp~26_combout\,
	datac => \tmp[1]~11_combout\,
	datad => \acc[5]~input_o\,
	combout => \tmp~27_combout\);

-- Location: LCCOMB_X30_Y3_N18
\tmp~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~28_combout\ = (\tmp~27_combout\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmp~27_combout\,
	datad => \reset~input_o\,
	combout => \tmp~28_combout\);

-- Location: LCCOMB_X30_Y3_N24
\tmp~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~29_combout\ = (\tmp~28_combout\ & (((tmp(6)) # (\tmp[1]~10_combout\)) # (!\tmp[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~11_combout\,
	datab => \tmp~28_combout\,
	datac => tmp(6),
	datad => \tmp[1]~10_combout\,
	combout => \tmp~29_combout\);

-- Location: FF_X30_Y3_N25
\tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(6));

-- Location: IOIBUF_X30_Y0_N1
\acc[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(7),
	o => \acc[7]~input_o\);

-- Location: LCCOMB_X30_Y3_N20
\tmp~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~30_combout\ = (\tmp[1]~10_combout\ & ((\acc[6]~input_o\) # ((!\tmp[1]~11_combout\)))) # (!\tmp[1]~10_combout\ & (((\tmp[1]~11_combout\ & tmp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~10_combout\,
	datab => \acc[6]~input_o\,
	datac => \tmp[1]~11_combout\,
	datad => tmp(7),
	combout => \tmp~30_combout\);

-- Location: IOIBUF_X34_Y17_N22
\reg[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg(7),
	o => \reg[7]~input_o\);

-- Location: LCCOMB_X30_Y3_N22
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \reg[7]~input_o\ $ (\cmd_add~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[7]~input_o\,
	datac => \cmd_add~input_o\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X29_Y3_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = \acc[7]~input_o\ $ (\Add0~22\ $ (!\Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acc[7]~input_o\,
	datad => \Add0~23_combout\,
	cin => \Add0~22\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X30_Y3_N28
\tmp~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~31_combout\ = (\tmp[1]~11_combout\ & (((\tmp~30_combout\)))) # (!\tmp[1]~11_combout\ & ((\tmp~30_combout\ & ((\Add0~24_combout\))) # (!\tmp~30_combout\ & (\reg[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[7]~input_o\,
	datab => \Add0~24_combout\,
	datac => \tmp[1]~11_combout\,
	datad => \tmp~30_combout\,
	combout => \tmp~31_combout\);

-- Location: LCCOMB_X30_Y3_N10
\tmp~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~32_combout\ = (\reset~input_o\ & (\tmp~31_combout\ & ((\acc[7]~input_o\) # (\tmp~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc[7]~input_o\,
	datab => \reset~input_o\,
	datac => \tmp~30_combout\,
	datad => \tmp~31_combout\,
	combout => \tmp~32_combout\);

-- Location: FF_X30_Y3_N11
\tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(7));

ww_alu_out(0) <= \alu_out[0]~output_o\;

ww_alu_out(1) <= \alu_out[1]~output_o\;

ww_alu_out(2) <= \alu_out[2]~output_o\;

ww_alu_out(3) <= \alu_out[3]~output_o\;

ww_alu_out(4) <= \alu_out[4]~output_o\;

ww_alu_out(5) <= \alu_out[5]~output_o\;

ww_alu_out(6) <= \alu_out[6]~output_o\;

ww_alu_out(7) <= \alu_out[7]~output_o\;
END structure;


