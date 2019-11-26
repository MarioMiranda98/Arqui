library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagediv00.all;

entity decoderInst00 is
port(
	clkDI: in std_logic;
	inFlagDI: in std_logic;
	outFlagDI: out std_logic;
	inIRDI: in std_logic_vector(31 downto 0);
	outopcodeDI: out std_logic_vector(5 downto 0);
	outRSDI: out std_logic_vector(4 downto 0);
	outRTDI: out std_logic_vector(4 downto 0);
	outRDDI: out std_logic_vector(4 downto 0);
	outshamTDI: out std_logic_vector(4 downto 0);
	outfunctDI: out std_logic_vector(5 downto 0)
);
end decoderInst00;

architecture decoderInst0 of decoderInst00 is
begin 
	pDI: process(clkDI)
	begin
		if(clkDI'event AND clkDI = '1') then
			outopcodeDI <= inIRDI(31 downto 26);
			outRSDI <= inIRDI(25 downto 21);
			outRTDI <= inIRDI(20 downto 16);
			outRDDI <= inIRDI(15 downto 11);
			outshamtDI <= inIRDI(10 downto 6);
			outfunctDI <= inIRDI(5 downto 0);
			outFlagDI <= '1';
		end if;
	end process pDI;
end decoderInst0;