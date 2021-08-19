LIBRARY ieee  ;  
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE ieee.numeric_std.all  ;

ENTITY PC_tb IS 
END PC_tb; 

ARCHITECTURE PC_tb_arch OF PC_tb IS
		SIGNAL IPC,CLK,CLR: STD_LOGIC := '0'; 
		SIGNAL PC_out: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
COMPONENT PC  
PORT( 
 IPC,CLK,CLR:IN STD_LOGIC; 
 PC_out:OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
 ); 
END COMPONENT ;

BEGIN
EUT: PC  PORT MAP (IPC, CLK, CLR, PC_out);
--clock generation
process
	begin
	clk <= '0'; wait for 10 ns;
	clk <= '1'; wait for 10 ns; 
end process;
--generate reset
process
		begin
		clr <= '0'; wait for 16 ns;
		clr <= '1'; wait;
end process;

process
        begin 
		IPC<='1'; wait;
	end process;
end PC_tb_arch;