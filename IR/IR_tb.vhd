LIBRARY ieee  ;  
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE ieee.numeric_std.all  ;

ENTITY IR_tb IS 
END IR_tb; 
ARCHITECTURE IR_tb_arch OF IR_tb IS
		SIGNAL DATA_IN :STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
		SIGNAL IIR, CLK, cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT:STD_LOGIC:= '0'; 
COMPONENT IR  
PORT( 
	DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入
	IIR:IN STD_LOGIC; --使能。低有效
	CLK:IN STD_LOGIC; 
	cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT: OUT STD_LOGIC ); 
END COMPONENT ;

BEGIN
EUT: IR PORT MAP ( DATA_IN, IIR, CLK,cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT);
--clock generation
process
	begin
	 CLK <= '0'; wait for 20 ns; 
	 CLK <= '1'; wait for 20 ns;
end process;

process 
    begin 
	DATA_IN <= "00111110"; wait for 40 ns;
	DATA_IN <= "11000110"; wait for 40 ns;
	DATA_IN <= "00110011"; wait for 40 ns;
	DATA_IN <= "01110001"; wait for 40 ns;
	DATA_IN <= "10110110"; wait for 40 ns;
	DATA_IN <= "01110110"; wait for 40 ns;
end process;
end IR_tb_arch;
