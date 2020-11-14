library ieee;
use ieee.std_logic_1164.all;

entity clk_gen is
			 port (	END_SIM 	 : in std_logic;
						CLK,RST_n : out std_logic
					);
end clk_gen;

architecture beh of clk_gen is

  constant Ts : time := 10 ns;
  signal CLK_i : std_logic;
  
begin

  process	--process that generates the clock signal
  begin
		 if 	 (CLK_i = 'U') then CLK_i <= '0';
		 elsif (END_SIM='0') then CLK_i <= not(CLK_i);
		 else   CLK_i <='0'; --clock is stopped if simulation is finished
		 end if;
  wait for Ts/2;
  end process;

  CLK <= CLK_i;

  process	--process that generates reset signal pattern
  begin		
    RST_n <= '0'; wait for 3*Ts/2;
    RST_n <= '1'; wait;
  end process;

end beh;
