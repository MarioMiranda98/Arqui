library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity contconfigLCD00 is
	port(clkcc: in std_logic;
		resetcc: in std_logic;
		inFlagcc: in std_logic;
		outcontcc: inout std_logic_vector(4 downto 0);
		outFlagcc: out std_logic);
end contconfigLCD00;

architecture contconfigLCD0 of contconfigLCD00 is
begin
	pcontcc: process(clkcc)
	begin
		if(clkcc'event and clkcc='1') then
			case resetcc is 
				when '0' =>
					outcontcc <= (others => '0');
					outFlagcc <= '0';
				when '1' =>
					case inFlagcc is
						when '0' =>
							outcontcc <= outcontcc + '1';
							outFlagcc <= '1';
						when '1' =>
							outcontcc <= outcontcc;
							outFlagcc <= '0';
						when others => NULL;
					end case;
				when others => NULL;
			end case;
		end if;
	end process pcontcc;
end contconfigLCD0;