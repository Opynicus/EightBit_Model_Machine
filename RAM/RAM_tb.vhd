LIBRARY ieee  ;  
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE ieee.numeric_std.all  ;

ENTITY RAM_tb IS 
END RAM_tb; 

ARCHITECTURE RAM_tb_arch OF RAM_tb IS
		SIGNAL WR,CS: STD_LOGIC := '0'; 
		SIGNAL DATA_IN,DATA_OUT: STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";
		SIGNAL Address: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
COMPONENT RAM  
 PORT( 
	WR,CS:IN STD_LOGIC; 
	DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
	DATA_OUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0); 
	Address:IN STD_LOGIC_VECTOR(3 DOWNTO 0) ); 
END COMPONENT ;

BEGIN
EUT: RAM  PORT MAP (WR,CS, DATA_IN, DATA_OUT, Address);
process begin 
	CS <= '0'; wait for 20 ns;
end process;
process begin 
	WR <= '1'; wait for 20 ns;
end process;
process begin 
	IF (Address < "1101") THEN
	wait for 20 ns; Address <= Address + 1; 
	ELSE
	wait for 20 ns; Address <= "0000"; 
	END IF;
end process;
end RAM_tb_arch;