library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity shiftRL00 is
port(
	resets: in std_logic;
	ins: in std_logic_vector(7 downto 0);
	clks: in std_logic;
	outs: out std_logic_vector(7 downto 0)
);
end shiftRL00;

architecture shiftRL0 of shiftRL00 is
signal sshift: std_logic_vector(7 downto 0);
begin
	pshiftRL: process(clks)
	begin 
		if(clks'event and clks = '1') then
			case resets is
				when '0' =>
					outs <= (others => '0');
					sshift <= ins;
				when '1' =>
					sshift(0) <= '0';
					sshift(7 downto 1) <= sshift(6 downto 0);
					outs <= sshift;
				when others => null;
			end case;
		end if;
	end process pshiftRL;
end shiftRL0;