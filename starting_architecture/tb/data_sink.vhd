library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

entity data_sink is
						port 
							( CLK,RST_n : in std_logic;
							  VIN		 : in std_logic;	--VOUT of the UUT
							  SMPL_END: in std_logic;	
							  DIN     : in signed(8 downto 0);
							  END_SIM : out std_logic
							);
end data_sink;

architecture beh of data_sink is

COMPONENT FLIP_FLOP IS
							PORT 
								( d:IN STD_LOGIC;
								  clk,rst_n,en:IN STD_LOGIC;
								  q:OUT STD_LOGIC
								);
END COMPONENT;

begin
  process (CLK, RST_n)
  variable line_out : line;  
  variable first_run:std_logic:='0';
  file res_fp : text open WRITE_MODE is "results_vhdl_v1.txt"; 
  
  begin
    if (RST_n = '0') then END_SIM <= '0';
    elsif (CLK'event and CLK = '1') then
							if (VIN = '1') then
								write(line_out, to_integer(DIN));
								writeline(res_fp, line_out);
							end if;
							if(VIN = '0' and SMPL_END = '1') then	--if output data is not valid	  
								END_SIM<='1';	  							--and if all samples have been fed		
							first_run:='1';
							end if;											--to the circuit, flag simulation end
    end if;
	 if (first_run='1') then
	 file_close(res_fp);
	 end if;
  end process;

end beh;
