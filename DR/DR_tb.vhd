LIBRARY ieee  ;  
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE ieee.numeric_std.all  ;

ENTITY DR_tb IS 
END DR_tb; 

ARCHITECTURE DR_tb_arch OF DR_tb IS
		SIGNAL IDR,EDR,CLK:  STD_LOGIC  := '0'; 
		SIGNAL DATA_IN,DATA_OUT:  STD_LOGIC_VECTOR(7 downto 0)  := "00000000"; 
COMPONENT DR  
PORT( 
 DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
 IDR:IN STD_LOGIC; 
 EDR:IN STD_LOGIC; 
 CLK:IN STD_LOGIC; 
 DATA_OUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0) ); 
END COMPONENT ;

BEGIN
EUT: DR PORT MAP ( DATA_IN, IDR, EDR, CLK, DATA_OUT );
--产生时钟
process begin
	wait for 10 ns; clk <= '1';
	wait for 10 ns; clk <= '0';
end process;
--IDR
process begin
	wait for 20 ns; IDR <= '1';
	wait for 20 ns; IDR <= '0';
end process;
--EDR
process begin
	wait for 20 ns; EDR <= '1';
	wait for 20 ns; EDR <= '0';
end process;

	process begin 
IF (DATA_IN < "11111111") THEN
		 wait for 40 ns; DATA_IN <= DATA_IN + 1;
	ELSE
		DATA_IN <= "00000000";
	END IF;
	end process;
end DR_tb_arch;