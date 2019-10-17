library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity muxLCD00 is
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
end muxLCD00;

architecture muxLCD0 of muxLCD00 is

signal scontrolm: std_logic_vector(1 downto 0);

begin
	scontrolm <= (resetm) & (inFlagm);
----------------------------------------------------
	with scontrolm select 
		outcharm <= incommandm when "10",
			incharm when "11",
			"00000000" when others;
----------------------------------------------------
----------------------------------------------------
	with scontrolm select 
		outRWm <= RWmcf when "10",
			 RWmcd when "11",
			'0' when others;
----------------------------------------------------
----------------------------------------------------
	with scontrolm select
		outRSm <= RSmcf when "10",
			 RSmcd when "11",
			'0' when others;
----------------------------------------------------
----------------------------------------------------
	with scontrolm select 
		outENm <= ENmcf when "10",
			 ENmcd when "11",
			'0' when others;
----------------------------------------------------
	
end muxLCD0;