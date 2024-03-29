library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageshift00 is

	component topdiv00
		port(cdiv0: in std_logic_vector(4 downto 0);
			 clk0 : inout std_logic);
	end component;
	
	component shift00
		port(clks: in std_logic;
			 enables: in std_logic;
			 ins: in std_logic_vector(7 downto 0);
			 sel: in std_logic_vector(1 downto 0);
			 outs: out std_logic_vector(7 downto 0));
	end component;

end packageshift00;