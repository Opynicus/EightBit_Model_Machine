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

-- DATE "07/01/2021 09:35:53"

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

ENTITY 	CTRL IS
    PORT (
	cmd_LD : IN std_logic;
	cmd_add : IN std_logic;
	cmd_sub : IN std_logic;
	cmd_and : IN std_logic;
	cmd_shl : IN std_logic;
	HALT : IN std_logic;
	CLK : IN std_logic;
	T0 : IN std_logic;
	T1 : IN std_logic;
	T2 : IN std_logic;
	T3 : IN std_logic;
	T4 : IN std_logic;
	T5 : IN std_logic;
	T6 : IN std_logic;
	T7 : IN std_logic;
	IPC : OUT std_logic;
	IMAR : OUT std_logic;
	IDR : OUT std_logic;
	EDR : OUT std_logic;
	IA : OUT std_logic;
	EA : OUT std_logic;
	ALU_ADD : OUT std_logic;
	ALU_SUB : OUT std_logic;
	ALU_AND : OUT std_logic;
	ALU_SHL : OUT std_logic;
	ESUM : OUT std_logic;
	IIR : OUT std_logic
	);
END CTRL;

-- Design Ports Information
-- CLK	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IPC	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMAR	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDR	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EDR	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IA	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EA	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_ADD	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SUB	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_AND	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SHL	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESUM	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IIR	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HALT	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_add	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_sub	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_and	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_LD	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T0	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd_shl	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T6	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T7	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CTRL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cmd_LD : std_logic;
SIGNAL ww_cmd_add : std_logic;
SIGNAL ww_cmd_sub : std_logic;
SIGNAL ww_cmd_and : std_logic;
SIGNAL ww_cmd_shl : std_logic;
SIGNAL ww_HALT : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_T0 : std_logic;
SIGNAL ww_T1 : std_logic;
SIGNAL ww_T2 : std_logic;
SIGNAL ww_T3 : std_logic;
SIGNAL ww_T4 : std_logic;
SIGNAL ww_T5 : std_logic;
SIGNAL ww_T6 : std_logic;
SIGNAL ww_T7 : std_logic;
SIGNAL ww_IPC : std_logic;
SIGNAL ww_IMAR : std_logic;
SIGNAL ww_IDR : std_logic;
SIGNAL ww_EDR : std_logic;
SIGNAL ww_IA : std_logic;
SIGNAL ww_EA : std_logic;
SIGNAL ww_ALU_ADD : std_logic;
SIGNAL ww_ALU_SUB : std_logic;
SIGNAL ww_ALU_AND : std_logic;
SIGNAL ww_ALU_SHL : std_logic;
SIGNAL ww_ESUM : std_logic;
SIGNAL ww_IIR : std_logic;
SIGNAL \HALT~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \IPC~output_o\ : std_logic;
SIGNAL \IMAR~output_o\ : std_logic;
SIGNAL \IDR~output_o\ : std_logic;
SIGNAL \EDR~output_o\ : std_logic;
SIGNAL \IA~output_o\ : std_logic;
SIGNAL \EA~output_o\ : std_logic;
SIGNAL \ALU_ADD~output_o\ : std_logic;
SIGNAL \ALU_SUB~output_o\ : std_logic;
SIGNAL \ALU_AND~output_o\ : std_logic;
SIGNAL \ALU_SHL~output_o\ : std_logic;
SIGNAL \ESUM~output_o\ : std_logic;
SIGNAL \IIR~output_o\ : std_logic;
SIGNAL \HALT~input_o\ : std_logic;
SIGNAL \T2~input_o\ : std_logic;
SIGNAL \T5~input_o\ : std_logic;
SIGNAL \cmd_sub~input_o\ : std_logic;
SIGNAL \cmd_add~input_o\ : std_logic;
SIGNAL \cmd_and~input_o\ : std_logic;
SIGNAL \cmd_LD~input_o\ : std_logic;
SIGNAL \IPC~0_combout\ : std_logic;
SIGNAL \IPC~1_combout\ : std_logic;
SIGNAL \T3~input_o\ : std_logic;
SIGNAL \cmd_shl~input_o\ : std_logic;
SIGNAL \EDR~0_combout\ : std_logic;
SIGNAL \T0~input_o\ : std_logic;
SIGNAL \IMAR~0_combout\ : std_logic;
SIGNAL \HALT~inputclkctrl_outclk\ : std_logic;
SIGNAL \IMAR$latch~combout\ : std_logic;
SIGNAL \T1~input_o\ : std_logic;
SIGNAL \T4~input_o\ : std_logic;
SIGNAL \IDR~0_combout\ : std_logic;
SIGNAL \IDR$latch~combout\ : std_logic;
SIGNAL \T6~input_o\ : std_logic;
SIGNAL \EDR~1_combout\ : std_logic;
SIGNAL \EDR$latch~combout\ : std_logic;
SIGNAL \IA~0_combout\ : std_logic;
SIGNAL \IA$latch~combout\ : std_logic;
SIGNAL \T7~input_o\ : std_logic;
SIGNAL \EA~0_combout\ : std_logic;
SIGNAL \EA$latch~combout\ : std_logic;
SIGNAL \IPC~2_combout\ : std_logic;
SIGNAL \ALU_ADD$latch~combout\ : std_logic;
SIGNAL \IPC~3_combout\ : std_logic;
SIGNAL \ALU_SUB$latch~combout\ : std_logic;
SIGNAL \IPC~4_combout\ : std_logic;
SIGNAL \ALU_AND$latch~combout\ : std_logic;
SIGNAL \ALU_SHL~0_combout\ : std_logic;
SIGNAL \ALU_SHL$latch~combout\ : std_logic;
SIGNAL \ESUM$latch~combout\ : std_logic;
SIGNAL \IIR$latch~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_cmd_LD <= cmd_LD;
ww_cmd_add <= cmd_add;
ww_cmd_sub <= cmd_sub;
ww_cmd_and <= cmd_and;
ww_cmd_shl <= cmd_shl;
ww_HALT <= HALT;
ww_CLK <= CLK;
ww_T0 <= T0;
ww_T1 <= T1;
ww_T2 <= T2;
ww_T3 <= T3;
ww_T4 <= T4;
ww_T5 <= T5;
ww_T6 <= T6;
ww_T7 <= T7;
IPC <= ww_IPC;
IMAR <= ww_IMAR;
IDR <= ww_IDR;
EDR <= ww_EDR;
IA <= ww_IA;
EA <= ww_EA;
ALU_ADD <= ww_ALU_ADD;
ALU_SUB <= ww_ALU_SUB;
ALU_AND <= ww_ALU_AND;
ALU_SHL <= ww_ALU_SHL;
ESUM <= ww_ESUM;
IIR <= ww_IIR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\HALT~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \HALT~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N9
\IPC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IPC~1_combout\,
	devoe => ww_devoe,
	o => \IPC~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\IMAR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMAR$latch~combout\,
	devoe => ww_devoe,
	o => \IMAR~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\IDR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDR$latch~combout\,
	devoe => ww_devoe,
	o => \IDR~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\EDR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EDR$latch~combout\,
	devoe => ww_devoe,
	o => \EDR~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\IA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IA$latch~combout\,
	devoe => ww_devoe,
	o => \IA~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\EA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EA$latch~combout\,
	devoe => ww_devoe,
	o => \EA~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\ALU_ADD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_ADD$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_ADD~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\ALU_SUB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_SUB$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_SUB~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\ALU_AND~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_AND$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_AND~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\ALU_SHL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_SHL$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_SHL~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\ESUM~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ESUM$latch~combout\,
	devoe => ww_devoe,
	o => \ESUM~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\IIR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IIR$latch~combout\,
	devoe => ww_devoe,
	o => \IIR~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\HALT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HALT,
	o => \HALT~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\T2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2,
	o => \T2~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\T5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T5,
	o => \T5~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\cmd_sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_sub,
	o => \cmd_sub~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\cmd_add~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_add,
	o => \cmd_add~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\cmd_and~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_and,
	o => \cmd_and~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\cmd_LD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_LD,
	o => \cmd_LD~input_o\);

