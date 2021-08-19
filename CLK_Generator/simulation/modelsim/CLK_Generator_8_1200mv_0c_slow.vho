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

-- DATE "06/07/2021 16:28:21"

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

ENTITY 	CLK_Generator IS
    PORT (
	CLK_50Mhz : IN std_logic;
	CLK : OUT std_logic
	);
END CLK_Generator;

-- Design Ports Information
-- CLK	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50Mhz	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CLK_Generator IS
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
SIGNAL ww_CLK : std_logic;
SIGNAL \CLK_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~output_o\ : std_logic;
SIGNAL \CLK_50Mhz~input_o\ : std_logic;
SIGNAL \CLK_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \COUNTER[0]~12_combout\ : std_logic;
SIGNAL \COUNTER[1]~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \COUNTER[1]~5\ : std_logic;
SIGNAL \COUNTER[2]~6_combout\ : std_logic;
SIGNAL \COUNTER[2]~7\ : std_logic;
SIGNAL \COUNTER[3]~8_combout\ : std_logic;
SIGNAL \COUNTER[3]~9\ : std_logic;
SIGNAL \COUNTER[4]~10_combout\ : std_logic;
SIGNAL \CLK_TEMP~0_combout\ : std_logic;
SIGNAL COUNTER : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK_50Mhz <= CLK_50Mhz;
CLK <= ww_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50Mhz~input_o\);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N16
\CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_TEMP~0_combout\,
	devoe => ww_devoe,
	o => \CLK~output_o\);

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

-- Location: CLKCTRL_G2
\CLK_50Mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50Mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y8_N12
\COUNTER[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[0]~12_combout\ = !COUNTER(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNTER(0),
	combout => \COUNTER[0]~12_combout\);

-- Location: LCCOMB_X1_Y8_N14
\COUNTER[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[1]~4_combout\ = (COUNTER(0) & (COUNTER(1) $ (VCC))) # (!COUNTER(0) & (COUNTER(1) & VCC))
-- \COUNTER[1]~5\ = CARRY((COUNTER(0) & COUNTER(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => COUNTER(1),
	datad => VCC,
	combout => \COUNTER[1]~4_combout\,
	cout => \COUNTER[1]~5\);

-- Location: FF_X1_Y8_N15
\COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50Mhz~inputclkctrl_outclk\,
	d => \COUNTER[1]~4_combout\,
	clrn => \ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(1));

-- Location: LCCOMB_X1_Y8_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (COUNTER(0) & (COUNTER(3) & (!COUNTER(1) & !COUNTER(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => COUNTER(3),
	datac => COUNTER(1),
	datad => COUNTER(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y8_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (COUNTER(4) & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(4),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: FF_X1_Y8_N13
\COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50Mhz~inputclkctrl_outclk\,
	d => \COUNTER[0]~12_combout\,
	clrn => \ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(0));

-- Location: LCCOMB_X1_Y8_N16
\COUNTER[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[2]~6_combout\ = (COUNTER(2) & (!\COUNTER[1]~5\)) # (!COUNTER(2) & ((\COUNTER[1]~5\) # (GND)))
-- \COUNTER[2]~7\ = CARRY((!\COUNTER[1]~5\) # (!COUNTER(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(2),
	datad => VCC,
	cin => \COUNTER[1]~5\,
	combout => \COUNTER[2]~6_combout\,
	cout => \COUNTER[2]~7\);

-- Location: FF_X1_Y8_N17
\COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50Mhz~inputclkctrl_outclk\,
	d => \COUNTER[2]~6_combout\,
	clrn => \ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(2));

-- Location: LCCOMB_X1_Y8_N18
\COUNTER[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[3]~8_combout\ = (COUNTER(3) & (\COUNTER[2]~7\ $ (GND))) # (!COUNTER(3) & (!\COUNTER[2]~7\ & VCC))
-- \COUNTER[3]~9\ = CARRY((COUNTER(3) & !\COUNTER[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(3),
	datad => VCC,
	cin => \COUNTER[2]~7\,
	combout => \COUNTER[3]~8_combout\,
	cout => \COUNTER[3]~9\);

-- Location: FF_X1_Y8_N19
\COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50Mhz~inputclkctrl_outclk\,
	d => \COUNTER[3]~8_combout\,
	clrn => \ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(3));

-- Location: LCCOMB_X1_Y8_N20
\COUNTER[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[4]~10_combout\ = \COUNTER[3]~9\ $ (COUNTER(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => COUNTER(4),
	cin => \COUNTER[3]~9\,
	combout => \COUNTER[4]~10_combout\);

-- Location: FF_X1_Y8_N21
\COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50Mhz~inputclkctrl_outclk\,
	d => \COUNTER[4]~10_combout\,
	clrn => \ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(4));

-- Location: LCCOMB_X1_Y8_N8
\CLK_TEMP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_TEMP~0_combout\ = \CLK_TEMP~0_combout\ $ (((COUNTER(4) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(4),
	datac => \CLK_TEMP~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \CLK_TEMP~0_combout\);

ww_CLK <= \CLK~output_o\;
END structure;


