library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageshift00.all;

entity topshift00 is
	port(clk00: inout std_logic;
		 cdiv00: in std_logic_vector(4 downto 0);
		 sel0: in std_logic_vector(1 downto 0);
		 en0: in std_logic;
		 ins0: in std_logic_vector(7 downto 0);
		 outs0: out std_logic_vector(7 downto 0));
end topshift00;

architecture topshift0 of topshift00 is
begin

	SRL00 : topdiv00 port map(clk0 => clk00,
							  cdiv0 => cdiv00);
	
	SRL01 : shift00 port map(clks => clk00,
							   enables => en0,
							   sel => sel0,
							   ins => ins0,
							   outs => outs0);
end topshift0;