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

-- DATE "06/07/2021 16:45:59"

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

ENTITY 	MAR IS
    PORT (
	Address_In : IN std_logic_vector(3 DOWNTO 0);
	IMAR : IN std_logic;
	CLK : IN std_logic;
	Address_Out : OUT std_logic_vector(3 DOWNTO 0)
	);
END MAR;

-- Design Ports Information
-- Address_Out[0]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_Out[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_Out[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_Out[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_In[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMAR	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_In[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_In[2]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_In[3]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MAR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Address_In : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_IMAR : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Address_Out : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Address_Out[0]~output_o\ : std_logic;
SIGNAL \Address_Out[1]~output_o\ : std_logic;
SIGNAL \Address_Out[2]~output_o\ : std_logic;
SIGNAL \Address_Out[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Address_In[0]~input_o\ : std_logic;
SIGNAL \IMAR~input_o\ : std_logic;
SIGNAL \Address_Out[0]~reg0_q\ : std_logic;
SIGNAL \Address_In[1]~input_o\ : std_logic;
SIGNAL \Address_Out[1]~reg0_q\ : std_logic;
SIGNAL \Address_In[2]~input_o\ : std_logic;
SIGNAL \Address_Out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Address_Out[2]~reg0_q\ : std_logic;
SIGNAL \Address_In[3]~input_o\ : std_logic;
SIGNAL \Address_Out[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_IMAR~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Address_In <= Address_In;
ww_IMAR <= IMAR;
ww_CLK <= CLK;
Address_Out <= ww_Address_Out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_IMAR~input_o\ <= NOT \IMAR~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N16
\Address_Out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_Out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_Out[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\Address_Out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_Out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_Out[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Address_Out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_Out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_Out[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Address_Out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_Out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_Out[3]~output_o\);

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

-- Location: IOIBUF_X0_Y18_N22
\Address_In[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address_In(0),
	o => \Address_In[0]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\IMAR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMAR,
	o => \IMAR~input_o\);

-- Location: FF_X1_Y4_N25
\Address_Out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Address_In[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_IMAR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_Out[0]~reg0_q\);

-- Location: IOIBUF_X0_Y6_N22
\Address_In[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address_In(1),
	o => \Address_In[1]~input_o\);

-- Location: FF_X1_Y4_N11
\Address_Out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Address_In[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_IMAR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_Out[1]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N22
\Address_In[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address_In(2),
	o => \Address_In[2]~input_o\);

-- Location: LCCOMB_X1_Y4_N12
\Address_Out[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address_Out[2]~reg0feeder_combout\ = \Address_In[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address_In[2]~input_o\,
	combout => \Address_Out[2]~reg0feeder_combout\);

-- Location: FF_X1_Y4_N13
\Address_Out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Address_Out[2]~reg0feeder_combout\,
	ena => \ALT_INV_IMAR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_Out[2]~reg0_q\);

-- Location: IOIBUF_X3_Y0_N1
\Address_In[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address_In(3),
	o => \Address_In[3]~input_o\);

-- Location: FF_X1_Y4_N15
\Address_Out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Address_In[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_IMAR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_Out[3]~reg0_q\);

ww_Address_Out(0) <= \Address_Out[0]~output_o\;

ww_Address_Out(1) <= \Address_Out[1]~output_o\;

ww_Address_Out(2) <= \Address_Out[2]~output_o\;

ww_Address_Out(3) <= \Address_Out[3]~output_o\;
END structure;


