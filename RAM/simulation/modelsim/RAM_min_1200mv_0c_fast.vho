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

-- DATE "06/07/2021 16:57:17"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RAM IS
    PORT (
	WR : IN std_logic;
	CS : IN std_logic;
	DATA_IN : IN std_logic_vector(7 DOWNTO 0);
	DATA_OUT : OUT std_logic_vector(7 DOWNTO 0);
	Address : IN std_logic_vector(3 DOWNTO 0)
	);
END RAM;

-- Design Ports Information
-- DATA_IN[0]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[4]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[5]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[6]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[7]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[0]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[1]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[2]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[3]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[4]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[5]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[6]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[7]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[0]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[2]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[3]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_WR : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_DATA_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DATA_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Address : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_OUT[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_IN[0]~input_o\ : std_logic;
SIGNAL \DATA_IN[1]~input_o\ : std_logic;
SIGNAL \DATA_IN[2]~input_o\ : std_logic;
SIGNAL \DATA_IN[3]~input_o\ : std_logic;
SIGNAL \DATA_IN[4]~input_o\ : std_logic;
SIGNAL \DATA_IN[5]~input_o\ : std_logic;
SIGNAL \DATA_IN[6]~input_o\ : std_logic;
SIGNAL \DATA_IN[7]~input_o\ : std_logic;
SIGNAL \DATA_OUT[0]~output_o\ : std_logic;
SIGNAL \DATA_OUT[1]~output_o\ : std_logic;
SIGNAL \DATA_OUT[2]~output_o\ : std_logic;
SIGNAL \DATA_OUT[3]~output_o\ : std_logic;
SIGNAL \DATA_OUT[4]~output_o\ : std_logic;
SIGNAL \DATA_OUT[5]~output_o\ : std_logic;
SIGNAL \DATA_OUT[6]~output_o\ : std_logic;
SIGNAL \DATA_OUT[7]~output_o\ : std_logic;
SIGNAL \Address[2]~input_o\ : std_logic;
SIGNAL \Address[3]~input_o\ : std_logic;
SIGNAL \Address[1]~input_o\ : std_logic;
SIGNAL \Address[0]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \WR~input_o\ : std_logic;
SIGNAL \CS~input_o\ : std_logic;
SIGNAL \DATA_OUT[7]~0_combout\ : std_logic;
SIGNAL \DATA_OUT[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \DATA_OUT[0]$latch~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \DATA_OUT[1]$latch~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \DATA_OUT[2]$latch~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \DATA_OUT[3]$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \DATA_OUT[4]$latch~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \DATA_OUT[6]$latch~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \DATA_OUT[7]$latch~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_WR <= WR;
ww_CS <= CS;
ww_DATA_IN <= DATA_IN;
DATA_OUT <= ww_DATA_OUT;
ww_Address <= Address;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DATA_OUT[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DATA_OUT[7]~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y24_N9
\DATA_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[0]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\DATA_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[1]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\DATA_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[2]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\DATA_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[3]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[3]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\DATA_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[4]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[4]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\DATA_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[4]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[5]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\DATA_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[6]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[6]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\DATA_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[7]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[7]~output_o\);

-- Location: IOIBUF_X7_Y24_N1
\Address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(2),
	o => \Address[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\Address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(3),
	o => \Address[3]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\Address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(1),
	o => \Address[1]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\Address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(0),
	o => \Address[0]~input_o\);

-- Location: LCCOMB_X6_Y20_N8
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Address[2]~input_o\ & (!\Address[3]~input_o\ & (\Address[1]~input_o\ $ (\Address[0]~input_o\)))) # (!\Address[2]~input_o\ & (\Address[1]~input_o\ & ((\Address[3]~input_o\) # (\Address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \Address[3]~input_o\,
	datac => \Address[1]~input_o\,
	datad => \Address[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X0_Y11_N22
\WR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR,
	o => \WR~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\CS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CS,
	o => \CS~input_o\);

-- Location: LCCOMB_X33_Y12_N2
\DATA_OUT[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_OUT[7]~0_combout\ = (\WR~input_o\ & !\CS~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WR~input_o\,
	datad => \CS~input_o\,
	combout => \DATA_OUT[7]~0_combout\);

-- Location: CLKCTRL_G8
\DATA_OUT[7]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DATA_OUT[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DATA_OUT[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X6_Y20_N30
\DATA_OUT[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_OUT[0]$latch~combout\ = (GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & (\Mux6~0_combout\)) # (!GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & ((\DATA_OUT[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~0_combout\,
	datac => \DATA_OUT[0]$latch~combout\,
	datad => \DATA_OUT[7]~0clkctrl_outclk\,
	combout => \DATA_OUT[0]$latch~combout\);

-- Location: LCCOMB_X6_Y20_N26
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Address[3]~input_o\ & (\Address[1]~input_o\ & !\Address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Address[3]~input_o\,
	datac => \Address[1]~input_o\,
	datad => \Address[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X6_Y20_N16
\DATA_OUT[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_OUT[1]$latch~combout\ = (GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & ((!\Mux5~0_combout\))) # (!GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & (\DATA_OUT[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_OUT[1]$latch~combout\,
	datac => \Mux5~0_combout\,
	datad => \DATA_OUT[7]~0clkctrl_outclk\,
	combout => \DATA_OUT[1]$latch~combout\);

-- Location: LCCOMB_X6_Y20_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Address[1]~input_o\ & (!\Address[0]~input_o\ & ((\Address[2]~input_o\) # (\Address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \Address[3]~input_o\,
	datac => \Address[1]~input_o\,
	datad => \Address[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X6_Y20_N2
\DATA_OUT[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_OUT[2]$latch~combout\ = (GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & (!\Mux4~0_combout\)) # (!GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & ((\DATA_OUT[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datac => \DATA_OUT[7]~0clkctrl_outclk\,
	datad => \DATA_OUT[2]$latch~combout\,
	combout => \DATA_OUT[2]$latch~combout\);

-- Location: LCCOMB_X6_Y20_N6
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Address[1]~input_o\) # ((\Address[0]~input_o\) # ((\Address[2]~input_o\ & \Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \Address[3]~input_o\,
	datac => \Address[1]~input_o\,
	datad => \Address[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X6_Y20_N28
\DATA_OUT[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_OUT[3]$latch~combout\ = (GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & (!\Mux3~0_combout\)) # (!GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & ((\DATA_OUT[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \DATA_OUT[7]~0clkctrl_outclk\,
	datad => \DATA_OUT[3]$latch~combout\,
	combout => \DATA_OUT[3]$latch~combout\);

-- Location: LCCOMB_X6_Y20_N24
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Address[2]~input_o\ & ((\Address[3]~input_o\ & (\Address[1]~input_o\)) # (!\Address[3]~input_o\ & ((\Address[0]~input_o\))))) # (!\Address[2]~input_o\ & ((\Address[0]~input_o\) # ((!\Address[3]~input_o\ & \Address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \Address[3]~input_o\,
	datac => \Address[1]~input_o\,
	datad => \Address[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X6_Y20_N22
\DATA_OUT[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_OUT[4]$latch~combout\ = (GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & (!\Mux2~0_combout\)) # (!GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & ((\DATA_OUT[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~0_combout\,
	datac => \DATA_OUT[4]$latch~combout\,
	datad => \DATA_OUT[7]~0clkctrl_outclk\,
	combout => \DATA_OUT[4]$latch~combout\);

-- Location: LCCOMB_X6_Y20_N10
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Address[2]~input_o\ & (\Address[3]~input_o\ & (!\Address[1]~input_o\ & \Address[0]~input_o\))) # (!\Address[2]~input_o\ & (((\Address[1]~input_o\ & !\Address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \Address[3]~input_o\,
	datac => \Address[1]~input_o\,
	datad => \Address[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X6_Y20_N0
\DATA_OUT[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_OUT[6]$latch~combout\ = (GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & (\Mux1~0_combout\)) # (!GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & ((\DATA_OUT[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \DATA_OUT[7]~0clkctrl_outclk\,
	datad => \DATA_OUT[6]$latch~combout\,
	combout => \DATA_OUT[6]$latch~combout\);

-- Location: LCCOMB_X6_Y20_N20
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\Address[0]~input_o\ & ((\Address[2]~input_o\ & (\Address[3]~input_o\ & !\Address[1]~input_o\)) # (!\Address[2]~input_o\ & (!\Address[3]~input_o\ & \Address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \Address[3]~input_o\,
	datac => \Address[1]~input_o\,
	datad => \Address[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X6_Y20_N18
\DATA_OUT[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_OUT[7]$latch~combout\ = (GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & (\Mux0~0_combout\)) # (!GLOBAL(\DATA_OUT[7]~0clkctrl_outclk\) & ((\DATA_OUT[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \DATA_OUT[7]~0clkctrl_outclk\,
	datad => \DATA_OUT[7]$latch~combout\,
	combout => \DATA_OUT[7]$latch~combout\);

-- Location: IOIBUF_X0_Y5_N15
\DATA_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(0),
	o => \DATA_IN[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\DATA_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(1),
	o => \DATA_IN[1]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\DATA_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(2),
	o => \DATA_IN[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\DATA_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(3),
	o => \DATA_IN[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\DATA_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(4),
	o => \DATA_IN[4]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\DATA_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(5),
	o => \DATA_IN[5]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\DATA_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(6),
	o => \DATA_IN[6]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\DATA_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(7),
	o => \DATA_IN[7]~input_o\);

ww_DATA_OUT(0) <= \DATA_OUT[0]~output_o\;

ww_DATA_OUT(1) <= \DATA_OUT[1]~output_o\;

ww_DATA_OUT(2) <= \DATA_OUT[2]~output_o\;

ww_DATA_OUT(3) <= \DATA_OUT[3]~output_o\;

ww_DATA_OUT(4) <= \DATA_OUT[4]~output_o\;

ww_DATA_OUT(5) <= \DATA_OUT[5]~output_o\;

ww_DATA_OUT(6) <= \DATA_OUT[6]~output_o\;

ww_DATA_OUT(7) <= \DATA_OUT[7]~output_o\;
END structure;


