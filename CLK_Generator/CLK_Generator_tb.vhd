LIBRARY ieee  ;  
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE ieee.numeric_std.all  ;

ENTITY CLK_Generator_tb IS 
END CLK_Generator_tb; 

--被测试实体(EUT)须要声明为元件，端口必须与EUT中声明的端口严格匹配
ARCHITECTURE CLK_Generator_tb_arch OF CLK_Generator_tb IS
		SIGNAL CLK_50Mhz, CLK: STD_LOGIC := '0'; 
COMPONENT CLK_SOURCE IS
	PORT( 
	CLK_50Mhz:IN STD_LOGIC; --时钟频率为 50MHZ 即周期为 20ns
	CLK: OUT STD_LOGIC ); --时钟周期为 0.2s
END COMPONENT ;

BEGIN
EUT: CLK_SOURCE PORT MAP (CLK_50Mhz,CLK);
--产生时钟
process begin
	 wait for 10 ns;  CLK_50Mhz <= '1';
	 wait for 10 ns;  CLK_50Mhz<= '0';
end process;
end CLK_Generator_tb_arch;