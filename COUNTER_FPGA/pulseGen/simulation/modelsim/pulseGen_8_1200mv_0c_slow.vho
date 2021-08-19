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

-- DATE "06/28/2021 21:13:38"

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
-- SEL0	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \CLK_1HZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK_COUNT[0]~25_combout\ : std_logic;
SIGNAL \CLK_COUNT[17]~60\ : std_logic;
SIGNAL \CLK_COUNT[18]~61_combout\ : std_logic;
SIGNAL \CLK_COUNT[18]~62\ : std_logic;
SIGNAL \CLK_COUNT[19]~63_combout\ : std_logic;
SIGNAL \CLK_COUNT[19]~64\ : std_logic;
SIGNAL \CLK_COUNT[20]~65_combout\ : std_logic;
SIGNAL \CLK_COUNT[20]~66\ : std_logic;
SIGNAL \CLK_COUNT[21]~67_combout\ : std_logic;
SIGNAL \CLK_COUNT[21]~68\ : std_logic;
SIGNAL \CLK_COUNT[22]~69_combout\ : std_logic;
SIGNAL \CLK_COUNT[22]~70\ : std_logic;
SIGNAL \CLK_COUNT[23]~71_combout\ : std_logic;
SIGNAL \CLK_COUNT[23]~72\ : std_logic;
SIGNAL \CLK_COUNT[24]~73_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \CLK_COUNT[0]~26\ : std_logic;
SIGNAL \CLK_COUNT[1]~27_combout\ : std_logic;
SIGNAL \CLK_COUNT[1]~28\ : std_logic;
SIGNAL \CLK_COUNT[2]~29_combout\ : std_logic;
SIGNAL \CLK_COUNT[2]~30\ : std_logic;
SIGNAL \CLK_COUNT[3]~31_combout\ : std_logic;
SIGNAL \CLK_COUNT[3]~32\ : std_logic;
SIGNAL \CLK_COUNT[4]~33_combout\ : std_logic;
SIGNAL \CLK_COUNT[4]~34\ : std_logic;
SIGNAL \CLK_COUNT[5]~35_combout\ : std_logic;
SIGNAL \CLK_COUNT[5]~36\ : std_logic;
SIGNAL \CLK_COUNT[6]~37_combout\ : std_logic;
SIGNAL \CLK_COUNT[6]~38\ : std_logic;
SIGNAL \CLK_COUNT[7]~39_combout\ : std_logic;
SIGNAL \CLK_COUNT[7]~40\ : std_logic;
SIGNAL \CLK_COUNT[8]~41_combout\ : std_logic;
SIGNAL \CLK_COUNT[8]~42\ : std_logic;
SIGNAL \CLK_COUNT[9]~43_combout\ : std_logic;
SIGNAL \CLK_COUNT[9]~44\ : std_logic;
SIGNAL \CLK_COUNT[10]~45_combout\ : std_logic;
SIGNAL \CLK_COUNT[10]~46\ : std_logic;
SIGNAL \CLK_COUNT[11]~47_combout\ : std_logic;
SIGNAL \CLK_COUNT[11]~48\ : std_logic;
SIGNAL \CLK_COUNT[12]~49_combout\ : std_logic;
SIGNAL \CLK_COUNT[12]~50\ : std_logic;
SIGNAL \CLK_COUNT[13]~51_combout\ : std_logic;
SIGNAL \CLK_COUNT[13]~52\ : std_logic;
SIGNAL \CLK_COUNT[14]~53_combout\ : std_logic;
SIGNAL \CLK_COUNT[14]~54\ : std_logic;
SIGNAL \CLK_COUNT[15]~55_combout\ : std_logic;
SIGNAL \CLK_COUNT[15]~56\ : std_logic;
SIGNAL \CLK_COUNT[16]~57_combout\ : std_logic;
SIGNAL \CLK_COUNT[16]~58\ : std_logic;
SIGNAL \CLK_COUNT[17]~59_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \CLK_1HZ~0_combout\ : std_logic;
SIGNAL \CLK_1HZ~feeder_combout\ : std_logic;
SIGNAL \CLK_1HZ~q\ : std_logic;
SIGNAL \CLK_1HZ~clkctrl_outclk\ : std_logic;
SIGNAL \U1|QS~0_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \CLR~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|QS~q\ : std_logic;
SIGNAL \U2|QS~feeder_combout\ : std_logic;
SIGNAL \U2|QS~q\ : std_logic;
SIGNAL \U3|QS~feeder_combout\ : std_logic;
SIGNAL \U3|QS~q\ : std_logic;
SIGNAL \U4|QS~feeder_combout\ : std_logic;
SIGNAL \U4|QS~q\ : std_logic;
SIGNAL \U5|QS~feeder_combout\ : std_logic;
SIGNAL \U5|QS~q\ : std_logic;
SIGNAL \U6|QS~feeder_combout\ : std_logic;
SIGNAL \U6|QS~q\ : std_logic;
SIGNAL \U7|QS~feeder_combout\ : std_logic;
SIGNAL \U7|QS~q\ : std_logic;
SIGNAL \U0|QS~0_combout\ : std_logic;
SIGNAL \U0|QS~q\ : std_logic;
SIGNAL CLK_COUNT : std_logic_vector(24 DOWNTO 0);
SIGNAL \U0|ALT_INV_QS~q\ : std_logic;
SIGNAL \ALT_INV_CLK_1HZ~clkctrl_outclk\ : std_logic;

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

