LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 

ENTITY EightBit_Computer IS
PORT(
	CLK_50Mhz,CLR,reset: IN STD_LOGIC;
	clk_out: OUT STD_LOGIC;
	r_out,d_out: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	cmd_LD1,cmd_add1,cmd_sub1,cmd_and1,cmd_or1,cmd_xor1,cmd_not1,cmd_neg1,cmd_shl1,cmd_shr1,HALT1:OUT STD_LOGIC;
	OUTPUT: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END EightBit_Computer;

ARCHITECTURE EightBit_Computer_arch OF EightBit_Computer IS
SIGNAL CLK,T0,T1,T2,T3,T4,T5,T6,T7: STD_LOGIC := '0';
SIGNAL cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_or,cmd_xor,cmd_not,cmd_neg,cmd_shl,cmd_shr,HALT: STD_LOGIC := '0';
SIGNAL IPC,IMAR,IDR,EDR,IA,EA,ALU_ADD,ALU_SUB,ALU_AND,ALU_OR,ALU_XOR,ALU_NOT,ALU_NEG,ALU_SHL,ALU_SHR,ESUM,IIR: STD_LOGIC := '0'; --微指令输出
SIGNAL ACC_OUT,DR_OUT,ALU_OUT,RAM_OUT: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
SIGNAL PC_OUT,ADDR_OUT: STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
COMPONENT RAM IS 
PORT( 
	WR,CS:IN STD_LOGIC; --WR片选信号, CS读写控制端
	DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入的内存内容
	DATA_OUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0); --输出的是选中地址中相应的内容
	Address:IN STD_LOGIC_VECTOR(5 DOWNTO 0) ); --输入信号为地址信息
END COMPONENT; 

COMPONENT PC IS --程序计数器
PORT( 
 IPC,CLK,CLR:IN STD_LOGIC; 
 PC_out:OUT STD_LOGIC_VECTOR(5 DOWNTO 0) 
 ); 
END COMPONENT;

COMPONENT MAR IS --保存当前 CPU 所访问的主存储器单元的地址
PORT( 
	Address_In:IN STD_LOGIC_VECTOR(5 DOWNTO 0); 
	IMAR:IN STD_LOGIC; 
	CLK:IN STD_LOGIC; 
	Address_Out:OUT STD_LOGIC_VECTOR(5 DOWNTO 0) );
END COMPONENT;

COMPONENT IR IS --指令寄存器
PORT( 
	DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入
	IIR:IN STD_LOGIC; --使能。低有效
	CLK:IN STD_LOGIC; --时钟沿
	cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_or,cmd_xor,cmd_not,cmd_neg,cmd_shl,cmd_shr,HALT: OUT STD_LOGIC ); 
END COMPONENT;

COMPONENT DR IS --数据寄存器
PORT( 
	DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
	IDR:IN STD_LOGIC; 
	EDR:IN STD_LOGIC; 
	CLK:IN STD_LOGIC; 
	DATA_OUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0) ); 
END COMPONENT;

COMPONENT COUNTER IS --节拍发生器
PORT( 
	CLK,CLR:IN STD_LOGIC; 
	T0,T1,T2,T3,T4,T5,T6,T7:OUT STD_LOGIC ); 
END COMPONENT;

COMPONENT CTRL IS --控制器
PORT( 
	cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_or,cmd_xor,cmd_not,cmd_neg,cmd_shl,cmd_shr,HALT:IN STD_LOGIC; --操作指令信号
	CLK:IN STD_LOGIC; 
	T0,T1,T2,T3,T4,T5,T6,T7:IN STD_LOGIC; --节拍脉冲
	IPC,IMAR,IDR,EDR,IA,EA,ALU_ADD,ALU_SUB,ALU_AND,ALU_OR,ALU_XOR,ALU_NOT,ALU_NEG,ALU_SHL,ALU_SHR,ESUM,IIR:OUT STD_LOGIC ); --输出为十一个控制信号
END COMPONENT;

COMPONENT CLK_Generator IS
PORT(
	  CLK_50Mhz:IN STD_LOGIC; 
	  CLK:OUT STD_LOGIC); --时钟周期为1s
END COMPONENT;

COMPONENT ALU IS
port(
	clk:in std_logic;
	reset:in std_logic;--清零端
	 acc:in std_logic_vector(7 downto 0);--累加器 	
   reg:in std_logic_vector(7 downto 0);--数据寄存器 		
   cmd_add:in std_logic; --add加 	
   cmd_sub:in std_logic; --sub减	
   cmd_and:in std_logic; --and与
   cmd_or:in std_logic;
   cmd_xor:in std_logic; 
   cmd_not:in std_logic;
   cmd_neg:in std_logic;		
   cmd_shl:in std_logic; --shl左移 
   cmd_shr:in std_logic;	
   alu_out:out std_logic_vector(7 downto 0);
   esum: in std_logic	-- 输出控制命令
	); 
END COMPONENT;

COMPONENT ACC IS
PORT( 
	DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入
	IA:IN STD_LOGIC; --输入控制信号
	EA:IN STD_LOGIC; --输出控制信号
	CLK:IN STD_LOGIC; 
	DATA_OUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0) ); --输出
END COMPONENT;
BEGIN

M0: CLK_Generator PORT MAP (CLK_50Mhz, CLK); --时钟例化
M1: COUNTER PORT MAP (CLK, CLR, T0, T1, T2, T3, T4, T5, T6, T7); --节拍例化
M2: CTRL PORT MAP (cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_or,cmd_xor,cmd_not,cmd_neg,
cmd_shl,cmd_shr,HALT,CLK,T0,T1,T2,T3,T4,T5,T6,T7,IPC,IMAR,IDR,EDR,IA,EA,ALU_ADD,
ALU_SUB,ALU_AND,ALU_OR,ALU_XOR,ALU_NOT,ALU_NEG,ALU_SHL,ALU_SHR,ESUM,IIR); --控制器例化
M3: ALU PORT MAP(CLK,reset,ACC_OUT,DR_OUT,ALU_ADD,ALU_SUB,ALU_AND,ALU_OR,ALU_XOR,ALU_NOT,ALU_NEG,ALU_SHL,ALU_SHR,ALU_OUT,esum); --算数逻辑单元
M4: ACC PORT MAP(DR_OUT, IA, EA, CLK, ACC_OUT); --累加器
M5: DR  PORT MAP(RAM_OUT, IDR, EDR, CLK, DR_OUT); --数据寄存器
M6: PC  PORT MAP(IPC,CLK,CLR,PC_OUT);
M7: MAR PORT MAP(PC_OUT,IMAR,CLK,ADDR_OUT); 
M8: IR  PORT MAP(DR_OUT,IIR,CLK,cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_or,cmd_xor,cmd_not,cmd_neg,cmd_shl,cmd_shr,HALT); --指令寄存器
M9: RAM PORT MAP('1','0',"00000000",RAM_OUT,ADDR_OUT); --存储器
OUTPUT <= ALU_OUT;
r_out <= ACC_OUT;
d_out <= DR_OUT;
clk_out <= clk;
cmd_LD1<=cmd_LD; cmd_add1<=cmd_add; cmd_sub1<=cmd_sub; cmd_and1<=cmd_and; 
cmd_or1<=cmd_or;cmd_xor1<=cmd_xor;cmd_not1<=cmd_not;cmd_neg1<=cmd_neg;
cmd_shl1<=cmd_shl; cmd_shr1<=cmd_shr;HALT1<=HALT;
END EightBit_Computer_arch;