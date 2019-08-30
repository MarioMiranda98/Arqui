library ieee;
use ieee.std_logic_1164.all;

library lattice;
use lattice.all;

entity andadd is
	port
	(
		Aa: in std_logic;
		Ba: in std_logic;
		Ya: out std_logic
	);
end andadd;

architecture andad of andadd is
begin
	Ya <= Aa and Ba;
end andad;