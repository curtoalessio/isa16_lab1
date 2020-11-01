library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

entity data_sink is
  port (
    CLK   : in std_logic;
    RST_n : in std_logic;
    VIN   : in std_logic;
	 SMPL_END:in std_logic;
    DIN   : in std_logic_vector(8 downto 0);
    END_SIM : out std_logic);
end data_sink;

architecture beh of data_sink is

COMPONENT FLIP_FLOP IS
					PORT (
							d:IN STD_LOGIC;
							clk,rst_n,en:IN STD_LOGIC;
							q:OUT STD_LOGIC
							);
END COMPONENT;

begin
  process (CLK, RST_n)
    variable line_out : line;  
      file res_fp : text open WRITE_MODE is "tb_results.txt"; 
  begin
    if RST_n = '0' then
      END_SIM <= '0';
    elsif CLK'event and CLK = '1' then
      if (VIN = '1') then
        write(line_out, conv_integer(signed(DIN)));
        writeline(res_fp, line_out);
      end if;
      if(VIN = '0' and SMPL_END = '1') then	  
		  END_SIM<='1';	  
      end if;
    end if;
  end process;

end beh;
