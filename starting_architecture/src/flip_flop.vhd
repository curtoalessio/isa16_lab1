LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FLIP_FLOP IS
					PORT 
						 (	d:IN STD_LOGIC;
							clk,rst_n,en:IN STD_LOGIC;
							q:OUT STD_LOGIC
						 );
END ENTITY;

ARCHITECTURE BEHAVIOR OF FLIP_FLOP IS 
BEGIN

		PROCESS(clk,rst_n,en)
		BEGIN

		IF (rst_n='0') THEN q<='0';
		ELSIF (clk'EVENT AND clk='1' AND en='1') THEN q<=d;
		END IF;
		
		END PROCESS;
END ARCHITECTURE;