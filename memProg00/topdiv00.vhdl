library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagediv00.all;

entity topdiv00 is
port(
	cdiv0: in std_logic_vector(4 downto 0);
	clk0: inout std_logic
);
end topdiv00;

architecture topdiv0 of topdiv00 is
signal sclk: std_logic;
begin 
	DI00: osc00 port map(
		osc_int => sclk
	);
	
	DI01: div00 port map(
		clkdiv => sclk,
		indiv => cdiv0,
		outdiv => clk0
	);
end topdiv0;

