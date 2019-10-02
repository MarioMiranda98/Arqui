library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity ram00 is
	port(clkram: in std_logic;
		resetram: in std_logic;
		rwram: in std_logic;
		inflagram: in std_logic;
		indirWram: in std_logic_vector(4 downto 0);
		indirRram: in std_logic_vector(4 downto 0);
		inwordram: in std_logic_vector(6 downto 0);
		outwordram: out std_logic_vector(6 downto 0));
end ram00;

architecture ram0 of ram00 is

type arrayram is array(0 to 63) of std_logic_vector(6 downto 0);
signal swordram: arrayram;
signal scontrol: std_logic_vector(1 downto 0);

begin
	scontrol <= (resetram) & (rwram);	pram: process(clkram)
	begin
		if(clkram'event and clkram='1') then
			case scontrol is
				when "10" =>
					if(inflagram='1') then
						swordram(conv_integer(indirWram)) <= inwordram;
					end if;
				when "11" =>
					outwordram <= swordram(conv_integer(indirRram));
				when others => NULL;
			end case;
		end if;
	end process pram;
end ram0;