\CLK_1HZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_1HZ~q\);

\CLR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLR~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\U0|ALT_INV_QS~q\ <= NOT \U0|QS~q\;
\ALT_INV_CLK_1HZ~clkctrl_outclk\ <= NOT \CLK_1HZ~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N23
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
	i => \U0|ALT_INV_QS~q\,
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
	i => \U1|QS~q\,
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
	i => \U2|QS~q\,
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
	i => \U3|QS~q\,
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
	i => \U4|QS~q\,
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
	i => \U5|QS~q\,
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
	i => \U6|QS~q\,
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
	i => \U7|QS~q\,
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

-- Location: LCCOMB_X4_Y8_N8
\CLK_COUNT[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[0]~25_combout\ = CLK_COUNT(0) $ (VCC)
-- \CLK_COUNT[0]~26\ = CARRY(CLK_COUNT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(0),
	datad => VCC,
	combout => \CLK_COUNT[0]~25_combout\,
	cout => \CLK_COUNT[0]~26\);

-- Location: LCCOMB_X4_Y7_N10
\CLK_COUNT[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[17]~59_combout\ = (CLK_COUNT(17) & (!\CLK_COUNT[16]~58\)) # (!CLK_COUNT(17) & ((\CLK_COUNT[16]~58\) # (GND)))
-- \CLK_COUNT[17]~60\ = CARRY((!\CLK_COUNT[16]~58\) # (!CLK_COUNT(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(17),
	datad => VCC,
	cin => \CLK_COUNT[16]~58\,
	combout => \CLK_COUNT[17]~59_combout\,
	cout => \CLK_COUNT[17]~60\);

-- Location: LCCOMB_X4_Y7_N12
\CLK_COUNT[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[18]~61_combout\ = (CLK_COUNT(18) & (\CLK_COUNT[17]~60\ $ (GND))) # (!CLK_COUNT(18) & (!\CLK_COUNT[17]~60\ & VCC))
-- \CLK_COUNT[18]~62\ = CARRY((CLK_COUNT(18) & !\CLK_COUNT[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(18),
	datad => VCC,
	cin => \CLK_COUNT[17]~60\,
	combout => \CLK_COUNT[18]~61_combout\,
	cout => \CLK_COUNT[18]~62\);

-- Location: FF_X4_Y7_N13
\CLK_COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[18]~61_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(18));

-- Location: LCCOMB_X4_Y7_N14
\CLK_COUNT[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[19]~63_combout\ = (CLK_COUNT(19) & (!\CLK_COUNT[18]~62\)) # (!CLK_COUNT(19) & ((\CLK_COUNT[18]~62\) # (GND)))
-- \CLK_COUNT[19]~64\ = CARRY((!\CLK_COUNT[18]~62\) # (!CLK_COUNT(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(19),
	datad => VCC,
	cin => \CLK_COUNT[18]~62\,
	combout => \CLK_COUNT[19]~63_combout\,
	cout => \CLK_COUNT[19]~64\);

-- Location: FF_X4_Y7_N15
\CLK_COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[19]~63_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(19));

-- Location: LCCOMB_X4_Y7_N16
\CLK_COUNT[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[20]~65_combout\ = (CLK_COUNT(20) & (\CLK_COUNT[19]~64\ $ (GND))) # (!CLK_COUNT(20) & (!\CLK_COUNT[19]~64\ & VCC))
-- \CLK_COUNT[20]~66\ = CARRY((CLK_COUNT(20) & !\CLK_COUNT[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(20),
	datad => VCC,
	cin => \CLK_COUNT[19]~64\,
	combout => \CLK_COUNT[20]~65_combout\,
	cout => \CLK_COUNT[20]~66\);

-- Location: FF_X4_Y7_N17
\CLK_COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[20]~65_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(20));

-- Location: LCCOMB_X4_Y7_N18
\CLK_COUNT[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[21]~67_combout\ = (CLK_COUNT(21) & (!\CLK_COUNT[20]~66\)) # (!CLK_COUNT(21) & ((\CLK_COUNT[20]~66\) # (GND)))
-- \CLK_COUNT[21]~68\ = CARRY((!\CLK_COUNT[20]~66\) # (!CLK_COUNT(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(21),
	datad => VCC,
	cin => \CLK_COUNT[20]~66\,
	combout => \CLK_COUNT[21]~67_combout\,
	cout => \CLK_COUNT[21]~68\);

-- Location: FF_X4_Y7_N19
\CLK_COUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[21]~67_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(21));

-- Location: LCCOMB_X4_Y7_N20
\CLK_COUNT[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[22]~69_combout\ = (CLK_COUNT(22) & (\CLK_COUNT[21]~68\ $ (GND))) # (!CLK_COUNT(22) & (!\CLK_COUNT[21]~68\ & VCC))
-- \CLK_COUNT[22]~70\ = CARRY((CLK_COUNT(22) & !\CLK_COUNT[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(22),
	datad => VCC,
	cin => \CLK_COUNT[21]~68\,
	combout => \CLK_COUNT[22]~69_combout\,
	cout => \CLK_COUNT[22]~70\);

-- Location: FF_X4_Y7_N21
\CLK_COUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[22]~69_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(22));

-- Location: LCCOMB_X4_Y7_N22
\CLK_COUNT[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[23]~71_combout\ = (CLK_COUNT(23) & (!\CLK_COUNT[22]~70\)) # (!CLK_COUNT(23) & ((\CLK_COUNT[22]~70\) # (GND)))
-- \CLK_COUNT[23]~72\ = CARRY((!\CLK_COUNT[22]~70\) # (!CLK_COUNT(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(23),
	datad => VCC,
	cin => \CLK_COUNT[22]~70\,
	combout => \CLK_COUNT[23]~71_combout\,
	cout => \CLK_COUNT[23]~72\);

-- Location: FF_X4_Y7_N23
\CLK_COUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[23]~71_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(23));

-- Location: LCCOMB_X4_Y7_N24
\CLK_COUNT[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[24]~73_combout\ = \CLK_COUNT[23]~72\ $ (!CLK_COUNT(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => CLK_COUNT(24),
	cin => \CLK_COUNT[23]~72\,
	combout => \CLK_COUNT[24]~73_combout\);

-- Location: FF_X4_Y7_N25
\CLK_COUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[24]~73_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(24));

-- Location: LCCOMB_X4_Y7_N26
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (((!CLK_COUNT(17) & !CLK_COUNT(16))) # (!CLK_COUNT(18))) # (!CLK_COUNT(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(17),
	datab => CLK_COUNT(19),
	datac => CLK_COUNT(16),
	datad => CLK_COUNT(18),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X4_Y7_N28
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ((!CLK_COUNT(22)) # (!CLK_COUNT(21))) # (!CLK_COUNT(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(20),
	datac => CLK_COUNT(21),
	datad => CLK_COUNT(22),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X4_Y7_N30
\LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ((!CLK_COUNT(23) & ((\LessThan0~8_combout\) # (\LessThan0~9_combout\)))) # (!CLK_COUNT(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(23),
	datab => CLK_COUNT(24),
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X4_Y8_N4
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!CLK_COUNT(2)) # (!CLK_COUNT(3))) # (!CLK_COUNT(0))) # (!CLK_COUNT(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(1),
	datab => CLK_COUNT(0),
	datac => CLK_COUNT(3),
	datad => CLK_COUNT(2),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X4_Y8_N2
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((\LessThan0~2_combout\) # (!CLK_COUNT(5))) # (!CLK_COUNT(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(4),
	datac => \LessThan0~2_combout\,
	datad => CLK_COUNT(5),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X5_Y8_N20
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!CLK_COUNT(9) & (!CLK_COUNT(7) & (!CLK_COUNT(8) & !CLK_COUNT(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(9),
	datab => CLK_COUNT(7),
	datac => CLK_COUNT(8),
	datad => CLK_COUNT(10),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X3_Y8_N14
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!CLK_COUNT(15) & (!CLK_COUNT(23) & !CLK_COUNT(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(15),
	datac => CLK_COUNT(23),
	datad => CLK_COUNT(17),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X4_Y8_N0
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!CLK_COUNT(6) & (\LessThan0~3_combout\ & (\LessThan0~5_combout\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(6),
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X4_Y8_N6
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (!\LessThan0~12_combout\ & (!\LessThan0~10_combout\ & !\LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~11_combout\);

-- Location: FF_X4_Y8_N9
\CLK_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[0]~25_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(0));

-- Location: LCCOMB_X4_Y8_N10
\CLK_COUNT[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[1]~27_combout\ = (CLK_COUNT(1) & (!\CLK_COUNT[0]~26\)) # (!CLK_COUNT(1) & ((\CLK_COUNT[0]~26\) # (GND)))
-- \CLK_COUNT[1]~28\ = CARRY((!\CLK_COUNT[0]~26\) # (!CLK_COUNT(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(1),
	datad => VCC,
	cin => \CLK_COUNT[0]~26\,
	combout => \CLK_COUNT[1]~27_combout\,
	cout => \CLK_COUNT[1]~28\);

-- Location: FF_X4_Y8_N11
\CLK_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[1]~27_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(1));

-- Location: LCCOMB_X4_Y8_N12
\CLK_COUNT[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[2]~29_combout\ = (CLK_COUNT(2) & (\CLK_COUNT[1]~28\ $ (GND))) # (!CLK_COUNT(2) & (!\CLK_COUNT[1]~28\ & VCC))
-- \CLK_COUNT[2]~30\ = CARRY((CLK_COUNT(2) & !\CLK_COUNT[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(2),
	datad => VCC,
	cin => \CLK_COUNT[1]~28\,
	combout => \CLK_COUNT[2]~29_combout\,
	cout => \CLK_COUNT[2]~30\);

-- Location: FF_X4_Y8_N13
\CLK_COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[2]~29_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(2));

-- Location: LCCOMB_X4_Y8_N14
\CLK_COUNT[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[3]~31_combout\ = (CLK_COUNT(3) & (!\CLK_COUNT[2]~30\)) # (!CLK_COUNT(3) & ((\CLK_COUNT[2]~30\) # (GND)))
-- \CLK_COUNT[3]~32\ = CARRY((!\CLK_COUNT[2]~30\) # (!CLK_COUNT(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(3),
	datad => VCC,
	cin => \CLK_COUNT[2]~30\,
	combout => \CLK_COUNT[3]~31_combout\,
	cout => \CLK_COUNT[3]~32\);

-- Location: FF_X4_Y8_N15
\CLK_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[3]~31_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(3));

-- Location: LCCOMB_X4_Y8_N16
\CLK_COUNT[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[4]~33_combout\ = (CLK_COUNT(4) & (\CLK_COUNT[3]~32\ $ (GND))) # (!CLK_COUNT(4) & (!\CLK_COUNT[3]~32\ & VCC))
-- \CLK_COUNT[4]~34\ = CARRY((CLK_COUNT(4) & !\CLK_COUNT[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(4),
	datad => VCC,
	cin => \CLK_COUNT[3]~32\,
	combout => \CLK_COUNT[4]~33_combout\,
	cout => \CLK_COUNT[4]~34\);

-- Location: FF_X4_Y8_N17
\CLK_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[4]~33_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(4));

-- Location: LCCOMB_X4_Y8_N18
\CLK_COUNT[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[5]~35_combout\ = (CLK_COUNT(5) & (!\CLK_COUNT[4]~34\)) # (!CLK_COUNT(5) & ((\CLK_COUNT[4]~34\) # (GND)))
-- \CLK_COUNT[5]~36\ = CARRY((!\CLK_COUNT[4]~34\) # (!CLK_COUNT(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(5),
	datad => VCC,
	cin => \CLK_COUNT[4]~34\,
	combout => \CLK_COUNT[5]~35_combout\,
	cout => \CLK_COUNT[5]~36\);

-- Location: FF_X4_Y8_N19
\CLK_COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[5]~35_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(5));

-- Location: LCCOMB_X4_Y8_N20
\CLK_COUNT[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[6]~37_combout\ = (CLK_COUNT(6) & (\CLK_COUNT[5]~36\ $ (GND))) # (!CLK_COUNT(6) & (!\CLK_COUNT[5]~36\ & VCC))
-- \CLK_COUNT[6]~38\ = CARRY((CLK_COUNT(6) & !\CLK_COUNT[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(6),
	datad => VCC,
	cin => \CLK_COUNT[5]~36\,
	combout => \CLK_COUNT[6]~37_combout\,
	cout => \CLK_COUNT[6]~38\);

-- Location: FF_X4_Y8_N21
\CLK_COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[6]~37_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(6));

-- Location: LCCOMB_X4_Y8_N22
\CLK_COUNT[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[7]~39_combout\ = (CLK_COUNT(7) & (!\CLK_COUNT[6]~38\)) # (!CLK_COUNT(7) & ((\CLK_COUNT[6]~38\) # (GND)))
-- \CLK_COUNT[7]~40\ = CARRY((!\CLK_COUNT[6]~38\) # (!CLK_COUNT(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(7),
	datad => VCC,
	cin => \CLK_COUNT[6]~38\,
	combout => \CLK_COUNT[7]~39_combout\,
	cout => \CLK_COUNT[7]~40\);

-- Location: FF_X4_Y8_N23
\CLK_COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[7]~39_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(7));

-- Location: LCCOMB_X4_Y8_N24
\CLK_COUNT[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[8]~41_combout\ = (CLK_COUNT(8) & (\CLK_COUNT[7]~40\ $ (GND))) # (!CLK_COUNT(8) & (!\CLK_COUNT[7]~40\ & VCC))
-- \CLK_COUNT[8]~42\ = CARRY((CLK_COUNT(8) & !\CLK_COUNT[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(8),
	datad => VCC,
	cin => \CLK_COUNT[7]~40\,
	combout => \CLK_COUNT[8]~41_combout\,
	cout => \CLK_COUNT[8]~42\);

-- Location: FF_X4_Y8_N25
\CLK_COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[8]~41_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(8));

-- Location: LCCOMB_X4_Y8_N26
\CLK_COUNT[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[9]~43_combout\ = (CLK_COUNT(9) & (!\CLK_COUNT[8]~42\)) # (!CLK_COUNT(9) & ((\CLK_COUNT[8]~42\) # (GND)))
-- \CLK_COUNT[9]~44\ = CARRY((!\CLK_COUNT[8]~42\) # (!CLK_COUNT(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(9),
	datad => VCC,
	cin => \CLK_COUNT[8]~42\,
	combout => \CLK_COUNT[9]~43_combout\,
	cout => \CLK_COUNT[9]~44\);

-- Location: FF_X4_Y8_N27
\CLK_COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[9]~43_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(9));

-- Location: LCCOMB_X4_Y8_N28
\CLK_COUNT[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[10]~45_combout\ = (CLK_COUNT(10) & (\CLK_COUNT[9]~44\ $ (GND))) # (!CLK_COUNT(10) & (!\CLK_COUNT[9]~44\ & VCC))
-- \CLK_COUNT[10]~46\ = CARRY((CLK_COUNT(10) & !\CLK_COUNT[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(10),
	datad => VCC,
	cin => \CLK_COUNT[9]~44\,
	combout => \CLK_COUNT[10]~45_combout\,
	cout => \CLK_COUNT[10]~46\);

-- Location: FF_X4_Y8_N29
\CLK_COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[10]~45_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(10));

-- Location: LCCOMB_X4_Y8_N30
\CLK_COUNT[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[11]~47_combout\ = (CLK_COUNT(11) & (!\CLK_COUNT[10]~46\)) # (!CLK_COUNT(11) & ((\CLK_COUNT[10]~46\) # (GND)))
-- \CLK_COUNT[11]~48\ = CARRY((!\CLK_COUNT[10]~46\) # (!CLK_COUNT(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(11),
	datad => VCC,
	cin => \CLK_COUNT[10]~46\,
	combout => \CLK_COUNT[11]~47_combout\,
	cout => \CLK_COUNT[11]~48\);

-- Location: FF_X4_Y8_N31
\CLK_COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[11]~47_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(11));

-- Location: LCCOMB_X4_Y7_N0
\CLK_COUNT[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[12]~49_combout\ = (CLK_COUNT(12) & (\CLK_COUNT[11]~48\ $ (GND))) # (!CLK_COUNT(12) & (!\CLK_COUNT[11]~48\ & VCC))
-- \CLK_COUNT[12]~50\ = CARRY((CLK_COUNT(12) & !\CLK_COUNT[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(12),
	datad => VCC,
	cin => \CLK_COUNT[11]~48\,
	combout => \CLK_COUNT[12]~49_combout\,
	cout => \CLK_COUNT[12]~50\);

-- Location: FF_X3_Y8_N31
\CLK_COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \CLK_COUNT[12]~49_combout\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(12));

-- Location: LCCOMB_X4_Y7_N2
\CLK_COUNT[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[13]~51_combout\ = (CLK_COUNT(13) & (!\CLK_COUNT[12]~50\)) # (!CLK_COUNT(13) & ((\CLK_COUNT[12]~50\) # (GND)))
-- \CLK_COUNT[13]~52\ = CARRY((!\CLK_COUNT[12]~50\) # (!CLK_COUNT(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(13),
	datad => VCC,
	cin => \CLK_COUNT[12]~50\,
	combout => \CLK_COUNT[13]~51_combout\,
	cout => \CLK_COUNT[13]~52\);

-- Location: FF_X3_Y8_N27
\CLK_COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \CLK_COUNT[13]~51_combout\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(13));

-- Location: LCCOMB_X4_Y7_N4
\CLK_COUNT[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[14]~53_combout\ = (CLK_COUNT(14) & (\CLK_COUNT[13]~52\ $ (GND))) # (!CLK_COUNT(14) & (!\CLK_COUNT[13]~52\ & VCC))
-- \CLK_COUNT[14]~54\ = CARRY((CLK_COUNT(14) & !\CLK_COUNT[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(14),
	datad => VCC,
	cin => \CLK_COUNT[13]~52\,
	combout => \CLK_COUNT[14]~53_combout\,
	cout => \CLK_COUNT[14]~54\);

-- Location: FF_X3_Y8_N13
\CLK_COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \CLK_COUNT[14]~53_combout\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(14));

-- Location: LCCOMB_X4_Y7_N6
\CLK_COUNT[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[15]~55_combout\ = (CLK_COUNT(15) & (!\CLK_COUNT[14]~54\)) # (!CLK_COUNT(15) & ((\CLK_COUNT[14]~54\) # (GND)))
-- \CLK_COUNT[15]~56\ = CARRY((!\CLK_COUNT[14]~54\) # (!CLK_COUNT(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(15),
	datad => VCC,
	cin => \CLK_COUNT[14]~54\,
	combout => \CLK_COUNT[15]~55_combout\,
	cout => \CLK_COUNT[15]~56\);

-- Location: FF_X3_Y8_N25
\CLK_COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \CLK_COUNT[15]~55_combout\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(15));

-- Location: LCCOMB_X4_Y7_N8
\CLK_COUNT[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[16]~57_combout\ = (CLK_COUNT(16) & (\CLK_COUNT[15]~56\ $ (GND))) # (!CLK_COUNT(16) & (!\CLK_COUNT[15]~56\ & VCC))
-- \CLK_COUNT[16]~58\ = CARRY((CLK_COUNT(16) & !\CLK_COUNT[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(16),
	datad => VCC,
	cin => \CLK_COUNT[15]~56\,
	combout => \CLK_COUNT[16]~57_combout\,
	cout => \CLK_COUNT[16]~58\);

-- Location: FF_X4_Y7_N9
\CLK_COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[16]~57_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(16));

-- Location: FF_X4_Y7_N11
\CLK_COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[17]~59_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(17));

-- Location: LCCOMB_X3_Y8_N18
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (((!CLK_COUNT(11)) # (!CLK_COUNT(13))) # (!CLK_COUNT(12))) # (!CLK_COUNT(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(14),
	datab => CLK_COUNT(12),
	datac => CLK_COUNT(13),
	datad => CLK_COUNT(11),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X3_Y8_N16
\LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = (!CLK_COUNT(17) & (!CLK_COUNT(15) & (!CLK_COUNT(23) & \LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(17),
	datab => CLK_COUNT(15),
	datac => CLK_COUNT(23),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~12_combout\);

-- Location: LCCOMB_X3_Y8_N28
\CLK_1HZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1HZ~0_combout\ = \CLK_1HZ~q\ $ (((!\LessThan0~12_combout\ & (!\LessThan0~6_combout\ & !\LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_1HZ~q\,
	datab => \LessThan0~12_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~10_combout\,
	combout => \CLK_1HZ~0_combout\);

-- Location: LCCOMB_X3_Y8_N0
\CLK_1HZ~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1HZ~feeder_combout\ = \CLK_1HZ~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_1HZ~0_combout\,
	combout => \CLK_1HZ~feeder_combout\);

-- Location: FF_X3_Y8_N1
CLK_1HZ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_1HZ~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_1HZ~q\);

-- Location: CLKCTRL_G1
\CLK_1HZ~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_1HZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_1HZ~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y23_N2
\U1|QS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|QS~0_combout\ = !\U0|QS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|QS~q\,
	combout => \U1|QS~0_combout\);

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

-- Location: CLKCTRL_G0
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

-- Location: FF_X17_Y23_N3
\U1|QS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_1HZ~clkctrl_outclk\,
	d => \U1|QS~0_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|QS~q\);

-- Location: LCCOMB_X17_Y23_N28
\U2|QS~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|QS~feeder_combout\ = \U1|QS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|QS~q\,
	combout => \U2|QS~feeder_combout\);

-- Location: FF_X17_Y23_N29
\U2|QS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_1HZ~clkctrl_outclk\,
	d => \U2|QS~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|QS~q\);

-- Location: LCCOMB_X17_Y23_N18
\U3|QS~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|QS~feeder_combout\ = \U2|QS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|QS~q\,
	combout => \U3|QS~feeder_combout\);

-- Location: FF_X17_Y23_N19
\U3|QS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_1HZ~clkctrl_outclk\,
	d => \U3|QS~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|QS~q\);

-- Location: LCCOMB_X17_Y23_N0
\U4|QS~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|QS~feeder_combout\ = \U3|QS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|QS~q\,
	combout => \U4|QS~feeder_combout\);

-- Location: FF_X17_Y23_N1
\U4|QS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_1HZ~clkctrl_outclk\,
	d => \U4|QS~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|QS~q\);

-- Location: LCCOMB_X17_Y23_N6
\U5|QS~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|QS~feeder_combout\ = \U4|QS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|QS~q\,
	combout => \U5|QS~feeder_combout\);

-- Location: FF_X17_Y23_N7
\U5|QS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_1HZ~clkctrl_outclk\,
	d => \U5|QS~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|QS~q\);

-- Location: LCCOMB_X17_Y23_N20
\U6|QS~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|QS~feeder_combout\ = \U5|QS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|QS~q\,
	combout => \U6|QS~feeder_combout\);

-- Location: FF_X17_Y23_N21
\U6|QS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_1HZ~clkctrl_outclk\,
	d => \U6|QS~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|QS~q\);

-- Location: LCCOMB_X17_Y23_N10
\U7|QS~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|QS~feeder_combout\ = \U6|QS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U6|QS~q\,
	combout => \U7|QS~feeder_combout\);

-- Location: FF_X17_Y23_N11
\U7|QS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_1HZ~clkctrl_outclk\,
	d => \U7|QS~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|QS~q\);

-- Location: LCCOMB_X17_Y23_N12
\U0|QS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|QS~0_combout\ = !\U7|QS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U7|QS~q\,
	combout => \U0|QS~0_combout\);

-- Location: FF_X17_Y23_N13
\U0|QS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_1HZ~clkctrl_outclk\,
	d => \U0|QS~0_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|QS~q\);

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


