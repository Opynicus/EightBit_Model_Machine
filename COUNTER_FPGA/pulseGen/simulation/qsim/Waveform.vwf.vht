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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/28/2021 20:50:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pulseGen
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pulseGen_vhd_vec_tst IS
END pulseGen_vhd_vec_tst;
ARCHITECTURE pulseGen_arch OF pulseGen_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CLR : STD_LOGIC;
SIGNAL SEL0 : STD_LOGIC;
SIGNAL T0 : STD_LOGIC;
SIGNAL T1 : STD_LOGIC;
SIGNAL T2 : STD_LOGIC;
SIGNAL T3 : STD_LOGIC;
SIGNAL T4 : STD_LOGIC;
SIGNAL T5 : STD_LOGIC;
SIGNAL T6 : STD_LOGIC;
SIGNAL T7 : STD_LOGIC;
COMPONENT pulseGen
	PORT (
	CLK : IN STD_LOGIC;
	CLR : IN STD_LOGIC;
	SEL0 : OUT STD_LOGIC;
	T0 : OUT STD_LOGIC;
	T1 : OUT STD_LOGIC;
	T2 : OUT STD_LOGIC;
	T3 : OUT STD_LOGIC;
	T4 : OUT STD_LOGIC;
	T5 : OUT STD_LOGIC;
	T6 : OUT STD_LOGIC;
	T7 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pulseGen
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CLR => CLR,
	SEL0 => SEL0,
	T0 => T0,
	T1 => T1,
	T2 => T2,
	T3 => T3,
	T4 => T4,
	T5 => T5,
	T6 => T6,
	T7 => T7
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- CLR
t_prcs_CLR: PROCESS
BEGIN
	CLR <= '1';
	WAIT FOR 20000 ps;
	CLR <= '0';
	WAIT FOR 10000 ps;
	CLR <= '1';
	WAIT FOR 60000 ps;
	CLR <= '0';
	WAIT FOR 10000 ps;
	CLR <= '1';
WAIT;
END PROCESS t_prcs_CLR;
END pulseGen_arch;
