LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
ENTITY MAR IS --保存当前 CPU 所访问的主存储器单元的地址
PORT( 
	Address_In:IN STD_LOGIC_VECTOR(5 DOWNTO 0); 
	IMAR:IN STD_LOGIC; 
	CLK:IN STD_LOGIC; 
	Address_Out:OUT STD_LOGIC_VECTOR(5 DOWNTO 0) );
END MAR; 
 
ARCHITECTURE MAR_arch OF MAR IS 
BEGIN 
	PROCESS(CLK,IMAR,Address_In) 
	BEGIN 
	IF(rising_edge(CLK)) THEN 
		IF(IMAR='0') THEN 
			Address_Out<=Address_In; 
		END IF; 
	END IF; 
	END PROCESS; 
END MAR_arch;