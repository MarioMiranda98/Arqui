library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity contRead00 is 
port(
	clkcR: in std_logic;
	resetcR: in std_logic;
	outcontcR: inout std_logic_vector(4 downto 0)
);
end contRead00;

architecture contRead0 of contRead00 is
begin
	pcontRead: process(clkcR)
	begin
	if(clkcR'event and clkcR = '1') then
		case resetcR is
			when '0' =>
				outcontcR <= (others => '0');
			when '1' => 
				if(outcontcR < "01001") then
					outcontcR <= outcontcR + '1';
				else
					outcontcR <= outcontcR;
				end if;
			when others => null;
		end case;
	end if;
	end process pcontRead;
end contRead0;