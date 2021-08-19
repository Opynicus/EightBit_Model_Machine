LIBRARY ieee  ;  
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE ieee.numeric_std.all  ;
ENTITY ACC_tb IS 
END ACC_tb; 
ARCHITECTURE ACC_tb_arch OF ACC_tb IS
		SIGNAL DATA_IN: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000"; --输入
		SIGNAL IA: STD_LOGIC := '0'; --输入控制信号
		SIGNAL EA: STD_LOGIC := '0'; --输出控制信号
		SIGNAL CLK: STD_LOGIC := '0'; 
		SIGNAL DATA_OUT: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000"; --输出  
COMPONENT ACC  
PORT( 
	DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入
	IA:IN STD_LOGIC; --输入控制信号
	EA:IN STD_LOGIC; --输出控制信号
	CLK:IN STD_LOGIC; 
	DATA_OUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0) ); --输出 
END COMPONENT ;

BEGIN
EUT: ACC  PORT MAP (DATA_IN, IA, EA, CLK , DATA_OUT);
--CLK
process
	begin
	 CLK <= '0'; wait for 20 ns;
	 CLK <= '1'; wait for 20 ns;
end process;
--IA周期是CLK的2倍
process
	begin
	 IA <= '0'; wait for 40 ns;
	 IA <= '1'; wait for 40 ns;
end process;

process
begin
 EA <= '0'; wait for 80 ns;
 EA <= '1'; wait for 80 ns;
end process;

process begin 
	IF (DATA_IN < "11111111") THEN
		 wait for 40 ns; DATA_IN <= DATA_IN + 1;
	ELSE
		DATA_IN <= "00000000";
	END IF;
end process;
end ACC_tb_arch;