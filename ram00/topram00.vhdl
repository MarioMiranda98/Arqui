library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packageram00.all;

entity topram00 is
	port(clk00: inout std_logic;
		cdiv00: in std_logic_vector(4 downto 0);
		inkey0: in std_logic_vector(3 downto 0);
		reset0: in std_logic;
		rw0: in std_logic;
		outr0: inout std_logic_vector(3 downto 0);
		outcontW0: inout std_logic_vector(4 downto 0);
		outcontR0: inout std_logic_vector(4 downto 0);
		outword0: out std_logic_vector(6 downto 0);
		outtransist0: out std_logic_vector(3 downto 0);
		outFlag0: inout std_logic);
end topram00;

architecture topram0 of topram00 is

signal swordCoder, swordRam: std_logic_vector(6 downto 0);

begin
	outtransist0 <= "0001";
	
	RA00: topdiv00 port map(clk0 => clk00,
						cdiv0 => cdiv00);
							
	RA01: contring00 port map(clkr => clk00,
						enr => reset0,
						outr => outr0);
							
	RA02: coder00 port map(clkc => clk00,
						resetc => reset0,
						rwc => rw0,
						inkeyc => inkey0,
						incontc => outr0,
						contWC => outcontW0,
						wordc => swordCoder,
						outFlag => outFlag0);
	
	RA03: ram00 port map(clkram => clk00,
						resetram => reset0,
						rwram => rw0,
						inFlagram => outFlag0,
						indirWram => outcontW0,
						indirRram => outcontR0,
						inwordram => swordCoder,
						outwordram => swordRam);
	
	RA04: contRead00 port map(clkcR => clk00,
						resetcR => reset0,
						rwcR => rw0,
						incontWcR => outcontW0,
						outcontWcR => outcontR0);
	
	RA05: muxRam00 port map(resetm => reset0,
						rwm => rw0,
						inwordCm => swordCoder,
						inwordRm => swordRam,
						outwordm => outword0
						);

end topram0;