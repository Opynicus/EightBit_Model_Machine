LIBRARY ieee;
USE ieee.std_logic_1164.all; 
ENTITY DFF74 IS 
PORT (PRn,CLRn,D,CLK: IN STD_LOGIC;
        Q,Qn: OUT STD_LOGIC); 
END DFF74;
ARCHITECTURE D74 OF DFF74 IS 
   SIGNAL QS: STD_LOGIC;
BEGIN 
PROCESS(CLK,CLRn,PRn) BEGIN
    IF (CLRn = '0') THEN
        QS <= '0';
    ELSIF (PRn = '0') THEN
        QS <= '1';
    ELSIF (RISING_EDGE(CLK)) THEN
        QS <= D;
    END IF;
END PROCESS;
    Q <= QS;
    Qn <= NOT(QS);
END D74;
