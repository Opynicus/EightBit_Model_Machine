LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 

ENTITY CTRL IS 
	PORT( 
	cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_or,cmd_xor,cmd_not,cmd_neg,cmd_shl,cmd_shr,HALT:IN STD_LOGIC; --操作指令信号
	CLK:IN STD_LOGIC; 
	T0,T1,T2,T3,T4,T5,T6,T7:IN STD_LOGIC; --节拍脉冲
	IPC,IMAR,IDR,EDR,IA,EA,ALU_ADD,ALU_SUB,ALU_AND,ALU_OR,ALU_XOR,ALU_NOT,ALU_NEG,ALU_SHL,ALU_SHR,ESUM,IIR:OUT STD_LOGIC ); --输出为十一个控制信号
END ENTITY; 

ARCHITECTURE CTRL_arch OF CTRL IS 
BEGIN 
	PROCESS(CLK,cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT,T0,T1,T2,T3,T4,T5,T6,T7) 
	BEGIN 
	IF(HALT='1')THEN 
		IPC<='0'; 	
	ELSE 
		IMAR<= NOT(T0 OR (T3 AND cmd_LD) OR (T3 AND cmd_add) OR (T3 AND cmd_sub) OR (T3 AND cmd_and) OR (T3 AND cmd_or) OR (T3 AND cmd_xor) OR (T3 AND cmd_not) OR (T3 AND cmd_neg) OR (T3 AND cmd_shl)OR (T3 AND cmd_shr)); 
		IIR <= NOT T2; 
		IA  <= NOT((T6 AND cmd_LD) OR (T6 AND cmd_add) OR (T6 AND cmd_sub) OR (T6 AND cmd_and) OR (T6 AND cmd_or) OR (T6 AND cmd_xor) OR (T6 AND cmd_not) OR (T6 AND cmd_neg) OR (T6 AND cmd_shl)OR (T6 AND cmd_shr)); 
		IDR <= T1 OR (T4 AND cmd_LD) OR (T4 AND cmd_add) OR (T4 AND cmd_sub) OR (T4 AND cmd_and) OR (T4 AND cmd_or) OR (T4 AND cmd_xor) OR (T4 AND cmd_not) OR (T4 AND cmd_neg) OR (T4 AND cmd_shl)OR (T4 AND cmd_shr); 
		IPC <= T2 OR (T5 AND cmd_LD) OR (T5 AND cmd_add) OR (T5 AND cmd_sub) OR (T5 AND cmd_and) OR (T5 AND cmd_or) OR (T5 AND cmd_xor); 
		ALU_ADD <= NOT(T5 AND cmd_add); --加法
		ALU_SUB <= NOT(T5 AND cmd_sub); --减法
		ALU_AND <= NOT(T5 AND cmd_and); --与运算
		ALU_OR<=NOT(T5 AND cmd_or);
		ALU_XOR<=NOT(T5 AND cmd_xor);
		ALU_NOT<=NOT(T5 AND cmd_not);
		ALU_NEG<=NOT(T5 AND cmd_neg);
		ALU_SHL <= NOT(T5 AND cmd_shl); --左移
		ALU_SHR<=NOT(T5 AND cmd_shr);
		ESUM<=NOT((T6 AND cmd_add) OR (T6 AND cmd_sub) OR (T6 AND cmd_and) OR (T6 AND cmd_or) OR (T6 AND cmd_xor) OR (T6 AND cmd_not) OR (T6 AND cmd_neg) OR (T6 AND cmd_shl)OR (T6 AND cmd_shr));
		EA <='0'; --NOT((T7 AND cmd_add) OR (T7 AND cmd_sub) OR (T7 AND cmd_and) OR (T7 AND cmd_shl));--(T7 AND cmd_add) OR (T7 AND cmd_sub) OR (T7 AND cmd_and) OR (T7 AND cmd_shl); 0;
		EDR<= '0';--(T6 AND cmd_add) OR (T6 AND cmd_sub) OR (T6 AND cmd_and) OR (T6 AND cmd_shl); 
	END IF; 
	END PROCESS; 
END CTRL_arch;