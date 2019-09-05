library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagebarrel00.all;

entity tobarrel00 is 
port(
	clk00: inout std_logic;
	cdiv00: in std_logic_vector(4 downto 0);
	en0: in std_logic;
	insl0: in std_logic_vector(7 downto 0);
	limite0: in std_logic_vector(2 downto 0);
	sel0: in std_logic_vector(3 downto 0);
	outsl0: out std_logic_vector (7 downto 0)
	);
end tobarrel00;
 
architecture tobarrel0 of tobarrel00 is 
begin
	SR00: topdiv00 port map(cdiv0 => cdiv00,
								clk0 => clk00);
	SR01: barrel00 port map(clksl => clk00,
								enable => en0,
								limite => limite0,
								insl => insl0,
								sel => sel0,
								outsl => outsl0);
end tobarrel0;