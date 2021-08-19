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

-- DATE "06/07/2021 17:06:07"

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

ENTITY 	DR IS
    PORT (
	DATA_IN : IN std_logic_vector(7 DOWNTO 0);
	IDR : IN std_logic;
	EDR : IN std_logic;
	CLK : IN std_logic;
	DATA_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END DR;

-- Design Ports Information
-- DATA_OUT[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[1]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[4]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[5]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[6]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[7]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EDR	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDR	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[4]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[6]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[7]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DATA_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IDR : std_logic;
SIGNAL ww_EDR : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_DATA_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_OUT[0]~output_o\ : std_logic;
SIGNAL \DATA_OUT[1]~output_o\ : std_logic;
SIGNAL \DATA_OUT[2]~output_o\ : std_logic;
SIGNAL \DATA_OUT[3]~output_o\ : std_logic;
SIGNAL \DATA_OUT[4]~output_o\ : std_logic;
SIGNAL \DATA_OUT[5]~output_o\ : std_logic;
SIGNAL \DATA_OUT[6]~output_o\ : std_logic;
SIGNAL \DATA_OUT[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DATA_IN[0]~input_o\ : std_logic;
SIGNAL \REGQ[0]~feeder_combout\ : std_logic;
SIGNAL \IDR~input_o\ : std_logic;
SIGNAL \EDR~input_o\ : std_logic;
SIGNAL \DATA_IN[1]~input_o\ : std_logic;
SIGNAL \DATA_IN[2]~input_o\ : std_logic;
SIGNAL \REGQ[2]~feeder_combout\ : std_logic;
SIGNAL \DATA_IN[3]~input_o\ : std_logic;
SIGNAL \REGQ[3]~feeder_combout\ : std_logic;
SIGNAL \DATA_IN[4]~input_o\ : std_logic;
SIGNAL \DATA_IN[5]~input_o\ : std_logic;
SIGNAL \REGQ[5]~feeder_combout\ : std_logic;
SIGNAL \DATA_IN[6]~input_o\ : std_logic;
SIGNAL \DATA_IN[7]~input_o\ : std_logic;
SIGNAL REGQ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_EDR~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DATA_IN <= DATA_IN;
ww_IDR <= IDR;
ww_EDR <= EDR;
ww_CLK <= CLK;
DATA_OUT <= ww_DATA_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_EDR~input_o\ <= NOT \EDR~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y0_N2
\DATA_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGQ(0),
	oe => \ALT_INV_EDR~input_o\,
	devoe => ww_devoe,
	o => \DATA_OUT[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\DATA_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGQ(1),
	oe => \ALT_INV_EDR~input_o\,
	devoe => ww_devoe,
	o => \DATA_OUT[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\DATA_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGQ(2),
	oe => \ALT_INV_EDR~input_o\,
	devoe => ww_devoe,
	o => \DATA_OUT[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\DATA_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGQ(3),
	oe => \ALT_INV_EDR~input_o\,
	devoe => ww_devoe,
	o => \DATA_OUT[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\DATA_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGQ(4),
	oe => \ALT_INV_EDR~input_o\,
	devoe => ww_devoe,
	o => \DATA_OUT[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\DATA_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGQ(5),
	oe => \ALT_INV_EDR~input_o\,
	devoe => ww_devoe,
	o => \DATA_OUT[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\DATA_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGQ(6),
	oe => \ALT_INV_EDR~input_o\,
	devoe => ww_devoe,
	o => \DATA_OUT[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\DATA_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGQ(7),
	oe => \ALT_INV_EDR~input_o\,
	devoe => ww_devoe,
	o => \DATA_OUT[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y0_N22
\DATA_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(0),
	o => \DATA_IN[0]~input_o\);

-- Location: LCCOMB_X24_Y4_N8
\REGQ[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGQ[0]~feeder_combout\ = \DATA_IN[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_IN[0]~input_o\,
	combout => \REGQ[0]~feeder_combout\);

-- Location: IOIBUF_X28_Y0_N1
\IDR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDR,
	o => \IDR~input_o\);

-- Location: FF_X24_Y4_N9
\REGQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGQ[0]~feeder_combout\,
	ena => \IDR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(0));

-- Location: IOIBUF_X16_Y0_N1
\EDR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EDR,
	o => \EDR~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\DATA_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(1),
	o => \DATA_IN[1]~input_o\);

-- Location: FF_X24_Y4_N19
\REGQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA_IN[1]~input_o\,
	sload => VCC,
	ena => \IDR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(1));

-- Location: IOIBUF_X28_Y0_N22
\DATA_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(2),
	o => \DATA_IN[2]~input_o\);

-- Location: LCCOMB_X24_Y4_N4
\REGQ[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGQ[2]~feeder_combout\ = \DATA_IN[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_IN[2]~input_o\,
	combout => \REGQ[2]~feeder_combout\);

-- Location: FF_X24_Y4_N5
\REGQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGQ[2]~feeder_combout\,
	ena => \IDR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(2));

-- Location: IOIBUF_X23_Y0_N15
\DATA_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(3),
	o => \DATA_IN[3]~input_o\);

-- Location: LCCOMB_X24_Y4_N22
\REGQ[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGQ[3]~feeder_combout\ = \DATA_IN[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_IN[3]~input_o\,
	combout => \REGQ[3]~feeder_combout\);

-- Location: FF_X24_Y4_N23
\REGQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGQ[3]~feeder_combout\,
	ena => \IDR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(3));

-- Location: IOIBUF_X34_Y4_N22
\DATA_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(4),
	o => \DATA_IN[4]~input_o\);

-- Location: FF_X24_Y4_N25
\REGQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA_IN[4]~input_o\,
	sload => VCC,
	ena => \IDR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(4));

-- Location: IOIBUF_X18_Y0_N15
\DATA_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(5),
	o => \DATA_IN[5]~input_o\);

-- Location: LCCOMB_X24_Y4_N10
\REGQ[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGQ[5]~feeder_combout\ = \DATA_IN[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_IN[5]~input_o\,
	combout => \REGQ[5]~feeder_combout\);

-- Location: FF_X24_Y4_N11
\REGQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGQ[5]~feeder_combout\,
	ena => \IDR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(5));

-- Location: IOIBUF_X21_Y0_N8
\DATA_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(6),
	o => \DATA_IN[6]~input_o\);

-- Location: FF_X24_Y4_N21
\REGQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA_IN[6]~input_o\,
	sload => VCC,
	ena => \IDR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(6));

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

-- Location: FF_X32_Y4_N25
\REGQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA_IN[7]~input_o\,
	sload => VCC,
	ena => \IDR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(7));

ww_DATA_OUT(0) <= \DATA_OUT[0]~output_o\;

ww_DATA_OUT(1) <= \DATA_OUT[1]~output_o\;

ww_DATA_OUT(2) <= \DATA_OUT[2]~output_o\;

ww_DATA_OUT(3) <= \DATA_OUT[3]~output_o\;

ww_DATA_OUT(4) <= \DATA_OUT[4]~output_o\;

ww_DATA_OUT(5) <= \DATA_OUT[5]~output_o\;

ww_DATA_OUT(6) <= \DATA_OUT[6]~output_o\;

ww_DATA_OUT(7) <= \DATA_OUT[7]~output_o\;
END structure;


