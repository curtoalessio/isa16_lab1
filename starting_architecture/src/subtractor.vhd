LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY SUBTRACTOR IS GENERIC(N:INTEGER);
							PORT
								( min,sub: IN SIGNED(N-1 DOWNTO 0);
								  diff:	OUT SIGNED(N-1 DOWNTO 0)
								);
END ENTITY;

ARCHITECTURE BEHAVIOR OF SUBTRACTOR IS

BEGIN

diff<=min-sub;

END ARCHITECTURE;