-- Location: LCCOMB_X12_Y4_N0
\IPC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IPC~0_combout\ = (\cmd_sub~input_o\) # ((\cmd_add~input_o\) # ((\cmd_and~input_o\) # (\cmd_LD~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_sub~input_o\,
	datab => \cmd_add~input_o\,
	datac => \cmd_and~input_o\,
	datad => \cmd_LD~input_o\,
	combout => \IPC~0_combout\);

-- Location: LCCOMB_X12_Y4_N10
\IPC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IPC~1_combout\ = (!\HALT~input_o\ & ((\T2~input_o\) # ((\T5~input_o\ & \IPC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HALT~input_o\,
	datab => \T2~input_o\,
	datac => \T5~input_o\,
	datad => \IPC~0_combout\,
	combout => \IPC~1_combout\);

-- Location: IOIBUF_X34_Y4_N15
\T3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T3,
	o => \T3~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\cmd_shl~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_shl,
	o => \cmd_shl~input_o\);

-- Location: LCCOMB_X12_Y4_N4
\EDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \EDR~0_combout\ = (!\cmd_sub~input_o\ & (!\cmd_add~input_o\ & (!\cmd_and~input_o\ & !\cmd_shl~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_sub~input_o\,
	datab => \cmd_add~input_o\,
	datac => \cmd_and~input_o\,
	datad => \cmd_shl~input_o\,
	combout => \EDR~0_combout\);

-- Location: IOIBUF_X23_Y0_N15
\T0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T0,
	o => \T0~input_o\);

-- Location: LCCOMB_X12_Y4_N6
\IMAR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMAR~0_combout\ = (\T0~input_o\) # ((\T3~input_o\ & ((\cmd_LD~input_o\) # (!\EDR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3~input_o\,
	datab => \cmd_LD~input_o\,
	datac => \EDR~0_combout\,
	datad => \T0~input_o\,
	combout => \IMAR~0_combout\);

