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

-- DATE "06/28/2021 20:50:02"

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

ENTITY 	pulseGen IS
    PORT (
	CLR : IN std_logic;
	CLK : IN std_logic;
	SEL0 : OUT std_logic;
	T0 : OUT std_logic;
	T1 : OUT std_logic;
	T2 : OUT std_logic;
	T3 : OUT std_logic;
	T4 : OUT std_logic;
	T5 : OUT std_logic;
	T6 : OUT std_logic;
	T7 : OUT std_logic
	);
END pulseGen;

-- Design Ports Information
-- SEL0	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T0	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T6	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T7	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pulseGen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_SEL0 : std_logic;
SIGNAL ww_T0 : std_logic;
SIGNAL ww_T1 : std_logic;
SIGNAL ww_T2 : std_logic;
SIGNAL ww_T3 : std_logic;
SIGNAL ww_T4 : std_logic;
SIGNAL ww_T5 : std_logic;
SIGNAL ww_T6 : std_logic;
SIGNAL ww_T7 : std_logic;
SIGNAL \CLR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEL0~output_o\ : std_logic;
SIGNAL \T0~output_o\ : std_logic;
SIGNAL \T1~output_o\ : std_logic;
SIGNAL \T2~output_o\ : std_logic;
SIGNAL \T3~output_o\ : std_logic;
SIGNAL \T4~output_o\ : std_logic;
SIGNAL \T5~output_o\ : std_logic;
SIGNAL \T6~output_o\ : std_logic;
SIGNAL \T7~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \U1|Q~feeder_combout\ : std_logic;
SIGNAL \CLR~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|Q~q\ : std_logic;
SIGNAL \U2|Q~feeder_combout\ : std_logic;
SIGNAL \U2|Q~q\ : std_logic;
SIGNAL \U3|Q~feeder_combout\ : std_logic;
SIGNAL \U3|Q~q\ : std_logic;
SIGNAL \U4|Q~feeder_combout\ : std_logic;
SIGNAL \U4|Q~q\ : std_logic;
SIGNAL \U5|Q~feeder_combout\ : std_logic;
SIGNAL \U5|Q~q\ : std_logic;
SIGNAL \U6|Q~feeder_combout\ : std_logic;
SIGNAL \U6|Q~q\ : std_logic;
SIGNAL \U7|Q~feeder_combout\ : std_logic;
SIGNAL \U7|Q~q\ : std_logic;
SIGNAL \U0|Q~0_combout\ : std_logic;
SIGNAL \U0|Q~q\ : std_logic;
SIGNAL \ALT_INV_CLK~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLR <= CLR;
ww_CLK <= CLK;
SEL0 <= ww_SEL0;
T0 <= ww_T0;
T1 <= ww_T1;
T2 <= ww_T2;
T3 <= ww_T3;
T4 <= ww_T4;
T5 <= ww_T5;
T6 <= ww_T6;
T7 <= ww_T7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLR~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_CLK~inputclkctrl_outclk\ <= NOT \CLK~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y24_N9
\SEL0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SEL0~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\T0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|Q~q\,
	devoe => ww_devoe,
	o => \T0~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\T1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Q~q\,
	devoe => ww_devoe,
	o => \T1~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\T2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Q~q\,
	devoe => ww_devoe,
	o => \T2~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\T3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Q~q\,
	devoe => ww_devoe,
	o => \T3~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\T4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Q~q\,
	devoe => ww_devoe,
	o => \T4~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\T5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Q~q\,
	devoe => ww_devoe,
	o => \T5~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\T6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|Q~q\,
	devoe => ww_devoe,
	o => \T6~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\T7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Q~q\,
	devoe => ww_devoe,
	o => \T7~output_o\);

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

-- Location: LCCOMB_X17_Y23_N18
\U1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Q~feeder_combout\ = \U0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Q~q\,
	combout => \U1|Q~feeder_combout\);

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

-- Location: FF_X17_Y23_N19
\U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \U1|Q~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Q~q\);

-- Location: LCCOMB_X17_Y23_N0
\U2|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Q~feeder_combout\ = \U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Q~q\,
	combout => \U2|Q~feeder_combout\);

-- Location: FF_X17_Y23_N1
\U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \U2|Q~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Q~q\);

-- Location: LCCOMB_X17_Y23_N10
\U3|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Q~feeder_combout\ = \U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Q~q\,
	combout => \U3|Q~feeder_combout\);

-- Location: FF_X17_Y23_N11
\U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \U3|Q~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Q~q\);

-- Location: LCCOMB_X17_Y23_N20
\U4|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Q~feeder_combout\ = \U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|Q~q\,
	combout => \U4|Q~feeder_combout\);

-- Location: FF_X17_Y23_N21
\U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \U4|Q~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Q~q\);

-- Location: LCCOMB_X17_Y23_N6
\U5|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|Q~feeder_combout\ = \U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|Q~q\,
	combout => \U5|Q~feeder_combout\);

-- Location: FF_X17_Y23_N7
\U5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \U5|Q~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Q~q\);

-- Location: LCCOMB_X17_Y23_N28
\U6|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Q~feeder_combout\ = \U5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|Q~q\,
	combout => \U6|Q~feeder_combout\);

-- Location: FF_X17_Y23_N29
\U6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \U6|Q~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|Q~q\);

-- Location: LCCOMB_X17_Y23_N2
\U7|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|Q~feeder_combout\ = \U6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U6|Q~q\,
	combout => \U7|Q~feeder_combout\);

-- Location: FF_X17_Y23_N3
\U7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \U7|Q~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|Q~q\);

-- Location: LCCOMB_X17_Y23_N12
\U0|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Q~0_combout\ = (\U7|Q~q\) # (!\CLR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLR~input_o\,
	datad => \U7|Q~q\,
	combout => \U0|Q~0_combout\);

-- Location: FF_X17_Y23_N13
\U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \U0|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Q~q\);

ww_SEL0 <= \SEL0~output_o\;

ww_T0 <= \T0~output_o\;

ww_T1 <= \T1~output_o\;

ww_T2 <= \T2~output_o\;

ww_T3 <= \T3~output_o\;

ww_T4 <= \T4~output_o\;

ww_T5 <= \T5~output_o\;

ww_T6 <= \T6~output_o\;

ww_T7 <= \T7~output_o\;
END structure;


