LIBRARY ieee  ;  
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE ieee.numeric_std.all  ;
ENTITY counter_tb IS 
END counter_tb; 
ARCHITECTURE counter_tb_arch OF counter_tb IS
		SIGNAL CLK,CLR,T0,T1,T2,T3,T4,T5,T6,T7:  STD_LOGIC  := '0'; 
COMPONENT COUNTER  
PORT( 
	CLK,CLR:IN STD_LOGIC; 
	T0,T1,T2,T3,T4,T5,T6,T7:OUT STD_LOGIC ); 
END COMPONENT ;
BEGIN
EUT: COUNTER  
PORT MAP (CLK,CLR,T0,T1,T2,T3,T4,T5,T6,T7);
--生成时钟
process
	begin
	 CLK <= '0';wait for 50 ns;
	 CLK <= '1';wait for 50 ns;
end process;
--清零
process
	begin
	clr <= '0'; wait for 20 ns;
	clr <= '1'; wait;
end process;
end counter_tb_arch;