LIBRARY ieee  ;  
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE ieee.numeric_std.all  ;
ENTITY EightBit_Computer_tb IS 
END EightBit_Computer_tb; 

ARCHITECTURE EightBit_Computer_tb_arch OF EightBit_Computer_tb IS
		SIGNAL CLK_50M,CLR,rst,clk_out:  STD_LOGIC := '0'; 
		SIGNAL OUTPUT,r_out,d_out:  STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
		SIGNAL LD1,ADD1,SUB1,AND1,OR1,XOR1,NOT1,NEG1,SHL1,SHR1,HALT1: STD_LOGIC:= '0';
COMPONENT EightBit_Computer
PORT(
    CLK_50Mhz,CLR,reset: IN STD_LOGIC;
	clk_out: OUT STD_LOGIC;
	r_out,d_out: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	cmd_LD1,cmd_add1,cmd_sub1,cmd_and1,cmd_or1,cmd_xor1,cmd_not1,cmd_neg1,cmd_shl1,cmd_shr1,HALT1:OUT STD_LOGIC;
	OUTPUT: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END COMPONENT ;

BEGIN
EUT: EightBit_Computer PORT MAP (CLK_50M,CLR,rst,clk_out,r_out,d_out,LD1,ADD1,SUB1,AND1,OR1,XOR1,NOT1,NEG1,SHL1,SHR1,HALT1,OUTPUT);
--clock generation
process begin
	wait for 10 ns; CLK_50M <= '1';
	wait for 10 ns; CLK_50M <= '0';
end process;
--generate reset
process begin
	clr <= '0'; rst <= '0'; wait for 8 ns;
	clr <= '1'; rst <= '1'; wait;
end process;
end EightBit_Computer_tb_arch;
