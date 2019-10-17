library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity dataLCD00 is
port(
	clkd: in std_logic;
	resetd: in std_logic;
	inFlagd: in std_logic;
	incontd: in std_logic_vector(4 downto 0);
	outwordd: out std_logic_vector(7 downto 0)
);
end dataLCD00;

architecture dataLCD0 of dataLCD00 is
signal scontrold: std_logic_vector(1 downto 0);
type arraydata is array(0 to 63) of std_logic_vector(7 downto 0);
constant worddata: arraydata := (
	"00100000",--espacio
	"00100001",--!
	"01001000",--H
	"01001111",--O
	"01001100",--L
	"01000001",--A
	"00100000",--espacio
	"01001101",--M
	"01010101",--U
	"01001110",--N
	"01000100",--D
	"01001111",--O
	"00100001",--!
	others => "00100001"
);
begin 
scontrold <= (resetd) & (inFlagd);
	pdata: process(clkd)
	begin
		if(clkd'event AND clkd = '1') then
			case scontrold is
				when "11" =>
					outwordd <= worddata(conv_integer(incontd));
				when others => null;
			end case;
		end if;
	end process pdata;
end dataLCD0;