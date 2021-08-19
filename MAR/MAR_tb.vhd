--MAR测试向量
LIBRARY ieee  ;  
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE ieee.numeric_std.all  ;
ENTITY MAR_tb IS 
END MAR_tb; 

ARCHITECTURE MAR_tb_arch OF MAR_tb IS
		SIGNAL IMAR,CLK: STD_LOGIC  := '0'; 
		SIGNAL Address_In,Address_Out: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
COMPONENT MAR  
PORT( 
	Address_In:IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
	IMAR:IN STD_LOGIC; 
	CLK:IN STD_LOGIC; 
	Address_Out:OUT STD_LOGIC_VECTOR(3 DOWNTO 0) );
END COMPONENT ;

BEGIN
EUT: MAR  PORT MAP (Address_In, IMAR, CLK, Address_Out);
--产生时钟
process
	begin
	clk <= '0'; wait for 10 ns;
	clk <= '1'; wait for 10 ns; 
end process;

process begin 
	IMAR <= '0'; wait;
end process;
process begin 
	IF (Address_In < "1101") THEN
		Address_In <= Address_In + 1; wait for 20 ns; 
	ELSE
		Address_In <= "0000"; wait for 20 ns;
	END IF;
end process;
end MAR_tb_arch;