library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageram00 is
	component topdiv00
		port(
			cdiv0: in std_logic_vector(4 downto 0);
			clk0: inout std_logic);
	end component;
	
	component contring00
		port(
			clkr: in std_logic;
			enr: in std_logic;
			outr: out std_logic_vector(3 downto 0));
	end component;
	
	component coder00
		port(clkc: in std_logic;
			resetc: in std_logic;
			rwc: in std_logic;
			inkeyc: in std_logic_vector(3 downto 0);
			incontc: in std_logic_vector(3 downto 0);
			contWC: inout std_logic_vector(4 downto 0);
			wordc: out std_logic_vector(6 downto 0);
			outFlag: out std_logic);
	end component;
	
	component ram00
		port(clkram: in std_logic;
			resetram: in std_logic;
			rwram: in std_logic;
			inflagram: in std_logic;
			indirWram: in std_logic_vector(4 downto 0);
			indirRram: in std_logic_vector(4 downto 0);
			inwordram: in std_logic_vector(6 downto 0);
			outwordram: out std_logic_vector(6 downto 0));
	end component;
	
	component contRead00
		port(clkcR: in std_logic;
			resetcR: in std_logic;
			rwcR: in std_logic;
			incontWcR: in std_logic_vector(4 downto 0);
			outcontWcR: inout std_logic_vector(4 downto 0));
	end component;
	
	component muxRam00
		port(resetm: in std_logic;
			rwm: in std_logic;
			inwordCm: in std_logic_vector(6 downto 0);
			inwordRm: in std_logic_vector(6 downto 0);
			outwordm: out std_logic_vector(6 downto 0));
	end component;
end packageram00;