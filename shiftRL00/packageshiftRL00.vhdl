library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageshiftRL00 is
	component shiftRL00 
		port(
			resets: in std_logic;
			ins: in std_logic_vector(7 downto 0);
			clks: in std_logic;
			outs: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component topdiv00
		port(
			cdiv0: in std_logic_vector(4 downto 0);
			clk0: inout std_logic
		);
	end component;
end packageshiftRL00;