-- Location: CLKCTRL_G2
\HALT~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \HALT~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \HALT~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y4_N16
\IMAR$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMAR$latch~combout\ = (GLOBAL(\HALT~inputclkctrl_outclk\) & ((\IMAR$latch~combout\))) # (!GLOBAL(\HALT~inputclkctrl_outclk\) & (!\IMAR~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMAR~0_combout\,
	datac => \HALT~inputclkctrl_outclk\,
	datad => \IMAR$latch~combout\,
	combout => \IMAR$latch~combout\);

-- Location: IOIBUF_X5_Y0_N22
\T1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1,
	o => \T1~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\T4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T4,
	o => \T4~input_o\);

-- Location: LCCOMB_X12_Y4_N8
\IDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IDR~0_combout\ = (\T1~input_o\) # ((\T4~input_o\ & ((\cmd_LD~input_o\) # (!\EDR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T1~input_o\,
	datab => \T4~input_o\,
	datac => \EDR~0_combout\,
	datad => \cmd_LD~input_o\,
	combout => \IDR~0_combout\);

-- Location: LCCOMB_X12_Y4_N18
\IDR$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \IDR$latch~combout\ = (GLOBAL(\HALT~inputclkctrl_outclk\) & ((\IDR$latch~combout\))) # (!GLOBAL(\HALT~inputclkctrl_outclk\) & (\IDR~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IDR~0_combout\,
	datac => \HALT~inputclkctrl_outclk\,
	datad => \IDR$latch~combout\,
	combout => \IDR$latch~combout\);

-- Location: IOIBUF_X0_Y11_N22
\T6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T6,
	o => \T6~input_o\);

-- Location: LCCOMB_X12_Y4_N2
\EDR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \EDR~1_combout\ = (\T6~input_o\ & !\EDR~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T6~input_o\,
	datac => \EDR~0_combout\,
	combout => \EDR~1_combout\);

-- Location: LCCOMB_X18_Y20_N24
\EDR$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \EDR$latch~combout\ = (GLOBAL(\HALT~inputclkctrl_outclk\) & ((\EDR$latch~combout\))) # (!GLOBAL(\HALT~inputclkctrl_outclk\) & (\EDR~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EDR~1_combout\,
	datac => \HALT~inputclkctrl_outclk\,
	datad => \EDR$latch~combout\,
	combout => \EDR$latch~combout\);

-- Location: LCCOMB_X12_Y4_N12
\IA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IA~0_combout\ = (\T6~input_o\ & ((\cmd_LD~input_o\) # (!\EDR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T6~input_o\,
	datac => \EDR~0_combout\,
	datad => \cmd_LD~input_o\,
	combout => \IA~0_combout\);

-- Location: LCCOMB_X12_Y4_N20
\IA$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \IA$latch~combout\ = (GLOBAL(\HALT~inputclkctrl_outclk\) & ((\IA$latch~combout\))) # (!GLOBAL(\HALT~inputclkctrl_outclk\) & (!\IA~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~0_combout\,
	datac => \HALT~inputclkctrl_outclk\,
	datad => \IA$latch~combout\,
	combout => \IA$latch~combout\);

-- Location: IOIBUF_X7_Y0_N1
\T7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T7,
	o => \T7~input_o\);

-- Location: LCCOMB_X12_Y4_N14
\EA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \EA~0_combout\ = (!\EDR~0_combout\ & \T7~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EDR~0_combout\,
	datac => \T7~input_o\,
	combout => \EA~0_combout\);

-- Location: LCCOMB_X12_Y4_N30
\EA$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \EA$latch~combout\ = (GLOBAL(\HALT~inputclkctrl_outclk\) & ((\EA$latch~combout\))) # (!GLOBAL(\HALT~inputclkctrl_outclk\) & (!\EA~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EA~0_combout\,
	datac => \EA$latch~combout\,
	datad => \HALT~inputclkctrl_outclk\,
	combout => \EA$latch~combout\);

