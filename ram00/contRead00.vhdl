library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity contRead00 is
	port(clkcR: in std_logic;
		resetcR: in std_logic;
		rwcR: in std_logic;
		incontWcR: in std_logic_vector(4 downto 0);
		outcontWcR: inout std_logic_vector(4 downto 0));
end contRead00;

architecture contRead0 of contRead00 is

signal scontrolcR: std_logic_vector(1 downto 0);
begin
	scontrolcR <= (resetcR) & (rwcR);
	
	pcontcR: process(clkcR)
	begin
		if(clkcR'event and clkcR='1') then
			case scontrolcR is
				when "10" =>
					outcontWcR <= (others => '0');
				when "11" =>
					if(outcontWcR < incontWcR) then
						outcontWcR <= outcontWcR + '1';
					else
						outcontWcR <= outcontWcR;
					end if;
				when others => NULL;
			end case;
		end if;
	end process pcontcR;
end contRead0;