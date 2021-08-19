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

-- DATE "06/07/2021 16:08:49"

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

ENTITY 	counter IS
    PORT (
	CLK : IN std_logic;
	CLR : IN std_logic;
	T0 : OUT std_logic;
	T1 : OUT std_logic;
	T2 : OUT std_logic;
	T3 : OUT std_logic;
	T4 : OUT std_logic;
	T5 : OUT std_logic;
	T6 : OUT std_logic;
	T7 : OUT std_logic
	);
END counter;

-- Design Ports Information
-- T0	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T6	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T7	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLR : std_logic;
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
SIGNAL \TEMP[1]~1_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \CLR~inputclkctrl_outclk\ : std_logic;
SIGNAL \TEMP[2]~feeder_combout\ : std_logic;
SIGNAL \TEMP[3]~feeder_combout\ : std_logic;
SIGNAL \TEMP[4]~feeder_combout\ : std_logic;
SIGNAL \TEMP[5]~feeder_combout\ : std_logic;
SIGNAL \TEMP[6]~feeder_combout\ : std_logic;
SIGNAL \TEMP[7]~feeder_combout\ : std_logic;
SIGNAL \TEMP[0]~0_combout\ : std_logic;
SIGNAL TEMP : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_TEMP : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_CLR <= CLR;
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
ALT_INV_TEMP(0) <= NOT TEMP(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y0_N16
\T0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_TEMP(0),
	devoe => ww_devoe,
	o => \T0~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\T1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TEMP(1),
	devoe => ww_devoe,
	o => \T1~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\T2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TEMP(2),
	devoe => ww_devoe,
	o => \T2~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\T3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TEMP(3),
	devoe => ww_devoe,
	o => \T3~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\T4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TEMP(4),
	devoe => ww_devoe,
	o => \T4~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\T5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TEMP(5),
	devoe => ww_devoe,
	o => \T5~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\T6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TEMP(6),
	devoe => ww_devoe,
	o => \T6~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\T7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TEMP(7),
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

-- Location: LCCOMB_X13_Y1_N6
\TEMP[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TEMP[1]~1_combout\ = !TEMP(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TEMP(0),
	combout => \TEMP[1]~1_combout\);

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

-- Location: CLKCTRL_G4
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

-- Location: FF_X13_Y1_N7
\TEMP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TEMP[1]~1_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMP(1));

-- Location: LCCOMB_X13_Y1_N28
\TEMP[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TEMP[2]~feeder_combout\ = TEMP(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TEMP(1),
	combout => \TEMP[2]~feeder_combout\);

-- Location: FF_X13_Y1_N29
\TEMP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TEMP[2]~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMP(2));

-- Location: LCCOMB_X13_Y1_N18
\TEMP[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TEMP[3]~feeder_combout\ = TEMP(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TEMP(2),
	combout => \TEMP[3]~feeder_combout\);

-- Location: FF_X13_Y1_N19
\TEMP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TEMP[3]~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMP(3));

-- Location: LCCOMB_X13_Y1_N20
\TEMP[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TEMP[4]~feeder_combout\ = TEMP(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TEMP(3),
	combout => \TEMP[4]~feeder_combout\);

-- Location: FF_X13_Y1_N21
\TEMP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TEMP[4]~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMP(4));

-- Location: LCCOMB_X13_Y1_N2
\TEMP[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TEMP[5]~feeder_combout\ = TEMP(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TEMP(4),
	combout => \TEMP[5]~feeder_combout\);

-- Location: FF_X13_Y1_N3
\TEMP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TEMP[5]~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMP(5));

-- Location: LCCOMB_X13_Y1_N0
\TEMP[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TEMP[6]~feeder_combout\ = TEMP(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TEMP(5),
	combout => \TEMP[6]~feeder_combout\);

-- Location: FF_X13_Y1_N1
\TEMP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TEMP[6]~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMP(6));

-- Location: LCCOMB_X13_Y1_N10
\TEMP[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TEMP[7]~feeder_combout\ = TEMP(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TEMP(6),
	combout => \TEMP[7]~feeder_combout\);

-- Location: FF_X13_Y1_N11
\TEMP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TEMP[7]~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMP(7));

-- Location: LCCOMB_X13_Y1_N16
\TEMP[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TEMP[0]~0_combout\ = !TEMP(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TEMP(7),
	combout => \TEMP[0]~0_combout\);

-- Location: FF_X13_Y1_N17
\TEMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TEMP[0]~0_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TEMP(0));

ww_T0 <= \T0~output_o\;

ww_T1 <= \T1~output_o\;

ww_T2 <= \T2~output_o\;

ww_T3 <= \T3~output_o\;

ww_T4 <= \T4~output_o\;

ww_T5 <= \T5~output_o\;

ww_T6 <= \T6~output_o\;

ww_T7 <= \T7~output_o\;
END structure;


