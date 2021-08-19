LIBRARY ieee  ;  
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE ieee.numeric_std.all  ;
ENTITY CTRL_tb IS 
END CTRL_tb; 
ARCHITECTURE CTRL_tb_arch OF CTRL_tb IS
		SIGNAL cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT: STD_LOGIC := '0'; 
		SIGNAL CLK: STD_LOGIC := '0'; 
		SIGNAL T0,T1,T2,T3,T4,T5,T6,T7: STD_LOGIC := '0'; 
		SIGNAL IPC,IMAR,IDR,EDR,IA,EA,ALU_ADD,ALU_SUB,ALU_AND,ALU_SHL,ESUM,IIR: STD_LOGIC := '0'; --输出 
COMPONENT CTRL  
	PORT( 
	cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT:IN STD_LOGIC; --操作指令信号
	CLK:IN STD_LOGIC; 
	T0,T1,T2,T3,T4,T5,T6,T7:IN STD_LOGIC; --节拍脉冲
	IPC,IMAR,IDR,EDR,IA,EA,ALU_ADD,ALU_SUB,ALU_AND,ALU_SHL,ESUM,IIR:OUT STD_LOGIC ); --输出为十一个控制信号
END COMPONENT ;

BEGIN
EUT: CTRL  PORT MAP (cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT,CLK,T0,T1,T2,T3,T4,T5,T6,T7,
						IPC,IMAR,IDR,EDR,IA,EA,ALU_ADD,ALU_SUB,ALU_AND,ALU_SHL,ESUM,IIR);
--CLK
process
	begin
	 CLK <= '0'; wait for 20 ns;
	 CLK <= '1'; wait for 20 ns;
end process;
--ADD周期是CLK的2倍
process
	begin
	 cmd_add <= '0'; wait for 60 ns;
	 cmd_add <= '1'; wait for 60 ns;
end process;
--LD周期是CLK的2倍
process
	begin
	 cmd_LD <= '0'; wait for 40 ns;
	 cmd_LD <= '1'; wait for 40 ns;
end process;
--SUB周期是CLK的2倍
process
	begin
	 cmd_sub <= '0'; wait for 80 ns;
	 cmd_sub <= '1'; wait for 80 ns;
end process;
--A_AND周期是CLK的2倍
process
	begin
	 cmd_and <= '0'; wait for 100 ns;
	 cmd_and <= '1'; wait for 100 ns;
end process;
--A_SRL周期是CLK的2倍
process
	begin
	 cmd_shl <= '0'; wait for 120 ns;
	 cmd_shl <= '1'; wait for 120 ns;
end process;
--HALT周期是CLK的2倍,与他们相反
process
	begin
	 HALT <= '1'; wait for 140 ns;
	 HALT <= '0'; wait for 140 ns;
end process;
--节拍脉冲
process
	begin
	T0 <= '1'; T1 <= '0';T2 <= '0';T3 <= '0';T4 <= '0';T5 <= '0';T6 <= '0';T7 <= '0'; wait for 80 ns;
	T0 <= '0'; T1 <= '1';T2 <= '0';T3 <= '0';T4 <= '0';T5 <= '0';T6 <= '0';T7 <= '0'; wait for 80 ns;
	T0 <= '0'; T1 <= '0';T2 <= '1';T3 <= '0';T4 <= '0';T5 <= '0';T6 <= '0';T7 <= '0'; wait for 80 ns;
	T0 <= '0'; T1 <= '0';T2 <= '0';T3 <= '1';T4 <= '0';T5 <= '0';T6 <= '0';T7 <= '0'; wait for 80 ns;
	T0 <= '0'; T1 <= '1';T2 <= '0';T3 <= '0';T4 <= '1';T5 <= '0';T6 <= '0';T7 <= '0'; wait for 80 ns;
	T0 <= '0'; T1 <= '0';T2 <= '1';T3 <= '0';T4 <= '0';T5 <= '1';T6 <= '0';T7 <= '0'; wait for 80 ns;
	T0 <= '1'; T1 <= '0';T2 <= '0';T3 <= '0';T4 <= '0';T5 <= '0';T6 <= '1';T7 <= '0'; wait for 80 ns;
	T0 <= '0'; T1 <= '1';T2 <= '0';T3 <= '0';T4 <= '0';T5 <= '0';T6 <= '0';T7 <= '1'; wait for 80 ns;
end process;

end CTRL_tb_arch;