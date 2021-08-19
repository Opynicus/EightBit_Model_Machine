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

-- DATE "06/07/2021 16:22:09"

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

ENTITY 	IR IS
    PORT (
	DATA_IN : IN std_logic_vector(7 DOWNTO 0);
	IIR : IN std_logic;
	CLK : IN std_logic;
	cmd_LD : BUFFER std_logic;
	cmd_add : BUFFER std_logic;
	cmd_sub : BUFFER std_logic;
	cmd_and : BUFFER std_logic;
	cmd_shl : BUFFER std_logic;
	HALT : BUFFER std_logic
	);
END IR;

-- Design Ports Information
-- cmd_LD	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_add	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_sub	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_and	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_shl	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HALT	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IIR	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[4]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[0]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[5]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[7]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[6]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF IR IS
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
SIGNAL ww_IIR : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_cmd_LD : std_logic;
SIGNAL ww_cmd_add : std_logic;
SIGNAL ww_cmd_sub : std_logic;
SIGNAL ww_cmd_and : std_logic;
SIGNAL ww_cmd_shl : std_logic;
SIGNAL ww_HALT : std_logic;
SIGNAL \Mux6~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cmd_LD~output_o\ : std_logic;
SIGNAL \cmd_add~output_o\ : std_logic;
SIGNAL \cmd_sub~output_o\ : std_logic;
SIGNAL \cmd_and~output_o\ : std_logic;
SIGNAL \cmd_shl~output_o\ : std_logic;
SIGNAL \HALT~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \DATA_IN[4]~input_o\ : std_logic;
SIGNAL \REGQ[4]~feeder_combout\ : std_logic;
SIGNAL \IIR~input_o\ : std_logic;
SIGNAL \DATA_IN[3]~input_o\ : std_logic;
SIGNAL \DATA_IN[2]~input_o\ : std_logic;
SIGNAL \DATA_IN[1]~input_o\ : std_logic;
SIGNAL \DATA_IN[0]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \DATA_IN[6]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \DATA_IN[7]~input_o\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \DATA_IN[5]~input_o\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~3clkctrl_outclk\ : std_logic;
SIGNAL \cmd_LD$latch~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \cmd_add$latch~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \cmd_sub$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \cmd_and$latch~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \cmd_shl$latch~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \HALT$latch~combout\ : std_logic;
SIGNAL REGQ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_IIR~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DATA_IN <= DATA_IN;
ww_IIR <= IIR;
ww_CLK <= CLK;
cmd_LD <= ww_cmd_LD;
cmd_add <= ww_cmd_add;
cmd_sub <= ww_cmd_sub;
cmd_and <= ww_cmd_and;
cmd_shl <= ww_cmd_shl;
HALT <= ww_HALT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux6~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux6~3_combout\);
\ALT_INV_IIR~input_o\ <= NOT \IIR~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y18_N16
\cmd_LD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmd_LD$latch~combout\,
	devoe => ww_devoe,
	o => \cmd_LD~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\cmd_add~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmd_add$latch~combout\,
	devoe => ww_devoe,
	o => \cmd_add~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\cmd_sub~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmd_sub$latch~combout\,
	devoe => ww_devoe,
	o => \cmd_sub~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\cmd_and~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmd_and$latch~combout\,
	devoe => ww_devoe,
	o => \cmd_and~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\cmd_shl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmd_shl$latch~combout\,
	devoe => ww_devoe,
	o => \cmd_shl~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\HALT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HALT$latch~combout\,
	devoe => ww_devoe,
	o => \HALT~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\DATA_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(4),
	o => \DATA_IN[4]~input_o\);

-- Location: LCCOMB_X1_Y21_N30
\REGQ[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGQ[4]~feeder_combout\ = \DATA_IN[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_IN[4]~input_o\,
	combout => \REGQ[4]~feeder_combout\);

-- Location: IOIBUF_X9_Y24_N8
\IIR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IIR,
	o => \IIR~input_o\);

