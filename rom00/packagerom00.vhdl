library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

package packagerom00 is
	component topdiv00
		port(
			cdiv0: in std_logic_vector(4 downto 0);
			clk0: inout std_logic);
	end component;
	
	component contRead00
		port(
	clkcR: in std_logic;
	resetcR: in std_logic;
	outcontcR: inout std_logic_vector(4 downto 0)
);
	end component;
	
	component rom00 
	port(
	clkR: in std_logic;
	resetR: in std_logic;
	indirR: in std_logic_vector(4 downto 0);
	outwordR: inout std_logic_vector(6 downto 0)
);
	end component;
end packagerom00;