library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity clk_gen is
  port (	END_SIM : in std_logic;
			CLK     : out std_logic;
			RST_n   : out std_logic);
end clk_gen;

architecture beh of clk_gen is

  constant Ts : time := 10 ns;
  
  signal CLK_i : std_logic;
  
begin

  process
  begin
    if (CLK_i = 'U') then
      CLK_i <= '0';
    elsif (END_SIM='0') THEN
      CLK_i <= not(CLK_i);
	 else CLK_i <='0';
    end if;
    wait for Ts/2;
  end process;

  CLK <= CLK_i;

  process
  begin
    RST_n <= '0';
    wait for 3*Ts/2;
    RST_n <= '1';
    wait;
  end process;

end beh;
