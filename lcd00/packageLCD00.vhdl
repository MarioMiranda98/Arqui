library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

package packageLCD00 is
	component topdiv00
		port(
			cdiv0: in std_logic_vector(4 downto 0);
			clk0: inout std_logic);
	end component;
		
	component contconfigLCD00
		port(clkcc: in std_logic;
		resetcc: in std_logic;
		inFlagcc: in std_logic;
		outcontcc: inout std_logic_vector(4 downto 0);
		outFlagcc: out std_logic);
	end component;
	
	component configLCD00
		port(clkcf: in std_logic;
	resetcf: in std_logic;
	inFlagcf: in std_logic;
	incontcf: inout std_logic_vector(4 downto 0);
	outwordcf: out std_logic_vector(7 downto 0);
	ENcf: out std_logic;
	RScf: out std_logic;
	RWcf: out std_logic;
	outFlagcf: out std_logic
	);
	end component;
	
	component contdataLCD00
		port(clkcw: in std_logic;
		resetcw: in std_logic;
		inFlagcw: in std_logic;
		outcontcw: inout std_logic_vector(4 downto 0);
		RWcw: out std_logic;
		RScw: out std_logic;
		ENcw: out std_logic;
		outFlagcw: out std_logic);
	end component;
	
	component dataLCD00
	port(
	clkd: in std_logic;
	resetd: in std_logic;
	inFlagd: in std_logic;
	incontd: in std_logic_vector(4 downto 0);
	outwordd: out std_logic_vector(7 downto 0)
);
	end component;
	
	component muxLCD00
		port(inFlagm: in std_logic;
		resetm: in std_logic;
		RWmcf: in std_logic;
		RSmcf: in std_logic;
		ENmcf: in std_logic;
		RWmcd: in std_logic;
		RSmcd: in std_logic;
		ENmcd: in std_logic;
		incommandm: in std_logic_vector(7 downto 0);
		incharm: in std_logic_vector(7 downto 0);
		outRWm: out std_logic;
		outRSm: out std_logic;
		outENm: out std_logic;
		outcharm: out std_logic_vector(7 downto 0));
	end component;
end packageLCD00;