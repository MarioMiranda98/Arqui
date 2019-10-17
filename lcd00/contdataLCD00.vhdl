library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity contdataLCD00 is
	port(clkcw: in std_logic;
		resetcw: in std_logic;
		inFlagcw: in std_logic;
		outcontcw: inout std_logic_vector(4 downto 0);
		RWcw: out std_logic;
		RScw: out std_logic;
		ENcw: out std_logic;
		outFlagcw: out std_logic);
end contdataLCD00;

architecture contdataLCD0 of contdataLCD00 is

signal scontrol: std_logic_vector(1 downto 0);

begin
	scontrol <= (resetcw)&(inFlagcw);
	pcw: process(clkcw)
	variable aux: bit:='0';
	begin
		if(clkcw'event and clkcw='1') then 
			case scontrol is
				when "00" =>
					outcontcw <= (others => '0');
				when "11" =>
					 if ((outcontcw < "01110")and(aux = '0')) then
		      aux:='1';
			  outcontcw <= outcontcw + '1';
			  RWcw <= '0';
			  RScw <= '1';
			  ENcw <= '0';
		  elsif ((outcontcw < "01110")and(aux = '1')) then
		      aux:='0';
			  outcontcw <= outcontcw;
			  RWcw <= '0';
			  RScw <= '1';
			  ENcw <= '1';
		  end if;
				when others => NULL;
			end case;
		end if;
	end process pcw;
end contdataLCD0;