-- Location: FF_X1_Y21_N31
\REGQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \REGQ[4]~feeder_combout\,
	ena => \ALT_INV_IIR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(4));

-- Location: IOIBUF_X1_Y24_N8
\DATA_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(3),
	o => \DATA_IN[3]~input_o\);

-- Location: FF_X1_Y21_N1
\REGQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \DATA_IN[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_IIR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(3));

-- Location: IOIBUF_X0_Y23_N15
\DATA_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(2),
	o => \DATA_IN[2]~input_o\);

-- Location: FF_X1_Y21_N19
\REGQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \DATA_IN[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_IIR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(2));

-- Location: IOIBUF_X0_Y18_N22
\DATA_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(1),
	o => \DATA_IN[1]~input_o\);

-- Location: FF_X1_Y21_N15
\REGQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \DATA_IN[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_IIR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(1));

-- Location: IOIBUF_X1_Y24_N1
\DATA_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(0),
	o => \DATA_IN[0]~input_o\);

-- Location: FF_X1_Y21_N11
\REGQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \DATA_IN[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_IIR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(0));

-- Location: LCCOMB_X1_Y21_N6
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (REGQ(2) & (REGQ(1) & !REGQ(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => REGQ(2),
	datac => REGQ(1),
	datad => REGQ(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y21_N22
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (REGQ(4) & (REGQ(3) & \Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => REGQ(4),
	datab => REGQ(3),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X13_Y24_N22
\DATA_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(6),
	o => \DATA_IN[6]~input_o\);

-- Location: FF_X1_Y21_N23
\REGQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \DATA_IN[6]~input_o\,
	sload => VCC,
	ena => \ALT_INV_IIR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(6));

-- Location: LCCOMB_X1_Y21_N0
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux5~0_combout\ & (REGQ(6) $ (REGQ(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => REGQ(6),
	datab => REGQ(4),
	datad => \Mux5~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X1_Y21_N2
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (REGQ(2) & (REGQ(6) & (REGQ(1) & !REGQ(0)))) # (!REGQ(2) & (REGQ(0) & (REGQ(6) $ (REGQ(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => REGQ(6),
	datab => REGQ(2),
	datac => REGQ(1),
	datad => REGQ(0),
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X7_Y24_N1
\DATA_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(7),
	o => \DATA_IN[7]~input_o\);

-- Location: FF_X1_Y21_N13
\REGQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \DATA_IN[7]~input_o\,
	sload => VCC,
	ena => \ALT_INV_IIR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(7));

-- Location: LCCOMB_X1_Y21_N12
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (REGQ(7) & (\Mux6~1_combout\ & ((!REGQ(3))))) # (!REGQ(7) & ((REGQ(3) & (\Mux6~1_combout\)) # (!REGQ(3) & ((\Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux6~0_combout\,
	datac => REGQ(7),
	datad => REGQ(3),
	combout => \Mux6~2_combout\);

-- Location: IOIBUF_X5_Y24_N8
\DATA_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(5),
	o => \DATA_IN[5]~input_o\);

-- Location: FF_X1_Y21_N27
\REGQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \DATA_IN[5]~input_o\,
	sload => VCC,
	ena => \ALT_INV_IIR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGQ(5));

-- Location: LCCOMB_X1_Y21_N26
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & ((REGQ(4) & (REGQ(5))) # (!REGQ(4) & (!REGQ(5) & REGQ(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => REGQ(4),
	datab => \Mux6~2_combout\,
	datac => REGQ(5),
	datad => REGQ(7),
	combout => \Mux6~3_combout\);

-- Location: CLKCTRL_G2
\Mux6~3clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux6~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux6~3clkctrl_outclk\);

-- Location: LCCOMB_X1_Y21_N24
\cmd_LD$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmd_LD$latch~combout\ = (GLOBAL(\Mux6~3clkctrl_outclk\) & ((\Mux5~1_combout\))) # (!GLOBAL(\Mux6~3clkctrl_outclk\) & (\cmd_LD$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_LD$latch~combout\,
	datac => \Mux5~1_combout\,
	datad => \Mux6~3clkctrl_outclk\,
	combout => \cmd_LD$latch~combout\);

