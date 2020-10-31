LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY REG IS 	GENERIC (N:INTEGER);
					PORT (
							d:IN SIGNED(N-1 DOWNTO 0);
							clk,rst_n,en:IN STD_LOGIC;
							q:OUT SIGNED(N-1 DOWNTO 0)
							);
END ENTITY;

ARCHITECTURE BEHAVIOR OF REG IS 
BEGIN

PROCESS(clk,rst_n,en)
BEGIN
		IF (rst_n='0') THEN q<=(OTHERS => '0');
		ELSIF (clk'EVENT AND clk='1' AND en='1') THEN q<=d;
		END IF;
END PROCESS;
END ARCHITECTURE;