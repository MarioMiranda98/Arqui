library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

package packageword00 is
	component topdiv00 
	port(
			cdiv0: in std_logic_vector(4 downto 0);
			clk0: inout std_logic)
	;
	end component;
	
	component coder00
	port (
		incontc: in std_logic_vector(3 downto 0);
		outcontc: out std_logic_vector(6 downto 0)
	);
	end component;
	
	component contring00
	port(
		resets: in std_logic;
		clks: in std_logic;
		outs: out std_logic_vector(3 downto 0)
	);
	end component;
end packageword00;