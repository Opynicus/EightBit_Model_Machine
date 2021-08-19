LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 

ENTITY EightBit IS
PORT(
	CLK_50M,CLR,rst: IN STD_LOGIC;
	clk_out: OUT STD_LOGIC;
	r_out,d_out: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	cmd_LD1,cmd_add1,cmd_sub1,cmd_and1,cmd_shl1,HALT1:OUT STD_LOGIC;
	OUTPUT: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	sel:out std_logic_vector(3 downto 0)
);
END EightBit;

ARCHITECTURE EightBit_arch OF EightBit IS
SIGNAL CLK,T0,T1,T2,T3,T4,T5,T6,T7: STD_LOGIC := '0';
SIGNAL cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT: STD_LOGIC := '0';
SIGNAL IPC,IMAR,IDR,EDR,IA,EA,ALU_ADD,ALU_SUB,ALU_AND,ALU_SHL,ESUM,IIR: STD_LOGIC := '0'; --微指令输出
SIGNAL ACC_OUT,DR_OUT,ALU_OUT,RAM_OUT: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PC_OUT,ADDR_OUT: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";

signal se : std_logic_vector( 3 downto 0 ); --选择输出译码管
signal hex_0,hex_1:std_logic_vector( 7 downto 0 );
signal cout :std_logic_vector( 7 downto 0 ):="00000000";--输出八位

SIGNAL CLK_10:STD_LOGIC:='0';

component decode is port 
(		clk : in std_logic;--时钟信号输入端
		output:in std_logic_vector(7 downto 0);--最大255
		hex_0,hex_1 : buffer std_logic_vector( 7 downto 0 )--编码输出
);
end component;
	
component display is port
(
		clk_50m : in std_logic;--50M晶振脉冲输入
		--mode:in bit_vector(2 downto 0);
		hex_0,hex_1 : in std_logic_vector( 7 downto 0 );--output
		cout : buffer std_logic_vector( 7 downto 0 ):="00000000";--输出八位
		se : out std_logic_vector( 3 downto 0 )  --选择输出译码管
);
end component;

COMPONENT ALU IS
PORT(
	rst:in std_logic;
	acc:in std_logic_vector(7 downto 0);--累加器 	
  dr:in std_logic_vector(7 downto 0);--数据寄存器 		
   cmd_add:in std_logic; --add加 	
   cmd_sub:in std_logic; --sub减	
   cmd_and:in std_logic; --and与 		
   cmd_shl:in std_logic; --shl左移 	
   alu_out:out std_logic_vector(7 downto 0)); --alu计算结果
END COMPONENT;

COMPONENT ACC IS
PORT( 
	DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入
	IA:IN STD_LOGIC; --输入控制信号
	EA:IN STD_LOGIC; --输出控制信号
	CLK:IN STD_LOGIC; 
	DATA_OUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0) ); --输出
END COMPONENT;

COMPONENT CTRL IS --控制器
PORT( 
	cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT:IN STD_LOGIC; --操作指令信号
	CLK:IN STD_LOGIC; 
	T0,T1,T2,T3,T4,T5,T6,T7:IN STD_LOGIC; --节拍脉冲
	IPC,IMAR,IDR,EDR,IA,EA,ALU_ADD,ALU_SUB,ALU_AND,ALU_SHL,IIR:OUT STD_LOGIC ); --输出为十一个控制信号
END COMPONENT;

COMPONENT MAR IS --保存当前 CPU 所访问的主存储器单元的地址
PORT( 
	ADDR_IN:IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
	IMAR:IN STD_LOGIC; 
	CLK:IN STD_LOGIC; 
	ADDR_OUT:OUT STD_LOGIC_VECTOR(3 DOWNTO 0) );
END COMPONENT;

COMPONENT PC IS --程序计数器
PORT( 
	IPC,CLK,CLR:IN STD_LOGIC; 
	PCOUT:OUT STD_LOGIC_VECTOR(3 DOWNTO 0)  ); 
END COMPONENT;

COMPONENT DR IS --数据寄存器
PORT( 
	DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
	IDR:IN STD_LOGIC; 
	EDR:IN STD_LOGIC; 
	CLK:IN STD_LOGIC; 
	DATA_OUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0) ); 
END COMPONENT;

COMPONENT RAM IS 
PORT( 
	DIN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入的内存内容
	DOUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0); --输出的是选中地址中相应的内容
	ADDR:IN STD_LOGIC_VECTOR(3 DOWNTO 0) ); --输入信号为地址信息
END COMPONENT; 

COMPONENT COUNTER IS --节拍发生器
PORT( 
	CLK,CLR:IN STD_LOGIC; 
	T0,T1,T2,T3,T4,T5,T6,T7:OUT STD_LOGIC ); 
END COMPONENT;

COMPONENT CLK_Generator IS
PORT(
	  CLK_50Mhz:IN STD_LOGIC; 
	  CLK:OUT STD_LOGIC); --时钟周期为1s
END COMPONENT;

COMPONENT IR IS --指令寄存器
PORT( 
	DATA_IN:IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入
	IIR:IN STD_LOGIC; --使能。低有效
	CLK:IN STD_LOGIC; --时钟沿
	cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT: OUT STD_LOGIC ); 
END COMPONENT;

BEGIN
M0: CLK_Generator PORT MAP (CLK_50M, CLK); --时钟例化
M1: COUNTER PORT MAP (CLK, CLR, T0, T1, T2, T3, T4, T5, T6, T7); --节拍例化
M2: CTRL PORT MAP (cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT,CLK,T0,T1,T2,T3,T4,T5,T6,T7, --控制器例化
						IPC,IMAR,IDR,EDR,IA,EA,ALU_ADD,ALU_SUB,ALU_AND,ALU_SHL,IIR); 
M3: ALU PORT MAP(rst,ACC_OUT,DR_OUT,ALU_ADD,ALU_SUB,ALU_AND,ALU_SHL,ALU_OUT); --算数逻辑单元
M4: ACC PORT MAP(DR_OUT, IA, EA, CLK, ACC_OUT); --累加器
M5: DR  PORT MAP(RAM_OUT, IDR, EDR, CLK, DR_OUT); --数据寄存器
M6: PC  PORT MAP(IPC,CLK,CLR,PC_OUT);
M7: MAR PORT MAP(PC_OUT,IMAR,CLK,ADDR_OUT); 
M8: IR  PORT MAP(DR_OUT,IIR,CLK,cmd_LD,cmd_add,cmd_sub,cmd_and,cmd_shl,HALT); --指令寄存器
M9: RAM PORT MAP("00000000",RAM_OUT,ADDR_OUT); --存储器

D1: decode port map(CLK_50M,ALU_OUT,hex_0,hex_1);
D2: display port map(CLK_50M,hex_0,hex_1,cout,se);
sel<=se;

OUTPUT <= cout;
r_out <= ACC_OUT;
d_out <= DR_OUT;
clk_out <= clk;
cmd_LD1<=cmd_LD; cmd_add1<=cmd_add; cmd_sub1<=cmd_sub; cmd_and1<=cmd_and; cmd_shl1<=cmd_shl; HALT1<=HALT;


PROCESS(CLK)
  VARIABLE COUNTER:INTEGER RANGE 0 TO 10:=0;
  BEGIN
  IF(CLK'EVENT AND CLK = '1')THEN
		IF(COUNTER<10)THEN
			COUNTER:=COUNTER+1;
		ELSE
			COUNTER:=0;
			CLK_10<=NOT(CLK_10);
		END IF;
	END IF;
  END PROCESS;

END EightBit_arch;