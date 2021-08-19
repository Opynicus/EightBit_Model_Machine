LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pulseGen_TB IS
END pulseGen_TB;
ARCHITECTURE pulseGen_arch OF pulseGen_TB IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CLR : STD_LOGIC;
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
END LOOP;
END PROCESS t_prcs_CLK;

-- CLR
t_prcs_CLR: PROCESS
BEGIN
	CLR <= '0';
	WAIT FOR 20000 ps;
	CLR <= '1';
WAIT;
END PROCESS t_prcs_CLR;
END pulseGen_arch;