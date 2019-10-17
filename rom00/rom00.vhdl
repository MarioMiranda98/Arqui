library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity rom00 is
port(
	clkR: in std_logic;
	resetR: in std_logic;
	indirR: in std_logic_vector(4 downto 0);
	outwordR: inout std_logic_vector(6 downto 0)
);
end rom00;

architecture rom0 of rom00 is
type arrayrom is array(0 to 63) of std_logic_vector(6 downto 0);
constant wordRom: arrayrom := (
	"0110111",--H
	"1111110",--O
	"0001110",--L
	"1110111",--A
	"0000001",-- -
	"0110000",--1
	"1101101",--2
	"1111001",--3
	"0110011",--4
	"1011011",--5
	others => "0000000"
);
begin
	prom: process(clkR)
	begin
		if(clkR'event AND clkR = '1') then
			case resetR is
				when '0' =>
					outwordR <= (others => '0');
				when '1' =>
					outwordR <= wordRom(conv_integer(indirR));
				when others => null;
			end case;
		end if;
	end process prom;
end rom0;