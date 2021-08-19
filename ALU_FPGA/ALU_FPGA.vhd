library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ALU_FPGA is  
port(
	clk:in std_logic;
 	reset:in std_logic;--清零端
  	acc:in std_logic_vector(7 downto 0);--累加器 	
	reg:in std_logic_vector(7 downto 0);--数据寄存器 		
	cmd_add:in std_logic; --add加 	
	cmd_sub:in std_logic; --sub减 	
	cmd_and:in std_logic; --and与 	
	cmd_shl:in std_logic; --srl左移 	
	alu_out:out std_logic_vector(7 downto 0);
	esum: in std_logic;	-- 输出控制命令
	c_out:out std_logic_vector(7 downto 0);
	sel:out std_logic_vector(3 downto 0)
	); 
end ALU_FPGA;

architecture ALU_arch of ALU_FPGA is
signal tmp:std_logic_vector(7 downto 0);
signal hex_0,hex_1:std_logic_vector( 7 downto 0 );
signal cout :std_logic_vector( 7 downto 0 );--输出八位
signal se : std_logic_vector( 3 downto 0 ); --选择输出译码管
signal acc1:std_logic_vector(7 downto 0);--累加器 	
signal reg1:std_logic_vector(7 downto 0);--数据寄存器 
signal esum1:std_logic;
component decode is
	port (	clk : in std_logic;--时钟信号输入端
			output:in std_logic_vector(7 downto 0);--最大255
			hex_0,hex_1 : buffer std_logic_vector( 7 downto 0 )--编码输出
			);
	end component;
	component display is
		port
		(
			clk_50m : in std_logic;--50M晶振脉冲输入
			--mode:in bit_vector(2 downto 0);
			hex_0,hex_1 : in std_logic_vector( 7 downto 0 );--output
			cout : buffer std_logic_vector( 7 downto 0 );--输出八位
			se : out std_logic_vector( 3 downto 0 )  --选择输出译码管
		);
		end component;
begin
	process(clk,reset, cmd_add, cmd_sub, cmd_and, cmd_shl, reg) 
	begin
		if (rising_edge(clk)) then
			if reset='0' then
				tmp <= "00000000"; 	
			else 
				if cmd_add='0' then
					tmp <= acc1 + reg1; --累加器内容为它本身加上数据寄存器内容
				elsif cmd_sub='0' then
					tmp <= acc1 - reg1; --减法			
				elsif cmd_and='0' then
					tmp <= acc1 and reg1; --与运算		
				elsif cmd_shl='0' then				
					tmp <= acc1(6 downto 0)&'0'; --左移
				end if;		
			end if;
		end if;
	end process;
	D1: decode port map(clk,tmp,hex_0,hex_1);
	D2: display port map(clk,hex_0,hex_1,cout,se);
	c_out<=cout;
	sel<=se;
	alu_out <= tmp when esum1 = '0' else "ZZZZZZZZ";	
	acc1<="00001001";--9
	reg1<="00000100";--4
	esum1<='0';
end ALU_arch;