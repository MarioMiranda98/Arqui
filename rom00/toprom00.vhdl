library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packagerom00.all;

entity toprom00 is
port(
	clk00: inout std_logic;
	reset00: in std_logic;
	cdiv00: in std_logic_vector(4 downto 0);
	outcont00: inout std_logic_vector(4 downto 0);
	trans: out std_logic_vector(3 downto 0);
	word00: inout std_logic_vector(6 downto 0)
);
end toprom00;

architecture toprom0 of toprom00 is
begin
trans <= "0001";
	R00: topdiv00 port map(
		cdiv0 => cdiv00,
		clk0 => clk00
	);
	
	R01: contRead00 port map(
		clkcR => clk00,
		resetcR => reset00,
		outcontcR => outcont00
	);
	
	R02: rom00 port map(
		clkR => clk00,
		resetR => reset00,
		indirR => outcont00,
		outwordR => word00
	);
end toprom0;