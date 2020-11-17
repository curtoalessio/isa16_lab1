LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY MULTIPLIER IS GENERIC(N:INTEGER);
							PORT
								(fact1,fact2: IN SIGNED(N-1 DOWNTO 0);
								 fract_product:	OUT SIGNED(2*N-2 DOWNTO 0)
								);
END ENTITY;

ARCHITECTURE BEHAVIOR OF MULTIPLIER IS
SIGNAL product:SIGNED(2*N-1 DOWNTO 0);

BEGIN

product<=fact1*fact2;
fract_product<=product(2*N-2 DOWNTO 0);--can-t have overflow in fractional product
													--discard msb
END ARCHITECTURE;