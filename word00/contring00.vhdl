library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity contring00 is
port(
	resets: in std_logic;
	clks: in std_logic;
	outs: out std_logic_vector(3 downto 0)
);
end contring00;

architecture contring0 of contring00 is
signal sshift: std_logic_vector(3 downto 0);
begin
	pring: process(clks)
	begin 
		if(clks'event and clks = '1') then
			case resets is
				when '0' =>
					outs <= (others => '1');
					sshift <= "1110";
				when '1' =>
					sshift(0) <= sshift(3);
					sshift(3 downto 1) <= sshift(2 downto 0);
					outs <= not (sshift);
				when others => null;
			end case;
		end if;
	end process pring;
end contring0;