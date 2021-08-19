LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
ENTITY IR IS --指令寄存器
PORT( 
	DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入
	IIR:IN STD_LOGIC; --使能。低有效
	CLK:IN STD_LOGIC; --时钟沿
	cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_or,cmd_xor,cmd_not,cmd_neg,cmd_shl,cmd_shr,HALT: OUT STD_LOGIC ); 
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
		WHEN "00111110" => cmd_LD<='1';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_or<='0';cmd_xor<='0';cmd_not<='0';cmd_neg<='0';cmd_shl<='0';cmd_shr<='0';HALT<='0'; 
		WHEN "11000110" => cmd_LD<='0';cmd_add<='1';cmd_sub<='0';cmd_and<='0';cmd_or<='0';cmd_xor<='0';cmd_not<='0';cmd_neg<='0';cmd_shl<='0';cmd_shr<='0';HALT<='0';
		WHEN "00110011" => cmd_LD<='0';cmd_add<='0';cmd_sub<='1';cmd_and<='0';cmd_or<='0';cmd_xor<='0';cmd_not<='0';cmd_neg<='0';cmd_shl<='0';cmd_shr<='0';HALT<='0';
		WHEN "01110001" => cmd_LD<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='1';cmd_or<='0';cmd_xor<='0';cmd_not<='0';cmd_neg<='0';cmd_shl<='0';cmd_shr<='0';HALT<='0';
		WHEN "10110110" => cmd_LD<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_or<='1';cmd_xor<='0';cmd_not<='0';cmd_neg<='0';cmd_shl<='0';cmd_shr<='0';HALT<='0';
		WHEN "01110110" => cmd_LD<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_or<='0';cmd_xor<='1';cmd_not<='0';cmd_neg<='0';cmd_shl<='0';cmd_shr<='0';HALT<='0';
		WHEN "11000001" => cmd_LD<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_or<='0';cmd_xor<='0';cmd_not<='1';cmd_neg<='0';cmd_shl<='0';cmd_shr<='0';HALT<='0';
		WHEN "11000010" => cmd_LD<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_or<='0';cmd_xor<='0';cmd_not<='0';cmd_neg<='1';cmd_shl<='0';cmd_shr<='0';HALT<='0';
		WHEN "11000011" => cmd_LD<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_or<='0';cmd_xor<='0';cmd_not<='0';cmd_neg<='0';cmd_shl<='1';cmd_shr<='0';HALT<='0';
		WHEN "11000100" => cmd_LD<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_or<='0';cmd_xor<='0';cmd_not<='0';cmd_neg<='0';cmd_shl<='0';cmd_shr<='1';HALT<='0';
		WHEN "11000101" => cmd_LD<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_or<='0';cmd_xor<='0';cmd_not<='0';cmd_neg<='0';cmd_shl<='0';cmd_shr<='0';HALT<='1';
		--00111110 LD
		--11000110 add
		--00110011 sub
		--01110001 and
		--10110110 or
		--01110110 xor
		--11000001 not
		--11000010 neg
		--11000011 shl
		--11000100 shr
		--11000101 hlt
		WHEN OTHERS =>cmd_LD<='0';cmd_add<='0';cmd_sub<='0';cmd_and<='0';cmd_or<='0';cmd_xor<='0';cmd_not<='0';cmd_neg<='0';cmd_shl<='0';cmd_shr<='0';HALT<='0'; 
	END CASE; 
	END PROCESS; 
END IR_arch;