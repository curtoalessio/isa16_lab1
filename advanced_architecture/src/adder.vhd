LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ADDER IS GENERIC(N:INTEGER);
					 PORT
						  ( add1,add2: IN SIGNED(N-1 DOWNTO 0);
							 sum:	OUT SIGNED(N-1 DOWNTO 0)
						  );
END ENTITY;

ARCHITECTURE BEHAVIOR OF ADDER IS

BEGIN

sum<=add1+add2;

END ARCHITECTURE;