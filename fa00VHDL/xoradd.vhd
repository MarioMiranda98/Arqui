library ieee;
use ieee.std_logic_1164.all;

library lattice;
use lattice.all;

entity xoradd is
	port
	(
		Ax: in std_logic;
		Bx: in std_logic;
		Yx: out std_logic
	);
end xoradd;

architecture xorad of xoradd is
begin
	Yx <= Ax xor Bx;
end xorad;