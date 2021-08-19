library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ALU is  
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
	); --alu计算结果
end ALU;

architecture ALU_arch of ALU is
signal tmp:std_logic_vector(7 downto 0);
begin
	process(clk,reset, cmd_add, cmd_sub, cmd_and, cmd_shl, reg) 
	begin
		if (rising_edge(clk)) then
			if reset='0' then
				tmp <= "00000000"; 	
			else 
				if cmd_add='0' then
					tmp <= acc + reg; --累加器内容为它本身加上数据寄存器内容
				elsif cmd_sub='0' then
					tmp <= acc - reg; --减法			
				elsif cmd_and='0' then
					tmp <= acc and reg; --与运算
				elsif cmd_or='0' then
					tmp <= acc or reg;
				elsif cmd_xor='0' then
					tmp <= acc xor reg;		
				elsif cmd_not='0' then
					tmp <= not(acc);
				elsif cmd_neg='0' then
					tmp <= not(acc)+1;
				elsif cmd_shl='0' then				
					tmp <= acc(6 downto 0)&'0'; --左移
				elsif cmd_shr='0' then				
					tmp <= '0'&acc(7 downto 1); --右移
				end if;		
			end if;
		end if;
	end process;
	alu_out <= tmp when esum = '0' else "ZZZZZZZZ";	
end ALU_arch;