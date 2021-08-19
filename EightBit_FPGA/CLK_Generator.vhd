LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 

ENTITY CLK_Generator IS 
PORT(
	  CLK_50Mhz:IN STD_LOGIC; 
	  CLK:OUT STD_LOGIC); --时钟周期为1s
END ENTITY; 

ARCHITECTURE CLK_Generator_arch OF CLK_Generator IS 
SIGNAL CLK_TEMP:STD_LOGIC:= '0'; 
BEGIN 
CLK <= CLK_TEMP; 
PROCESS(CLK_50Mhz,CLK_TEMP) 
VARIABLE COUNTER:INTEGER RANGE 0 TO 25; --25000000
BEGIN 
	IF(COUNTER = 25)THEN 
		COUNTER:=0; 
		CLK_TEMP <= NOT CLK_TEMP; --取反
	ELSIF(Rising_edge(CLK_50Mhz))THEN 
		COUNTER := COUNTER+1; 
	END IF; 
END PROCESS; 
END CLK_Generator_arch;