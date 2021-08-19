LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
ENTITY IR IS --指令寄存器
PORT( 
	DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入
	IIR:IN STD_LOGIC; --使能。低有效
	CLK:IN STD_LOGIC; --时钟沿
	cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT: OUT STD_LOGIC ); 
END IR; 

ARCHITECTURE IR_arch OF IR IS 
SIGNAL REGQ: STD_LOGIC_VECTOR(7 DOWNTO 0);--中间信号
BEGIN 
	PROCESS(CLK,IIR) 
	BEGIN 
	IF(rising_edge(CLK)) THEN 
		IF(IIR='0') THEN 
			REGQ<=DATA_IN; 
		END IF; 
	END IF; 
	END PROCESS; 
 
	PROCESS(CLK,REGQ) 
	BEGIN 
	CASE REGQ IS 
		WHEN "00111110" => cmd_LD<='1';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_shl<='0';HALT<='0'; 
		WHEN "11000110" => cmd_LD<='0';cmd_add<='1';cmd_sub<='0';cmd_and<='0';cmd_shl<='0';HALT<='0'; 
		WHEN "00110011" => cmd_LD<='0';cmd_add<='0';cmd_sub<='1';cmd_and<='0';cmd_shl<='0';HALT<='0'; 
		WHEN "01110001" => cmd_LD<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='1';cmd_shl<='0';HALT<='0'; 
		WHEN "10110110" => cmd_LD<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_shl<='1';HALT<='0'; 
		WHEN "01110110" => cmd_LD<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_shl<='0';HALT<='1'; 
		WHEN OTHERS =>NULL; 
	END CASE; 
	END PROCESS; 
END IR_arch;