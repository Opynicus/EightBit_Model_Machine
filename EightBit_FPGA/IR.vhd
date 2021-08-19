LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
ENTITY IR IS --指令寄存器
PORT( 
	DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入
	IIR:IN STD_LOGIC; --使能。低有效
	CLK:IN STD_LOGIC; --时钟沿
	cmd_ld,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT: OUT STD_LOGIC ); 
END IR; 

ARCHITECTURE DATAFLOW OF IR IS 
SIGNAL REGQ: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN 
	PROCESS(CLK,IIR) 
	BEGIN 
	IF(CLK'EVENT and CLK='1') THEN 
		IF(IIR='0') THEN 
			REGQ<=DATA_IN; 
		END IF; 
	END IF; 
	END PROCESS; 
 
	PROCESS(CLK,REGQ) 
	BEGIN 
	CASE REGQ IS 
		WHEN "11000001" => cmd_ld<='1';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_shl<='0';HALT<='0'; --cmd_ld
		WHEN "11000010" => cmd_ld<='0';cmd_add<='1';cmd_sub<='0';cmd_and<='0';cmd_shl<='0';HALT<='0'; --cmd_add
		WHEN "11000011" => cmd_ld<='0';cmd_add<='0';cmd_sub<='1';cmd_and<='0';cmd_shl<='0';HALT<='0'; --cmd_sub
		WHEN "11000100" => cmd_ld<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='1';cmd_shl<='0';HALT<='0'; --cmd_and
		WHEN "11000101" => cmd_ld<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_shl<='1';HALT<='0'; --cmd_shl
		WHEN "11000000" => cmd_ld<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_shl<='0';HALT<='1'; --HALT
		WHEN OTHERS =>NULL; 
	END CASE; 
	END PROCESS; 
END DATAFLOW;