-- Location: LCCOMB_X12_Y4_N24
\IPC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IPC~2_combout\ = (\T5~input_o\ & \cmd_add~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T5~input_o\,
	datad => \cmd_add~input_o\,
	combout => \IPC~2_combout\);

-- Location: LCCOMB_X29_Y4_N0
\ALU_ADD$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_ADD$latch~combout\ = (GLOBAL(\HALT~inputclkctrl_outclk\) & ((\ALU_ADD$latch~combout\))) # (!GLOBAL(\HALT~inputclkctrl_outclk\) & (!\IPC~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IPC~2_combout\,
	datac => \HALT~inputclkctrl_outclk\,
	datad => \ALU_ADD$latch~combout\,
	combout => \ALU_ADD$latch~combout\);

-- Location: LCCOMB_X12_Y4_N26
\IPC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IPC~3_combout\ = (\cmd_sub~input_o\ & \T5~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_sub~input_o\,
	datac => \T5~input_o\,
	combout => \IPC~3_combout\);

-- Location: LCCOMB_X14_Y4_N24
\ALU_SUB$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_SUB$latch~combout\ = (GLOBAL(\HALT~inputclkctrl_outclk\) & ((\ALU_SUB$latch~combout\))) # (!GLOBAL(\HALT~inputclkctrl_outclk\) & (!\IPC~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IPC~3_combout\,
	datac => \HALT~inputclkctrl_outclk\,
	datad => \ALU_SUB$latch~combout\,
	combout => \ALU_SUB$latch~combout\);

-- Location: LCCOMB_X12_Y4_N28
\IPC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IPC~4_combout\ = (\cmd_and~input_o\ & \T5~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_and~input_o\,
	datac => \T5~input_o\,
	combout => \IPC~4_combout\);

-- Location: LCCOMB_X10_Y4_N24
\ALU_AND$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_AND$latch~combout\ = (GLOBAL(\HALT~inputclkctrl_outclk\) & ((\ALU_AND$latch~combout\))) # (!GLOBAL(\HALT~inputclkctrl_outclk\) & (!\IPC~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IPC~4_combout\,
	datac => \HALT~inputclkctrl_outclk\,
	datad => \ALU_AND$latch~combout\,
	combout => \ALU_AND$latch~combout\);

-- Location: LCCOMB_X12_Y4_N22
\ALU_SHL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_SHL~0_combout\ = (\T5~input_o\ & \cmd_shl~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T5~input_o\,
	datad => \cmd_shl~input_o\,
	combout => \ALU_SHL~0_combout\);

-- Location: LCCOMB_X13_Y5_N0
\ALU_SHL$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_SHL$latch~combout\ = (GLOBAL(\HALT~inputclkctrl_outclk\) & ((\ALU_SHL$latch~combout\))) # (!GLOBAL(\HALT~inputclkctrl_outclk\) & (!\ALU_SHL~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_SHL~0_combout\,
	datac => \HALT~inputclkctrl_outclk\,
	datad => \ALU_SHL$latch~combout\,
	combout => \ALU_SHL$latch~combout\);

-- Location: LCCOMB_X18_Y20_N2
\ESUM$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ESUM$latch~combout\ = (GLOBAL(\HALT~inputclkctrl_outclk\) & ((\ESUM$latch~combout\))) # (!GLOBAL(\HALT~inputclkctrl_outclk\) & (!\EDR~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EDR~1_combout\,
	datac => \HALT~inputclkctrl_outclk\,
	datad => \ESUM$latch~combout\,
	combout => \ESUM$latch~combout\);

-- Location: LCCOMB_X14_Y4_N18
\IIR$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \IIR$latch~combout\ = (GLOBAL(\HALT~inputclkctrl_outclk\) & ((\IIR$latch~combout\))) # (!GLOBAL(\HALT~inputclkctrl_outclk\) & (!\T2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T2~input_o\,
	datac => \HALT~inputclkctrl_outclk\,
	datad => \IIR$latch~combout\,
	combout => \IIR$latch~combout\);

-- Location: IOIBUF_X34_Y17_N1
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

ww_IPC <= \IPC~output_o\;

ww_IMAR <= \IMAR~output_o\;

ww_IDR <= \IDR~output_o\;

ww_EDR <= \EDR~output_o\;

ww_IA <= \IA~output_o\;

ww_EA <= \EA~output_o\;

ww_ALU_ADD <= \ALU_ADD~output_o\;

ww_ALU_SUB <= \ALU_SUB~output_o\;

ww_ALU_AND <= \ALU_AND~output_o\;

ww_ALU_SHL <= \ALU_SHL~output_o\;

ww_ESUM <= \ESUM~output_o\;

ww_IIR <= \IIR~output_o\;
END structure;


