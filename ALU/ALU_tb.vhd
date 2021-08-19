library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_tb is
end ALU_tb;

architecture ALU_tb_arch of ALU_tb is
signal clk:std_logic:='0';
signal reset:std_logic:='1';
signal acc:std_logic_vector(7 downto 0):="00000000";--累加器 	
signal reg:std_logic_vector(7 downto 0):="00000000";--数据寄存器 		
signal cmd_add:std_logic:='0'; --add加 	
signal cmd_sub:std_logic:='0'; --sub减 	
signal cmd_and:std_logic:='0'; --and与 	
signal cmd_shl:std_logic:='0'; --srl左移 	
signal alu_out:std_logic_vector(7 downto 0);
signal esum:std_logic:='0';	-- 输出控制命令
component ALU
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
       esum: in std_logic	-- 输出控制命令
       ); 
   end component;

begin
	DUT:ALU port map
        (
            clk=>clk,
            reset=>reset,
            acc=>acc,
            reg=>reg,
            cmd_add=>cmd_add,
            cmd_sub=>cmd_sub,
            cmd_and=>cmd_and,
            cmd_shl=>cmd_shl,
            alu_out=>alu_out,
            esum=>esum
        );

        process
        begin
            wait for 20ns;clk<='1';
            wait for 20ns;clk<='0';
        end process;

        process
        begin
            wait for 150ns;reset<='1';
            wait for 150ns;reset<='0';
        end process;

        process
        begin
            wait for 30 ns;acc<="00100011";
            wait for 30 ns;acc<="00000000";
            wait for 60 ns;acc<="01000011";
            wait for 140 ns;acc<="00000000";
            wait for 40 ns;acc<="00000000";
        end process;

        process
        begin
            wait for 30 ns;reg<="01000101";
            wait for 30 ns;reg<="00000000";
            wait for 100 ns;reg<="00100001";
            wait for 50 ns;reg<="00000000";
            wait for 90 ns;reg<="00000000";
        end process;

        process
        begin
            wait for 40 ns;cmd_add<='0';
            wait for 40 ns;cmd_add<='1';
            wait for 80 ns;cmd_add<='0';
            wait for 50 ns;cmd_add<='1';
            wait for 90 ns;cmd_add<='1';
        end process;

        process
        begin
            wait for 60 ns;cmd_sub<='1';
            wait for 50 ns;cmd_sub<='0';
            wait for 70 ns;cmd_sub<='1';
            wait for 50 ns;cmd_sub<='0';
            wait for 90 ns;cmd_sub<='0';
        end process;

        process
        begin
            wait for 50 ns;cmd_and<='0';
            wait for 70 ns;cmd_and<='1';
            wait for 80 ns;cmd_and<='0';
            wait for 50 ns;cmd_and<='0';
            wait for 60 ns;cmd_and<='1';
        end process;

        process
        begin
            wait for 30 ns;cmd_shl<='0';
            wait for 30 ns;cmd_shl<='1';
            wait for 50 ns;cmd_shl<='0';
            wait for 80 ns;cmd_shl<='1';
            wait for 90 ns;cmd_shl<='1';
        end process;

        process
        begin
            wait for 90 ns;esum<='0';
            wait for 30 ns;esum<='1';
            wait for 20 ns;esum<='0';
            wait for 120 ns;esum<='1';
            wait for 40 ns;esum<='1';
        end process;
end ALU_tb_arch;