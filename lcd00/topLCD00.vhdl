library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packagelcd00.all;

entity toplcd00 is
  port(
       clk00: inout std_logic;
	   cdiv00: in std_logic_vector(4 downto 0);
	   reset0: in std_logic;
	   outFlagcc0: inout std_logic;
	   outFlagc0: inout std_logic;
	   outcontcc0: inout std_logic_vector(4 downto 0);
	   outcontd0: inout std_logic_vector(4 downto 0);
	   outwordLED0: out std_logic_vector(7 downto 0);
	   outwordLCD0: out std_logic_vector(7 downto 0);
	   outRWLED0: out std_logic;
	   outRSLED0: out std_logic;
       outENLED0: out std_logic;
	   outRW0: out std_logic;
	   outRS0: out std_logic;
       outEN0: out std_logic);
end toplcd00;

architecture toplcd0 of toplcd00 is
signal scommand: std_logic_vector(7 downto 0);
signal sword: std_logic_vector(7 downto 0);
signal soutword: std_logic_vector(7 downto 0);
signal sRWc, sRSc, sENc: std_logic;
signal sRWd, sRSd, sENd: std_logic;
signal soutRW0, soutRS0, soutEN0: std_logic;
begin
outwordLED0 <= soutword;
outwordLCD0 <= soutword;
outRWLED0 <= soutRW0;
outRSLED0 <= soutRS0;
outENLED0 <= soutEN0;
outRW0 <= soutRW0;
outRS0 <= soutRS0;
outEN0 <= soutEN0;


  LC00: topdiv00 port map(clk0 => clk00,
                          cdiv0 => cdiv00);
  
  LC01: contconfigLCD00 port map(clkcc => clk00,
                                 resetcc => reset0,
								 inFlagcc => outFlagc0,
								 outcontcc => outcontcc0,
                                 outFlagcc => outFlagcc0);
  
  LC02: configLCD00 port map(clkcf => clk00,
                             resetcf => reset0,
							 inFlagcf => outFlagcc0,
							 incontcf => outcontcc0,
							 RWcf => sRWc,
							 RScf => sRSc,
							 ENcf => sENc,
							 outwordcf => scommand,
                             outFlagcf => outFlagc0);
  
  LC03: contdataLCD00 port map(clkcw => clk00,
                               resetcw => reset0,
							   inFlagcw => outFlagc0,
							   RWcw => sRWd,
							   RScw => sRSd,
							   ENcw => sENd,
							   outcontcw => outcontd0);
  
  LC04: dataLCD00 port map(clkd => clk00,
                           resetd => reset0,
						   inFlagd => outFlagc0,
						   incontd => outcontd0,
						   outWordd => sword);  
  LC05: muxLCD00 port map(resetm => reset0,
                         inFlagm => outFlagc0,
						 incommandm => scommand,
						 incharm => sword,
						 RWmcf => sRWc,
						 RSmcf => sRSc,
						 ENmcf => sENc,
						 RWmcd => sRWd,
						 RSmcd => sRSd,
						 ENmcd => sENd,
						 outcharm => soutword,
						 outRWm => soutRW0,
						 outRSm => soutRS0,
                         outENm => soutEN0);
  
end toplcd0;