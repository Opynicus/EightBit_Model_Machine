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

-- DATE "06/28/2021 21:34:20"

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

ENTITY 	PC IS
    PORT (
	IPC : IN std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic;
	PCOUT : OUT std_logic_vector(3 DOWNTO 0)
	);
END PC;

-- Design Ports Information
-- PCOUT[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[1]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IPC	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IPC : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_PCOUT : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_1HZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PCOUT[0]~output_o\ : std_logic;
SIGNAL \PCOUT[1]~output_o\ : std_logic;
SIGNAL \PCOUT[2]~output_o\ : std_logic;
SIGNAL \PCOUT[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK_COUNT[0]~25_combout\ : std_logic;
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
SIGNAL \CLK_COUNT[15]~feeder_combout\ : std_logic;
SIGNAL \CLK_COUNT[15]~56\ : std_logic;
SIGNAL \CLK_COUNT[16]~57_combout\ : std_logic;
SIGNAL \CLK_COUNT[16]~58\ : std_logic;
SIGNAL \CLK_COUNT[17]~59_combout\ : std_logic;
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
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
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
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \CLK_1HZ~0_combout\ : std_logic;
SIGNAL \CLK_1HZ~feeder_combout\ : std_logic;
SIGNAL \CLK_1HZ~q\ : std_logic;
SIGNAL \CLK_1HZ~clkctrl_outclk\ : std_logic;
SIGNAL \IPC~input_o\ : std_logic;
SIGNAL \QOUT[0]~0_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \CLR~inputclkctrl_outclk\ : std_logic;
SIGNAL \QOUT[1]~1_combout\ : std_logic;
SIGNAL \QOUT[2]~2_combout\ : std_logic;
SIGNAL \QOUT[3]~3_combout\ : std_logic;
SIGNAL \QOUT[3]~4_combout\ : std_logic;
SIGNAL CLK_COUNT : std_logic_vector(24 DOWNTO 0);
SIGNAL QOUT : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_IPC <= IPC;
ww_CLK <= CLK;
ww_CLR <= CLR;
PCOUT <= ww_PCOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_1HZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_1HZ~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\CLR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLR~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y9_N16
\PCOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QOUT(0),
	devoe => ww_devoe,
	o => \PCOUT[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\PCOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QOUT(1),
	devoe => ww_devoe,
	o => \PCOUT[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\PCOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QOUT(2),
	devoe => ww_devoe,
	o => \PCOUT[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\PCOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QOUT(3),
	devoe => ww_devoe,
	o => \PCOUT[3]~output_o\);

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

-- Location: LCCOMB_X3_Y9_N8
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

-- Location: LCCOMB_X3_Y9_N22
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

-- Location: LCCOMB_X3_Y9_N24
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

-- Location: FF_X3_Y9_N25
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

-- Location: LCCOMB_X3_Y9_N26
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

-- Location: FF_X3_Y9_N27
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

-- Location: LCCOMB_X3_Y9_N28
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

-- Location: FF_X3_Y9_N29
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

-- Location: LCCOMB_X3_Y9_N30
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

-- Location: FF_X3_Y9_N31
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

-- Location: LCCOMB_X3_Y8_N0
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

-- Location: FF_X3_Y8_N1
\CLK_COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[12]~49_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(12));

-- Location: LCCOMB_X3_Y8_N2
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

-- Location: FF_X3_Y8_N3
\CLK_COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[13]~51_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(13));

-- Location: LCCOMB_X3_Y8_N4
\CLK_COUNT[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[14]~53_combout\ = (CLK_COUNT(14) & (\CLK_COUNT[13]~52\ $ (GND))) # (!CLK_COUNT(14) & (!\CLK_COUNT[13]~52\ & VCC))
-- \CLK_COUNT[14]~54\ = CARRY((CLK_COUNT(14) & !\CLK_COUNT[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(14),
	datad => VCC,
	cin => \CLK_COUNT[13]~52\,
	combout => \CLK_COUNT[14]~53_combout\,
	cout => \CLK_COUNT[14]~54\);

-- Location: FF_X4_Y9_N31
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

-- Location: LCCOMB_X3_Y8_N6
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

-- Location: LCCOMB_X3_Y9_N4
\CLK_COUNT[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT[15]~feeder_combout\ = \CLK_COUNT[15]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLK_COUNT[15]~55_combout\,
	combout => \CLK_COUNT[15]~feeder_combout\);

-- Location: FF_X3_Y9_N5
\CLK_COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_COUNT[15]~feeder_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT(15));

-- Location: LCCOMB_X3_Y8_N8
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

-- Location: FF_X3_Y8_N9
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

-- Location: LCCOMB_X3_Y8_N10
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

-- Location: FF_X3_Y8_N11
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

-- Location: LCCOMB_X3_Y8_N12
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

-- Location: FF_X3_Y8_N13
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

-- Location: LCCOMB_X3_Y8_N14
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

-- Location: FF_X3_Y8_N15
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

-- Location: LCCOMB_X3_Y8_N16
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

-- Location: FF_X3_Y8_N17
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

-- Location: LCCOMB_X3_Y8_N18
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

-- Location: FF_X3_Y8_N19
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

-- Location: LCCOMB_X3_Y8_N20
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

-- Location: FF_X3_Y8_N21
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

-- Location: LCCOMB_X3_Y8_N22
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

-- Location: FF_X3_Y8_N23
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

-- Location: LCCOMB_X3_Y8_N24
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

-- Location: FF_X3_Y8_N25
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

-- Location: LCCOMB_X3_Y8_N30
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (((!CLK_COUNT(17) & !CLK_COUNT(16))) # (!CLK_COUNT(18))) # (!CLK_COUNT(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(17),
	datab => CLK_COUNT(16),
	datac => CLK_COUNT(19),
	datad => CLK_COUNT(18),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X3_Y8_N28
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ((!CLK_COUNT(21)) # (!CLK_COUNT(22))) # (!CLK_COUNT(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(20),
	datac => CLK_COUNT(22),
	datad => CLK_COUNT(21),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X3_Y8_N26
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

-- Location: LCCOMB_X4_Y9_N10
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (((!CLK_COUNT(13)) # (!CLK_COUNT(11))) # (!CLK_COUNT(12))) # (!CLK_COUNT(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(14),
	datab => CLK_COUNT(12),
	datac => CLK_COUNT(11),
	datad => CLK_COUNT(13),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X4_Y9_N12
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

-- Location: LCCOMB_X3_Y9_N6
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (!\LessThan0~10_combout\ & (!\LessThan0~12_combout\ & !\LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~10_combout\,
	datac => \LessThan0~12_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~11_combout\);

-- Location: FF_X3_Y9_N9
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

-- Location: LCCOMB_X3_Y9_N10
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

-- Location: FF_X3_Y9_N11
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

-- Location: LCCOMB_X3_Y9_N12
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

-- Location: FF_X3_Y9_N13
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

-- Location: LCCOMB_X3_Y9_N14
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

-- Location: FF_X3_Y9_N15
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

-- Location: LCCOMB_X3_Y9_N16
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

-- Location: FF_X3_Y9_N17
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

-- Location: LCCOMB_X3_Y9_N18
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

-- Location: FF_X3_Y9_N19
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

-- Location: LCCOMB_X3_Y9_N20
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

-- Location: FF_X3_Y9_N21
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

-- Location: FF_X3_Y9_N23
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

-- Location: LCCOMB_X3_Y9_N0
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!CLK_COUNT(7) & (!CLK_COUNT(8) & (!CLK_COUNT(9) & !CLK_COUNT(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT(7),
	datab => CLK_COUNT(8),
	datac => CLK_COUNT(9),
	datad => CLK_COUNT(10),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X4_Y9_N4
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

-- Location: LCCOMB_X3_Y9_N2
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

-- Location: LCCOMB_X4_Y9_N24
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((\LessThan0~2_combout\) # (!CLK_COUNT(4))) # (!CLK_COUNT(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT(5),
	datac => CLK_COUNT(4),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X4_Y9_N22
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~5_combout\ & (!CLK_COUNT(6) & (\LessThan0~4_combout\ & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => CLK_COUNT(6),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X4_Y9_N28
\CLK_1HZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1HZ~0_combout\ = \CLK_1HZ~q\ $ (((!\LessThan0~6_combout\ & (!\LessThan0~10_combout\ & !\LessThan0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \CLK_1HZ~q\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan0~12_combout\,
	combout => \CLK_1HZ~0_combout\);

-- Location: LCCOMB_X4_Y9_N2
\CLK_1HZ~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1HZ~feeder_combout\ = \CLK_1HZ~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_1HZ~0_combout\,
	combout => \CLK_1HZ~feeder_combout\);

-- Location: FF_X4_Y9_N3
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

-- Location: CLKCTRL_G0
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

-- Location: IOIBUF_X34_Y12_N15
\IPC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IPC,
	o => \IPC~input_o\);

-- Location: LCCOMB_X33_Y9_N4
\QOUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \QOUT[0]~0_combout\ = QOUT(0) $ (\IPC~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => QOUT(0),
	datad => \IPC~input_o\,
	combout => \QOUT[0]~0_combout\);

-- Location: IOIBUF_X34_Y12_N22
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: CLKCTRL_G8
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

-- Location: FF_X33_Y9_N5
\QOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_1HZ~clkctrl_outclk\,
	d => \QOUT[0]~0_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QOUT(0));

-- Location: LCCOMB_X33_Y9_N14
\QOUT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \QOUT[1]~1_combout\ = QOUT(1) $ (((QOUT(0) & \IPC~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => QOUT(0),
	datac => QOUT(1),
	datad => \IPC~input_o\,
	combout => \QOUT[1]~1_combout\);

-- Location: FF_X33_Y9_N15
\QOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_1HZ~clkctrl_outclk\,
	d => \QOUT[1]~1_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QOUT(1));

-- Location: LCCOMB_X33_Y9_N16
\QOUT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \QOUT[2]~2_combout\ = QOUT(2) $ (((\IPC~input_o\ & (QOUT(0) & QOUT(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IPC~input_o\,
	datab => QOUT(0),
	datac => QOUT(2),
	datad => QOUT(1),
	combout => \QOUT[2]~2_combout\);

-- Location: FF_X33_Y9_N17
\QOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_1HZ~clkctrl_outclk\,
	d => \QOUT[2]~2_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QOUT(2));

-- Location: LCCOMB_X33_Y9_N28
\QOUT[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \QOUT[3]~3_combout\ = (\IPC~input_o\ & (QOUT(1) & (QOUT(0) & QOUT(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IPC~input_o\,
	datab => QOUT(1),
	datac => QOUT(0),
	datad => QOUT(2),
	combout => \QOUT[3]~3_combout\);

-- Location: LCCOMB_X33_Y9_N22
\QOUT[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \QOUT[3]~4_combout\ = QOUT(3) $ (\QOUT[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => QOUT(3),
	datad => \QOUT[3]~3_combout\,
	combout => \QOUT[3]~4_combout\);

-- Location: FF_X33_Y9_N23
\QOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_1HZ~clkctrl_outclk\,
	d => \QOUT[3]~4_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QOUT(3));

ww_PCOUT(0) <= \PCOUT[0]~output_o\;

ww_PCOUT(1) <= \PCOUT[1]~output_o\;

ww_PCOUT(2) <= \PCOUT[2]~output_o\;

ww_PCOUT(3) <= \PCOUT[3]~output_o\;
END structure;