-- Location: LCCOMB_X1_Y21_N18
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (REGQ(2) & !REGQ(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => REGQ(2),
	datad => REGQ(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!REGQ(0) & (!REGQ(4) & (\Mux4~0_combout\ & REGQ(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => REGQ(0),
	datab => REGQ(4),
	datac => \Mux4~0_combout\,
	datad => REGQ(1),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X1_Y21_N20
\cmd_add$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmd_add$latch~combout\ = (GLOBAL(\Mux6~3clkctrl_outclk\) & ((\Mux4~1_combout\))) # (!GLOBAL(\Mux6~3clkctrl_outclk\) & (\cmd_add$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_add$latch~combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux6~3clkctrl_outclk\,
	combout => \cmd_add$latch~combout\);

-- Location: LCCOMB_X1_Y21_N16
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!REGQ(2) & (REGQ(0) & (!REGQ(3) & REGQ(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => REGQ(2),
	datab => REGQ(0),
	datac => REGQ(3),
	datad => REGQ(4),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X2_Y21_N28
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & REGQ(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => REGQ(1),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X2_Y21_N0
\cmd_sub$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmd_sub$latch~combout\ = (GLOBAL(\Mux6~3clkctrl_outclk\) & (\Mux3~1_combout\)) # (!GLOBAL(\Mux6~3clkctrl_outclk\) & ((\cmd_sub$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datac => \Mux6~3clkctrl_outclk\,
	datad => \cmd_sub$latch~combout\,
	combout => \cmd_sub$latch~combout\);

-- Location: LCCOMB_X2_Y21_N22
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux3~0_combout\ & !REGQ(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => REGQ(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X2_Y21_N18
\cmd_and$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmd_and$latch~combout\ = (GLOBAL(\Mux6~3clkctrl_outclk\) & ((\Mux2~0_combout\))) # (!GLOBAL(\Mux6~3clkctrl_outclk\) & (\cmd_and$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_and$latch~combout\,
	datac => \Mux2~0_combout\,
	datad => \Mux6~3clkctrl_outclk\,
	combout => \cmd_and$latch~combout\);

-- Location: LCCOMB_X1_Y21_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux5~0_combout\ & (!REGQ(6) & !REGQ(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => REGQ(6),
	datad => REGQ(3),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y21_N8
\cmd_shl$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmd_shl$latch~combout\ = (GLOBAL(\Mux6~3clkctrl_outclk\) & (\Mux1~0_combout\)) # (!GLOBAL(\Mux6~3clkctrl_outclk\) & ((\cmd_shl$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \cmd_shl$latch~combout\,
	datad => \Mux6~3clkctrl_outclk\,
	combout => \cmd_shl$latch~combout\);

-- Location: LCCOMB_X1_Y21_N10
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mux5~0_combout\ & (REGQ(6) & REGQ(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => REGQ(6),
	datad => REGQ(4),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y21_N4
\HALT$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HALT$latch~combout\ = (GLOBAL(\Mux6~3clkctrl_outclk\) & ((\Mux0~0_combout\))) # (!GLOBAL(\Mux6~3clkctrl_outclk\) & (\HALT$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HALT$latch~combout\,
	datac => \Mux6~3clkctrl_outclk\,
	datad => \Mux0~0_combout\,
	combout => \HALT$latch~combout\);

ww_cmd_LD <= \cmd_LD~output_o\;

ww_cmd_add <= \cmd_add~output_o\;

ww_cmd_sub <= \cmd_sub~output_o\;

ww_cmd_and <= \cmd_and~output_o\;

ww_cmd_shl <= \cmd_shl~output_o\;

ww_HALT <= \HALT~output_o\;
END structure;


