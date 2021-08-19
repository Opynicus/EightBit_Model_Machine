LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 
ENTITY PC IS --程序计数器
PORT( 
 IPC,CLK,CLR:IN STD_LOGIC; 
 PCOUT:OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
 ); 
END PC; 

ARCHITECTURE A OF PC IS 
SIGNAL QOUT: STD_LOGIC_VECTOR(3 DOWNTO 0); 
SIGNAL CLK_1HZ:STD_LOGIC:='0';

BEGIN
PROCESS(CLK)
	variable CLK_COUNT:integer range 0 to 24999999;
	BEGIN
		IF(clk'EVENT AND clk='1')THEN
			IF(CLK_COUNT<24999999)THEN
				CLK_COUNT:=CLK_COUNT+1;
			ELSE
				CLK_COUNT:=0;
				CLK_1HZ<=NOT(CLK_1HZ);
			END IF;
		END IF;
	END PROCESS;
 
 PROCESS(CLK_1HZ,CLR,IPC) 
 BEGIN 
 IF (CLR='0') THEN 
	QOUT<= "0000"; 
 ELSIF (rising_edge(CLK_1HZ)) THEN 
	IF (IPC='1') THEN 
		QOUT<= QOUT+1; --PC+1 
	END IF; 
 END IF; 
 END PROCESS; 
 PCOUT<= QOUT; 
END A;