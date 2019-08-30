library ieee;
use ieee.std_logic_1164.all;

library lattice;
use lattice.all;

entity oradd is
	port
	(
		Ao: in std_logic;
		Bo: in std_logic;
		Yo: out std_logic
	);
end oradd;

architecture orad of oradd is
begin
	Yo <= Ao or Bo;
end orad;